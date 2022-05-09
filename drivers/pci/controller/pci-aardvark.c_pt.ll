; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-aardvark.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-aardvark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_bridge_emul_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.advk_pcie = type { ptr, ptr, [8 x %struct.anon.90], i8, ptr, %struct.irq_chip, %struct.raw_spinlock, ptr, ptr, %struct.irq_chip, %struct.irq_chip, %struct.msi_domain_info, [1 x i32], %struct.mutex, i16, i32, %struct.pci_bridge_emul, ptr, ptr }
%struct.anon.90 = type { i32, i32, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_bridge_emul = type { %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_pcie_conf, ptr, ptr, ptr, ptr, i8 }
%struct.pci_bridge_emul_conf = type { i16, i16, i16, i16, i32, i8, i8, i8, i8, [2 x i32], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i16, i16, i8, [3 x i8], i32, i8, i8, i16 }
%struct.pci_bridge_emul_pcie_conf = type { i8, i8, i16, i32, i16, i16, i32, i16, i16, i32, i16, i16, i16, i16, i32, i32, i16, i16, i32, i16, i16, i32, i16, i16 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.78, %union.anon.79, %union.anon.80 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pci_aardvark__295_1762_advk_pcie_driver_init6 = internal global ptr @advk_pcie_driver_init, section ".initcall6.init", align 4
@advk_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @advk_pcie_probe, ptr @advk_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @advk_pcie_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_advk_pcie_driver_exit = internal global ptr @advk_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [50 x i8] c"pci_aardvark.description=Aardvark PCIe controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [54 x i8] c"pci_aardvark.file=drivers/pci/controller/pci-aardvark\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"pci_aardvark.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"advk-pcie\00", [22 x i8] zeroinitializer }, align 32
@advk_pcie_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@advk_pcie_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 -118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_aardvark\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"advk_pcie_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pci/controller/pci-aardvark.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Configuring PCIe window %d: [0x%llx-0x%llx] as %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@advk_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1602, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid PCIe region [0x%llx-0x%llx]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@advk_pcie_probe._entry_ptr = internal global ptr @advk_pcie_probe._entry, section ".printk_index", align 4
@advk_pcie_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1619, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@advk_pcie_probe._entry_ptr.10 = internal global ptr @advk_pcie_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcie1-reset\00", [20 x i8] zeroinitializer }, align 32
@advk_pcie_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1634, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reset-gpio: %i\0A\00", [34 x i8] zeroinitializer }, align 32
@advk_pcie_probe._entry_ptr.15 = internal global ptr @advk_pcie_probe._entry.13, section ".printk_index", align 4
@advk_pcie_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1653, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to register emulated root PCI bridge\0A\00", [51 x i8] zeroinitializer }, align 32
@advk_pcie_probe._entry_ptr.18 = internal global ptr @advk_pcie_probe._entry.16, section ".printk_index", align 4
@advk_pcie_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1659, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to initialize irq\0A\00", [38 x i8] zeroinitializer }, align 32
@advk_pcie_probe._entry_ptr.21 = internal global ptr @advk_pcie_probe._entry.19, section ".printk_index", align 4
@advk_pcie_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1665, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@advk_pcie_probe._entry_ptr.23 = internal global ptr @advk_pcie_probe._entry.22, section ".printk_index", align 4
@advk_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @advk_pcie_rd_conf, ptr @advk_pcie_wr_conf }, [44 x i8] zeroinitializer }, align 32
@advk_pcie_setup_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1507, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PHY unavailable (%ld)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"advk_pcie_setup_phy\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@advk_pcie_setup_phy._entry_ptr = internal global ptr @advk_pcie_setup_phy._entry, section ".printk_index", align 4
@advk_pcie_setup_phy._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.3, i32 1514, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to initialize PHY (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@advk_pcie_setup_phy._entry_ptr.29 = internal global ptr @advk_pcie_setup_phy._entry.27, section ".printk_index", align 4
@advk_pcie_enable_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1486, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PHY unsupported by firmware\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"advk_pcie_enable_phy\00", [43 x i8] zeroinitializer }, align 32
@advk_pcie_enable_phy._entry_ptr = internal global ptr @advk_pcie_enable_phy._entry, section ".printk_index", align 4
@advk_pcie_train_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 444, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"link never came up\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"advk_pcie_train_link\00", [43 x i8] zeroinitializer }, align 32
@advk_pcie_train_link._entry_ptr = internal global ptr @advk_pcie_train_link._entry, section ".printk_index", align 4
@advk_pcie_train_link._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 446, ptr @.str.36, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@advk_pcie_train_link._entry_ptr.37 = internal global ptr @advk_pcie_train_link._entry.34, section ".printk_index", align 4
@advk_pcie_issue_perst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 379, ptr @.str.36, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"issuing PERST via reset GPIO for 10ms\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"advk_pcie_issue_perst\00", [42 x i8] zeroinitializer }, align 32
@advk_pcie_issue_perst._entry_ptr = internal global ptr @advk_pcie_issue_perst._entry, section ".printk_index", align 4
@advk_pci_bridge_emul_ops = internal global { %struct.pci_bridge_emul_ops, [16 x i8] } { %struct.pci_bridge_emul_ops { ptr @advk_pci_bridge_emul_base_conf_read, ptr @advk_pci_bridge_emul_pcie_conf_read, ptr @advk_pci_bridge_emul_base_conf_write, ptr @advk_pci_bridge_emul_pcie_conf_write }, [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@advk_pcie_init_irq_domain.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pcie->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@advk_pcie_init_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 1352, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No PCIe Intc node found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"advk_pcie_init_irq_domain\00", [38 x i8] zeroinitializer }, align 32
@advk_pcie_init_irq_domain._entry_ptr = internal global ptr @advk_pcie_init_irq_domain._entry, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-irq\00", [25 x i8] zeroinitializer }, align 32
@advk_pcie_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @advk_pcie_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@advk_pcie_init_irq_domain._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.3, i32 1373, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", [63 x i8] zeroinitializer }, align 32
@advk_pcie_init_irq_domain._entry_ptr.46 = internal global ptr @advk_pcie_init_irq_domain._entry.44, section ".printk_index", align 4
@advk_pcie_init_msi_irq_domain.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pcie->msi_used_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"advk-MSI\00", [23 x i8] zeroinitializer }, align 32
@advk_msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @advk_msi_irq_domain_alloc, ptr @advk_msi_irq_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@advk_pcie_pio_is_running._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1015, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Previous PIO read/write transfer is still running\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"advk_pcie_pio_is_running\00", [39 x i8] zeroinitializer }, align 32
@advk_pcie_pio_is_running._entry_ptr = internal global ptr @advk_pcie_pio_is_running._entry, section ".printk_index", align 4
@advk_pcie_wait_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 763, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PIO read/write transfer time out\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"advk_pcie_wait_pio\00", [45 x i8] zeroinitializer }, align 32
@advk_pcie_wait_pio._entry_ptr = internal global ptr @advk_pcie_wait_pio._entry, section ".printk_index", align 4
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"COMP_ERR\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UR\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CRS\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CA\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Non-posted\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Posted\00", [25 x i8] zeroinitializer }, align 32
@advk_pcie_check_pio_status.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"advk_pcie_check_pio_status\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s PIO Response Status: %s, %#x @ %#x\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966779, i64 4294967294]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 60]
@__sancov_gen_cov_switch_values.67 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 60]
@__sancov_gen_cov_switch_values.69 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 5, i64 6, i64 8, i64 10]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"advk_pcie_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1754, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1756, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"advk_pcie_of_match_table\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1748, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1575, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1599, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1619, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1624, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1626, i32 14 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1633, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1653, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1659, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1665, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"advk_pcie_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1174, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1507, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1514, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1486, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 444, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 446, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 379, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [25 x i8] c"advk_pci_bridge_emul_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 931, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1348, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1352, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1358, i32 51 }
@___asan_gen_.217 = private unnamed_addr constant [25 x i8] c"advk_pcie_irq_domain_ops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1281, i32 36 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1373, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1294, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1298, i32 20 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1303, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c"advk_msi_domain_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1234, i32 36 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1015, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 763, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 671, i32 21 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 683, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 721, i32 20 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 725, i32 20 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 729, i32 20 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 738, i32 16 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 740, i32 16 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [41 x i8] c"../drivers/pci/controller/pci-aardvark.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 742, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_advk_pcie_driver_exit, ptr @__initcall__kmod_pci_aardvark__295_1762_advk_pcie_driver_init6, ptr @advk_pcie_driver_exit, ptr @advk_pcie_enable_phy._entry, ptr @advk_pcie_enable_phy._entry_ptr, ptr @advk_pcie_init_irq_domain._entry, ptr @advk_pcie_init_irq_domain._entry.44, ptr @advk_pcie_init_irq_domain._entry_ptr, ptr @advk_pcie_init_irq_domain._entry_ptr.46, ptr @advk_pcie_issue_perst._entry, ptr @advk_pcie_issue_perst._entry_ptr, ptr @advk_pcie_pio_is_running._entry, ptr @advk_pcie_pio_is_running._entry_ptr, ptr @advk_pcie_probe._entry, ptr @advk_pcie_probe._entry.13, ptr @advk_pcie_probe._entry.16, ptr @advk_pcie_probe._entry.19, ptr @advk_pcie_probe._entry.22, ptr @advk_pcie_probe._entry.8, ptr @advk_pcie_probe._entry_ptr, ptr @advk_pcie_probe._entry_ptr.10, ptr @advk_pcie_probe._entry_ptr.15, ptr @advk_pcie_probe._entry_ptr.18, ptr @advk_pcie_probe._entry_ptr.21, ptr @advk_pcie_probe._entry_ptr.23, ptr @advk_pcie_setup_phy._entry, ptr @advk_pcie_setup_phy._entry.27, ptr @advk_pcie_setup_phy._entry_ptr, ptr @advk_pcie_setup_phy._entry_ptr.29, ptr @advk_pcie_train_link._entry, ptr @advk_pcie_train_link._entry.34, ptr @advk_pcie_train_link._entry_ptr, ptr @advk_pcie_train_link._entry_ptr.37, ptr @advk_pcie_wait_pio._entry, ptr @advk_pcie_wait_pio._entry_ptr, ptr @advk_pcie_driver, ptr @.str, ptr @advk_pcie_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @advk_pcie_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @advk_pci_bridge_emul_ops, ptr @advk_pcie_init_irq_domain.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @advk_pcie_irq_domain_ops, ptr @.str.45, ptr @advk_pcie_init_msi_irq_domain.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @advk_msi_domain_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_setup_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_setup_phy._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_enable_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_train_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_train_link._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_issue_perst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pci_bridge_emul_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_init_irq_domain.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_init_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_init_irq_domain._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_init_msi_irq_domain.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_pio_is_running._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advk_pcie_wait_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @advk_pcie_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @advk_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @advk_pcie_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 892) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup201_crit_edge, label %if.end

entry.cleanup201_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup201

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry2.0384 = load ptr, ptr %windows, align 4
  %cmp.not385 = icmp eq ptr %entry2.0384, %windows
  br i1 %cmp.not385, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %wins_count = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry2.0386 = phi ptr [ %entry2.0384, %for.body.lr.ph ], [ %entry2.0, %for.inc.for.body_crit_edge ]
  %res = getelementptr inbounds %struct.resource_entry, ptr %entry2.0386, i32 0, i32 1
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %8
  %flags.i = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 7936
  %11 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %for.body.for.inc_crit_edge [
    i32 512, label %land.lhs.true16
    i32 256, label %for.body.if.end19_crit_edge
  ]

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true16:                                  ; preds = %for.body
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry2.0386, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp17 = icmp eq i32 %13, 0
  br i1 %cmp17, label %land.lhs.true16.for.inc_crit_edge, label %land.lhs.true16.if.end19_crit_edge

land.lhs.true16.if.end19_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end19:                                         ; preds = %land.lhs.true16.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %14 = ptrtoint ptr %wins_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wins_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp20374 = icmp ugt i8 %15, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp22.not375 = icmp eq i32 %add.i, 0
  %or.cond376 = select i1 %cmp20374, i1 true, i1 %cmp22.not375
  br i1 %or.cond376, label %if.end19.while.end_crit_edge, label %while.body.lr.ph

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i)
  %cmp51 = icmp eq i32 %and.i, 256
  %offset71 = getelementptr inbounds %struct.resource_entry, ptr %entry2.0386, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end92.while.body_crit_edge, %while.body.lr.ph
  %size.0379 = phi i32 [ %add.i, %while.body.lr.ph ], [ %conv98, %if.end92.while.body_crit_edge ]
  %start.0377 = phi i32 [ %6, %while.body.lr.ph ], [ %conv95, %if.end92.while.body_crit_edge ]
  %16 = tail call i32 @llvm.ctlz.i32(i32 %size.0379, i1 false) #6, !range !145
  %sub = sub nsw i32 31, %16
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start.0377)
  %tobool26.not = icmp eq i32 %start.0377, 0
  br i1 %tobool26.not, label %while.body.cond.end_crit_edge, label %__ffs64.exit

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

__ffs64.exit:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = tail call i32 @llvm.cttz.i32(i32 %start.0377, i1 true) #6, !range !145
  %sh_prom29 = zext i32 %17 to i64
  %shl30 = shl nuw nsw i64 1, %sh_prom29
  br label %cond.end

cond.end:                                         ; preds = %__ffs64.exit, %while.body.cond.end_crit_edge
  %cond = phi i64 [ %shl30, %__ffs64.exit ], [ 0, %while.body.cond.end_crit_edge ]
  %or = or i64 %cond, %shl
  %conv.i = trunc i64 %or to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp.i316 = icmp eq i32 %conv.i, 0
  br i1 %cmp.i316, label %__ffs64.exit323.thread, label %__ffs64.exit323

__ffs64.exit323.thread:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i317 = lshr i64 %or, 32
  %conv2.i318 = trunc i64 %shr.i317 to i32
  %18 = tail call i32 @llvm.cttz.i32(i32 %conv2.i318, i1 false) #6, !range !145
  %add.i319 = add nuw nsw i32 %18, 32
  br label %do.body

__ffs64.exit323:                                  ; preds = %cond.end
  %19 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 true) #6, !range !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %19)
  %cmp34 = icmp ult i32 %19, 16
  br i1 %cmp34, label %__ffs64.exit323.cleanup_crit_edge, label %__ffs64.exit323.do.body_crit_edge

__ffs64.exit323.do.body_crit_edge:                ; preds = %__ffs64.exit323
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

__ffs64.exit323.cleanup_crit_edge:                ; preds = %__ffs64.exit323
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %__ffs64.exit323.do.body_crit_edge, %__ffs64.exit323.thread
  %sh_prom32356.pn.in = phi i32 [ %add.i319, %__ffs64.exit323.thread ], [ %19, %__ffs64.exit323.do.body_crit_edge ]
  %sh_prom32356.pn = zext i32 %sh_prom32356.pn.in to i64
  %shl33359 = shl nuw i64 1, %sh_prom32356.pn
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @advk_pcie_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@advk_pcie_probe, %do.end)) #6
          to label %if.then45 [label %do.end], !srcloc !146

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %wins_count to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wins_count, align 4
  %conv47 = zext i8 %21 to i32
  %conv48 = zext i32 %start.0377 to i64
  %add = add nuw i64 %shl33359, %conv48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @advk_pcie_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %conv47, i64 noundef %conv48, i64 noundef %add, i32 noundef %and.i) #6
  br label %do.end

do.end:                                           ; preds = %if.then45, %do.body
  %22 = ptrtoint ptr %wins_count to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wins_count, align 4
  %idxprom = zext i8 %23 to i32
  %actions = getelementptr %struct.advk_pcie, ptr %private.i, i32 0, i32 2, i32 %idxprom, i32 3
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %actions to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %actions, align 4
  %call55 = tail call i32 @pci_pio_to_address(i32 noundef %start.0377) #6
  %25 = ptrtoint ptr %wins_count to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wins_count, align 4
  %idxprom58 = zext i8 %26 to i32
  br label %if.end70

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %actions to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %actions, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then53
  %idxprom.sink = phi i32 [ %idxprom, %if.else ], [ %idxprom58, %if.then53 ]
  %start.0377.sink = phi i32 [ %start.0377, %if.else ], [ %call55, %if.then53 ]
  %arrayidx68 = getelementptr %struct.advk_pcie, ptr %private.i, i32 0, i32 2, i32 %idxprom.sink
  %28 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %start.0377.sink, ptr %arrayidx68, align 4
  %29 = ptrtoint ptr %offset71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset71, align 4
  %sub72 = sub i32 %start.0377, %30
  %31 = ptrtoint ptr %wins_count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wins_count, align 4
  %idxprom75 = zext i8 %32 to i32
  %remap = getelementptr %struct.advk_pcie, ptr %private.i, i32 0, i32 2, i32 %idxprom75, i32 1
  %33 = ptrtoint ptr %remap to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub72, ptr %remap, align 4
  %sub77 = add nuw i64 %shl33359, 4294967295
  %34 = trunc i64 %shl33359 to i32
  %conv78 = sub i32 0, %34
  %mask = getelementptr %struct.advk_pcie, ptr %private.i, i32 0, i32 2, i32 %idxprom75, i32 2
  %35 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv78, ptr %mask, align 4
  %conv88 = zext i32 %sub72 to i64
  %and = and i64 %sub77, %conv88
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool90.not = icmp eq i64 %and, 0
  br i1 %tobool90.not, label %if.end92, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end92:                                         ; preds = %if.end70
  %conv95 = add i32 %start.0377, %34
  %conv98 = sub i32 %size.0379, %34
  %inc = add i8 %32, 1
  %36 = ptrtoint ptr %wins_count to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %inc, ptr %wins_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %inc)
  %cmp20 = icmp ugt i8 %inc, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv98)
  %cmp22.not = icmp eq i32 %conv98, 0
  %or.cond = select i1 %cmp20, i1 true, i1 %cmp22.not
  br i1 %or.cond, label %if.end92.while.end_crit_edge, label %if.end92.while.body_crit_edge

if.end92.while.body_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end92.while.end_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end92.while.end_crit_edge, %if.end19.while.end_crit_edge
  %cmp22.not.lcssa = phi i1 [ %cmp22.not375, %if.end19.while.end_crit_edge ], [ %cmp22.not, %if.end92.while.end_crit_edge ]
  br i1 %cmp22.not.lcssa, label %while.end.for.inc_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %__ffs64.exit323.cleanup_crit_edge
  %res.le = getelementptr inbounds %struct.resource_entry, ptr %entry2.0386, i32 0, i32 1
  %37 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private.i, align 4
  %dev107 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %res.le to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %res.le, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %conv110 = zext i32 %42 to i64
  %end = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end, align 4
  %conv112 = zext i32 %44 to i64
  %add113 = add nuw nsw i64 %conv112, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev107, ptr noundef nonnull @.str.5, i64 noundef %conv110, i64 noundef %add113) #9
  br label %cleanup201

for.inc:                                          ; preds = %while.end.for.inc_crit_edge, %land.lhs.true16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %45 = ptrtoint ptr %entry2.0386 to i32
  call void @__asan_load4_noabort(i32 %45)
  %entry2.0 = load ptr, ptr %entry2.0386, align 4
  %cmp.not = icmp eq ptr %entry2.0, %windows
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %call123 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call123, ptr %base, align 4
  %cmp.i324 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i324, label %if.then126, label %if.end129

if.then126:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %call123 to i32
  br label %cleanup201

if.end129:                                        ; preds = %for.end
  %call130 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.end129.cleanup201_crit_edge, label %if.end134

if.end129.cleanup201_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup201

if.end134:                                        ; preds = %if.end129
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call130, ptr noundef nonnull @advk_pcie_irq_handler, ptr noundef null, i32 noundef 65664, ptr noundef nonnull @.str, ptr noundef %private.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool136.not = icmp eq i32 %call.i, 0
  br i1 %tobool136.not, label %if.end141, label %do.end140

do.end140:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup201

if.end141:                                        ; preds = %if.end134
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call142 = tail call ptr @devm_gpiod_get_from_of_node(ptr noundef %dev1, ptr noundef %49, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 3, ptr noundef nonnull @.str.12) #6
  %reset_gpio = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 31, i32 0, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call142, ptr %reset_gpio, align 4
  %cmp.i.i = icmp ugt ptr %call142, inttoptr (i32 -4096 to ptr)
  %51 = ptrtoint ptr %call142 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %51, i32 0
  %52 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %spec.select.i, label %do.end157 [
    i32 0, label %if.end141.if.end160_crit_edge
    i32 -2, label %if.then149
    i32 -517, label %if.end141.cleanup201_crit_edge
  ]

if.end141.cleanup201_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup201

if.end141.if.end160_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

if.then149:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %reset_gpio, align 4
  br label %if.end160

do.end157:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %spec.select.i) #9
  br label %cleanup201

if.end160:                                        ; preds = %if.then149, %if.end141.if.end160_crit_edge
  %54 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node, align 8
  %call162 = tail call i32 @of_pci_get_max_link_speed(ptr noundef %55) #6
  %56 = add i32 %call162, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %56)
  %57 = icmp ult i32 %56, -3
  %spec.select = select i1 %57, i32 3, i32 %call162
  %58 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 12, i32 26
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select, ptr %58, align 4
  %60 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %private.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 27
  %62 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node.i, align 8
  %call.i325 = tail call ptr @devm_of_phy_get(ptr noundef %dev1.i, ptr noundef %63, ptr noundef null) #6
  %phy.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 31, i32 0, i32 0, i32 4, i32 7
  %64 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i325, ptr %phy.i, align 4
  %cmp.i.i326 = icmp ugt ptr %call.i325, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i326, label %land.lhs.true.i, label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end160
  %cmp.i327 = icmp eq ptr %call.i325, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i327, label %land.lhs.true.i.cleanup201_crit_edge, label %do.end.i

land.lhs.true.i.cleanup201_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup201

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %call.i325 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.24, i32 noundef %65) #9
  %66 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %phy.i, align 4
  br label %if.end174

if.end14.i:                                       ; preds = %if.end160
  %tobool.not.i.i = icmp eq ptr %call.i325, null
  br i1 %tobool.not.i.i, label %if.end14.i.if.end174_crit_edge, label %if.end.i.i

if.end14.i.if.end174_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.end.i.i:                                       ; preds = %if.end14.i
  %call.i.i = tail call i32 @phy_init(ptr noundef nonnull %call.i325) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.do.end19.i_crit_edge

if.end.i.i.do.end19.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %67 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy.i, align 4
  %call6.i.i = tail call i32 @phy_set_mode_ext(ptr noundef %68, i32 noundef 14, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  %69 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy.i, align 4
  br i1 %tobool7.not.i.i, label %if.end11.i.i, label %if.end4.i.i.do.end19.sink.split.i_crit_edge

if.end4.i.i.do.end19.sink.split.i_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.sink.split.i

if.end11.i.i:                                     ; preds = %if.end4.i.i
  %call13.i.i = tail call i32 @phy_power_on(ptr noundef %70) #6
  %71 = zext i32 %call13.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call13.i.i, label %if.then16.i.i [
    i32 -95, label %do.end.i.i
    i32 0, label %if.end11.i.i.if.end174_crit_edge
  ]

if.end11.i.i.if.end174_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

do.end.i.i:                                       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %private.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.30) #9
  br label %if.end174

if.then16.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phy.i, align 4
  br label %do.end19.sink.split.i

do.end19.sink.split.i:                            ; preds = %if.then16.i.i, %if.end4.i.i.do.end19.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %75, %if.then16.i.i ], [ %70, %if.end4.i.i.do.end19.sink.split.i_crit_edge ]
  %retval.0.i.ph.i = phi i32 [ %call13.i.i, %if.then16.i.i ], [ %call6.i.i, %if.end4.i.i.do.end19.sink.split.i_crit_edge ]
  %call18.i.i = tail call i32 @phy_exit(ptr noundef %.sink.i) #6
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end19.sink.split.i, %if.end.i.i.do.end19.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.i.do.end19.i_crit_edge ], [ %retval.0.i.ph.i, %do.end19.sink.split.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i.i) #9
  br label %cleanup201

if.end174:                                        ; preds = %do.end.i.i, %if.end11.i.i.if.end174_crit_edge, %if.end14.i.if.end174_crit_edge, %do.end.i
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 18452
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %79 = and i32 %78, -100663297
  %80 = or i32 %79, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %82, i32 18452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i, i32 %80) #6, !srcloc !150
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %84, i32 98304
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %86 = and i32 %85, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %88, i32 98304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 %86) #6, !srcloc !150
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %90, i32 18432
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %92 = or i32 %91, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %93 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base, align 4
  %add.ptr.i138.i = getelementptr i8, ptr %94, i32 18432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i, i32 %92) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %95 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %96, i32 24644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i, i32 -1424905455) #6, !srcloc !150
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %98, i32 8
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142.i) #6, !srcloc !147
  %100 = lshr i32 %99, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %or8.i = or i32 %100, 100925440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %101 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #6
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %103, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i, i32 %101) #6, !srcloc !150
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %add.ptr.i146.i = getelementptr i8, ptr %105, i32 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %107 = and i32 %106, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %add.ptr.i148.i = getelementptr i8, ptr %109, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 %107) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base, align 4
  %add.ptr.i150.i = getelementptr i8, ptr %111, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i, i32 -536805376) #6, !srcloc !150
  %112 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base, align 4
  %add.ptr.i152.i = getelementptr i8, ptr %113, i32 200
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %115 = and i32 %114, 260571135
  %116 = or i32 %115, 1075838976
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %117 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base, align 4
  %add.ptr.i154.i = getelementptr i8, ptr %118, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i, i32 %116) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %119 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base, align 4
  %add.ptr.i156.i = getelementptr i8, ptr %120, i32 18440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i, i32 385875968) #6, !srcloc !150
  %121 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %122, i32 18432
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %124 = and i32 %123, -402653185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %125 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base, align 4
  %add.ptr.i160.i = getelementptr i8, ptr %126, i32 18432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.i, i32 %124) #6, !srcloc !150
  %127 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base, align 4
  %add.ptr.i162.i = getelementptr i8, ptr %128, i32 18440
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %130 = or i32 %129, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %131 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base, align 4
  %add.ptr.i164.i = getelementptr i8, ptr %132, i32 18440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164.i, i32 %130) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %133 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %134, i32 18520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %135 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %136, i32 18496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %138, i32 18504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170.i, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %139 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %140, i32 110592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %142, i32 18500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174.i, i32 -2) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %143 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %144, i32 18508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %145 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %146, i32 18524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 0) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %147 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %148, i32 110596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 -257) #6, !srcloc !150
  %149 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %150, i32 18440
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %152 = or i32 %151, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %153 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %154, i32 18440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 %152) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %155 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %156, i32 19708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186.i, i32 0) #6, !srcloc !150
  %157 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base, align 4
  %add.ptr.i188.i = getelementptr i8, ptr %158, i32 16384
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i188.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %160 = or i32 %159, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %161 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %162, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i, i32 %160) #6, !srcloc !150
  %wins_count.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 1
  %163 = ptrtoint ptr %wins_count.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %wins_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %cmp199.not.i = icmp eq i8 %164, 0
  br i1 %cmp199.not.i, label %if.end174.for.body41.preheader.i_crit_edge, label %if.end174.for.body.i_crit_edge

if.end174.for.body.i_crit_edge:                   ; preds = %if.end174
  br label %for.body.i

if.end174.for.body41.preheader.i_crit_edge:       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41.preheader.i

for.cond38.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %192)
  %cmp39201.i = icmp ult i8 %192, 8
  br i1 %cmp39201.i, label %for.cond38.preheader.i.for.body41.preheader.i_crit_edge, label %for.cond38.preheader.i.for.end45.i_crit_edge

for.cond38.preheader.i.for.end45.i_crit_edge:     ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end45.i

for.cond38.preheader.i.for.body41.preheader.i_crit_edge: ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41.preheader.i

for.body41.preheader.i:                           ; preds = %for.cond38.preheader.i.for.body41.preheader.i_crit_edge, %if.end174.for.body41.preheader.i_crit_edge
  %.lcssa206.i = phi i8 [ %192, %for.cond38.preheader.i.for.body41.preheader.i_crit_edge ], [ 0, %if.end174.for.body41.preheader.i_crit_edge ]
  %conv.le.i = zext i8 %.lcssa206.i to i32
  br label %for.body41.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end174.for.body.i_crit_edge
  %i.0200.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end174.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.advk_pcie, ptr %private.i, i32 0, i32 2, i32 %i.0200.i
  %165 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i, align 4
  %remap.i = getelementptr %struct.advk_pcie, ptr %private.i, i32 0, i32 2, i32 %i.0200.i, i32 1
  %167 = ptrtoint ptr %remap.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %remap.i, align 4
  %mask.i = getelementptr %struct.advk_pcie, ptr %private.i, i32 0, i32 2, i32 %i.0200.i, i32 2
  %169 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mask.i, align 4
  %actions.i = getelementptr %struct.advk_pcie, ptr %private.i, i32 0, i32 2, i32 %i.0200.i, i32 3
  %171 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %actions.i, align 4
  %or.i.i = or i32 %166, 1
  %conv.i.i = shl i32 %i.0200.i, 5
  %add.i.i = add nuw nsw i32 %conv.i.i, 19456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %173 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %174 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %175, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %173) #6, !srcloc !150
  %add7.i.i = add nuw nsw i32 %conv.i.i, 19460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %176 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base, align 4
  %add.ptr.i56.i.i = getelementptr i8, ptr %177, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i.i, i32 0) #6, !srcloc !150
  %add13.i.i = add nuw nsw i32 %conv.i.i, 19464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %178 = tail call i32 @llvm.bswap.i32(i32 %168) #6
  %179 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %base, align 4
  %add.ptr.i58.i.i = getelementptr i8, ptr %180, i32 %add13.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i.i, i32 %178) #6, !srcloc !150
  %add20.i.i = add nuw nsw i32 %conv.i.i, 19468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %181 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base, align 4
  %add.ptr.i60.i.i = getelementptr i8, ptr %182, i32 %add20.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i.i, i32 0) #6, !srcloc !150
  %add26.i.i = add nuw nsw i32 %conv.i.i, 19472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %183 = tail call i32 @llvm.bswap.i32(i32 %170) #6
  %184 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base, align 4
  %add.ptr.i62.i.i = getelementptr i8, ptr %185, i32 %add26.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i.i, i32 %183) #6, !srcloc !150
  %add33.i.i = add nuw nsw i32 %conv.i.i, 19476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %186 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %base, align 4
  %add.ptr.i64.i.i = getelementptr i8, ptr %187, i32 %add33.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i.i, i32 0) #6, !srcloc !150
  %add38.i.i = add nuw nsw i32 %conv.i.i, 19480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %188 = tail call i32 @llvm.bswap.i32(i32 %172) #6
  %189 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base, align 4
  %add.ptr.i66.i.i = getelementptr i8, ptr %190, i32 %add38.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i.i, i32 %188) #6, !srcloc !150
  %inc.i = add nuw nsw i32 %i.0200.i, 1
  %191 = ptrtoint ptr %wins_count.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %wins_count.i, align 4
  %conv.i329 = zext i8 %192 to i32
  %cmp.i330 = icmp ult i32 %inc.i, %conv.i329
  br i1 %cmp.i330, label %for.body.i.for.body.i_crit_edge, label %for.cond38.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.body41.preheader.i
  %i.1202.i = phi i32 [ %inc44.i, %for.body41.i.for.body41.i_crit_edge ], [ %conv.le.i, %for.body41.preheader.i ]
  %conv42.i = trunc i32 %i.1202.i to i8
  tail call fastcc void @advk_pcie_disable_ob_win(ptr noundef %private.i, i8 noundef zeroext %conv42.i) #6
  %inc44.i = add nuw nsw i32 %i.1202.i, 1
  %exitcond.not.i = icmp eq i32 %inc44.i, 8
  br i1 %exitcond.not.i, label %for.body41.i.for.end45.i_crit_edge, label %for.body41.i.for.body41.i_crit_edge

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41.i

for.body41.i.for.end45.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end45.i

for.end45.i:                                      ; preds = %for.body41.i.for.end45.i_crit_edge, %for.cond38.preheader.i.for.end45.i_crit_edge
  %193 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %private.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %194, i32 0, i32 3
  %195 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base, align 4
  %add.ptr.i.i192.i = getelementptr i8, ptr %196, i32 18432
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i192.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %198 = and i32 %197, -50331649
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #6
  %200 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %58, align 4
  %202 = zext i32 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %201, label %for.end45.i.if.end8.i.i_crit_edge [
    i32 3, label %if.then.i.i
    i32 2, label %if.then4.i.i
  ]

for.end45.i.if.end8.i.i_crit_edge:                ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i193.i = or i32 %199, 2
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %or5.i.i = or i32 %199, 1
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i, %for.end45.i.if.end8.i.i_crit_edge
  %reg.0.i.i = phi i32 [ %or.i193.i, %if.then.i.i ], [ %or5.i.i, %if.then4.i.i ], [ %199, %for.end45.i.if.end8.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %203 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i.i) #6
  %204 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base, align 4
  %add.ptr.i60.i194.i = getelementptr i8, ptr %205, i32 18432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i194.i, i32 %203) #6, !srcloc !150
  %206 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %base, align 4
  %add.ptr.i62.i195.i = getelementptr i8, ptr %207, i32 240
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i195.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %209 = and i32 %208, -251658241
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #6
  %211 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %212)
  %switch.selectcmp.i.i = icmp eq i32 %212, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %212)
  %switch.selectcmp71.i.i = icmp eq i32 %212, 3
  %switch.select72.i.i = select i1 %switch.selectcmp71.i.i, i32 3, i32 %switch.select.i.i
  %or19.i.i = or i32 %switch.select72.i.i, %210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %213 = tail call i32 @llvm.bswap.i32(i32 %or19.i.i) #6
  %214 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base, align 4
  %add.ptr.i64.i196.i = getelementptr i8, ptr %215, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i196.i, i32 %213) #6, !srcloc !150
  %216 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %base, align 4
  %add.ptr.i66.i197.i = getelementptr i8, ptr %217, i32 18432
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i197.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %219 = or i32 %218, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %220 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %base, align 4
  %add.ptr.i68.i.i = getelementptr i8, ptr %221, i32 18432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i.i, i32 %219) #6, !srcloc !150
  %222 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %reset_gpio, align 4
  %tobool.not.i.i.i = icmp eq ptr %223, null
  br i1 %tobool.not.i.i.i, label %if.end8.i.i.advk_pcie_issue_perst.exit.i.i_crit_edge, label %do.end.i.i.i

if.end8.i.i.advk_pcie_issue_perst.exit.i.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %advk_pcie_issue_perst.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %224 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %private.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %225, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.38) #9
  %226 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %227, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %228 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %229, i32 noundef 0) #6
  br label %advk_pcie_issue_perst.exit.i.i

advk_pcie_issue_perst.exit.i.i:                   ; preds = %do.end.i.i.i, %if.end8.i.i.advk_pcie_issue_perst.exit.i.i_crit_edge
  %230 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %231, i32 24576
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %233 = and i32 %232, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %233)
  %234 = icmp eq i32 %233, 16
  br i1 %234, label %advk_pcie_issue_perst.exit.i.i.do.end32.i.i_crit_edge, label %if.end.i.i.i

advk_pcie_issue_perst.exit.i.i.do.end32.i.i_crit_edge: ; preds = %advk_pcie_issue_perst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

if.end.i.i.i:                                     ; preds = %advk_pcie_issue_perst.exit.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %235 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.1.i.i.i = getelementptr i8, ptr %236, i32 24576
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %238 = and i32 %237, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %238)
  %239 = icmp eq i32 %238, 16
  br i1 %239, label %if.end.i.i.i.do.end32.i.i_crit_edge, label %if.end.1.i.i.i

if.end.i.i.i.do.end32.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

if.end.1.i.i.i:                                   ; preds = %if.end.i.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %240 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.2.i.i.i = getelementptr i8, ptr %241, i32 24576
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %243 = and i32 %242, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %243)
  %244 = icmp eq i32 %243, 16
  br i1 %244, label %if.end.1.i.i.i.do.end32.i.i_crit_edge, label %if.end.2.i.i.i

if.end.1.i.i.i.do.end32.i.i_crit_edge:            ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

if.end.2.i.i.i:                                   ; preds = %if.end.1.i.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %245 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.3.i.i.i = getelementptr i8, ptr %246, i32 24576
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %248 = and i32 %247, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %248)
  %249 = icmp eq i32 %248, 16
  br i1 %249, label %if.end.2.i.i.i.do.end32.i.i_crit_edge, label %if.end.3.i.i.i

if.end.2.i.i.i.do.end32.i.i_crit_edge:            ; preds = %if.end.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

if.end.3.i.i.i:                                   ; preds = %if.end.2.i.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %250 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.4.i.i.i = getelementptr i8, ptr %251, i32 24576
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.4.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %253 = and i32 %252, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %253)
  %254 = icmp eq i32 %253, 16
  br i1 %254, label %if.end.3.i.i.i.do.end32.i.i_crit_edge, label %if.end.4.i.i.i

if.end.3.i.i.i.do.end32.i.i_crit_edge:            ; preds = %if.end.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

if.end.4.i.i.i:                                   ; preds = %if.end.3.i.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %255 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.5.i.i.i = getelementptr i8, ptr %256, i32 24576
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.5.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %258 = and i32 %257, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %258)
  %259 = icmp eq i32 %258, 16
  br i1 %259, label %if.end.4.i.i.i.do.end32.i.i_crit_edge, label %if.end.5.i.i.i

if.end.4.i.i.i.do.end32.i.i_crit_edge:            ; preds = %if.end.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

if.end.5.i.i.i:                                   ; preds = %if.end.4.i.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %260 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.6.i.i.i = getelementptr i8, ptr %261, i32 24576
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.6.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %263 = and i32 %262, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %263)
  %264 = icmp eq i32 %263, 16
  br i1 %264, label %if.end.5.i.i.i.do.end32.i.i_crit_edge, label %if.end.6.i.i.i

if.end.5.i.i.i.do.end32.i.i_crit_edge:            ; preds = %if.end.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

if.end.6.i.i.i:                                   ; preds = %if.end.5.i.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %265 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.7.i.i.i = getelementptr i8, ptr %266, i32 24576
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.7.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %268 = and i32 %267, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %268)
  %269 = icmp eq i32 %268, 16
  br i1 %269, label %if.end.6.i.i.i.do.end32.i.i_crit_edge, label %if.end.7.i.i.i

if.end.6.i.i.i.do.end32.i.i_crit_edge:            ; preds = %if.end.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

if.end.7.i.i.i:                                   ; preds = %if.end.6.i.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %270 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.8.i.i.i = getelementptr i8, ptr %271, i32 24576
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.8.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %273 = and i32 %272, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %273)
  %274 = icmp eq i32 %273, 16
  br i1 %274, label %if.end.7.i.i.i.do.end32.i.i_crit_edge, label %if.end.8.i.i.i

if.end.7.i.i.i.do.end32.i.i_crit_edge:            ; preds = %if.end.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

if.end.8.i.i.i:                                   ; preds = %if.end.7.i.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %275 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.9.i.i.i = getelementptr i8, ptr %276, i32 24576
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.9.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %278 = and i32 %277, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %278)
  %279 = icmp eq i32 %278, 16
  br i1 %279, label %if.end.8.i.i.i.do.end32.i.i_crit_edge, label %do.end.i.i331

if.end.8.i.i.i.do.end32.i.i_crit_edge:            ; preds = %if.end.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i.i

do.end.i.i331:                                    ; preds = %if.end.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.32) #9
  br label %advk_pcie_setup_hw.exit

do.end32.i.i:                                     ; preds = %if.end.8.i.i.i.do.end32.i.i_crit_edge, %if.end.7.i.i.i.do.end32.i.i_crit_edge, %if.end.6.i.i.i.do.end32.i.i_crit_edge, %if.end.5.i.i.i.do.end32.i.i_crit_edge, %if.end.4.i.i.i.do.end32.i.i_crit_edge, %if.end.3.i.i.i.do.end32.i.i_crit_edge, %if.end.2.i.i.i.do.end32.i.i_crit_edge, %if.end.1.i.i.i.do.end32.i.i_crit_edge, %if.end.i.i.i.do.end32.i.i_crit_edge, %advk_pcie_issue_perst.exit.i.i.do.end32.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.35) #9
  br label %advk_pcie_setup_hw.exit

advk_pcie_setup_hw.exit:                          ; preds = %do.end32.i.i, %do.end.i.i331
  %bridge1.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 12, i32 27
  %280 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %base, align 4
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %283 = lshr i32 %282, 16
  %284 = trunc i32 %283 to i16
  %285 = ptrtoint ptr %bridge1.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %284, ptr %bridge1.i, align 4
  %286 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %base, align 4
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %287) #6, !srcloc !147
  %289 = tail call i32 @llvm.bswap.i32(i32 %288) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %shr.i333 = lshr i32 %289, 16
  %conv3.i = trunc i32 %shr.i333 to i16
  %290 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #6
  %device.i = getelementptr inbounds %struct.advk_pcie, ptr %private.i, i32 0, i32 16, i32 0, i32 1
  %291 = ptrtoint ptr %device.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %290, ptr %device.i, align 2
  %292 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %base, align 4
  %add.ptr.i.i334 = getelementptr i8, ptr %293, i32 8
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i334) #6, !srcloc !147
  %295 = and i32 %294, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %class_revision.i = getelementptr inbounds %struct.advk_pcie, ptr %private.i, i32 0, i32 16, i32 0, i32 4
  %296 = ptrtoint ptr %class_revision.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %class_revision.i, align 4
  %iobase.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 16, i32 1
  %297 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 1, ptr %iobase.i, align 4
  %iolimit.i = getelementptr inbounds %struct.advk_pcie, ptr %private.i, i32 0, i32 16, i32 0, i32 15
  %298 = ptrtoint ptr %iolimit.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 1, ptr %iolimit.i, align 1
  %pref_mem_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 18
  %299 = ptrtoint ptr %pref_mem_base.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 256, ptr %pref_mem_base.i, align 4
  %pref_mem_limit.i = getelementptr inbounds %struct.advk_pcie, ptr %private.i, i32 0, i32 16, i32 0, i32 20
  %300 = ptrtoint ptr %pref_mem_limit.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 256, ptr %pref_mem_limit.i, align 2
  %intpin.i = getelementptr inbounds %struct.advk_pcie, ptr %private.i, i32 0, i32 16, i32 0, i32 29
  %301 = ptrtoint ptr %intpin.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 1, ptr %intpin.i, align 1
  %cap.i = getelementptr inbounds %struct.advk_pcie, ptr %private.i, i32 0, i32 16, i32 1, i32 2
  %302 = ptrtoint ptr %cap.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 512, ptr %cap.i, align 2
  %rootcap.i = getelementptr inbounds %struct.advk_pcie, ptr %private.i, i32 0, i32 16, i32 1, i32 13
  %303 = ptrtoint ptr %rootcap.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 256, ptr %rootcap.i, align 2
  %has_pcie.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 31, i32 0, i32 0, i32 4, i32 3
  %304 = ptrtoint ptr %has_pcie.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 1, ptr %has_pcie.i, align 4
  %data.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 31, i32 0, i32 0, i32 4, i32 2
  %305 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %private.i, ptr %data.i, align 4
  %ops.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 31, i32 0, i32 0, i32 4
  %306 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr @advk_pci_bridge_emul_ops, ptr %ops.i, align 4
  %call14.i = tail call i32 @pci_bridge_emul_init(ptr noundef %bridge1.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool176.not = icmp eq i32 %call14.i, 0
  br i1 %tobool176.not, label %if.end181, label %do.end180

do.end180:                                        ; preds = %advk_pcie_setup_hw.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  br label %cleanup201

if.end181:                                        ; preds = %advk_pcie_setup_hw.exit
  %307 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %private.i, align 4
  %dev1.i335 = getelementptr inbounds %struct.platform_device, ptr %308, i32 0, i32 3
  %of_node.i336 = getelementptr inbounds %struct.platform_device, ptr %308, i32 0, i32 3, i32 27
  %309 = ptrtoint ptr %of_node.i336 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %of_node.i336, align 8
  %irq_lock.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @advk_pcie_init_irq_domain.__key, i16 noundef signext 2) #6
  %call.i337 = tail call ptr @of_get_next_child(ptr noundef %310, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i337, null
  br i1 %tobool.not.i, label %advk_pcie_init_irq_domain.exit.thread, label %if.end.i339

advk_pcie_init_irq_domain.exit.thread:            ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i335, ptr noundef nonnull @.str.41) #9
  br label %do.end187

if.end.i339:                                      ; preds = %if.end181
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %308, i32 0, i32 3, i32 3
  %311 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i338 = icmp eq ptr %312, null
  br i1 %tobool.not.i.i338, label %if.end.i.i340, label %if.end.i339.dev_name.exit.i_crit_edge

if.end.i339.dev_name.exit.i_crit_edge:            ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i340:                                    ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #8
  %313 = ptrtoint ptr %dev1.i335 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dev1.i335, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i340, %if.end.i339.dev_name.exit.i_crit_edge
  %retval.0.i.i341 = phi ptr [ %314, %if.end.i.i340 ], [ %312, %if.end.i339.dev_name.exit.i_crit_edge ]
  %call7.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1.i335, i32 noundef 3264, ptr noundef nonnull @.str.43, ptr noundef %retval.0.i.i341) #6
  %name.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 4
  %315 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %call7.i, ptr %name.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %dev_name.exit.i.advk_pcie_init_irq_domain.exit.thread368_crit_edge, label %if.end11.i

dev_name.exit.i.advk_pcie_init_irq_domain.exit.thread368_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %advk_pcie_init_irq_domain.exit.thread368

if.end11.i:                                       ; preds = %dev_name.exit.i
  %irq_mask.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9, i32 1
  %316 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr @advk_pcie_irq_mask, ptr %irq_mask.i, align 4
  %irq_mask_ack.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 1
  %317 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr @advk_pcie_irq_mask, ptr %irq_mask_ack.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 2
  %318 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr @advk_pcie_irq_unmask, ptr %irq_unmask.i, align 4
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i337, i32 0, i32 3
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @advk_pcie_irq_domain_ops, ptr noundef %private.i) #6
  %irq_domain.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 2
  %319 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call1.i.i, ptr %irq_domain.i, align 4
  %tobool14.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool14.not.i, label %do.end18.i, label %if.end188

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i335, ptr noundef nonnull @.str.45) #9
  br label %advk_pcie_init_irq_domain.exit.thread368

advk_pcie_init_irq_domain.exit.thread368:         ; preds = %do.end18.i, %dev_name.exit.i.advk_pcie_init_irq_domain.exit.thread368_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i337) #6
  br label %do.end187

do.end187:                                        ; preds = %advk_pcie_init_irq_domain.exit.thread368, %advk_pcie_init_irq_domain.exit.thread
  %retval.0.i342367 = phi i32 [ -19, %advk_pcie_init_irq_domain.exit.thread ], [ -12, %advk_pcie_init_irq_domain.exit.thread368 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  br label %cleanup201

if.end188:                                        ; preds = %if.end11.i
  tail call void @of_node_put(ptr noundef nonnull %call.i337) #6
  %320 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %private.i, align 4
  %of_node.i343 = getelementptr inbounds %struct.platform_device, ptr %321, i32 0, i32 3, i32 27
  %322 = ptrtoint ptr %of_node.i343 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %of_node.i343, align 8
  %msi_used_lock.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 2
  tail call void @__mutex_init(ptr noundef %msi_used_lock.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @advk_pcie_init_msi_irq_domain.__key) #6
  %name.i344 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 5, i32 2
  %324 = ptrtoint ptr %name.i344 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr @.str.48, ptr %name.i344, align 4
  %irq_compose_msi_msg.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 12, i32 3, i32 0, i32 0, i32 4, i32 3
  %325 = ptrtoint ptr %irq_compose_msi_msg.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr @advk_msi_irq_compose_msi_msg, ptr %irq_compose_msi_msg.i, align 4
  %irq_set_affinity.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 11, i32 3
  %326 = ptrtoint ptr %irq_set_affinity.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr @advk_msi_set_affinity, ptr %irq_set_affinity.i, align 4
  %msi_irq_chip.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 12, i32 5, i32 1, i32 0, i32 4
  %name2.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1
  %327 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr @.str.49, ptr %name2.i, align 4
  %msi_domain_info.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 12, i32 10, i32 3, i32 6
  %328 = ptrtoint ptr %msi_domain_info.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 7, ptr %msi_domain_info.i, align 4
  %chip.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 12, i32 11
  %329 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %msi_irq_chip.i, ptr %chip.i, align 4
  %msi_msg.i = getelementptr inbounds %struct.advk_pcie, ptr %private.i, i32 0, i32 14
  %330 = ptrtoint ptr %msi_msg.i to i32
  %call.i.i345 = tail call i32 @__virt_to_phys(i32 noundef %330) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %331 = tail call i32 @llvm.bswap.i32(i32 %call.i.i345) #6
  %332 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %base, align 4
  %add.ptr.i.i347 = getelementptr i8, ptr %333, i32 18512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i347, i32 %331) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %334 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %base, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %335, i32 18516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 0) #6, !srcloc !150
  %call1.i.i348 = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @advk_msi_domain_ops, ptr noundef %private.i) #6
  %msi_inner_domain.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 5, i32 1
  %336 = ptrtoint ptr %msi_inner_domain.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %call1.i.i348, ptr %msi_inner_domain.i, align 4
  %tobool.not.i349 = icmp eq ptr %call1.i.i348, null
  br i1 %tobool.not.i349, label %if.end188.do.end194_crit_edge, label %if.end.i351

if.end188.do.end194_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end194

if.end.i351:                                      ; preds = %if.end188
  %tobool.not.i.i350 = icmp eq ptr %323, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %323, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i350, ptr null, ptr %fwnode.i.i
  %call8.i = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i, ptr noundef %msi_domain_info.i, ptr noundef nonnull %call1.i.i348) #6
  %msi_domain.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 5
  %337 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %call8.i, ptr %msi_domain.i, align 4
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end195

if.then11.i:                                      ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #8
  %338 = ptrtoint ptr %msi_inner_domain.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %msi_inner_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %339) #6
  br label %do.end194

do.end194:                                        ; preds = %if.then11.i, %if.end188.do.end194_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  %340 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %irq_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %341) #6
  br label %cleanup201

if.end195:                                        ; preds = %if.end.i351
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %342 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %private.i, ptr %sysdata, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %343 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr @advk_pcie_ops, ptr %ops, align 4
  %call196 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %if.then199, label %if.end195.cleanup201_crit_edge

if.end195.cleanup201_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup201

if.then199:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @advk_pcie_remove_msi_irq_domain(ptr noundef %private.i)
  %344 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %irq_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %345) #6
  br label %cleanup201

cleanup201:                                       ; preds = %if.then199, %if.end195.cleanup201_crit_edge, %do.end194, %do.end187, %do.end180, %do.end19.i, %land.lhs.true.i.cleanup201_crit_edge, %do.end157, %if.end141.cleanup201_crit_edge, %do.end140, %if.end129.cleanup201_crit_edge, %if.then126, %cleanup, %entry.cleanup201_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup ], [ %47, %if.then126 ], [ %call.i, %do.end140 ], [ %call14.i, %do.end180 ], [ %retval.0.i342367, %do.end187 ], [ -12, %do.end194 ], [ %call196, %if.then199 ], [ -12, %entry.cleanup201_crit_edge ], [ %call130, %if.end129.cleanup201_crit_edge ], [ %spec.select.i, %if.end141.cleanup201_crit_edge ], [ %spec.select.i, %do.end157 ], [ 0, %if.end195.cleanup201_crit_edge ], [ %retval.0.i.i, %do.end19.i ], [ -517, %land.lhs.true.i.cleanup201_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pci_lock_rescan_remove() #6
  %bus = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %3) #6
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %5) #6
  tail call void @pci_unlock_rescan_remove() #6
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %9 = and i32 %8, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %9) #6, !srcloc !150
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %13, i32 18440
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %15 = and i32 %14, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %17, i32 18440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %15) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %19, i32 18512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 0) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %21, i32 18516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %23, i32 18524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %25, i32 18500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %27, i32 18508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %29, i32 110596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %31, i32 18520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %33, i32 18496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %35, i32 18504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 -1) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %37, i32 110592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 -1) #6, !srcloc !150
  %msi_domain.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msi_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %39) #6
  %msi_inner_domain.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %msi_inner_domain.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %msi_inner_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %41) #6
  %irq_domain.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %43) #6
  %bridge6 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 16
  tail call void @pci_bridge_emul_cleanup(ptr noundef %bridge6) #6
  %reset_gpio = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 17
  %44 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %45, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %45, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %47, i32 18432
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %49 = and i32 %48, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %51, i32 18432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %49) #6, !srcloc !150
  tail call fastcc void @advk_pcie_disable_ob_win(ptr noundef %1, i8 noundef zeroext 0)
  tail call fastcc void @advk_pcie_disable_ob_win(ptr noundef %1, i8 noundef zeroext 1)
  tail call fastcc void @advk_pcie_disable_ob_win(ptr noundef %1, i8 noundef zeroext 2)
  tail call fastcc void @advk_pcie_disable_ob_win(ptr noundef %1, i8 noundef zeroext 3)
  tail call fastcc void @advk_pcie_disable_ob_win(ptr noundef %1, i8 noundef zeroext 4)
  tail call fastcc void @advk_pcie_disable_ob_win(ptr noundef %1, i8 noundef zeroext 5)
  tail call fastcc void @advk_pcie_disable_ob_win(ptr noundef %1, i8 noundef zeroext 6)
  tail call fastcc void @advk_pcie_disable_ob_win(ptr noundef %1, i8 noundef zeroext 7)
  %phy.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 18
  %52 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %53) #6
  %54 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy.i, align 4
  %call2.i = tail call i32 @phy_exit(ptr noundef %55) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_pcie_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 110592
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 18496
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %8, i32 18500
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %10 = xor i32 %9, -1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %12, i32 18504
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %15, i32 18508
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %20 = and i32 %6, 1
  %21 = and i32 %20, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 18524
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %26, i32 18520
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %28 = xor i32 %24, -1
  %29 = and i32 %27, %28
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i
  %msi_idx.024.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %msi_idx.024.i.i
  %and3.i.i = and i32 %shl.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #6
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %33, i32 18520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %31) #6, !srcloc !150
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %35, i32 18588
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %37 = and i32 %36, -65536
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %call8.i.i = tail call i32 @generic_handle_irq(i32 noundef %38) #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %msi_idx.024.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %advk_pcie_handle_msi.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

advk_pcie_handle_msi.exit.i:                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %40, i32 18496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 1) #6, !srcloc !150
  br label %if.end.i

if.end.i:                                         ; preds = %advk_pcie_handle_msi.exit.i, %if.end.if.end.i_crit_edge
  %irq_domain.i = getelementptr inbounds %struct.advk_pcie, ptr %arg, i32 0, i32 4
  %and9.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end12.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %42, i32 18504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 65536) #6, !srcloc !150
  %43 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %irq_domain.i, align 4
  %call15.i = tail call i32 @generic_handle_domain_irq(ptr noundef %44, i32 noundef 0) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %if.end.i.for.inc.i_crit_edge
  %and9.1.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.1.i)
  %tobool10.not.1.i = icmp eq i32 %and9.1.i, 0
  br i1 %tobool10.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end12.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end12.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr.i33.1.i = getelementptr i8, ptr %46, i32 18504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.1.i, i32 131072) #6, !srcloc !150
  %47 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %irq_domain.i, align 4
  %call15.1.i = tail call i32 @generic_handle_domain_irq(ptr noundef %48, i32 noundef 1) #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end12.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %and9.2.i = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.2.i)
  %tobool10.not.2.i = icmp eq i32 %and9.2.i, 0
  br i1 %tobool10.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end12.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.end12.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr.i33.2.i = getelementptr i8, ptr %50, i32 18504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.2.i, i32 262144) #6, !srcloc !150
  %51 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %irq_domain.i, align 4
  %call15.2.i = tail call i32 @generic_handle_domain_irq(ptr noundef %52, i32 noundef 2) #6
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end12.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %and9.3.i = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.3.i)
  %tobool10.not.3.i = icmp eq i32 %and9.3.i, 0
  br i1 %tobool10.not.3.i, label %for.inc.2.i.advk_pcie_handle_int.exit_crit_edge, label %if.end12.3.i

for.inc.2.i.advk_pcie_handle_int.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %advk_pcie_handle_int.exit

if.end12.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i33.3.i = getelementptr i8, ptr %54, i32 18504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.3.i, i32 524288) #6, !srcloc !150
  %55 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %irq_domain.i, align 4
  %call15.3.i = tail call i32 @generic_handle_domain_irq(ptr noundef %56, i32 noundef 3) #6
  br label %advk_pcie_handle_int.exit

advk_pcie_handle_int.exit:                        ; preds = %if.end12.3.i, %for.inc.2.i.advk_pcie_handle_int.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %58, i32 110592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 256) #6, !srcloc !150
  br label %cleanup

cleanup:                                          ; preds = %advk_pcie_handle_int.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %advk_pcie_handle_int.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_max_link_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @advk_pcie_remove_msi_irq_domain(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_domain = getelementptr inbounds %struct.advk_pcie, ptr %pcie, i32 0, i32 7
  %0 = ptrtoint ptr %msi_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %1) #6
  %msi_inner_domain = getelementptr inbounds %struct.advk_pcie, ptr %pcie, i32 0, i32 8
  %2 = ptrtoint ptr %msi_inner_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_inner_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @advk_pcie_disable_ob_win(ptr nocapture noundef readonly %pcie, i8 noundef zeroext %win_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %win_num to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 19456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !150
  %add6 = add nuw nsw i32 %mul, 19460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %3, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #6, !srcloc !150
  %add11 = add nuw nsw i32 %mul, 19464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %5, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 0) #6, !srcloc !150
  %add16 = add nuw nsw i32 %mul, 19468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %7, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #6, !srcloc !150
  %add21 = add nuw nsw i32 %mul, 19472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %9, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 0) #6, !srcloc !150
  %add26 = add nuw nsw i32 %mul, 19476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %11, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #6, !srcloc !150
  %add31 = add nuw nsw i32 %mul, 19480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %13, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 0) #6, !srcloc !150
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_emul_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_pci_bridge_emul_base_conf_read(ptr nocapture noundef readonly %bridge, i32 noundef %reg, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %reg, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 60, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !147
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i32, ptr %bridge, i32 15
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %base.i9 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %10, i32 18436
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %12 = and i32 %8, -16385
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = lshr i32 %11, 2
  %15 = and i32 %14, 4194304
  %val.0 = or i32 %15, %13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %sw.bb
  %val.0.sink = phi i32 [ %val.0, %sw.bb1 ], [ %6, %sw.bb ]
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %val.0.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_pci_bridge_emul_pcie_conf_read(ptr nocapture noundef readonly %bridge, i32 noundef %reg, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = add i32 %reg, -4
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 30)
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 5, label %entry.cleanup.sink.split_crit_edge
    i32 6, label %sw.bb1
    i32 7, label %sw.bb4
    i32 2, label %sw.bb9
    i32 3, label %sw.bb14
    i32 0, label %entry.sw.bb26_crit_edge
    i32 1, label %entry.sw.bb26_crit_edge64
    i32 8, label %entry.sw.bb26_crit_edge65
    i32 9, label %entry.sw.bb26_crit_edge66
    i32 10, label %entry.sw.bb26_crit_edge67
    i32 11, label %entry.sw.bb26_crit_edge68
  ]

entry.sw.bb26_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

entry.sw.bb26_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

entry.sw.bb26_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

entry.sw.bb26_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

entry.sw.bb26_crit_edge64:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 18500
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !147
  %8 = lshr i32 %7, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %9 = and i32 %8, 8
  %10 = xor i32 %9, 8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value, align 4
  %rootctl = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %rootctl to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rootctl, align 4
  %14 = lshr i16 %13, 8
  %15 = and i16 %14, 16
  %and2 = zext i16 %15 to i32
  %or = or i32 %10, %and2
  %or3 = or i32 %or, 65536
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base.i51 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %17, i32 18496
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %19 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i51, align 4
  %add.ptr.i54 = getelementptr i8, ptr %20, i32 18480
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #6, !srcloc !147
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %23 = lshr i32 %18, 8
  %shl = and i32 %23, 8388608
  %shr = lshr i32 %22, 16
  %or8 = or i32 %shr, %shl
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %reg, 192
  %base.i55 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %base.i55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %25, i32 %add
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %27 = or i32 %26, 4096
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add16 = add i32 %reg, 192
  %base.i57 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %base.i57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %30, i32 %add16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %32 = and i32 %31, -9
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %base.i57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i57, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 24576
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %37 = trunc i32 %36 to i8
  %conv.i.i = and i8 %37, 63
  %38 = add nsw i8 %conv.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %38)
  %39 = icmp ult i8 %38, 11
  %40 = and i8 %37, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %40)
  %41 = icmp eq i8 %40, 40
  %42 = select i1 %39, i1 true, i1 %41
  %masksel = select i1 %42, i32 134217728, i32 0
  %spec.select = or i32 %masksel, %33
  %43 = ptrtoint ptr %base.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i57, align 4
  %add.ptr.i.i.i60 = getelementptr i8, ptr %44, i32 24576
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i60) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %46 = trunc i32 %45 to i8
  %conv.i.i61 = and i8 %46, 63
  %47 = add nsw i8 %conv.i.i61, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %47)
  %48 = icmp ult i8 %47, 22
  %or24 = or i32 %spec.select, 536870912
  %val15.1 = select i1 %48, i32 %or24, i32 %spec.select
  br label %cleanup.sink.split

sw.bb26:                                          ; preds = %entry.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge64, %entry.sw.bb26_crit_edge65, %entry.sw.bb26_crit_edge66, %entry.sw.bb26_crit_edge67, %entry.sw.bb26_crit_edge68
  %add27 = add i32 %reg, 192
  %base.i62 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %base.i62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %50, i32 %add27
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #6, !srcloc !147
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb26, %sw.bb14, %sw.bb9, %sw.bb4, %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %52, %sw.bb26 ], [ %val15.1, %sw.bb14 ], [ %28, %sw.bb9 ], [ %or8, %sw.bb4 ], [ %or3, %sw.bb1 ], [ 4194304, %entry.cleanup.sink.split_crit_edge ]
  %53 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @advk_pci_bridge_emul_base_conf_write(ptr nocapture noundef readonly %bridge, i32 noundef %reg, i32 noundef %old, i32 noundef %new, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %reg, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 60, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %new) #6
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #6, !srcloc !150
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %and = and i32 %mask, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb1.sw.epilog_crit_edge, label %if.then

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %base.i12 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 18436
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %9 = and i32 %8, -16777217
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and2 = lshr i32 %new, 22
  %and2.lobit = and i32 %and2, 1
  %val.0 = or i32 %10, %and2.lobit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %val.0) #6
  %12 = ptrtoint ptr %base.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i12, align 4
  %add.ptr.i15 = getelementptr i8, ptr %13, i32 18436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %11) #6, !srcloc !150
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @advk_pci_bridge_emul_pcie_conf_write(ptr nocapture noundef readonly %bridge, i32 noundef %reg, i32 noundef %old, i32 noundef %new, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = add i32 %reg, -8
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 30)
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 5, label %sw.bb1
    i32 6, label %sw.bb7
    i32 0, label %entry.sw.bb9_crit_edge
    i32 8, label %entry.sw.bb9_crit_edge33
    i32 10, label %entry.sw.bb9_crit_edge34
  ]

entry.sw.bb9_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %add = add i32 %reg, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %new) #6
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !150
  %and = and i32 %new, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %retries.02.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 24576
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %11 = trunc i32 %10 to i8
  %conv.i.i.i = and i8 %11, 63
  %12 = add nsw i8 %conv.i.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %12)
  %13 = icmp ult i8 %12, 11
  %14 = and i8 %11, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %14)
  %15 = icmp eq i8 %14, 40
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %for.body.i.sw.epilog_crit_edge, label %if.end.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 429496000) #6
  %inc.i = add nuw nsw i32 %retries.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base.i25 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %base.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i25, align 4
  %add.ptr.i26 = getelementptr i8, ptr %19, i32 18500
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %21 = and i32 %20, 2147483647
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %and3 = shl i32 %new, 4
  %23 = and i32 %and3, 128
  %24 = or i32 %22, %23
  %spec.select = xor i32 %24, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #6
  %26 = ptrtoint ptr %base.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i25, align 4
  %add.ptr.i28 = getelementptr i8, ptr %27, i32 18500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %25) #6, !srcloc !150
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %28 = shl i32 %new, 15
  %29 = and i32 %28, -2147483648
  %base.i29 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %31, i32 18496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %29) #6, !srcloc !150
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge33, %entry.sw.bb9_crit_edge34
  %add10 = add i32 %reg, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %new) #6
  %base.i31 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %base.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %34, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %32) #6, !srcloc !150
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb1, %if.end.i.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @advk_pcie_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %irq_lock = getelementptr inbounds %struct.advk_pcie, ptr %3, i32 0, i32 6
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #6
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 18508
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !147
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %add = add i32 %5, 8
  %shl = shl nuw i32 1, %add
  %or = or i32 %9, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %12, i32 18508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %10) #6, !srcloc !150
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @advk_pcie_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %irq_lock = getelementptr inbounds %struct.advk_pcie, ptr %3, i32 0, i32 6
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #6
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 18508
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !147
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %add = add i32 %5, 8
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %12, i32 18508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %10) #6, !srcloc !150
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_pcie_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call ptr @irq_get_irq_data(i32 noundef %virq) #6
  %domain.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data.i, align 4
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq.i.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.advk_pcie, ptr %5, i32 0, i32 6
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %base.i.i = getelementptr inbounds %struct.advk_pcie, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 18508
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !147
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %add.i = add i32 %7, 8
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %11, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %14, i32 18508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %12) #6, !srcloc !150
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call1.i) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 256) #6
  %irq_chip = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef %irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call1 = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @advk_msi_irq_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %msi_msg1 = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %msi_msg1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %2) #6
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %msg, align 4
  %4 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %8 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @advk_msi_set_affinity(ptr nocapture noundef readnone %irq_data, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_msi_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %msi_used_lock = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %msi_used_lock, i32 noundef 0) #6
  %msi_used = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 12
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %msi_used, i32 noundef 32, i32 noundef 0, i32 noundef %nr_irqs, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 31
  br i1 %cmp, label %if.then, label %if.else11.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %msi_used_lock) #6
  br label %cleanup

if.else11.i:                                      ; preds = %entry
  tail call void @__bitmap_set(ptr noundef %msi_used, i32 noundef %call.i, i32 noundef %nr_irqs) #6
  tail call void @mutex_unlock(ptr noundef %msi_used_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp524.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp524.not, label %if.else11.i.cleanup_crit_edge, label %for.body.lr.ph

if.else11.i.cleanup_crit_edge:                    ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.else11.i
  %msi_bottom_irq_chip = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %i.025, %virq
  %add6 = add i32 %i.025, %call.i
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add, i32 noundef %add6, ptr noundef %msi_bottom_irq_chip, ptr noundef %3, ptr noundef nonnull @handle_simple_irq, ptr noundef null, ptr noundef null) #6
  %inc = add nuw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.else11.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ 0, %if.else11.i.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @advk_msi_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #6
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %msi_used_lock = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %msi_used_lock, i32 noundef 0) #6
  %msi_used = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 12
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @__bitmap_clear(ptr noundef %msi_used, i32 noundef %3, i32 noundef %nr_irqs) #6
  tail call void @mutex_unlock(ptr noundef %msi_used_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_pcie_rd_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp ne i32 %4, 0
  %5 = and i1 %cmp.not.i, %tobool.not.i.i
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not.i.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2.i:                                 ; preds = %if.end.i
  %base.i.i.i.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 24576
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %9 = and i32 %8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %land.lhs.true2.i.if.end_crit_edge, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %11 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bridge = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 16
  %call3 = tail call i32 @pci_bridge_emul_conf_read(ptr noundef %bridge, i32 noundef %where, i32 noundef %size, ptr noundef %val) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %where)
  %cmp = icmp eq i32 %where, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp5 = icmp eq i32 %size, 4
  %or.cond = and i1 %cmp, %cmp5
  br i1 %or.cond, label %land.rhs, label %if.end4.land.end_crit_edge

if.end4.land.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %rootctl = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 16, i32 1, i32 12
  %13 = ptrtoint ptr %rootctl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rootctl, align 4
  %15 = and i16 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool = icmp ne i16 %15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end4.land.end_crit_edge
  %16 = phi i1 [ false, %if.end4.land.end_crit_edge ], [ %tobool, %land.rhs ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %base.i.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 16412
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i105 = icmp eq i32 %21, 0
  br i1 %tobool.not.i105, label %if.end9, label %land.end.try_crs_crit_edge

land.end.try_crs_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_crs

if.end9:                                          ; preds = %land.end
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 16384
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %25 = and i32 %24, -251658241
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i.i, align 8
  %parent.i106 = getelementptr inbounds %struct.pci_bus, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %parent.i106 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i106, align 8
  %tobool.not.i107 = icmp eq ptr %30, null
  %reg.0.v = select i1 %tobool.not.i107, i32 8, i32 9
  %reg.0 = or i32 %reg.0.v, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #6
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %33, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %31) #6, !srcloc !150
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %34 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %number, align 4
  %conv16 = zext i8 %35 to i32
  %shl = shl nuw nsw i32 %conv16, 20
  %and18 = shl i32 %devfn, 12
  %shl19 = and i32 %and18, 1044480
  %or20 = or i32 %shl, %shl19
  %and21 = and i32 %where, 4092
  %or22 = or i32 %or20, %and21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %or22) #6
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %38, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %36) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %40, i32 16396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 0) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %42, i32 16404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 251658240) #6, !srcloc !150
  br label %do.body

do.body:                                          ; preds = %if.end28.do.body_crit_edge, %if.end9
  %retry_count.0 = phi i32 [ 0, %if.end9 ], [ %add29, %if.end28.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %44, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 16777216) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %46, i32 16412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 16777216) #6, !srcloc !150
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body
  %i.017.i = phi i32 [ 1, %do.body ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %50, i32 16412
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %53, i32 16416
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i123 = icmp ne i32 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool3.not.i = icmp eq i32 %54, 0
  %or.cond.i = select i1 %tobool.not.i123, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %for.inc.i, label %if.end28

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 429496) #6
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 750001
  br i1 %exitcond.not.i, label %for.inc.i.try_crs_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.try_crs_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_crs

if.end28:                                         ; preds = %for.body.i
  %call31 = tail call fastcc i32 @advk_pcie_check_pio_status(ptr noundef %1, i1 noundef zeroext %16, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call31)
  %cmp32 = icmp eq i32 %call31, -11
  %add29 = add i32 %i.017.i, %retry_count.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 750000, i32 %add29)
  %cmp35 = icmp slt i32 %add29, 750000
  %or.cond104 = select i1 %cmp32, i1 %cmp35, i1 false
  br i1 %or.cond104, label %if.end28.do.body_crit_edge, label %do.end

if.end28.do.body_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp38 = icmp slt i32 %call31, 0
  br i1 %cmp38, label %do.end.fail_crit_edge, label %if.end41

do.end.fail_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end41:                                         ; preds = %do.end
  %56 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %size, label %if.end41.cleanup_crit_edge [
    i32 1, label %if.then44
    i32 2, label %if.then50
  ]

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val, align 4
  %and45 = shl i32 %where, 3
  %mul = and i32 %and45, 24
  %shr = lshr i32 %58, %mul
  %and46 = and i32 %shr, 255
  store i32 %and46, ptr %val, align 4
  br label %cleanup

if.then50:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  %and51 = shl i32 %where, 3
  %mul52 = and i32 %and51, 24
  %shr53 = lshr i32 %60, %mul52
  %and54 = and i32 %shr53, 65535
  store i32 %and54, ptr %val, align 4
  br label %cleanup

try_crs:                                          ; preds = %for.inc.i.try_crs_crit_edge, %land.end.try_crs_crit_edge
  %.lcssa133.sink = phi ptr [ %18, %land.end.try_crs_crit_edge ], [ %48, %for.inc.i.try_crs_crit_edge ]
  %.str.52.sink = phi ptr [ @.str.50, %land.end.try_crs_crit_edge ], [ @.str.52, %for.inc.i.try_crs_crit_edge ]
  %dev1.i120.le = getelementptr inbounds %struct.platform_device, ptr %.lcssa133.sink, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i120.le, ptr noundef nonnull %.str.52.sink) #9
  br i1 %16, label %if.then58, label %try_crs.fail_crit_edge

try_crs.fail_crit_edge:                           ; preds = %try_crs
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then58:                                        ; preds = %try_crs
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -65535, ptr %val, align 4
  br label %cleanup

fail:                                             ; preds = %try_crs.fail_crit_edge, %do.end.fail_crit_edge
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then58, %if.then50, %if.then44, %if.end41.cleanup_crit_edge, %if.then2, %land.lhs.true2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %if.then58 ], [ 136, %fail ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.then50 ], [ 0, %if.then44 ], [ 134, %entry.cleanup_crit_edge ], [ 134, %land.lhs.true2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advk_pcie_wr_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp ne i32 %4, 0
  %5 = and i1 %cmp.not.i, %tobool.not.i.i
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not.i.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2.i:                                 ; preds = %if.end.i
  %base.i.i.i.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 24576
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %9 = and i32 %8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %land.lhs.true2.i.if.end_crit_edge, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %11 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bridge = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 16
  %call3 = tail call i32 @pci_bridge_emul_conf_write(ptr noundef %bridge, i32 noundef %where, i32 noundef %size, i32 noundef %val) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rem = srem i32 %where, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %base.i.i = getelementptr inbounds %struct.advk_pcie, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 16412
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i79 = icmp eq i32 %17, 0
  br i1 %tobool.not.i79, label %if.end9, label %advk_pcie_pio_is_running.exit.thread

advk_pcie_pio_is_running.exit.thread:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 16384
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %21 = and i32 %20, -251658241
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i.i, align 8
  %parent.i80 = getelementptr inbounds %struct.pci_bus, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %parent.i80 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i80, align 8
  %tobool.not.i81 = icmp eq ptr %26, null
  %reg.0.v = select i1 %tobool.not.i81, i32 10, i32 11
  %reg.0 = or i32 %reg.0.v, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #6
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %29, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %27) #6, !srcloc !150
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %30 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %number, align 4
  %conv = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %conv, 20
  %and16 = shl i32 %devfn, 12
  %shl17 = and i32 %and16, 1044480
  %or18 = or i32 %shl, %shl17
  %and19 = and i32 %where, 4092
  %or20 = or i32 %or18, %and19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %or20) #6
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %34, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %32) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %36, i32 16396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 0) #6, !srcloc !150
  %and22 = and i32 %where, 3
  %mul = shl nuw nsw i32 %and22, 3
  %shl23 = shl i32 %val, %mul
  %sub25 = sub i32 32, %size
  %shr = lshr i32 -1, %sub25
  %shl28 = shl i32 %shr, %and22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %shl23) #6
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %39, i32 16400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %37) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %shl28) #6
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %42, i32 16404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %40) #6, !srcloc !150
  br label %do.body

do.body:                                          ; preds = %advk_pcie_check_pio_status.exit.do.body_crit_edge, %if.end9
  %retry_count.0 = phi i32 [ 0, %if.end9 ], [ %add33, %advk_pcie_check_pio_status.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %44, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 16777216) #6, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %46, i32 16412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 16777216) #6, !srcloc !150
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body
  %i.017.i = phi i32 [ 1, %do.body ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %50, i32 16412
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i98) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %53, i32 16416
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i99 = icmp ne i32 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool3.not.i = icmp eq i32 %54, 0
  %or.cond.i = select i1 %tobool.not.i99, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %for.inc.i, label %if.end32

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 429496) #6
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 750001
  br i1 %exitcond.not.i, label %advk_pcie_wait_pio.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

advk_pcie_wait_pio.exit.thread:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i96.le = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i96.le, ptr noundef nonnull @.str.52) #9
  br label %cleanup

if.end32:                                         ; preds = %for.body.i
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %dev1.i101 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %59, i32 16388
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i103) #6, !srcloc !147
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %and.i = lshr i32 %61, 7
  %shr.i = and i32 %and.i, 7
  %62 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %shr.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end32.if.end16.i_crit_edge
    i32 2, label %sw.bb8.i
    i32 4, label %sw.bb13.i
  ]

if.end32.if.end16.i_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

sw.bb.i:                                          ; preds = %if.end32
  %and2.i = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i104 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i104, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.if.end16.i_crit_edge

sw.bb.i.if.end16.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

sw.bb13.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

sw.default.i:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %sw.default.i, %sw.bb13.i, %sw.bb8.i, %sw.bb.i.if.end16.i_crit_edge, %if.end32.if.end16.i_crit_edge
  %strcomp_status.0.ph.i = phi ptr [ @.str.56, %sw.bb8.i ], [ @.str.55, %if.end32.if.end16.i_crit_edge ], [ @.str.54, %sw.bb.i.if.end16.i_crit_edge ], [ @.str.57, %sw.bb13.i ], [ @.str.58, %sw.default.i ]
  %cmp35 = phi i1 [ true, %sw.bb8.i ], [ false, %if.end32.if.end16.i_crit_edge ], [ false, %sw.bb.i.if.end16.i_crit_edge ], [ false, %sw.bb13.i ], [ false, %sw.default.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @advk_pcie_check_pio_status.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@advk_pcie_wr_conf, %advk_pcie_check_pio_status.exit)) #6
          to label %if.then27.i [label %advk_pcie_check_pio_status.exit], !srcloc !146

if.then27.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %and17.i = and i32 %61, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %.str.60..str.59.i = select i1 %tobool18.not.i, ptr @.str.60, ptr @.str.59
  %63 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %64, i32 16392
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #6, !srcloc !147
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @advk_pcie_check_pio_status.__UNIQUE_ID_ddebug293, ptr noundef %dev1.i101, ptr noundef nonnull @.str.62, ptr noundef nonnull %.str.60..str.59.i, ptr noundef nonnull %strcomp_status.0.ph.i, i32 noundef %61, i32 noundef %66) #6
  br label %advk_pcie_check_pio_status.exit

advk_pcie_check_pio_status.exit:                  ; preds = %if.then27.i, %if.end16.i
  %add33 = add i32 %i.017.i, %retry_count.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 750000, i32 %add33)
  %cmp37 = icmp slt i32 %add33, 750000
  %or.cond = select i1 %cmp35, i1 %cmp37, i1 false
  br i1 %or.cond, label %advk_pcie_check_pio_status.exit.do.body_crit_edge, label %advk_pcie_check_pio_status.exit.cleanup_crit_edge

advk_pcie_check_pio_status.exit.cleanup_crit_edge: ; preds = %advk_pcie_check_pio_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

advk_pcie_check_pio_status.exit.do.body_crit_edge: ; preds = %advk_pcie_check_pio_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %advk_pcie_check_pio_status.exit.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %advk_pcie_wait_pio.exit.thread, %advk_pcie_pio_is_running.exit.thread, %if.end4.cleanup_crit_edge, %if.then2, %land.lhs.true2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 136, %if.end4.cleanup_crit_edge ], [ 136, %advk_pcie_pio_is_running.exit.thread ], [ 136, %advk_pcie_wait_pio.exit.thread ], [ 134, %entry.cleanup_crit_edge ], [ 134, %land.lhs.true2.i.cleanup_crit_edge ], [ 136, %advk_pcie_check_pio_status.exit.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_emul_conf_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @advk_pcie_check_pio_status(ptr nocapture noundef readonly %pcie, i1 noundef zeroext %allow_crs, ptr noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.advk_pcie, ptr %pcie, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16388
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !147
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %and = lshr i32 %5, 7
  %shr = and i32 %and, 7
  %6 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %entry.if.end16_crit_edge
    i32 2, label %sw.bb8
    i32 4, label %sw.bb13
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.bb:                                            ; preds = %entry
  %and2 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.if.end16_crit_edge

sw.bb.if.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end:                                           ; preds = %sw.bb
  %tobool3.not = icmp eq ptr %val, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %8, i32 16408
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #6, !srcloc !147
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %tobool10.not = icmp ne ptr %val, null
  %12 = and i1 %tobool10.not, %allow_crs
  br i1 %12, label %if.then11, label %sw.bb8.if.end16_crit_edge

sw.bb8.if.end16_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -65535, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %sw.default, %sw.bb13, %sw.bb8.if.end16_crit_edge, %sw.bb.if.end16_crit_edge, %entry.if.end16_crit_edge
  %strcomp_status.0.ph = phi ptr [ @.str.56, %sw.bb8.if.end16_crit_edge ], [ @.str.55, %entry.if.end16_crit_edge ], [ @.str.54, %sw.bb.if.end16_crit_edge ], [ @.str.57, %sw.bb13 ], [ @.str.58, %sw.default ]
  %ret.0.ph = phi i32 [ -11, %sw.bb8.if.end16_crit_edge ], [ -95, %entry.if.end16_crit_edge ], [ -14, %sw.bb.if.end16_crit_edge ], [ -125, %sw.bb13 ], [ -22, %sw.default ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @advk_pcie_check_pio_status.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@advk_pcie_check_pio_status, %cleanup)) #6
          to label %if.then27 [label %cleanup], !srcloc !146

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %and17 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %.str.60..str.59 = select i1 %tobool18.not, ptr @.str.60, ptr @.str.59
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %15, i32 16392
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #6, !srcloc !147
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @advk_pcie_check_pio_status.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.62, ptr noundef nonnull %.str.60..str.59, ptr noundef nonnull %strcomp_status.0.ph, i32 noundef %5, i32 noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end16, %if.then11, %if.then4, %if.end.cleanup_crit_edge
  %ret.055 = phi i32 [ %ret.0.ph, %if.then27 ], [ 0, %if.then11 ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ], [ %ret.0.ph, %if.end16 ]
  ret i32 %ret.055
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_emul_conf_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bridge_emul_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93, !95, !97, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_pci_aardvark__295_1762_advk_pcie_driver_init6, !1, !"__initcall__kmod_pci_aardvark__295_1762_advk_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1762, i32 1}
!2 = !{ptr @__exitcall_advk_pcie_driver_exit, !1, !"__exitcall_advk_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1764, i32 1}
!5 = !{ptr @__UNIQUE_ID_file297, !6, !"__UNIQUE_ID_file297", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1765, i32 1}
!7 = !{ptr @__UNIQUE_ID_license298, !6, !"__UNIQUE_ID_license298", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1756, i32 11}
!10 = !{ptr @advk_pcie_driver, !11, !"advk_pcie_driver", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1754, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1575, i32 4}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @advk_pcie_probe.__UNIQUE_ID_ddebug294, !13, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1599, i32 4}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @advk_pcie_probe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @advk_pcie_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1619, i32 3}
!26 = !{ptr @advk_pcie_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @advk_pcie_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1624, i32 14}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1626, i32 14}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1633, i32 5}
!34 = !{ptr @advk_pcie_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @advk_pcie_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1653, i32 3}
!38 = !{ptr @advk_pcie_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @advk_pcie_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1659, i32 3}
!42 = !{ptr @advk_pcie_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @advk_pcie_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @advk_pcie_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1665, i32 3}
!46 = !{ptr @advk_pcie_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1507, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @advk_pcie_setup_phy._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @advk_pcie_setup_phy._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1514, i32 3}
!55 = !{ptr @advk_pcie_setup_phy._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @advk_pcie_setup_phy._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1486, i32 3}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @advk_pcie_enable_phy._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @advk_pcie_enable_phy._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 444, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @advk_pcie_train_link._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @advk_pcie_train_link._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 446, i32 3}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @advk_pcie_train_link._entry.34, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @advk_pcie_train_link._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 379, i32 2}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @advk_pcie_issue_perst._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @advk_pcie_issue_perst._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @advk_pci_bridge_emul_ops, !78, !"advk_pci_bridge_emul_ops", i1 false, i1 false}
!78 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 931, i32 35}
!79 = !{ptr @advk_pcie_init_irq_domain.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1348, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1352, i32 3}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @advk_pcie_init_irq_domain._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @advk_pcie_init_irq_domain._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1358, i32 51}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1373, i32 3}
!91 = !{ptr @advk_pcie_init_irq_domain._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @advk_pcie_init_irq_domain._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @advk_pcie_irq_domain_ops, !94, !"advk_pcie_irq_domain_ops", i1 false, i1 false}
!94 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1281, i32 36}
!95 = !{ptr @advk_pcie_init_msi_irq_domain.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1294, i32 2}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1298, i32 20}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1303, i32 17}
!102 = !{ptr @advk_msi_domain_ops, !103, !"advk_msi_domain_ops", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1234, i32 36}
!104 = !{ptr @advk_pcie_ops, !105, !"advk_pcie_ops", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1174, i32 23}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1015, i32 3}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @advk_pcie_pio_is_running._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @advk_pcie_pio_is_running._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 763, i32 2}
!113 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @advk_pcie_wait_pio._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @advk_pcie_wait_pio._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 671, i32 21}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 683, i32 20}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 721, i32 20}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 725, i32 20}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 729, i32 20}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 738, i32 16}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 740, i32 16}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 742, i32 2}
!132 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @advk_pcie_check_pio_status.__UNIQUE_ID_ddebug293, !131, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!134 = !{ptr @advk_pcie_of_match_table, !135, !"advk_pcie_of_match_table", i1 false, i1 false}
!135 = !{!"../drivers/pci/controller/pci-aardvark.c", i32 1748, i32 34}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i32 0, i32 33}
!146 = !{i64 2148807302, i64 2148807307, i64 2148807320, i64 2148807364, i64 2148807398, i64 2148807419}
!147 = !{i64 4287164}
!148 = !{i64 2155640587}
!149 = !{i64 2155639762}
!150 = !{i64 4286746}
