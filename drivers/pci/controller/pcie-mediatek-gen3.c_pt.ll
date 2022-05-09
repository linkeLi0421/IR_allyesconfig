; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-mediatek-gen3.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-mediatek-gen3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.mtk_gen3_pcie = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.raw_spinlock, ptr, ptr, ptr, [8 x %struct.mtk_msi_set], %struct.mutex, [8 x i32] }
%struct.mtk_msi_set = type { ptr, i32, i32 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.78, %union.anon.79, %union.anon.80 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pcie_mediatek_gen3__296_1030_mtk_pcie_driver_init6 = internal global ptr @mtk_pcie_driver_init, section ".initcall6.init", align 4
@mtk_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_pcie_probe, ptr @mtk_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_pcie_driver_exit = internal global ptr @mtk_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file297 = internal constant [66 x i8] c"pcie_mediatek_gen3.file=drivers/pci/controller/pcie-mediatek-gen3\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [34 x i8] c"pcie_mediatek_gen3.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtk-pcie\00", [23 x i8] zeroinitializer }, align 32
@mtk_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mtk_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_pcie_suspend_noirq, ptr @mtk_pcie_resume_noirq, ptr @mtk_pcie_suspend_noirq, ptr @mtk_pcie_resume_noirq, ptr @mtk_pcie_suspend_noirq, ptr @mtk_pcie_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @mtk_pcie_map_bus, ptr @mtk_pcie_config_read, ptr @mtk_pcie_config_write }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-mac\00", [23 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 731, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to map register base\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_pcie_parse_port\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/pci/controller/pcie-mediatek-gen3.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry_ptr = internal global ptr @mtk_pcie_parse_port._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 741, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get PHY reset\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry_ptr.10 = internal global ptr @mtk_pcie_parse_port._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 750, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get MAC reset\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry_ptr.14 = internal global ptr @mtk_pcie_parse_port._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-phy\00", [23 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 759, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get PHY\0A\00", [45 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry_ptr.18 = internal global ptr @mtk_pcie_parse_port._entry.16, section ".printk_index", align 4
@mtk_pcie_parse_port._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get clocks\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry_ptr.21 = internal global ptr @mtk_pcie_parse_port._entry.19, section ".printk_index", align 4
@mtk_pcie_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 783, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialize PHY\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_pcie_power_up\00", [46 x i8] zeroinitializer }, align 32
@mtk_pcie_power_up._entry_ptr = internal global ptr @mtk_pcie_power_up._entry, section ".printk_index", align 4
@mtk_pcie_power_up._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 789, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to power on PHY\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_pcie_power_up._entry_ptr.26 = internal global ptr @mtk_pcie_power_up._entry.24, section ".printk_index", align 4
@mtk_pcie_power_up._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 801, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_pcie_power_up._entry_ptr.29 = internal global ptr @mtk_pcie_power_up._entry.27, section ".printk_index", align 4
@mtk_pcie_startup_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCIe link down, ltssm reg val: %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_pcie_startup_port\00", [42 x i8] zeroinitializer }, align 32
@mtk_pcie_startup_port._entry_ptr = internal global ptr @mtk_pcie_startup_port._entry, section ".printk_index", align 4
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IO\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MEM\00", [28 x i8] zeroinitializer }, align 32
@mtk_pcie_startup_port.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.31, ptr @.str.4, ptr @.str.35, i8 0, i8 91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcie_mediatek_gen3\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"set %s trans window[%d]: cpu_addr = %#llx, pci_addr = %#llx, size = %#llx\0A\00", [53 x i8] zeroinitializer }, align 32
@mtk_pcie_set_trans_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"not enough translate table for addr: %#llx, limited to [%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_pcie_set_trans_table\00", [39 x i8] zeroinitializer }, align 32
@mtk_pcie_set_trans_table._entry_ptr = internal global ptr @mtk_pcie_set_trans_table._entry, section ".printk_index", align 4
@mtk_pcie_init_irq_domains.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pcie->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing interrupt-controller node\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_pcie_init_irq_domains\00", [38 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domains._entry_ptr = internal global ptr @mtk_pcie_init_irq_domains._entry, section ".printk_index", align 4
@intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mtk_pcie_intx_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domains._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create INTx IRQ domain\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domains._entry_ptr.44 = internal global ptr @mtk_pcie_init_irq_domains._entry.42, section ".printk_index", align 4
@mtk_pcie_init_irq_domains.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pcie->lock\00", [20 x i8] zeroinitializer }, align 32
@mtk_msi_bottom_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_msi_bottom_domain_alloc, ptr @mtk_msi_bottom_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domains._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.41, ptr @.str.4, i32 612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create MSI bottom domain\0A\00", [60 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domains._entry_ptr.49 = internal global ptr @mtk_pcie_init_irq_domains._entry.47, section ".printk_index", align 4
@mtk_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 15, ptr null, ptr @mtk_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domains._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.41, ptr @.str.4, i32 621, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domains._entry_ptr.52 = internal global ptr @mtk_pcie_init_irq_domains._entry.50, section ".printk_index", align 4
@mtk_intx_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.53, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_intx_mask, ptr null, ptr @mtk_intx_unmask, ptr @mtk_intx_eoi, ptr @mtk_pcie_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTx\00", [27 x i8] zeroinitializer }, align 32
@mtk_msi_bottom_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.54, ptr null, ptr null, ptr null, ptr null, ptr @mtk_msi_bottom_irq_ack, ptr @mtk_msi_bottom_irq_mask, ptr null, ptr @mtk_msi_bottom_irq_unmask, ptr null, ptr @mtk_pcie_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@mtk_compose_msi_msg.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_compose_msi_msg\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"msi#%#lx address_hi %#x address_lo %#x data %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mtk_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.54, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @mtk_pcie_msi_irq_mask, ptr null, ptr @mtk_pcie_msi_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mtk_pcie_suspend_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 972, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot enter L2 state\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_pcie_suspend_noirq\00", [41 x i8] zeroinitializer }, align 32
@mtk_pcie_suspend_noirq._entry_ptr = internal global ptr @mtk_pcie_suspend_noirq._entry, section ".printk_index", align 4
@mtk_pcie_suspend_noirq.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 0, i8 -11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"entered L2 states successfully\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"mtk_pcie_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1020, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1024, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"mtk_pcie_of_match\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1014, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"mtk_pcie_pm_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1009, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"mtk_pcie_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 207, i32 23 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 726, i32 60 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 731, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 737, i32 67 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 741, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 746, i32 67 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 750, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 755, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 759, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 766, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 783, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 789, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 801, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 331, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 348, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 351, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 363, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 223, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 590, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 593, i32 41 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 595, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"intx_domain_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 580, i32 36 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 602, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 607, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [26 x i8] c"mtk_msi_bottom_domain_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 515, i32 36 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 612, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c"mtk_msi_domain_info\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 398, i32 31 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 621, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"mtk_intx_irq_chip\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 563, i32 24 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 576, i32 31 }
@___asan_gen_.237 = private unnamed_addr constant [24 x i8] c"mtk_msi_bottom_irq_chip\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 461, i32 24 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 467, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 415, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"mtk_msi_irq_chip\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 391, i32 24 }
@___asan_gen_.252 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 972, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.262 = private constant [47 x i8] c"../drivers/pci/controller/pcie-mediatek-gen3.c\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 981, i32 2 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_mtk_pcie_driver_exit, ptr @__initcall__kmod_pcie_mediatek_gen3__296_1030_mtk_pcie_driver_init6, ptr @mtk_pcie_driver_exit, ptr @mtk_pcie_init_irq_domains._entry, ptr @mtk_pcie_init_irq_domains._entry.42, ptr @mtk_pcie_init_irq_domains._entry.47, ptr @mtk_pcie_init_irq_domains._entry.50, ptr @mtk_pcie_init_irq_domains._entry_ptr, ptr @mtk_pcie_init_irq_domains._entry_ptr.44, ptr @mtk_pcie_init_irq_domains._entry_ptr.49, ptr @mtk_pcie_init_irq_domains._entry_ptr.52, ptr @mtk_pcie_parse_port._entry, ptr @mtk_pcie_parse_port._entry.12, ptr @mtk_pcie_parse_port._entry.16, ptr @mtk_pcie_parse_port._entry.19, ptr @mtk_pcie_parse_port._entry.8, ptr @mtk_pcie_parse_port._entry_ptr, ptr @mtk_pcie_parse_port._entry_ptr.10, ptr @mtk_pcie_parse_port._entry_ptr.14, ptr @mtk_pcie_parse_port._entry_ptr.18, ptr @mtk_pcie_parse_port._entry_ptr.21, ptr @mtk_pcie_power_up._entry, ptr @mtk_pcie_power_up._entry.24, ptr @mtk_pcie_power_up._entry.27, ptr @mtk_pcie_power_up._entry_ptr, ptr @mtk_pcie_power_up._entry_ptr.26, ptr @mtk_pcie_power_up._entry_ptr.29, ptr @mtk_pcie_set_trans_table._entry, ptr @mtk_pcie_set_trans_table._entry_ptr, ptr @mtk_pcie_startup_port._entry, ptr @mtk_pcie_startup_port._entry_ptr, ptr @mtk_pcie_suspend_noirq._entry, ptr @mtk_pcie_suspend_noirq._entry_ptr, ptr @mtk_pcie_driver, ptr @.str, ptr @mtk_pcie_of_match, ptr @mtk_pcie_pm_ops, ptr @mtk_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @mtk_pcie_init_irq_domains.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @intx_domain_ops, ptr @.str.43, ptr @mtk_pcie_init_irq_domains.__key.45, ptr @.str.46, ptr @mtk_msi_bottom_domain_ops, ptr @.str.48, ptr @mtk_msi_domain_info, ptr @.str.51, ptr @mtk_intx_irq_chip, ptr @.str.53, ptr @mtk_msi_bottom_irq_chip, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @mtk_msi_irq_chip, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_parse_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_parse_port._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_parse_port._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_parse_port._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_parse_port._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_power_up._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_power_up._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_startup_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_set_trans_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_init_irq_domains.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_init_irq_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_init_irq_domains._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_init_irq_domains.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_msi_bottom_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_init_irq_domains._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_init_irq_domains._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_intx_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_msi_bottom_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_suspend_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_pcie_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_pcie_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 316) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %2 = load ptr, ptr %private.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 -16
  %call.i.i = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i.i, i32 noundef 512, ptr noundef nonnull @.str.1) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %call2.i.i = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %call.i.i) #8
  %base.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i.i, ptr %base.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end8.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #11
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %mtk_pcie_parse_port.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg_base.i.i, align 4
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %phy_reset.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %phy_reset.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i.i, ptr %phy_reset.i.i, align 4
  %cmp.i93.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93.i.i, label %if.then12.i.i, label %if.end20.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  %cmp.not.i.i = icmp eq ptr %call.i.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i.i, label %if.then12.i.i.cleanup_crit_edge, label %do.end18.i.i

if.then12.i.i.cleanup_crit_edge:                  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end18.i.i:                                     ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call.i.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #11
  br label %mtk_pcie_parse_port.exit.i

if.end20.i.i:                                     ; preds = %if.end8.i.i
  %call.i94.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %mac_reset.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %mac_reset.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i94.i.i, ptr %mac_reset.i.i, align 4
  %cmp.i95.i.i = icmp ugt ptr %call.i94.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.i.i, label %if.then24.i.i, label %if.end33.i.i

if.then24.i.i:                                    ; preds = %if.end20.i.i
  %cmp27.not.i.i = icmp eq ptr %call.i94.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp27.not.i.i, label %if.then24.i.i.cleanup_crit_edge, label %do.end31.i.i

if.then24.i.i.cleanup_crit_edge:                  ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end31.i.i:                                     ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call.i94.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #11
  br label %mtk_pcie_parse_port.exit.i

if.end33.i.i:                                     ; preds = %if.end20.i.i
  %call34.i.i = tail call ptr @devm_phy_optional_get(ptr noundef %2, ptr noundef nonnull @.str.15) #8
  %phy.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %14 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call34.i.i, ptr %phy.i.i, align 4
  %cmp.i96.i.i = icmp ugt ptr %call34.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96.i.i, label %if.then37.i.i, label %if.end46.i.i

if.then37.i.i:                                    ; preds = %if.end33.i.i
  %cmp40.not.i.i = icmp eq ptr %call34.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp40.not.i.i, label %if.then37.i.i.cleanup_crit_edge, label %do.end44.i.i

if.then37.i.i.cleanup_crit_edge:                  ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end44.i.i:                                     ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call34.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17) #11
  br label %mtk_pcie_parse_port.exit.i

if.end46.i.i:                                     ; preds = %if.end33.i.i
  %clks.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  %call47.i.i = tail call i32 @devm_clk_bulk_get_all(ptr noundef %2, ptr noundef %clks.i.i) #8
  %num_clks.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 6
  %16 = ptrtoint ptr %num_clks.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call47.i.i, ptr %num_clks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %cmp49.i.i = icmp slt i32 %call47.i.i, 0
  br i1 %cmp49.i.i, label %do.end53.i.i, label %if.end46.i.i.if.end.i_crit_edge

if.end46.i.i.if.end.i_crit_edge:                  ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end53.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20) #11
  %17 = ptrtoint ptr %num_clks.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_clks.i.i, align 4
  br label %mtk_pcie_parse_port.exit.i

mtk_pcie_parse_port.exit.i:                       ; preds = %do.end53.i.i, %do.end44.i.i, %do.end31.i.i, %do.end18.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %6, %do.end.i.i ], [ %18, %do.end53.i.i ], [ %11, %do.end18.i.i ], [ %13, %do.end31.i.i ], [ %15, %do.end44.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %mtk_pcie_parse_port.exit.i.if.end.i_crit_edge, label %mtk_pcie_parse_port.exit.i.cleanup_crit_edge

mtk_pcie_parse_port.exit.i.cleanup_crit_edge:     ; preds = %mtk_pcie_parse_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtk_pcie_parse_port.exit.i.if.end.i_crit_edge:    ; preds = %mtk_pcie_parse_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %mtk_pcie_parse_port.exit.i.if.end.i_crit_edge, %if.end46.i.i.if.end.i_crit_edge
  %call1.i = tail call fastcc i32 @mtk_pcie_power_up(ptr noundef %private.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call fastcc i32 @mtk_pcie_startup_port(ptr noundef %private.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.err_setup.i_crit_edge

if.end4.i.err_setup.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_setup.i

if.end8.i:                                        ; preds = %if.end4.i
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private.i, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i.i.i, align 8
  %irq_lock.i.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock.i.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @mtk_pcie_init_irq_domains.__key, i16 noundef signext 2) #8
  %call.i.i23.i = tail call ptr @of_get_child_by_name(ptr noundef %22, ptr noundef nonnull @.str.39) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i23.i, null
  br i1 %tobool.not.i.i.i, label %do.end4.i.i.i, label %if.end.i.i.i

do.end4.i.i.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.40) #11
  br label %err_setup.i

if.end.i.i.i:                                     ; preds = %if.end8.i
  %fwnode.i.i.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i.i23.i, i32 0, i32 3
  %call1.i.i.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef %private.i) #8
  %intx_domain.i.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 1
  %23 = ptrtoint ptr %intx_domain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.i.i.i.i, ptr %intx_domain.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool7.not.i.i.i, label %do.end11.i.i.i, label %do.body13.i.i.i

do.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.43) #11
  br label %err_setup.i

do.body13.i.i.i:                                  ; preds = %if.end.i.i.i
  %lock.i.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  tail call void @__mutex_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @mtk_pcie_init_irq_domains.__key.45) #8
  %tobool.not.i.i58.i.i.i = icmp eq ptr %22, null
  %fwnode.i.i59.i.i.i = getelementptr inbounds %struct.device_node, ptr %22, i32 0, i32 3
  %spec.select.i.i60.i.i.i = select i1 %tobool.not.i.i58.i.i.i, ptr null, ptr %fwnode.i.i59.i.i.i
  %call1.i61.i.i.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i60.i.i.i, i32 noundef 256, i32 noundef 256, i32 noundef 0, ptr noundef nonnull @mtk_msi_bottom_domain_ops, ptr noundef %private.i) #8
  %msi_bottom_domain.i.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 3
  %24 = ptrtoint ptr %msi_bottom_domain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i61.i.i.i, ptr %msi_bottom_domain.i.i.i, align 4
  %tobool18.not.i.i.i = icmp eq ptr %call1.i61.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %do.end22.i.i.i, label %if.end23.i.i.i

do.end22.i.i.i:                                   ; preds = %do.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.48) #11
  br label %err_msi_bottom_domain.i.i.i

if.end23.i.i.i:                                   ; preds = %do.body13.i.i.i
  %fwnode.i.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 28
  %25 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fwnode.i.i.i, align 4
  %call25.i.i.i = tail call ptr @pci_msi_create_irq_domain(ptr noundef %26, ptr noundef nonnull @mtk_msi_domain_info, ptr noundef nonnull %call1.i61.i.i.i) #8
  %msi_domain.i.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  %27 = ptrtoint ptr %msi_domain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call25.i.i.i, ptr %msi_domain.i.i.i, align 4
  %tobool27.not.i.i.i = icmp eq ptr %call25.i.i.i, null
  br i1 %tobool27.not.i.i.i, label %do.end31.i.i.i, label %if.end.i26.i

do.end31.i.i.i:                                   ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.51) #11
  %28 = ptrtoint ptr %msi_bottom_domain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %msi_bottom_domain.i.i.i, align 4
  tail call void @irq_domain_remove(ptr noundef %29) #8
  br label %err_msi_bottom_domain.i.i.i

err_msi_bottom_domain.i.i.i:                      ; preds = %do.end31.i.i.i, %do.end22.i.i.i
  %30 = ptrtoint ptr %intx_domain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intx_domain.i.i.i, align 4
  tail call void @irq_domain_remove(ptr noundef %31) #8
  br label %err_setup.i

if.end.i26.i:                                     ; preds = %if.end23.i.i.i
  %add.ptr.i24.i = getelementptr i8, ptr %20, i32 -16
  %call2.i25.i = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i24.i, i32 noundef 0) #8
  %irq.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7
  %32 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call2.i25.i, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25.i)
  %cmp.i.i = icmp slt i32 %call2.i25.i, 0
  br i1 %cmp.i.i, label %if.end.i26.i.err_setup.i_crit_edge, label %if.end7

if.end.i26.i.err_setup.i_crit_edge:               ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_setup.i

err_setup.i:                                      ; preds = %if.end.i26.i.err_setup.i_crit_edge, %err_msi_bottom_domain.i.i.i, %do.end11.i.i.i, %do.end4.i.i.i, %if.end4.i.err_setup.i_crit_edge
  %err.0.i = phi i32 [ %call5.i, %if.end4.i.err_setup.i_crit_edge ], [ -19, %do.end4.i.i.i ], [ -19, %do.end11.i.i.i ], [ -19, %err_msi_bottom_domain.i.i.i ], [ %call2.i25.i, %if.end.i26.i.err_setup.i_crit_edge ]
  %num_clks.i28.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 6
  %33 = ptrtoint ptr %num_clks.i28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_clks.i28.i, align 4
  %clks.i29.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  %35 = ptrtoint ptr %clks.i29.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clks.i29.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %34, ptr noundef %36) #8
  tail call void @clk_bulk_unprepare(i32 noundef %34, ptr noundef %36) #8
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end.i26.i
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call2.i25.i, ptr noundef nonnull @mtk_pcie_irq_handler, ptr noundef %private.i) #8
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @mtk_pcie_ops, ptr %ops, align 4
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %38 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %private.i, ptr %sysdata, align 4
  %call8 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %39 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq.i.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %40, ptr noundef null, ptr noundef null) #8
  %41 = ptrtoint ptr %intx_domain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intx_domain.i.i.i, align 4
  %tobool.not.i29 = icmp eq ptr %42, null
  br i1 %tobool.not.i29, label %if.then10.if.end.i31_crit_edge, label %if.then.i

if.then10.if.end.i31_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i31

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %42) #8
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.then.i, %if.then10.if.end.i31_crit_edge
  %43 = ptrtoint ptr %msi_domain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %msi_domain.i.i.i, align 4
  %tobool2.not.i30 = icmp eq ptr %44, null
  br i1 %tobool2.not.i30, label %if.end.i31.if.end5.i_crit_edge, label %if.then3.i

if.end.i31.if.end5.i_crit_edge:                   ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %44) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i31.if.end5.i_crit_edge
  %45 = ptrtoint ptr %msi_bottom_domain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %msi_bottom_domain.i.i.i, align 4
  %tobool6.not.i32 = icmp eq ptr %46, null
  br i1 %tobool6.not.i32, label %if.end5.i.mtk_pcie_irq_teardown.exit_crit_edge, label %if.then7.i

if.end5.i.mtk_pcie_irq_teardown.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_irq_teardown.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %46) #8
  br label %mtk_pcie_irq_teardown.exit

mtk_pcie_irq_teardown.exit:                       ; preds = %if.then7.i, %if.end5.i.mtk_pcie_irq_teardown.exit_crit_edge
  %47 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq.i.i, align 4
  tail call void @irq_dispose_mapping(i32 noundef %48) #8
  %num_clks.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 6
  %49 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  %51 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %50, ptr noundef %52) #8
  tail call void @clk_bulk_unprepare(i32 noundef %50, ptr noundef %52) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %mtk_pcie_irq_teardown.exit, %err_setup.i
  %retval.0.ph = phi i32 [ %err.0.i, %err_setup.i ], [ %call8, %mtk_pcie_irq_teardown.exit ]
  %53 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %private.i, align 4
  %call.i.i33 = tail call i32 @__pm_runtime_idle(ptr noundef %54, i32 noundef 4) #8
  %55 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %56, i1 noundef zeroext true) #8
  %mac_reset.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %57 = ptrtoint ptr %mac_reset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mac_reset.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %58) #8
  %phy.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %59 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phy.i, align 4
  %call3.i.i = tail call i32 @phy_power_off(ptr noundef %60) #8
  %61 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %phy.i, align 4
  %call5.i.i = tail call i32 @phy_exit(ptr noundef %62) #8
  %phy_reset.i34.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %63 = ptrtoint ptr %phy_reset.i34.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy_reset.i34.i, align 4
  %call6.i.i = tail call i32 @reset_control_assert(ptr noundef %64) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %mtk_pcie_parse_port.exit.i.cleanup_crit_edge, %if.then37.i.i.cleanup_crit_edge, %if.then24.i.i.cleanup_crit_edge, %if.then12.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -517, %if.then12.i.i.cleanup_crit_edge ], [ -517, %if.then24.i.i.cleanup_crit_edge ], [ -517, %if.then37.i.i.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %retval.0.i.i, %mtk_pcie_parse_port.exit.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pci_lock_rescan_remove() #8
  %bus = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %3) #8
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %5) #8
  tail call void @pci_unlock_rescan_remove() #8
  %irq.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %7, ptr noundef null, ptr noundef null) #8
  %intx_domain.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %intx_domain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intx_domain.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %9) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %msi_domain.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msi_domain.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %11) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %msi_bottom_domain.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %msi_bottom_domain.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msi_bottom_domain.i, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %if.end5.i.mtk_pcie_irq_teardown.exit_crit_edge, label %if.then7.i

if.end5.i.mtk_pcie_irq_teardown.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_irq_teardown.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %13) #8
  br label %mtk_pcie_irq_teardown.exit

mtk_pcie_irq_teardown.exit:                       ; preds = %if.then7.i, %if.end5.i.mtk_pcie_irq_teardown.exit_crit_edge
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  tail call void @irq_dispose_mapping(i32 noundef %15) #8
  %num_clks.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %17, ptr noundef %19) #8
  tail call void @clk_bulk_unprepare(i32 noundef %17, ptr noundef %19) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 4) #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %23, i1 noundef zeroext true) #8
  %mac_reset.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %mac_reset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac_reset.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %25) #8
  %phy.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy.i, align 4
  %call3.i = tail call i32 @phy_power_off(ptr noundef %27) #8
  %28 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy.i, align 4
  %call5.i = tail call i32 @phy_exit(ptr noundef %29) #8
  %phy_reset.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_reset.i, align 4
  %call6.i = tail call i32 @reset_control_assert(ptr noundef %31) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_pcie_power_up(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %phy_reset = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %pcie, i32 0, i32 4
  %2 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_reset, align 4
  %call = tail call i32 @reset_control_deassert(ptr noundef %3) #8
  %phy = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %pcie, i32 0, i32 5
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call2 = tail call i32 @phy_init(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #11
  br label %err_phy_init

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call4 = tail call i32 @phy_power_on(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #11
  br label %err_phy_on

if.end10:                                         ; preds = %if.end
  %mac_reset = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %pcie, i32 0, i32 3
  %8 = ptrtoint ptr %mac_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_reset, align 4
  %call11 = tail call i32 @reset_control_deassert(ptr noundef %9) #8
  tail call void @pm_runtime_enable(ptr noundef %1) #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  %num_clks = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %pcie, i32 0, i32 7
  %10 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %pcie, i32 0, i32 6
  %12 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clks, align 4
  %call.i49 = tail call i32 @clk_bulk_prepare(i32 noundef %11, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.do.end18_crit_edge

if.end10.do.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %11, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %11, ptr noundef %13) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then3.i, %if.end10.do.end18_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i49, %if.end10.do.end18_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #11
  %call.i50 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #8
  %14 = ptrtoint ptr %mac_reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_reset, align 4
  %call22 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %call24 = tail call i32 @phy_power_off(ptr noundef %17) #8
  br label %err_phy_on

err_phy_on:                                       ; preds = %do.end18, %do.end9
  %err.0 = phi i32 [ %call4, %do.end9 ], [ %retval.0.i.ph, %do.end18 ]
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  %call26 = tail call i32 @phy_exit(ptr noundef %19) #8
  br label %err_phy_init

err_phy_init:                                     ; preds = %err_phy_on, %do.end
  %err.1 = phi i32 [ %call2, %do.end ], [ %err.0, %err_phy_on ]
  %20 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_reset, align 4
  %call28 = tail call i32 @reset_control_assert(ptr noundef %21) #8
  br label %cleanup

cleanup:                                          ; preds = %err_phy_init, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_phy_init ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_pcie_startup_port(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !141
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #8, !srcloc !142
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 156
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !141
  %9 = lshr i32 %8, 24
  %or10 = or i32 %9, 100925440
  %10 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %10) #8, !srcloc !142
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %14, i32 384
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !141
  %16 = and i32 %15, -16
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %18, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %16) #8, !srcloc !142
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %20, i32 840
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !141
  %22 = or i32 %21, 33554432
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %24, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %22) #8, !srcloc !142
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr31 = getelementptr i8, ptr %26, i32 328
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #8, !srcloc !141
  %28 = or i32 %27, 251658240
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr36 = getelementptr i8, ptr %30, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %28) #8, !srcloc !142
  tail call void @msleep(i32 noundef 100) #8
  %31 = and i32 %27, -251658241
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %33, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %31) #8, !srcloc !142
  %call40 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call40, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 328) #8
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr50218 = getelementptr i8, ptr %35, i32 340
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50218) #8, !srcloc !141
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  %and54219 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54219)
  %tobool.not220 = icmp eq i32 %and54219, 0
  br i1 %tobool.not220, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then71.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call58 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call58, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call58, %add.i
  br i1 %cmp3.i, label %if.then61, label %if.then71

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr65 = getelementptr i8, ptr %39, i32 340
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #8, !srcloc !141
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  br label %for.end

if.then71:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %43, i32 340
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #8, !srcloc !141
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  %and54 = and i32 %45, 256
  %tobool.not = icmp eq i32 %and54, 0
  br i1 %tobool.not, label %if.then71.land.lhs.true_crit_edge, label %if.then71.for.end_crit_edge

if.then71.for.end_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then71.land.lhs.true_crit_edge:                ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %if.then71.for.end_crit_edge, %if.then61, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %41, %if.then61 ], [ %37, %entry.for.end_crit_edge ], [ %45, %if.then71.for.end_crit_edge ]
  %and74 = and i32 %val.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then78, label %if.end87

if.then78:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr81 = getelementptr i8, ptr %47, i32 336
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #8, !srcloc !141
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcie, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.30, i32 noundef %49) #11
  br label %cleanup137

if.end87:                                         ; preds = %for.end
  %reg_base.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %pcie, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end87
  %i.044.i = phi i32 [ 0, %if.end87 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_gen3_pcie, ptr %pcie, i32 0, i32 14, i32 %i.044.i
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr.i198 = getelementptr i8, ptr %53, i32 3072
  %mul.i = shl i32 %i.044.i, 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i198, i32 %mul.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr1.i, ptr %arrayidx.i, align 4
  %55 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_base.i, align 4
  %add.i199 = add nuw nsw i32 %mul.i, 3072
  %add4.i = add i32 %add.i199, %56
  %msg_addr.i = getelementptr %struct.mtk_gen3_pcie, ptr %pcie, i32 0, i32 14, i32 %i.044.i, i32 1
  %57 = ptrtoint ptr %msg_addr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add4.i, ptr %msg_addr.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %58) #8, !srcloc !142
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr10.i = getelementptr i8, ptr %60, i32 3200
  %mul11.i = shl i32 %i.044.i, 2
  %add.ptr12.i = getelementptr i8, ptr %add.ptr10.i, i32 %mul11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #8, !srcloc !142
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %mtk_pcie_enable_msi.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mtk_pcie_enable_msi.exit:                         ; preds = %for.body.i
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr14.i = getelementptr i8, ptr %62, i32 400
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #8, !srcloc !141
  %64 = or i32 %63, -16777216
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr16.i = getelementptr i8, ptr %66, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %64) #8, !srcloc !142
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr19.i = getelementptr i8, ptr %68, i32 384
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #8, !srcloc !141
  %70 = or i32 %69, 16711680
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr24.i = getelementptr i8, ptr %72, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %70) #8, !srcloc !142
  %windows = getelementptr i8, ptr %pcie, i32 -72
  %73 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %73)
  %entry1.0221 = load ptr, ptr %windows, align 4
  %cmp92.not222 = icmp eq ptr %entry1.0221, %windows
  br i1 %cmp92.not222, label %mtk_pcie_enable_msi.exit.cleanup137_crit_edge, label %mtk_pcie_enable_msi.exit.for.body_crit_edge

mtk_pcie_enable_msi.exit.for.body_crit_edge:      ; preds = %mtk_pcie_enable_msi.exit
  br label %for.body

mtk_pcie_enable_msi.exit.cleanup137_crit_edge:    ; preds = %mtk_pcie_enable_msi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mtk_pcie_enable_msi.exit.for.body_crit_edge
  %entry1.0224 = phi ptr [ %entry1.0, %for.inc.for.body_crit_edge ], [ %entry1.0221, %mtk_pcie_enable_msi.exit.for.body_crit_edge ]
  %table_index.0223 = phi i32 [ %table_index.1.ph, %for.inc.for.body_crit_edge ], [ 0, %mtk_pcie_enable_msi.exit.for.body_crit_edge ]
  %res94 = getelementptr inbounds %struct.resource_entry, ptr %entry1.0224, i32 0, i32 1
  %74 = ptrtoint ptr %res94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %res94, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %77, 7936
  %78 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %for.body.for.inc_crit_edge [
    i32 256, label %if.then97
    i32 512, label %if.then100
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then97:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %75, align 4
  %call98 = tail call i32 @pci_pio_to_address(i32 noundef %80) #8
  br label %if.end104

if.then100:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %75, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.then97
  %cpu_addr.0 = phi i32 [ %call98, %if.then97 ], [ %82, %if.then100 ]
  %range_type.0 = phi ptr [ @.str.32, %if.then97 ], [ @.str.33, %if.then100 ]
  %83 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %75, align 4
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry1.0224, i32 0, i32 2
  %85 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %offset, align 4
  %sub = sub i32 %84, %86
  %end.i = getelementptr inbounds %struct.resource, ptr %75, i32 0, i32 1
  %87 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %end.i, align 4
  %sub.i = add i32 %88, 1
  %add.i200 = sub i32 %sub.i, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %table_index.0223)
  %cmp.i201 = icmp sgt i32 %table_index.0223, 7
  br i1 %cmp.i201, label %cleanup, label %do.body111

do.body111:                                       ; preds = %if.end104
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base, align 4
  %add.ptr.i203 = getelementptr i8, ptr %90, i32 2048
  %mul.i204 = shl i32 %table_index.0223, 5
  %add.ptr1.i205 = getelementptr i8, ptr %add.ptr.i203, i32 %mul.i204
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %84)
  %tobool.not.i.i = icmp eq i32 %sub.i, %84
  %91 = tail call i32 @llvm.ctlz.i32(i32 %add.i200, i1 true) #8, !range !145
  %.neg.i = mul nuw nsw i32 %91, 126
  %sub.i.op.op.i = add nuw nsw i32 %.neg.i, 60
  %sub.i.op.op.op.i = and i32 %sub.i.op.op.i, 126
  %and3.i = select i1 %tobool.not.i.i, i32 124, i32 %sub.i.op.op.op.i
  %or.i = or i32 %cpu_addr.0, %and3.i
  %or4.i = or i32 %or.i, 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i205, i32 %92) #8, !srcloc !142
  %add.ptr6.i = getelementptr i8, ptr %add.ptr1.i205, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !142
  %93 = tail call i32 @llvm.bswap.i32(i32 %sub) #8
  %add.ptr8.i = getelementptr i8, ptr %add.ptr1.i205, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %93) #8, !srcloc !142
  %add.ptr11.i = getelementptr i8, ptr %add.ptr1.i205, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #8, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i)
  %cmp12.i = icmp eq i32 %and.i, 256
  %..i206 = select i1 %cmp12.i, i32 131073, i32 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %..i206) #8
  %add.ptr16.i207 = getelementptr i8, ptr %add.ptr1.i205, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i207, i32 %94) #8, !srcloc !142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pcie_startup_port.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_pcie_startup_port, %do.end125)) #8
          to label %if.then119 [label %do.end125], !srcloc !146

if.then119:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pcie, align 4
  %conv = zext i32 %cpu_addr.0 to i64
  %conv121 = zext i32 %sub to i64
  %conv122 = zext i32 %add.i200 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pcie_startup_port.__UNIQUE_ID_ddebug293, ptr noundef %96, ptr noundef nonnull @.str.35, ptr noundef nonnull %range_type.0, i32 noundef %table_index.0223, i64 noundef %conv, i64 noundef %conv121, i64 noundef %conv122) #8
  br label %do.end125

do.end125:                                        ; preds = %if.then119, %do.body111
  %inc = add nsw i32 %table_index.0223, 1
  br label %for.inc

cleanup:                                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pcie, align 4
  %conv.i = zext i32 %cpu_addr.0 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.36, i64 noundef %conv.i, i32 noundef 8) #11
  br label %cleanup137

for.inc:                                          ; preds = %do.end125, %for.body.for.inc_crit_edge
  %table_index.1.ph = phi i32 [ %table_index.0223, %for.body.for.inc_crit_edge ], [ %inc, %do.end125 ]
  %99 = ptrtoint ptr %entry1.0224 to i32
  call void @__asan_load4_noabort(i32 %99)
  %entry1.0 = load ptr, ptr %entry1.0224, align 4
  %cmp92.not = icmp eq ptr %entry1.0, %windows
  br i1 %cmp92.not, label %for.inc.cleanup137_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup137_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137

cleanup137:                                       ; preds = %for.inc.cleanup137_crit_edge, %cleanup, %mtk_pcie_enable_msi.exit.cleanup137_crit_edge, %if.then78
  %retval.2 = phi i32 [ -110, %if.then78 ], [ -19, %cleanup ], [ 0, %mtk_pcie_enable_msi.exit.cleanup137_crit_edge ], [ 0, %for.inc.cleanup137_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_pcie_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %msi_status.i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %base = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 388
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !141
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %status, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 28, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %call3)
  %cmp38 = icmp ult i32 %call3, 28
  br i1 %cmp38, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %intx_domain = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %irq_bit.039 = phi i32 [ %call3, %for.body.lr.ph ], [ %call5, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %intx_domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intx_domain, align 4
  %sub = add nsw i32 %irq_bit.039, -24
  %call4 = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %sub) #8
  %add = add nuw nsw i32 %irq_bit.039, 1
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 28, i32 noundef %add) #8
  %cmp = icmp ult i32 %call5, 28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 16, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call6)
  %cmp840 = icmp ult i32 %call6, 16
  br i1 %cmp840, label %for.body9.lr.ph, label %for.end.for.end16_crit_edge

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.body9.lr.ph:                                  ; preds = %for.end
  %msi_bottom_domain.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 13
  br label %for.body9

for.body9:                                        ; preds = %mtk_pcie_msi_handler.exit.for.body9_crit_edge, %for.body9.lr.ph
  %irq_bit.141 = phi i32 [ %call6, %for.body9.lr.ph ], [ %call15, %mtk_pcie_msi_handler.exit.for.body9_crit_edge ]
  %sub10 = add nsw i32 %irq_bit.141, -8
  %arrayidx.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 %sub10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msi_status.i) #8
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 8
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !141
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr317.i = getelementptr i8, ptr %23, i32 4
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr317.i) #8, !srcloc !141
  %25 = and i32 %24, %21
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  %27 = ptrtoint ptr %msi_status.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %msi_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not18.i = icmp eq i32 %25, 0
  br i1 %tobool.not18.i, label %for.body9.mtk_pcie_msi_handler.exit_crit_edge, label %if.end.lr.ph.i

for.body9.mtk_pcie_msi_handler.exit_crit_edge:    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_msi_handler.exit

if.end.lr.ph.i:                                   ; preds = %for.body9
  %mul.i = shl nsw i32 %sub10, 5
  br label %if.end.i33

do.body.loopexit.i:                               ; preds = %for.body.i.do.body.loopexit.i_crit_edge, %if.end.i33.do.body.loopexit.i_crit_edge
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %29, i32 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !141
  %31 = and i32 %30, %21
  %32 = call i32 @llvm.bswap.i32(i32 %31) #8
  %33 = ptrtoint ptr %msi_status.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %msi_status.i, align 4
  %tobool.not.i32 = icmp eq i32 %31, 0
  br i1 %tobool.not.i32, label %do.body.loopexit.i.mtk_pcie_msi_handler.exit_crit_edge, label %do.body.loopexit.i.if.end.i33_crit_edge

do.body.loopexit.i.if.end.i33_crit_edge:          ; preds = %do.body.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i33

do.body.loopexit.i.mtk_pcie_msi_handler.exit_crit_edge: ; preds = %do.body.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_msi_handler.exit

if.end.i33:                                       ; preds = %do.body.loopexit.i.if.end.i33_crit_edge, %if.end.lr.ph.i
  %call6.i = call i32 @_find_next_bit_be(ptr noundef nonnull %msi_status.i, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call6.i)
  %cmp15.i = icmp ult i32 %call6.i, 32
  br i1 %cmp15.i, label %if.end.i33.for.body.i_crit_edge, label %if.end.i33.do.body.loopexit.i_crit_edge

if.end.i33.do.body.loopexit.i_crit_edge:          ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.loopexit.i

if.end.i33.for.body.i_crit_edge:                  ; preds = %if.end.i33
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i33.for.body.i_crit_edge
  %bit.016.i = phi i32 [ %call9.i, %for.body.i.for.body.i_crit_edge ], [ %call6.i, %if.end.i33.for.body.i_crit_edge ]
  %add.i = add nuw i32 %bit.016.i, %mul.i
  %34 = ptrtoint ptr %msi_bottom_domain.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msi_bottom_domain.i, align 4
  %call7.i = call i32 @generic_handle_domain_irq(ptr noundef %35, i32 noundef %add.i) #8
  %add8.i = add nuw nsw i32 %bit.016.i, 1
  %call9.i = call i32 @_find_next_bit_be(ptr noundef nonnull %msi_status.i, i32 noundef 32, i32 noundef %add8.i) #8
  %cmp.i = icmp ult i32 %call9.i, 32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.body.loopexit.i_crit_edge

for.body.i.do.body.loopexit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mtk_pcie_msi_handler.exit:                        ; preds = %do.body.loopexit.i.mtk_pcie_msi_handler.exit_crit_edge, %for.body9.mtk_pcie_msi_handler.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msi_status.i) #8
  %shl = shl nuw i32 1, %irq_bit.141
  %36 = call i32 @llvm.bswap.i32(i32 %shl)
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %38, i32 388
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %36) #8, !srcloc !142
  %add14 = add i32 %irq_bit.141, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 16, i32 noundef %add14) #8
  %cmp8 = icmp ult i32 %call15, 16
  br i1 %cmp8, label %mtk_pcie_msi_handler.exit.for.body9_crit_edge, label %mtk_pcie_msi_handler.exit.for.end16_crit_edge

mtk_pcie_msi_handler.exit.for.end16_crit_edge:    ; preds = %mtk_pcie_msi_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

mtk_pcie_msi_handler.exit.for.body9_crit_edge:    ; preds = %mtk_pcie_msi_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.end16:                                        ; preds = %mtk_pcie_msi_handler.exit.for.end16_crit_edge, %for.end.for.end16_crit_edge
  %39 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i35 = icmp eq ptr %40, null
  br i1 %tobool.not.i35, label %if.else.i36, label %for.end16.chained_irq_exit.exit_crit_edge

for.end16.chained_irq_exit.exit_crit_edge:        ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i36:                                      ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %41 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i36, %for.end16.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %42, %if.else.i36 ], [ %40, %for.end16.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @mtk_intx_irq_chip, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef nonnull @.str.53) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_intx_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 10
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #8
  %base = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 384
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !141
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %add = add i32 %7, 24
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #8, !srcloc !142
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_intx_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 10
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #8
  %base = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 384
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !141
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %add = add i32 %7, 24
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #8, !srcloc !142
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_intx_eoi(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq1, align 4
  %add = add i32 %3, 24
  %shl = shl nuw i32 1, %add
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_pcie_set_affinity(ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_msi_bottom_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %lock = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %msi_irq_in_use = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i49 = add i32 %nr_irqs, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i49, i1 true) #8, !range !145
  %add.i = sub nuw nsw i32 32, %2
  %cond19 = select i1 %cmp.i, i32 %add.i, i32 0
  %call20 = tail call i32 @bitmap_find_free_region(ptr noundef %msi_irq_in_use, i32 noundef 256, i32 noundef %cond19) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %div5051 = lshr i32 %call20, 5
  %arrayidx = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 %div5051
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp2452.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp2452.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %add26 = add i32 %i.053, %virq
  %add27 = add i32 %i.053, %call20
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add26, i32 noundef %add27, ptr noundef nonnull @mtk_msi_bottom_irq_chip, ptr noundef %arrayidx, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #8
  %inc = add nuw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_msi_bottom_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #8
  %lock = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i35 = add i32 %nr_irqs, -1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i35, i1 true) #8, !range !145
  %add.i = sub nuw nsw i32 32, %4
  %cond20 = select i1 %cmp.i, i32 %add.i, i32 0
  %msi_irq_in_use = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 16
  tail call void @bitmap_release_region(ptr noundef %msi_irq_in_use, i32 noundef %3, i32 noundef %cond20) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  tail call void @irq_domain_free_irqs_common(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_msi_bottom_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq1, align 4
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !142
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_msi_bottom_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %domain = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq1, align 4
  %rem = and i32 %7, 31
  %irq_lock = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %5, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !141
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #8, !srcloc !142
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_msi_bottom_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %domain = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq1, align 4
  %rem = and i32 %7, 31
  %irq_lock = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %5, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !141
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %shl = shl nuw i32 1, %rem
  %or = or i32 %11, %shl
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #8, !srcloc !142
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %domain = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq1, align 4
  %rem = and i32 %7, 31
  %msg_addr = getelementptr inbounds %struct.mtk_msi_set, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %10 = ptrtoint ptr %msg_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_addr, align 4
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %msg, align 4
  %13 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rem, ptr %13, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_compose_msi_msg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_compose_msi_msg, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_compose_msi_msg.__UNIQUE_ID_ddebug294, ptr noundef %16, ptr noundef nonnull @.str.56, i32 noundef %rem, i32 noundef %18, i32 noundef %20, i32 noundef %22) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_pcie_msi_irq_mask(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_mask_irq(ptr noundef %data) #8
  tail call void @irq_chip_mask_parent(ptr noundef %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_pcie_msi_irq_unmask(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_unmask_irq(ptr noundef %data) #8
  tail call void @irq_chip_unmask_parent(ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mtk_pcie_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %base = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4096
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %where
  ret ptr %add.ptr1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata.i, align 4
  %sub1.i = sub i32 32, %size
  %shr.i = lshr i32 -1, %sub1.i
  %and2.i = and i32 %shr.i, 15
  %and3.i = and i32 %where, 3
  %shl.i = shl nuw nsw i32 %and2.i, %and3.i
  %shl4.i = shl nuw nsw i32 %shl.i, 16
  %and5.i = and i32 %shl4.i, 983040
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %3 to i32
  %shl6.i = shl nuw nsw i32 %conv.i, 8
  %and8.i = and i32 %devfn, 255
  %or9.i = or i32 %shl6.i, %and8.i
  %or.i = or i32 %or9.i, %and5.i
  %or10.i = or i32 %or.i, 1048576
  %4 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #8
  %base.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !142
  %call = tail call i32 @pci_generic_config_read32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata.i, align 4
  %sub1.i = sub i32 32, %size
  %shr.i = lshr i32 -1, %sub1.i
  %and2.i = and i32 %shr.i, 15
  %and3.i = and i32 %where, 3
  %shl.i = shl nuw nsw i32 %and2.i, %and3.i
  %shl4.i = shl nuw nsw i32 %shl.i, 16
  %and5.i = and i32 %shl4.i, 983040
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %3 to i32
  %shl6.i = shl nuw nsw i32 %conv.i, 8
  %and8.i = and i32 %devfn, 255
  %or9.i = or i32 %shl6.i, %and8.i
  %or.i = or i32 %or9.i, %and5.i
  %or10.i = or i32 %or.i, 1048576
  %4 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #8
  %base.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp = icmp slt i32 %size, 3
  %and = shl i32 %where, 3
  %mul = and i32 %and, 24
  %shl = select i1 %cmp, i32 %mul, i32 0
  %val.addr.0 = shl i32 %val, %shl
  %call = tail call i32 @pci_generic_config_write32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef 4, i32 noundef %val.addr.0) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 408
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !141
  %5 = or i32 %4, 268435456
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #8, !srcloc !142
  %call3.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call3.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 960) #8
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr1351.i = getelementptr i8, ptr %9, i32 336
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1351.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %11 = and i32 %10, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp1752.i = icmp eq i32 %11, 20
  br i1 %cmp1752.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then33.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call20.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call20.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call20.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then33.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %13, i32 336
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %15 = and i32 %14, 31
  %cmp17.i = icmp eq i32 %15, 20
  br i1 %cmp17.i, label %if.then33.i.if.end_crit_edge, label %if.then33.i.land.lhs.true.i_crit_edge

if.then33.i.land.lhs.true.i_crit_edge:            ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then33.i.if.end_crit_edge:                     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end.i:                                        ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %17, i32 336
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %19 = and i32 %18, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %19)
  %cmp39.i = icmp eq i32 %19, 20
  br i1 %cmp39.i, label %for.end.i.if.end_crit_edge, label %do.end

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then33.i.if.end_crit_edge, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 328
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !141
  %25 = or i32 %24, 134217728
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr5 = getelementptr i8, ptr %27, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %25) #8, !srcloc !142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pcie_suspend_noirq.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_pcie_suspend_noirq, %do.end17)) #8
          to label %if.then13 [label %do.end17], !srcloc !146

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pcie_suspend_noirq.__UNIQUE_ID_ddebug295, ptr noundef %29, ptr noundef nonnull @.str.59) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %if.end
  %irq_lock.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %irq_lock.i) #8
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %31, i32 384
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #8, !srcloc !141
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %saved_irq_state.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %saved_irq_state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %saved_irq_state.i, align 4
  %arrayidx.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 0
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !141
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %saved_irq_state6.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 0, i32 2
  %39 = ptrtoint ptr %saved_irq_state6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %saved_irq_state6.i, align 4
  %arrayidx.1.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 1
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.1.i, align 4
  %add.ptr3.1.i = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.1.i) #8, !srcloc !141
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %saved_irq_state6.1.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 1, i32 2
  %44 = ptrtoint ptr %saved_irq_state6.1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %saved_irq_state6.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 2
  %45 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.2.i, align 4
  %add.ptr3.2.i = getelementptr i8, ptr %46, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.2.i) #8, !srcloc !141
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %saved_irq_state6.2.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 2, i32 2
  %49 = ptrtoint ptr %saved_irq_state6.2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %saved_irq_state6.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 3
  %50 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.3.i, align 4
  %add.ptr3.3.i = getelementptr i8, ptr %51, i32 8
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.3.i) #8, !srcloc !141
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  %saved_irq_state6.3.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 3, i32 2
  %54 = ptrtoint ptr %saved_irq_state6.3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %saved_irq_state6.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 4
  %55 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.4.i, align 4
  %add.ptr3.4.i = getelementptr i8, ptr %56, i32 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.4.i) #8, !srcloc !141
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %saved_irq_state6.4.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 4, i32 2
  %59 = ptrtoint ptr %saved_irq_state6.4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %saved_irq_state6.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 5
  %60 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.5.i, align 4
  %add.ptr3.5.i = getelementptr i8, ptr %61, i32 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.5.i) #8, !srcloc !141
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %saved_irq_state6.5.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 5, i32 2
  %64 = ptrtoint ptr %saved_irq_state6.5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %saved_irq_state6.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 6
  %65 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.6.i, align 4
  %add.ptr3.6.i = getelementptr i8, ptr %66, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.6.i) #8, !srcloc !141
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %saved_irq_state6.6.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 6, i32 2
  %69 = ptrtoint ptr %saved_irq_state6.6.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %saved_irq_state6.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 7
  %70 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.7.i, align 4
  %add.ptr3.7.i = getelementptr i8, ptr %71, i32 8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.7.i) #8, !srcloc !141
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  %saved_irq_state6.7.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 7, i32 2
  %74 = ptrtoint ptr %saved_irq_state6.7.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %saved_irq_state6.7.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock.i) #8
  %num_clks.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 7
  %75 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %76, ptr noundef %78) #8
  tail call void @clk_bulk_unprepare(i32 noundef %76, ptr noundef %78) #8
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %80, i32 noundef 4) #8
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %82, i1 noundef zeroext true) #8
  %mac_reset.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %mac_reset.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mac_reset.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %84) #8
  %phy.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 5
  %85 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %phy.i, align 4
  %call3.i30 = tail call i32 @phy_power_off(ptr noundef %86) #8
  %87 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phy.i, align 4
  %call5.i = tail call i32 @phy_exit(ptr noundef %88) #8
  %phy_reset.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 4
  %89 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %phy_reset.i, align 4
  %call6.i = tail call i32 @reset_control_assert(ptr noundef %90) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @mtk_pcie_power_up(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @mtk_pcie_startup_port(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %num_clks.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #8
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #8
  %mac_reset.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %mac_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_reset.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %11) #8
  %phy.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.i, align 4
  %call3.i = tail call i32 @phy_power_off(ptr noundef %13) #8
  %14 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy.i, align 4
  %call5.i = tail call i32 @phy_exit(ptr noundef %15) #8
  %phy_reset.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_reset.i, align 4
  %call6.i = tail call i32 @reset_control_assert(ptr noundef %17) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_lock.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %irq_lock.i) #8
  %saved_irq_state.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %saved_irq_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saved_irq_state.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %base.i = getelementptr inbounds %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #8, !srcloc !142
  %arrayidx.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 0
  %saved_irq_state1.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 0, i32 2
  %23 = ptrtoint ptr %saved_irq_state1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %saved_irq_state1.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %25) #8, !srcloc !142
  %arrayidx.1.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 1
  %saved_irq_state1.1.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 1, i32 2
  %28 = ptrtoint ptr %saved_irq_state1.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %saved_irq_state1.1.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1.i, align 4
  %add.ptr3.1.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.1.i, i32 %30) #8, !srcloc !142
  %arrayidx.2.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 2
  %saved_irq_state1.2.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 2, i32 2
  %33 = ptrtoint ptr %saved_irq_state1.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saved_irq_state1.2.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.2.i, align 4
  %add.ptr3.2.i = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.2.i, i32 %35) #8, !srcloc !142
  %arrayidx.3.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 3
  %saved_irq_state1.3.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 3, i32 2
  %38 = ptrtoint ptr %saved_irq_state1.3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %saved_irq_state1.3.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %41 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.3.i, align 4
  %add.ptr3.3.i = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.3.i, i32 %40) #8, !srcloc !142
  %arrayidx.4.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 4
  %saved_irq_state1.4.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 4, i32 2
  %43 = ptrtoint ptr %saved_irq_state1.4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %saved_irq_state1.4.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  %46 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.4.i, align 4
  %add.ptr3.4.i = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.4.i, i32 %45) #8, !srcloc !142
  %arrayidx.5.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 5
  %saved_irq_state1.5.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 5, i32 2
  %48 = ptrtoint ptr %saved_irq_state1.5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %saved_irq_state1.5.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  %51 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.5.i, align 4
  %add.ptr3.5.i = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.5.i, i32 %50) #8, !srcloc !142
  %arrayidx.6.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 6
  %saved_irq_state1.6.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 6, i32 2
  %53 = ptrtoint ptr %saved_irq_state1.6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %saved_irq_state1.6.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  %56 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.6.i, align 4
  %add.ptr3.6.i = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.6.i, i32 %55) #8, !srcloc !142
  %arrayidx.7.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 7
  %saved_irq_state1.7.i = getelementptr %struct.mtk_gen3_pcie, ptr %1, i32 0, i32 14, i32 7, i32 2
  %58 = ptrtoint ptr %saved_irq_state1.7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %saved_irq_state1.7.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.7.i, align 4
  %add.ptr3.7.i = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.7.i, i32 %60) #8, !srcloc !142
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !127, !128, !129, !131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__initcall__kmod_pcie_mediatek_gen3__296_1030_mtk_pcie_driver_init6, !1, !"__initcall__kmod_pcie_mediatek_gen3__296_1030_mtk_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 1030, i32 1}
!2 = !{ptr @__exitcall_mtk_pcie_driver_exit, !1, !"__exitcall_mtk_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file297, !4, !"__UNIQUE_ID_file297", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 1031, i32 1}
!5 = !{ptr @__UNIQUE_ID_license298, !4, !"__UNIQUE_ID_license298", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 1024, i32 11}
!8 = !{ptr @mtk_pcie_driver, !9, !"mtk_pcie_driver", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 1020, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 726, i32 60}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 731, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mtk_pcie_parse_port._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @mtk_pcie_parse_port._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 737, i32 67}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 741, i32 4}
!24 = !{ptr @mtk_pcie_parse_port._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtk_pcie_parse_port._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 746, i32 67}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 750, i32 4}
!30 = !{ptr @mtk_pcie_parse_port._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_pcie_parse_port._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 755, i32 41}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 759, i32 4}
!36 = !{ptr @mtk_pcie_parse_port._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_pcie_parse_port._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 766, i32 3}
!40 = !{ptr @mtk_pcie_parse_port._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mtk_pcie_parse_port._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 783, i32 3}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mtk_pcie_power_up._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @mtk_pcie_power_up._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 789, i32 3}
!49 = !{ptr @mtk_pcie_power_up._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mtk_pcie_power_up._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 801, i32 3}
!53 = !{ptr @mtk_pcie_power_up._entry.27, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mtk_pcie_power_up._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 331, i32 3}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mtk_pcie_startup_port._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_pcie_startup_port._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 348, i32 17}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 351, i32 17}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 363, i32 3}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mtk_pcie_startup_port.__UNIQUE_ID_ddebug293, !65, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 223, i32 3}
!70 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mtk_pcie_set_trans_table._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtk_pcie_set_trans_table._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @mtk_pcie_init_irq_domains.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 590, i32 2}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 593, i32 41}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 595, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mtk_pcie_init_irq_domains._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mtk_pcie_init_irq_domains._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 602, i32 3}
!85 = !{ptr @mtk_pcie_init_irq_domains._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mtk_pcie_init_irq_domains._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @mtk_pcie_init_irq_domains.__key.45, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 607, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 612, i32 3}
!92 = !{ptr @mtk_pcie_init_irq_domains._entry.47, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mtk_pcie_init_irq_domains._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 621, i32 3}
!96 = !{ptr @mtk_pcie_init_irq_domains._entry.50, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mtk_pcie_init_irq_domains._entry_ptr.52, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @intx_domain_ops, !99, !"intx_domain_ops", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 580, i32 36}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 576, i32 31}
!102 = !{ptr @mtk_intx_irq_chip, !103, !"mtk_intx_irq_chip", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 563, i32 24}
!104 = !{ptr @mtk_msi_bottom_domain_ops, !105, !"mtk_msi_bottom_domain_ops", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 515, i32 36}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 467, i32 12}
!108 = !{ptr @mtk_msi_bottom_irq_chip, !109, !"mtk_msi_bottom_irq_chip", i1 false, i1 false}
!109 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 461, i32 24}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 415, i32 2}
!112 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @mtk_compose_msi_msg.__UNIQUE_ID_ddebug294, !111, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!114 = !{ptr @mtk_msi_domain_info, !115, !"mtk_msi_domain_info", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 398, i32 31}
!116 = !{ptr @mtk_msi_irq_chip, !117, !"mtk_msi_irq_chip", i1 false, i1 false}
!117 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 391, i32 24}
!118 = !{ptr @mtk_pcie_ops, !119, !"mtk_pcie_ops", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 207, i32 23}
!120 = !{ptr @mtk_pcie_of_match, !121, !"mtk_pcie_of_match", i1 false, i1 false}
!121 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 1014, i32 34}
!122 = !{ptr @mtk_pcie_pm_ops, !123, !"mtk_pcie_pm_ops", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 1009, i32 32}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 972, i32 3}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @mtk_pcie_suspend_noirq._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @mtk_pcie_suspend_noirq._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/controller/pcie-mediatek-gen3.c", i32 981, i32 2}
!131 = !{ptr @mtk_pcie_suspend_noirq.__UNIQUE_ID_ddebug295, !130, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i64 3102988}
!142 = !{i64 3102570}
!143 = !{i64 2155612854}
!144 = !{i64 2155613344}
!145 = !{i32 0, i32 33}
!146 = !{i64 2148747218, i64 2148747223, i64 2148747236, i64 2148747280, i64 2148747314, i64 2148747335}
!147 = !{i64 2155665566}
!148 = !{i64 2155666056}
