; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-brcmstb.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-brcmstb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pcie_cfg_data = type { ptr, i32, ptr, ptr }
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
%struct.brcm_pcie = type { ptr, ptr, ptr, ptr, i8, i32, i64, ptr, ptr, i32, ptr, ptr, i32, [3 x i64], i32, ptr, ptr, i8, ptr, i8 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.brcm_msi = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, i64, i32, [1 x i32], i8, i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.78, %union.anon.79, %union.anon.80 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.subdev_regulators = type { i32, [0 x %struct.regulator_bulk_data] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.90, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.90 = type { ptr }

@__initcall__kmod_pcie_brcmstb__359_1641_brcm_pcie_driver_init6 = internal global ptr @brcm_pcie_driver_init, section ".initcall6.init", align 4
@brcm_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcm_pcie_probe, ptr @brcm_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcm_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_brcm_pcie_driver_exit = internal global ptr @brcm_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file360 = internal constant [54 x i8] c"pcie_brcmstb.file=drivers/pci/controller/pcie-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [25 x i8] c"pcie_brcmstb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description362 = internal constant [53 x i8] c"pcie_brcmstb.description=Broadcom STB PCIe RC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author363 = internal constant [29 x i8] c"pcie_brcmstb.author=Broadcom\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"brcm-pcie\00", [22 x i8] zeroinitializer }, align 32
@brcm_pcie_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm4908_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @generic_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7278_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7278_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @generic_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7435-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7435_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7425-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7425_cfg }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@brcm_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_pcie_suspend, ptr @brcm_pcie_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcm_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to look up compatible string\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm_pcie_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pci/controller/pcie-brcmstb.c\00", [58 x i8] zeroinitializer }, align 32
@brcm_pcie_probe._entry_ptr = internal global ptr @brcm_pcie_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_pcie\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,enable-ssc\00", [16 x i8] zeroinitializer }, align 32
@brcm_pcie_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1559, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcm_pcie_probe._entry_ptr.10 = internal global ptr @brcm_pcie_probe._entry.6, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rescal\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"perst\00", [26 x i8] zeroinitializer }, align 32
@brcm_pcie_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1575, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to deassert 'rescal'\0A\00", [35 x i8] zeroinitializer }, align 32
@brcm_pcie_probe._entry_ptr.15 = internal global ptr @brcm_pcie_probe._entry.13, section ".printk_index", align 4
@brcm_pcie_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1590, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"hardware revision with unsupported PERST# setup\0A\00", [47 x i8] zeroinitializer }, align 32
@brcm_pcie_probe._entry_ptr.18 = internal global ptr @brcm_pcie_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msi-parent\00", [21 x i8] zeroinitializer }, align 32
@brcm_pcie_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1599, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"probe of internal MSI failed\00", [35 x i8] zeroinitializer }, align 32
@brcm_pcie_probe._entry_ptr.22 = internal global ptr @brcm_pcie_probe._entry.20, section ".printk_index", align 4
@brcm_pcie_ops32 = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @brcm_pcie_map_conf32, ptr @pci_generic_config_read32, ptr @pci_generic_config_write32 }, [44 x i8] zeroinitializer }, align 32
@brcm_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr @brcm_pcie_add_bus, ptr @pci_subdev_regulators_remove_bus, ptr @brcm_pcie_map_conf, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@brcm_phy_cntl.shifts = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@brcm_phy_cntl.masks = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@brcm_phy_cntl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 1315, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed to %s phy\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm_phy_cntl\00", [18 x i8] zeroinitializer }, align 32
@brcm_phy_cntl._entry_ptr = internal global ptr @brcm_phy_cntl._entry, section ".printk_index", align 4
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspm-no-l0s\00", [20 x i8] zeroinitializer }, align 32
@brcm_pcie_get_rc_bar2_size_and_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 981, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DT node has no dma-ranges\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"brcm_pcie_get_rc_bar2_size_and_offset\00", [58 x i8] zeroinitializer }, align 32
@brcm_pcie_get_rc_bar2_size_and_offset._entry_ptr = internal global ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry, section ".printk_index", align 4
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcm,scb-sizes\00", [17 x i8] zeroinitializer }, align 32
@brcm_pcie_get_rc_bar2_size_and_offset._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.3, i32 1041, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Invalid rc_bar2_offset/size: size 0x%llx, off 0x%llx\0A\00", [42 x i8] zeroinitializer }, align 32
@brcm_pcie_get_rc_bar2_size_and_offset._entry_ptr.33 = internal global ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry.31, section ".printk_index", align 4
@brcm_pcie_enable_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 789, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot map MSI interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcm_pcie_enable_msi\00", [43 x i8] zeroinitializer }, align 32
@brcm_pcie_enable_msi._entry_ptr = internal global ptr @brcm_pcie_enable_msi._entry, section ".printk_index", align 4
@brcm_pcie_enable_msi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&msi->lock\00", [21 x i8] zeroinitializer }, align 32
@msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_irq_domain_alloc, ptr @brcm_irq_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@brcm_allocate_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 728, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcm_allocate_domains\00", [42 x i8] zeroinitializer }, align 32
@brcm_allocate_domains._entry_ptr = internal global ptr @brcm_allocate_domains._entry, section ".printk_index", align 4
@brcm_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 3, ptr null, ptr @brcm_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brcm_allocate_domains._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 736, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@brcm_allocate_domains._entry_ptr.41 = internal global ptr @brcm_allocate_domains._entry.39, section ".printk_index", align 4
@brcm_msi_bottom_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.42, ptr null, ptr null, ptr null, ptr null, ptr @brcm_msi_ack_irq, ptr null, ptr null, ptr null, ptr null, ptr @brcm_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_msi_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BRCM STB MSI\00", [19 x i8] zeroinitializer }, align 32
@brcm_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.43, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BRCM STB PCIe MSI\00", [46 x i8] zeroinitializer }, align 32
@brcm_pcie_msi_isr.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_brcmstb\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm_pcie_msi_isr\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unexpected MSI\0A\00", [16 x i8] zeroinitializer }, align 32
@pci_subdev_regulators_add_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 485, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dev.driver_data unexpectedly non-NULL\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pci_subdev_regulators_add_bus\00", [34 x i8] zeroinitializer }, align 32
@pci_subdev_regulators_add_bus._entry_ptr = internal global ptr @pci_subdev_regulators_add_bus._entry, section ".printk_index", align 4
@pci_subdev_regulators_add_bus._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 498, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to enable regulators for downstream device\0A\00", [45 x i8] zeroinitializer }, align 32
@pci_subdev_regulators_add_bus._entry_ptr.51 = internal global ptr @pci_subdev_regulators_add_bus._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpcie3v3\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpcie3v3aux\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpcie12v\00", [23 x i8] zeroinitializer }, align 32
@brcm_pcie_linkup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1187, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm_pcie_linkup\00", [47 x i8] zeroinitializer }, align 32
@brcm_pcie_linkup._entry_ptr = internal global ptr @brcm_pcie_linkup._entry, section ".printk_index", align 4
@brcm_pcie_linkup._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 1192, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCIe misconfigured; is in EP mode\0A\00", [61 x i8] zeroinitializer }, align 32
@brcm_pcie_linkup._entry_ptr.59 = internal global ptr @brcm_pcie_linkup._entry.57, section ".printk_index", align 4
@brcm_pcie_linkup._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.3, i32 1203, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"too many outbound wins\0A\00", [40 x i8] zeroinitializer }, align 32
@brcm_pcie_linkup._entry_ptr.62 = internal global ptr @brcm_pcie_linkup._entry.60, section ".printk_index", align 4
@brcm_pcie_linkup._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.3, i32 1231, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed attempt to enter ssc mode\0A\00", [62 x i8] zeroinitializer }, align 32
@brcm_pcie_linkup._entry_ptr.65 = internal global ptr @brcm_pcie_linkup._entry.63, section ".printk_index", align 4
@brcm_pcie_linkup._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.3, i32 1239, ptr @.str.68, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"link up, %s x%u %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcm_pcie_linkup._entry_ptr.69 = internal global ptr @brcm_pcie_linkup._entry.66, section ".printk_index", align 4
@pcie_link_speed = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(SSC)\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(!SSC)\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pci_subdev_regulators_remove_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 542, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to disable regulators for downstream device\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pci_subdev_regulators_remove_bus\00", [63 x i8] zeroinitializer }, align 32
@pci_subdev_regulators_remove_bus._entry_ptr = internal global ptr @pci_subdev_regulators_remove_bus._entry, section ".printk_index", align 4
@__brcm_pcie_remove._entry = internal constant %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1488, ptr @.str.8, ptr @.str.9 }, align 1
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Could not stop phy\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__brcm_pcie_remove\00", [45 x i8] zeroinitializer }, align 32
@__brcm_pcie_remove._entry_ptr = internal global ptr @__brcm_pcie_remove._entry, section ".printk_index", align 4
@__brcm_pcie_remove._entry.76 = internal constant %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 1490, ptr @.str.8, ptr @.str.9 }, align 1
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not rearm rescal reset\0A\00", [34 x i8] zeroinitializer }, align 32
@__brcm_pcie_remove._entry_ptr.78 = internal global ptr @__brcm_pcie_remove._entry.76, section ".printk_index", align 4
@brcm_pcie_enter_l23._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1281, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enter low-power link state\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm_pcie_enter_l23\00", [44 x i8] zeroinitializer }, align 32
@brcm_pcie_enter_l23._entry_ptr = internal global ptr @brcm_pcie_enter_l23._entry, section ".printk_index", align 4
@bcm2711_cfg = internal constant { %struct.pcie_cfg_data, [16 x i8] } { %struct.pcie_cfg_data { ptr @pcie_offsets, i32 5, ptr @brcm_pcie_perst_set_generic, ptr @brcm_pcie_bridge_sw_init_set_generic }, [16 x i8] zeroinitializer }, align 32
@bcm4908_cfg = internal constant { %struct.pcie_cfg_data, [16 x i8] } { %struct.pcie_cfg_data { ptr @pcie_offsets, i32 3, ptr @brcm_pcie_perst_set_4908, ptr @brcm_pcie_bridge_sw_init_set_generic }, [16 x i8] zeroinitializer }, align 32
@generic_cfg = internal constant { %struct.pcie_cfg_data, [16 x i8] } { %struct.pcie_cfg_data { ptr @pcie_offsets, i32 0, ptr @brcm_pcie_perst_set_generic, ptr @brcm_pcie_bridge_sw_init_set_generic }, [16 x i8] zeroinitializer }, align 32
@bcm7278_cfg = internal constant { %struct.pcie_cfg_data, [16 x i8] } { %struct.pcie_cfg_data { ptr @pcie_offset_bcm7278, i32 4, ptr @brcm_pcie_perst_set_7278, ptr @brcm_pcie_bridge_sw_init_set_7278 }, [16 x i8] zeroinitializer }, align 32
@bcm7435_cfg = internal constant { %struct.pcie_cfg_data, [16 x i8] } { %struct.pcie_cfg_data { ptr @pcie_offsets, i32 2, ptr @brcm_pcie_perst_set_generic, ptr @brcm_pcie_bridge_sw_init_set_generic }, [16 x i8] zeroinitializer }, align 32
@bcm7425_cfg = internal constant { %struct.pcie_cfg_data, [16 x i8] } { %struct.pcie_cfg_data { ptr @pcie_offsets_bmips_7425, i32 1, ptr @brcm_pcie_perst_set_generic, ptr @brcm_pcie_bridge_sw_init_set_generic }, [16 x i8] zeroinitializer }, align 32
@pcie_offsets = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 37392, i32 36864, i32 36868], [20 x i8] zeroinitializer }, align 32
@brcm_pcie_perst_set_4908.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing PERST# reset controller\0A\00", [63 x i8] zeroinitializer }, align 32
@pcie_offset_bcm7278 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49168, i32 36864, i32 36868], [20 x i8] zeroinitializer }, align 32
@pcie_offsets_bmips_7425 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32784, i32 33536, i32 33540], [20 x i8] zeroinitializer }, align 32
@brcm_pcie_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 1378, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not stop phy for suspend\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm_pcie_suspend\00", [46 x i8] zeroinitializer }, align 32
@brcm_pcie_suspend._entry_ptr = internal global ptr @brcm_pcie_suspend._entry, section ".printk_index", align 4
@brcm_pcie_suspend._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.83, ptr @.str.3, i32 1382, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@brcm_pcie_suspend._entry_ptr.85 = internal global ptr @brcm_pcie_suspend._entry.84, section ".printk_index", align 4
@brcm_pcie_suspend._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.83, ptr @.str.3, i32 1399, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not turn off regulators\0A\00", [33 x i8] zeroinitializer }, align 32
@brcm_pcie_suspend._entry_ptr.88 = internal global ptr @brcm_pcie_suspend._entry.86, section ".printk_index", align 4
@pci_dev_may_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 1360, ptr @.str.68, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"disable cancelled for wake-up device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_dev_may_wakeup\00", [45 x i8] zeroinitializer }, align 32
@pci_dev_may_wakeup._entry_ptr = internal global ptr @pci_dev_may_wakeup._entry, section ".printk_index", align 4
@brcm_pcie_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 1435, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not turn on regulators\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm_pcie_resume\00", [47 x i8] zeroinitializer }, align 32
@brcm_pcie_resume._entry_ptr = internal global ptr @brcm_pcie_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"brcm_pcie_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1632, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1636, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"brcm_pcie_match\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1506, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"brcm_pcie_pm_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1627, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1532, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1548, i32 48 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1555, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1559, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1562, i32 68 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1567, i32 76 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1575, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1590, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1595, i32 38 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1599, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"brcm_pcie_ops32\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 905, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"brcm_pcie_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 897, i32 23 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"shifts\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1286, i32 19 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"masks\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1290, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1315, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1144, i32 39 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 981, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 985, i32 54 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1040, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 789, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 797, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"msi_domain_ops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 716, i32 36 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 728, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"brcm_msi_domain_info\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 610, i32 31 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 736, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [25 x i8] c"brcm_msi_bottom_irq_chip\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 665, i32 24 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 666, i32 12 }
@___asan_gen_.252 = private unnamed_addr constant [18 x i8] c"brcm_msi_irq_chip\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 603, i32 24 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 604, i32 21 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 635, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 485, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 498, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 456, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 457, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 458, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1187, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1192, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1203, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1231, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1237, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 542, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1488, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1490, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1281, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [12 x i8] c"bcm2711_cfg\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 282, i32 35 }
@___asan_gen_.363 = private unnamed_addr constant [12 x i8] c"bcm4908_cfg\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 262, i32 35 }
@___asan_gen_.366 = private unnamed_addr constant [12 x i8] c"generic_cfg\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 241, i32 35 }
@___asan_gen_.369 = private unnamed_addr constant [12 x i8] c"bcm7278_cfg\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 275, i32 35 }
@___asan_gen_.372 = private unnamed_addr constant [12 x i8] c"bcm7435_cfg\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 255, i32 35 }
@___asan_gen_.375 = private unnamed_addr constant [12 x i8] c"bcm7425_cfg\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 248, i32 35 }
@___asan_gen_.378 = private unnamed_addr constant [13 x i8] c"pcie_offsets\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 229, i32 18 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 933, i32 6 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c"pcie_offset_bcm7278\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 269, i32 18 }
@___asan_gen_.387 = private unnamed_addr constant [24 x i8] c"pcie_offsets_bmips_7425\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 235, i32 18 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1378, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1382, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1399, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1360, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.424 = private constant [41 x i8] c"../drivers/pci/controller/pcie-brcmstb.c\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1435, i32 5 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_author363, ptr @__UNIQUE_ID_description362, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_license361, ptr @__brcm_pcie_remove._entry, ptr @__brcm_pcie_remove._entry.76, ptr @__brcm_pcie_remove._entry_ptr, ptr @__brcm_pcie_remove._entry_ptr.78, ptr @__exitcall_brcm_pcie_driver_exit, ptr @__initcall__kmod_pcie_brcmstb__359_1641_brcm_pcie_driver_init6, ptr @brcm_allocate_domains._entry, ptr @brcm_allocate_domains._entry.39, ptr @brcm_allocate_domains._entry_ptr, ptr @brcm_allocate_domains._entry_ptr.41, ptr @brcm_pcie_driver_exit, ptr @brcm_pcie_enable_msi._entry, ptr @brcm_pcie_enable_msi._entry_ptr, ptr @brcm_pcie_enter_l23._entry, ptr @brcm_pcie_enter_l23._entry_ptr, ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry, ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry.31, ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry_ptr, ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry_ptr.33, ptr @brcm_pcie_linkup._entry, ptr @brcm_pcie_linkup._entry.57, ptr @brcm_pcie_linkup._entry.60, ptr @brcm_pcie_linkup._entry.63, ptr @brcm_pcie_linkup._entry.66, ptr @brcm_pcie_linkup._entry_ptr, ptr @brcm_pcie_linkup._entry_ptr.59, ptr @brcm_pcie_linkup._entry_ptr.62, ptr @brcm_pcie_linkup._entry_ptr.65, ptr @brcm_pcie_linkup._entry_ptr.69, ptr @brcm_pcie_probe._entry, ptr @brcm_pcie_probe._entry.13, ptr @brcm_pcie_probe._entry.16, ptr @brcm_pcie_probe._entry.20, ptr @brcm_pcie_probe._entry.6, ptr @brcm_pcie_probe._entry_ptr, ptr @brcm_pcie_probe._entry_ptr.10, ptr @brcm_pcie_probe._entry_ptr.15, ptr @brcm_pcie_probe._entry_ptr.18, ptr @brcm_pcie_probe._entry_ptr.22, ptr @brcm_pcie_resume._entry, ptr @brcm_pcie_resume._entry_ptr, ptr @brcm_pcie_suspend._entry, ptr @brcm_pcie_suspend._entry.84, ptr @brcm_pcie_suspend._entry.86, ptr @brcm_pcie_suspend._entry_ptr, ptr @brcm_pcie_suspend._entry_ptr.85, ptr @brcm_pcie_suspend._entry_ptr.88, ptr @brcm_phy_cntl._entry, ptr @brcm_phy_cntl._entry_ptr, ptr @pci_dev_may_wakeup._entry, ptr @pci_dev_may_wakeup._entry_ptr, ptr @pci_subdev_regulators_add_bus._entry, ptr @pci_subdev_regulators_add_bus._entry.49, ptr @pci_subdev_regulators_add_bus._entry_ptr, ptr @pci_subdev_regulators_add_bus._entry_ptr.51, ptr @pci_subdev_regulators_remove_bus._entry, ptr @pci_subdev_regulators_remove_bus._entry_ptr, ptr @brcm_pcie_driver, ptr @.str, ptr @brcm_pcie_match, ptr @brcm_pcie_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @brcm_pcie_ops32, ptr @brcm_pcie_ops, ptr @brcm_phy_cntl.shifts, ptr @brcm_phy_cntl.masks, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @brcm_pcie_enable_msi.__key, ptr @.str.36, ptr @msi_domain_ops, ptr @.str.37, ptr @.str.38, ptr @brcm_msi_domain_info, ptr @.str.40, ptr @brcm_msi_bottom_irq_chip, ptr @.str.42, ptr @brcm_msi_irq_chip, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @bcm2711_cfg, ptr @bcm4908_cfg, ptr @generic_cfg, ptr @bcm7278_cfg, ptr @bcm7435_cfg, ptr @bcm7425_cfg, ptr @pcie_offsets, ptr @.str.81, ptr @pcie_offset_bcm7278, ptr @pcie_offsets_bmips_7425, ptr @.str.82, ptr @.str.83, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_ops32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_phy_cntl.shifts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_phy_cntl.masks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_phy_cntl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_enable_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_enable_msi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_allocate_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_allocate_domains._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_msi_bottom_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_subdev_regulators_add_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_subdev_regulators_add_bus._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_linkup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_linkup._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_linkup._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_linkup._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_linkup._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_subdev_regulators_remove_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_enter_l23._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7278_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7435_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7425_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_offsets to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_offset_bcm7278 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_offsets_bmips_7425 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_suspend._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_suspend._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_may_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_pcie_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_pcie_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcm_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_pcie_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev, i32 noundef 104) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %private.i, align 8
  %np11 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %np11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %np11, align 4
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call3, align 4
  %reg_offsets = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %reg_offsets, align 4
  %type = getelementptr inbounds %struct.pcie_cfg_data, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %type12 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type12, align 8
  %perst_set = getelementptr inbounds %struct.pcie_cfg_data, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %perst_set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perst_set, align 4
  %perst_set13 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 1
  %12 = ptrtoint ptr %perst_set13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %perst_set13, align 4
  %bridge_sw_init_set = getelementptr inbounds %struct.pcie_cfg_data, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %bridge_sw_init_set to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bridge_sw_init_set, align 4
  %bridge_sw_init_set14 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  %15 = ptrtoint ptr %bridge_sw_init_set14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %bridge_sw_init_set14, align 8
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call15, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  %call23 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  %clk = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call23, ptr %clk, align 8
  %cmp.i203 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call30 = tail call i32 @of_pci_get_max_link_speed(ptr noundef %1) #9
  %20 = tail call i32 @llvm.smax.i32(i32 %call30, i32 0)
  %gen = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %21 = ptrtoint ptr %gen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %gen, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i, null
  %ssc = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %frombool = zext i1 %tobool.i to i8
  %22 = ptrtoint ptr %ssc to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %ssc, align 8
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 8
  %call.i204 = tail call i32 @clk_prepare(ptr noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool.not.i = icmp eq i32 %call.i204, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.do.end38_crit_edge

if.end29.do.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end.i:                                         ; preds = %if.end29
  %call1.i = tail call i32 @clk_enable(ptr noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end40, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %24) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then3.i, %if.end29.do.end38_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i204, %if.end29.do.end38_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end.i
  %call.i205 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #9
  %rescal = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 2
  %25 = ptrtoint ptr %rescal to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i205, ptr %rescal, align 4
  %cmp.i206 = icmp ugt ptr %call.i205, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.then45, label %if.end49

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %27) #9
  tail call void @clk_unprepare(ptr noundef %27) #9
  %28 = ptrtoint ptr %rescal to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rescal, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  %call.i207 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %perst_reset = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3
  %31 = ptrtoint ptr %perst_reset to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i207, ptr %perst_reset, align 8
  %cmp.i208 = icmp ugt ptr %call.i207, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %33) #9
  tail call void @clk_unprepare(ptr noundef %33) #9
  %34 = ptrtoint ptr %perst_reset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %perst_reset, align 8
  %36 = ptrtoint ptr %35 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end49
  %37 = ptrtoint ptr %rescal to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rescal, align 4
  %call60 = tail call i32 @reset_control_reset(ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end58.if.end67_crit_edge, label %do.end65

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %if.end58.if.end67_crit_edge
  %39 = ptrtoint ptr %rescal to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rescal, align 4
  %tobool.not.i209 = icmp eq ptr %40, null
  br i1 %tobool.not.i209, label %if.end67.if.end74_crit_edge, label %brcm_phy_start.exit

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

brcm_phy_start.exit:                              ; preds = %if.end67
  %call.i210 = tail call fastcc i32 @brcm_phy_cntl(ptr noundef %private.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool69.not = icmp eq i32 %call.i210, 0
  br i1 %tobool69.not, label %brcm_phy_start.exit.if.end74_crit_edge, label %if.then70

brcm_phy_start.exit.if.end74_crit_edge:           ; preds = %brcm_phy_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then70:                                        ; preds = %brcm_phy_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %rescal to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rescal, align 4
  %call72 = tail call i32 @reset_control_rearm(ptr noundef %42) #9
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %44) #9
  tail call void @clk_unprepare(ptr noundef %44) #9
  br label %cleanup

if.end74:                                         ; preds = %brcm_phy_start.exit.if.end74_crit_edge, %if.end67.if.end74_crit_edge
  %call75 = tail call fastcc i32 @brcm_pcie_setup(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.fail_crit_edge

if.end74.fail_crit_edge:                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end78:                                         ; preds = %if.end74
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 16492
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  %hw_rev = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %hw_rev to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %hw_rev, align 8
  %50 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp84 = icmp eq i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 799, i32 %48)
  %cmp86 = icmp ugt i32 %48, 799
  %or.cond = select i1 %cmp84, i1 %cmp86, i1 false
  br i1 %or.cond, label %if.end78.fail.sink.split_crit_edge, label %if.end92

if.end78.fail.sink.split_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

if.end92:                                         ; preds = %if.end78
  %52 = ptrtoint ptr %np11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %np11, align 4
  %call94 = tail call fastcc ptr @of_parse_phandle(ptr noundef %53)
  %call95 = tail call i32 @pci_msi_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end92.if.end109_crit_edge, label %land.lhs.true97

if.end92.if.end109_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

land.lhs.true97:                                  ; preds = %if.end92
  %54 = ptrtoint ptr %np11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %np11, align 4
  %cmp99 = icmp eq ptr %call94, %55
  br i1 %cmp99, label %if.then100, label %land.lhs.true97.if.end109_crit_edge

land.lhs.true97.if.end109_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then100:                                       ; preds = %land.lhs.true97
  %call101 = tail call fastcc i32 @brcm_pcie_enable_msi(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then100.if.end109_crit_edge, label %if.then100.fail.sink.split_crit_edge

if.then100.fail.sink.split_crit_edge:             ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split

if.then100.if.end109_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.end109:                                        ; preds = %if.then100.if.end109_crit_edge, %land.lhs.true97.if.end109_crit_edge, %if.end92.if.end109_crit_edge
  %56 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp111 = icmp eq i32 %57, 1
  %cond112 = select i1 %cmp111, ptr @brcm_pcie_ops32, ptr @brcm_pcie_ops
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %cond112, ptr %ops, align 4
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %59 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %private.i, ptr %sysdata, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call113 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true115, label %if.end109.if.then120_crit_edge

if.end109.if.then120_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then120

land.lhs.true115:                                 ; preds = %if.end109
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 16488
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  %64 = and i32 %63, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %64)
  %65 = icmp eq i32 %64, 805306368
  br i1 %65, label %land.lhs.true115.cleanup_crit_edge, label %land.lhs.true115.if.then120_crit_edge

land.lhs.true115.if.then120_crit_edge:            ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then120

land.lhs.true115.cleanup_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then120:                                       ; preds = %land.lhs.true115.if.then120_crit_edge, %if.end109.if.then120_crit_edge
  %ret.0.ph = phi i32 [ -19, %land.lhs.true115.if.then120_crit_edge ], [ %call113, %if.end109.if.then120_crit_edge ]
  %call121 = tail call i32 @brcm_pcie_remove(ptr noundef %pdev)
  br label %cleanup

fail.sink.split:                                  ; preds = %if.then100.fail.sink.split_crit_edge, %if.end78.fail.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.17, %if.end78.fail.sink.split_crit_edge ], [ @.str.21, %if.then100.fail.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ -19, %if.end78.fail.sink.split_crit_edge ], [ %call101, %if.then100.fail.sink.split_crit_edge ]
  %66 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull %.str.21.sink) #12
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end74.fail_crit_edge
  %ret.1 = phi i32 [ %call75, %if.end74.fail_crit_edge ], [ %ret.1.ph, %fail.sink.split ]
  tail call fastcc void @__brcm_pcie_remove(ptr noundef %private.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then120, %land.lhs.true115.cleanup_crit_edge, %if.then70, %if.then54, %if.then45, %do.end38, %if.then26, %if.then18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then18 ], [ %19, %if.then26 ], [ %retval.0.i.ph, %do.end38 ], [ %30, %if.then45 ], [ %36, %if.then54 ], [ %call.i210, %if.then70 ], [ %ret.1, %fail ], [ %ret.0.ph, %if.then120 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true115.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bus = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %3) #9
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %5) #9
  tail call fastcc void @__brcm_pcie_remove(ptr noundef %1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_max_link_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_rearm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_pcie_setup(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %bridge_sw_init_set = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 16
  %2 = ptrtoint ptr %bridge_sw_init_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_sw_init_set, align 8
  tail call void %3(ptr noundef %pcie, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  %4 = ptrtoint ptr %bridge_sw_init_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge_sw_init_set, align 8
  tail call void %5(ptr noundef %pcie, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %1, i32 16900
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  %type.i = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 9
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 8
  %10 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %11 = icmp ult i32 %10, 2
  %storemerge.v = select i1 %11, i32 -8388609, i32 -134217729
  %storemerge = and i32 %storemerge.v, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %storemerge)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #9, !srcloc !231
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 8
  %15 = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %16 = icmp ult i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %switch.selectcmp = icmp eq i32 %14, 4
  %switch.select = select i1 %switch.selectcmp, i32 3145728, i32 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %switch.selectcmp199 = icmp eq i32 %14, 5
  %switch.select200 = select i1 %switch.selectcmp199, i32 0, i32 %switch.select
  %burst.0 = select i1 %16, i32 1048576, i32 %switch.select200
  %add.ptr22 = getelementptr i8, ptr %1, i32 16392
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  %18 = and i32 %17, -3158017
  %19 = or i32 %18, 3145728
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %or.i210 = or i32 %burst.0, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i210)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %21) #9, !srcloc !231
  %22 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie, align 8
  %dma_ranges.i = getelementptr i8, ptr %pcie, i32 -64
  %24 = ptrtoint ptr %dma_ranges.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %entry1.0106.i = load ptr, ptr %dma_ranges.i, align 4
  %cmp.not107.i = icmp eq ptr %entry1.0106.i, %dma_ranges.i
  br i1 %cmp.not107.i, label %do.end.i, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %entry1.0110.i = phi ptr [ %entry1.0.i, %for.body.i.for.body.i_crit_edge ], [ %entry1.0106.i, %entry.for.body.i_crit_edge ]
  %size.0109.i = phi i64 [ %add9.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %lowest_pcie_addr.0108.i = phi i64 [ %33, %for.body.i.for.body.i_crit_edge ], [ -1, %entry.for.body.i_crit_edge ]
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0110.i, i32 0, i32 1
  %25 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %res.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %offset.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0110.i, i32 0, i32 2
  %29 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %28, %30
  %conv.i = zext i32 %sub.i to i64
  %end.i = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i, align 4
  %sub7.i = sub i32 1, %28
  %add.i = add i32 %sub7.i, %32
  %conv8.i = zext i32 %add.i to i64
  %add9.i = add i64 %size.0109.i, %conv8.i
  %33 = tail call i64 @llvm.umin.i64(i64 %lowest_pcie_addr.0108.i, i64 %conv.i) #9
  %34 = ptrtoint ptr %entry1.0110.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %entry1.0.i = load ptr, ptr %entry1.0110.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %dma_ranges.i
  br i1 %cmp.not.i, label %if.end20.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end20.i:                                       ; preds = %for.body.i
  %phi.bo117.i = add i64 %add9.i, -1
  %extract.t118.i = trunc i64 %phi.bo117.i to i32
  %extract119.i = lshr i64 %phi.bo117.i, 32
  %extract.t120.i = trunc i64 %extract119.i to i32
  %np.i = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 3
  %35 = ptrtoint ptr %np.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %np.i, align 4
  %memc_size.i = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 13
  %call21.i = tail call i32 @of_property_read_variable_u64_array(ptr noundef %36, ptr noundef nonnull @.str.30, ptr noundef %memc_size.i, i32 noundef 1, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 1
  %num_memc.i = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 12
  br i1 %cmp22.i, label %if.then24.i, label %if.end29.i.thread

if.then24.i:                                      ; preds = %if.end20.i
  %37 = ptrtoint ptr %num_memc.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %num_memc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t120.i)
  %tobool.not.i.i307 = icmp eq i32 %extract.t120.i, 0
  br i1 %tobool.not.i.i307, label %if.end29.i, label %if.end29.i.thread366

if.end29.i.thread366:                             ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = tail call i32 @llvm.ctlz.i32(i32 %extract.t120.i, i1 true) #9, !range !234
  %add.i.i = sub nuw nsw i32 64, %38
  %sh_prom.i369 = zext i32 %add.i.i to i64
  %shl.i370 = shl nuw i64 1, %sh_prom.i369
  %39 = ptrtoint ptr %memc_size.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %shl.i370, ptr %memc_size.i, align 8
  br label %for.body34.i.preheader

if.end29.i.thread:                                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %num_memc.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call21.i, ptr %num_memc.i, align 4
  br label %for.body34.i.preheader

if.end29.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t118.i)
  %tobool.not.i5.i.i = icmp eq i32 %extract.t118.i, 0
  %41 = tail call i32 @llvm.ctlz.i32(i32 %extract.t118.i, i1 true) #9, !range !234
  %sub.i6.i.i = sub nuw nsw i32 32, %41
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  %42 = ptrtoint ptr %num_memc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.pr = load i32, ptr %num_memc.i, align 4
  %sh_prom.i = zext i32 %cond.i7.i.i to i64
  %shl.i = shl nuw nsw i64 1, %sh_prom.i
  %43 = ptrtoint ptr %memc_size.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %shl.i, ptr %memc_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %cmp32112.i = icmp sgt i32 %.pr.pr, 0
  br i1 %cmp32112.i, label %if.end29.i.for.body34.i.preheader_crit_edge, label %if.end29.i.if.then.i97.i_crit_edge

if.end29.i.if.then.i97.i_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i97.i

if.end29.i.for.body34.i.preheader_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i.preheader

for.body34.i.preheader:                           ; preds = %if.end29.i.for.body34.i.preheader_crit_edge, %if.end29.i.thread, %if.end29.i.thread366
  %44 = phi i32 [ %call21.i, %if.end29.i.thread ], [ %.pr.pr, %if.end29.i.for.body34.i.preheader_crit_edge ], [ 1, %if.end29.i.thread366 ]
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.body34.i.preheader
  %size.1114.i = phi i64 [ %add37.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %for.body34.i.preheader ]
  %i.0113.i = phi i32 [ %inc.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %for.body34.i.preheader ]
  %arrayidx36.i = getelementptr %struct.brcm_pcie, ptr %pcie, i32 0, i32 13, i32 %i.0113.i
  %45 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx36.i, align 8
  %add37.i = add i64 %46, %size.1114.i
  %inc.i = add nuw nsw i32 %i.0113.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %44
  br i1 %exitcond.not.i, label %for.end39.i, label %for.body34.i.for.body34.i_crit_edge

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i

for.end39.i:                                      ; preds = %for.body34.i
  %phi.bo.i = add i64 %add37.i, -1
  %extract.i = lshr i64 %phi.bo.i, 32
  %extract.t116.i = trunc i64 %extract.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t116.i)
  %tobool.not.i95.i = icmp eq i32 %extract.t116.i, 0
  br i1 %tobool.not.i95.i, label %if.end.i102.i, label %for.end39.i.if.then.i97.i_crit_edge

for.end39.i.if.then.i97.i_crit_edge:              ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i97.i

if.then.i97.i:                                    ; preds = %for.end39.i.if.then.i97.i_crit_edge, %if.end29.i.if.then.i97.i_crit_edge
  %size.1.lcssa.off32128.i = phi i32 [ %extract.t116.i, %for.end39.i.if.then.i97.i_crit_edge ], [ -1, %if.end29.i.if.then.i97.i_crit_edge ]
  %47 = tail call i32 @llvm.ctlz.i32(i32 %size.1.lcssa.off32128.i, i1 true) #9, !range !234
  %add.i96.i = sub nuw nsw i32 64, %47
  br label %fls64.exit104.i

if.end.i102.i:                                    ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %extract.t.i = trunc i64 %phi.bo.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t.i)
  %tobool.not.i5.i99.i = icmp eq i32 %extract.t.i, 0
  %48 = tail call i32 @llvm.ctlz.i32(i32 %extract.t.i, i1 true) #9, !range !234
  %sub.i6.i100.i = sub nuw nsw i32 32, %48
  %cond.i7.i101.i = select i1 %tobool.not.i5.i99.i, i32 0, i32 %sub.i6.i100.i
  br label %fls64.exit104.i

fls64.exit104.i:                                  ; preds = %if.end.i102.i, %if.then.i97.i
  %retval.0.i103.i = phi i32 [ %add.i96.i, %if.then.i97.i ], [ %cond.i7.i101.i, %if.end.i102.i ]
  %sh_prom42.i = zext i32 %retval.0.i103.i to i64
  %shl43.i = shl nuw i64 1, %sh_prom42.i
  %sub44.i = add nuw i64 %shl43.i, 4294967295
  %and.i309 = and i64 %sub44.i, %33
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i309)
  %tobool45.not.i = icmp ne i64 %and.i309, 0
  %49 = add nsw i64 %33, -2147483649
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %49)
  %50 = icmp ult i64 %49, 2147483647
  %or.cond.i = or i1 %50, %tobool45.not.i
  br i1 %or.cond.i, label %do.end54.i, label %if.end32

do.end54.i:                                       ; preds = %fls64.exit104.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.32, i64 noundef %shl43.i, i64 noundef %33) #12
  br label %cleanup

if.end32:                                         ; preds = %fls64.exit104.i
  %conv = trunc i64 %33 to i32
  %shr.i.i.i = lshr i64 %shl43.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %51 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #9, !range !234
  %add.i.i.i = sub nuw nsw i32 64, %51
  br label %cond.end3.i

if.end.i.i.i:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i.i = trunc i64 %shl43.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %52 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #9, !range !234
  %sub.i6.i.i.i = sub nuw nsw i32 32, %52
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %cond.end3.i

cond.end3.i:                                      ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub.i.i = add nsw i32 %retval.0.i.i.i, -1
  %53 = and i32 %sub.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %53)
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %if.then.i, label %if.else.i312

if.then.i:                                        ; preds = %cond.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i311 = add nsw i32 %retval.0.i.i.i, 15
  br label %u32p_replace_bits.exit227

if.else.i312:                                     ; preds = %cond.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = add nsw i32 %retval.0.i.i.i, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %55)
  %56 = icmp ult i32 %55, 20
  %sub12.i = add nsw i32 %retval.0.i.i.i, -16
  %spec.select.i = select i1 %56, i32 %sub12.i, i32 0
  br label %u32p_replace_bits.exit227

u32p_replace_bits.exit227:                        ; preds = %if.else.i312, %if.then.i
  %retval.0.i313 = phi i32 [ %add.i311, %if.then.i ], [ %spec.select.i, %if.else.i312 ]
  %and.i221 = and i32 %conv, -32
  %57 = and i32 %retval.0.i313, 31
  %or.i226 = or i32 %57, %and.i221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  tail call void @arm_heavy_mb() #9
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i226)
  %add.ptr38 = getelementptr i8, ptr %1, i32 16436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %58) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @arm_heavy_mb() #9
  %add.ptr44 = getelementptr i8, ptr %1, i32 16440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 0) #9, !srcloc !231
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !226
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  %61 = ptrtoint ptr %num_memc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_memc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp51362 = icmp sgt i32 %62, 0
  br i1 %cmp51362, label %for.body.preheader, label %u32p_replace_bits.exit227.do.body81_crit_edge

u32p_replace_bits.exit227.do.body81_crit_edge:    ; preds = %u32p_replace_bits.exit227
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body81

for.body.preheader:                               ; preds = %u32p_replace_bits.exit227
  %63 = ptrtoint ptr %num_memc.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_memc.i, align 4
  br label %for.body

for.body:                                         ; preds = %if.end80.for.body_crit_edge, %for.body.preheader
  %memc.0364 = phi i32 [ %inc, %if.end80.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %tmp.0363 = phi i32 [ %tmp.1, %if.end80.for.body_crit_edge ], [ %60, %for.body.preheader ]
  %arrayidx = getelementptr %struct.brcm_pcie, ptr %pcie, i32 0, i32 13, i32 %memc.0364
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx, align 8
  %shr.i.i = lshr i64 %66, 32
  %conv.i.i314 = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i314)
  %tobool.not.i.i315 = icmp eq i32 %conv.i.i314, 0
  br i1 %tobool.not.i.i315, label %if.end.i.i321, label %if.then.i.i317

if.then.i.i317:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %67 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i314, i1 true) #9, !range !234
  %add.i.i316 = sub nuw nsw i32 64, %67
  br label %cond.end64

if.end.i.i321:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = trunc i64 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i318 = icmp eq i32 %conv1.i.i, 0
  %68 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #9, !range !234
  %sub.i6.i.i319 = sub nuw nsw i32 32, %68
  %cond.i7.i.i320 = select i1 %tobool.not.i5.i.i318, i32 0, i32 %sub.i6.i.i319
  br label %cond.end64

cond.end64:                                       ; preds = %if.end.i.i321, %if.then.i.i317
  %retval.0.i.i322 = phi i32 [ %add.i.i316, %if.then.i.i317 ], [ %cond.i7.i.i320, %if.end.i.i321 ]
  %sub66 = add nsw i32 %retval.0.i.i322, -16
  %69 = zext i32 %memc.0364 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %memc.0364, label %cond.end64.if.end80_crit_edge [
    i32 0, label %u32p_replace_bits.exit244
    i32 1, label %u32p_replace_bits.exit261
    i32 2, label %u32p_replace_bits.exit278
  ]

cond.end64.if.end80_crit_edge:                    ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

u32p_replace_bits.exit244:                        ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #11
  %and.i238 = and i32 %tmp.0363, 134217727
  %70 = shl i32 %sub66, 27
  %or.i243 = or i32 %70, %and.i238
  br label %if.end80

u32p_replace_bits.exit261:                        ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #11
  %and.i255 = and i32 %tmp.0363, -130023425
  %71 = shl nsw i32 %sub66, 22
  %72 = and i32 %71, 130023424
  %or.i260 = or i32 %72, %and.i255
  br label %if.end80

u32p_replace_bits.exit278:                        ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #11
  %and.i272 = and i32 %tmp.0363, -32
  %73 = and i32 %sub66, 31
  %or.i277 = or i32 %73, %and.i272
  br label %if.end80

if.end80:                                         ; preds = %u32p_replace_bits.exit278, %u32p_replace_bits.exit261, %u32p_replace_bits.exit244, %cond.end64.if.end80_crit_edge
  %tmp.1 = phi i32 [ %tmp.0363, %cond.end64.if.end80_crit_edge ], [ %or.i277, %u32p_replace_bits.exit278 ], [ %or.i260, %u32p_replace_bits.exit261 ], [ %or.i243, %u32p_replace_bits.exit244 ]
  %inc = add nuw nsw i32 %memc.0364, 1
  %cmp51 = icmp slt i32 %inc, %64
  br i1 %cmp51, label %if.end80.for.body_crit_edge, label %if.end80.do.body81_crit_edge

if.end80.do.body81_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body81

if.end80.for.body_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body81:                                        ; preds = %if.end80.do.body81_crit_edge, %u32p_replace_bits.exit227.do.body81_crit_edge
  %tmp.0.lcssa = phi i32 [ %60, %u32p_replace_bits.exit227.do.body81_crit_edge ], [ %tmp.1, %if.end80.do.body81_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  %74 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.lcssa)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %74) #9, !srcloc !231
  %add = add nuw i64 %shl43.i, %33
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp87 = icmp ult i64 %add, 4294967296
  %spec.select372 = select i1 %cmp87, i64 4294967292, i64 68719476732
  %75 = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 6
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %spec.select372, ptr %75, align 8
  %add.ptr95 = getelementptr i8, ptr %1, i32 16428
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  %78 = and i32 %77, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %78) #9, !srcloc !231
  %add.ptr106 = getelementptr i8, ptr %1, i32 16444
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  %80 = and i32 %79, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %80) #9, !srcloc !231
  %gen = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 5
  %81 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool115.not = icmp eq i32 %82, 0
  br i1 %tobool115.not, label %do.body81.if.end118_crit_edge, label %if.then116

do.body81.if.end118_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then116:                                       ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base1, align 4
  %add.ptr1.i = getelementptr i8, ptr %84, i32 220
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #9, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  %86 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base1, align 4
  %add.ptr7.i = getelementptr i8, ptr %87, i32 184
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  %89 = and i32 %88, -251658241
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #9
  %or.i325 = or i32 %90, %82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i325) #9
  %92 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base1, align 4
  %add.ptr13.i = getelementptr i8, ptr %93, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %91) #9, !srcloc !231
  %94 = and i16 %85, -3841
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #9
  %96 = trunc i32 %82 to i16
  %conv16.i = or i16 %95, %96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void @arm_heavy_mb() #9
  %97 = tail call i16 @llvm.bswap.i16(i16 %conv16.i) #9
  %98 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base1, align 4
  %add.ptr22.i = getelementptr i8, ptr %99, i32 220
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i, i16 %97) #9, !srcloc !248
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %do.body81.if.end118_crit_edge
  %100 = ptrtoint ptr %np.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %np.i, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %101, ptr noundef nonnull @.str.27, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool.i.not, i32 3072, i32 2048
  %add.ptr124 = getelementptr i8, ptr %1, i32 1244
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  %103 = and i32 %102, -786433
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %or.i294 = or i32 %104, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void @arm_heavy_mb() #9
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i294)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %105) #9, !srcloc !231
  %add.ptr134 = getelementptr i8, ptr %1, i32 1084
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #9, !srcloc !226
  %107 = shl i32 %106, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  %or.i305 = or i32 %107, 394240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %108 = tail call i32 @llvm.bswap.i32(i32 %or.i305)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %108) #9, !srcloc !231
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %do.end54.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end118 ], [ -22, %do.end.i ], [ -22, %do.end54.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np) unnamed_addr #6 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #9
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_pcie_enable_msi(ptr nocapture noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 144, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @brcm_pcie_enable_msi.__key) #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %call.i, align 8
  %base = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %base9 = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %base9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %base9, align 4
  %np = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 3
  %8 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %np, align 4
  %np10 = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %np10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %np10, align 8
  %msi_target_addr = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 6
  %11 = ptrtoint ptr %msi_target_addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %msi_target_addr, align 8
  %target_addr = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %target_addr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %target_addr, align 8
  %irq11 = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %irq11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call, ptr %irq11, align 8
  %hw_rev = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 14
  %15 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_rev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 771, i32 %16)
  %cmp12 = icmp ult i32 %16, 771
  %legacy = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 9
  %frombool = zext i1 %cmp12 to i8
  %17 = ptrtoint ptr %legacy to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %legacy, align 8
  %. = select i1 %cmp12, i32 17152, i32 17664
  %.71 = select i1 %cmp12, i32 8, i32 32
  %.72 = select i1 %cmp12, i32 24, i32 0
  %add.ptr21 = getelementptr i8, ptr %6, i32 %.
  %18 = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr21, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 11
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.71, ptr %20, align 8
  %22 = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 10
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.72, ptr %22, align 4
  %24 = ptrtoint ptr %np10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %np10, align 8
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef %.71, i32 noundef %.71, i32 noundef 0, ptr noundef nonnull @msi_domain_ops, ptr noundef nonnull %call.i) #9
  %inner_domain.i = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %inner_domain.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call1.i.i, ptr %inner_domain.i, align 8
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end.i:                                         ; preds = %do.body5
  %tobool.not.i.i = icmp eq ptr %25, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call5.i = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i, ptr noundef nonnull @brcm_msi_domain_info, ptr noundef nonnull %call1.i.i) #9
  %msi_domain.i = getelementptr inbounds %struct.brcm_msi, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i, ptr %msi_domain.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %do.end11.i, label %if.end29

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.40) #12
  %30 = ptrtoint ptr %inner_domain.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inner_domain.i, align 8
  tail call void @irq_domain_remove(ptr noundef %31) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %irq11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq11, align 8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %33, ptr noundef nonnull @brcm_pcie_msi_isr, ptr noundef nonnull %call.i) #9
  %34 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %legacy, align 8, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i66 = icmp eq i8 %35, 0
  %cond.i = select i1 %tobool.not.i66, i32 -1, i32 -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #9
  %37 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %18, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %36) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %18, align 4
  %add.ptr5.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %36) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %target_addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %target_addr, align 8
  %conv.i = trunc i64 %42 to i32
  %or.i = or i32 %conv.i, 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %44 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base9, align 4
  %add.ptr9.i = getelementptr i8, ptr %45, i32 16452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %43) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %target_addr to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %target_addr, align 8
  %shr.i = lshr i64 %47, 32
  %conv15.i = trunc i64 %shr.i to i32
  %48 = tail call i32 @llvm.bswap.i32(i32 %conv15.i) #9
  %49 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base9, align 4
  %add.ptr17.i = getelementptr i8, ptr %50, i32 16456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %48) #9, !srcloc !231
  %51 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %legacy, align 8, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool19.not.i = icmp eq i8 %52, 0
  %cond21.i = select i1 %tobool19.not.i, i32 -2071232, i32 -498368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %53 = tail call i32 @llvm.bswap.i32(i32 %cond21.i) #9
  %54 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base9, align 4
  %add.ptr26.i = getelementptr i8, ptr %55, i32 16460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %53) #9, !srcloc !231
  %msi31 = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 7
  %56 = ptrtoint ptr %msi31 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %msi31, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end11.i, %do.end.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end29 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.end11.i ], [ -12, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__brcm_pcie_remove(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msi1.i = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 7
  %0 = ptrtoint ptr %msi1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.brcm_msi_remove.exit_crit_edge, label %if.end.i

entry.brcm_msi_remove.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcm_msi_remove.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq.i = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %3, ptr noundef null, ptr noundef null) #9
  %msi_domain.i.i = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %msi_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msi_domain.i.i, align 4
  tail call void @irq_domain_remove(ptr noundef %5) #9
  %inner_domain.i.i = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %inner_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inner_domain.i.i, align 8
  tail call void @irq_domain_remove(ptr noundef %7) #9
  br label %brcm_msi_remove.exit

brcm_msi_remove.exit:                             ; preds = %if.end.i, %entry.brcm_msi_remove.exit_crit_edge
  tail call fastcc void @brcm_pcie_turn_off(ptr noundef %pcie)
  %rescal.i = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 10
  %8 = ptrtoint ptr %rescal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rescal.i, align 4
  %tobool.not.i14 = icmp eq ptr %9, null
  br i1 %tobool.not.i14, label %brcm_msi_remove.exit.if.end_crit_edge, label %brcm_phy_stop.exit

brcm_msi_remove.exit.if.end_crit_edge:            ; preds = %brcm_msi_remove.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

brcm_phy_stop.exit:                               ; preds = %brcm_msi_remove.exit
  %call.i = tail call fastcc i32 @brcm_phy_cntl(ptr noundef %pcie, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %brcm_phy_stop.exit.if.end_crit_edge, label %do.end

brcm_phy_stop.exit.if.end_crit_edge:              ; preds = %brcm_phy_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %brcm_phy_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.74) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %brcm_phy_stop.exit.if.end_crit_edge, %brcm_msi_remove.exit.if.end_crit_edge
  %12 = ptrtoint ptr %rescal.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rescal.i, align 4
  %call1 = tail call i32 @reset_control_rearm(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %do.end5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.77) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end5, %if.end.if.end7_crit_edge
  %clk = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 2
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %17) #9
  tail call void @clk_unprepare(ptr noundef %17) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_phy_cntl(ptr nocapture noundef readonly %pcie, i32 noundef %start) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool.not = icmp eq i32 %start, 0
  %cond = select i1 %tobool.not, i32 2, i32 0
  %cond2 = select i1 %tobool.not, i32 -1, i32 3
  %base3 = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base3, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 50944
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry
  %combined_mask.060 = phi i32 [ 0, %entry ], [ %or13, %cond.end.for.body_crit_edge ]
  %i.059 = phi i32 [ %cond, %entry ], [ %i.1, %cond.end.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [3 x i32], ptr @brcm_phy_cntl.shifts, i32 0, i32 %i.059
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %i.1.v = phi i32 [ -1, %for.body.cond.end_crit_edge ], [ 1, %cond.true ]
  %cond5 = phi i32 [ 0, %for.body.cond.end_crit_edge ], [ %shl, %cond.true ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  %arrayidx8 = getelementptr [3 x i32], ptr @brcm_phy_cntl.masks, i32 0, i32 %i.059
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %5, %neg
  %and10 = and i32 %7, %cond5
  %or = or i32 %and, %and10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #9, !srcloc !231
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #9
  %or13 = or i32 %7, %combined_mask.060
  %i.1 = add i32 %i.1.v, %i.059
  %cmp.not = icmp eq i32 %i.1, %cond2
  br i1 %cmp.not, label %for.end, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cond.end
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  %spec.select = select i1 %tobool.not, i32 0, i32 %or13
  %and30 = and i32 %10, %or13
  call void @__sanitizer_cov_trace_cmp4(i32 %and30, i32 %spec.select)
  %cmp31 = icmp eq i32 %and30, %spec.select
  br i1 %cmp31, label %for.end.if.end_crit_edge, label %do.end36

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcie, align 8
  %cond38 = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond38) #12
  br label %if.end

if.end:                                           ; preds = %do.end36, %for.end.if.end_crit_edge
  %cond32 = phi i32 [ -5, %do.end36 ], [ 0, %for.end.if.end_crit_edge ]
  ret i32 %cond32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u64_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_pcie_msi_isr(ptr noundef %desc) #2 align 64 {
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
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %intr_base = getelementptr inbounds %struct.brcm_msi, ptr %11, i32 0, i32 12
  %14 = ptrtoint ptr %intr_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intr_base, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !226
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %legacy_shift = getelementptr inbounds %struct.brcm_msi, ptr %11, i32 0, i32 10
  %18 = ptrtoint ptr %legacy_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %legacy_shift, align 4
  %shr = lshr i32 %17, %19
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr, ptr %status, align 4
  %nr = getelementptr inbounds %struct.brcm_msi, ptr %11, i32 0, i32 11
  %21 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr, align 8
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %22, i32 noundef 0) #9
  %23 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %24)
  %cmp35 = icmp ult i32 %call5, %24
  br i1 %cmp35, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %inner_domain = getelementptr inbounds %struct.brcm_msi, ptr %11, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %bit.036 = phi i32 [ %call5, %for.body.lr.ph ], [ %call17, %if.end15.for.body_crit_edge ]
  %25 = ptrtoint ptr %inner_domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %inner_domain, align 8
  %call7 = call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %bit.036) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %for.body.if.end15_crit_edge, label %do.body

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_pcie_msi_isr.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcm_pcie_msi_isr, %if.end15)) #9
          to label %if.then14 [label %if.end15], !srcloc !263

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_pcie_msi_isr.__UNIQUE_ID_ddebug322, ptr noundef %13, ptr noundef nonnull @.str.46) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.body, %for.body.if.end15_crit_edge
  %27 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr, align 8
  %add = add nuw i32 %bit.036, 1
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %28, i32 noundef %add) #9
  %29 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr, align 8
  %cmp = icmp ult i32 %call17, %30
  br i1 %cmp, label %if.end15.for.body_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %31 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i31 = icmp eq ptr %32, null
  br i1 %tobool.not.i31, label %if.else.i32, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i32:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i32, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %34, %if.else.i32 ], [ %32, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcm_msi_set_regs(ptr nocapture noundef readonly %msi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.brcm_msi, ptr %msi, i32 0, i32 9
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %legacy, align 8, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 -1, i32 -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %intr_base = getelementptr inbounds %struct.brcm_msi, ptr %msi, i32 0, i32 12
  %3 = ptrtoint ptr %intr_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intr_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %intr_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intr_base, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %target_addr = getelementptr inbounds %struct.brcm_msi, ptr %msi, i32 0, i32 6
  %7 = ptrtoint ptr %target_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %target_addr, align 8
  %conv = trunc i64 %8 to i32
  %or = or i32 %conv, 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.brcm_msi, ptr %msi, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 16452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %target_addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %target_addr, align 8
  %shr = lshr i64 %13, 32
  %conv15 = trunc i64 %shr to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv15)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %16, i32 16456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %14) #9, !srcloc !231
  %17 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %legacy, align 8, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool19.not = icmp eq i8 %18, 0
  %cond21 = select i1 %tobool19.not, i32 -2071232, i32 -498368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %cond21)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 16460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %19) #9, !srcloc !231
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %lock.i = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %used.i = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 8
  %nr.i = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 8
  %call.i = tail call i32 @bitmap_find_free_region(ptr noundef %used.i, i32 noundef %3, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %virq, i32 noundef %call.i, ptr noundef nonnull @brcm_msi_bottom_irq_chip, ptr noundef %5, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #9
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %lock.i = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %used.i = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 8
  tail call void @bitmap_release_region(ptr noundef %used.i, i32 noundef %3, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_msi_ack_irq(ptr nocapture noundef readonly %data) #2 align 64 {
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
  %legacy_shift = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %legacy_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %legacy_shift, align 4
  %add = add i32 %5, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %shl = shl nuw i32 1, %add
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %intr_base = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %intr_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intr_base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #9, !srcloc !231
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcm_msi_set_affinity(ptr nocapture noundef readnone %irq_data, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @brcm_msi_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %target_addr = getelementptr inbounds %struct.brcm_msi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %target_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %target_addr, align 8
  %conv = trunc i64 %3 to i32
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %msg, align 4
  %5 = load i64, ptr %target_addr, align 8
  %shr = lshr i64 %5, 32
  %conv3 = trunc i64 %shr to i32
  %6 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv3, ptr %6, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %or = or i32 %9, 25920
  %10 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @brcm_pcie_map_conf32(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %base1 = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %and2 = and i32 %where, -4
  %add.ptr = getelementptr i8, ptr %3, i32 %and2
  %cond = select i1 %tobool.not, ptr %add.ptr, ptr null
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %number, align 4
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 20
  %and4 = shl i32 %devfn, 12
  %shl5 = and i32 %and4, 1044480
  %or = or i32 %shl, %shl5
  %and7 = and i32 %where, 4092
  %or8 = or i32 %or, %and7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %or8)
  %reg_offsets = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offsets, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #9, !srcloc !231
  %14 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offsets, align 4
  %arrayidx11 = getelementptr i32, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11, align 4
  %add.ptr12 = getelementptr i8, ptr %3, i32 %17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %cond, %if.then ], [ %add.ptr12, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_pcie_add_bus(ptr noundef %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %of_node = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false3
  %dev1.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %driver_data.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %do.end.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.47) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.end.i.if.end7.i_crit_edge
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 40, i32 noundef 3520) #9
  %tobool.not.i45.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i45.i, label %if.end7.i.cleanup_crit_edge, label %if.end11.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  %10 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %call.i.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.subdev_regulators, ptr %call.i.i.i, i32 0, i32 1, i32 0
  %11 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.52, ptr %arrayidx1.i.i, align 4
  %arrayidx1.1.i.i = getelementptr %struct.subdev_regulators, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.53, ptr %arrayidx1.1.i.i, align 4
  %arrayidx1.2.i.i = getelementptr %struct.subdev_regulators, ptr %call.i.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.54, ptr %arrayidx1.2.i.i, align 4
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i.i, ptr %driver_data.i, align 4
  %call13.i = tail call i32 @regulator_bulk_get(ptr noundef %dev1.i, i32 noundef 3, ptr noundef %arrayidx1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i:                                       ; preds = %if.end11.i
  %15 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i.i.i, align 4
  %call20.i = tail call i32 @regulator_bulk_enable(i32 noundef %16, ptr noundef %arrayidx1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end8, label %do.end25.i

do.end25.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.50) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end16.i
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %sr = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %sr, align 8
  %call10 = tail call fastcc i32 @brcm_pcie_linkup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %refusal_mode = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %refusal_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %refusal_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %do.end25.i, %if.end11.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end8.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ %call13.i, %if.end11.i.cleanup_crit_edge ], [ %call20.i, %do.end25.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_subdev_regulators_remove_bus(ptr noundef %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %driver_data = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %supplies = getelementptr inbounds %struct.subdev_regulators, ptr %1, i32 0, i32 1
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef %7, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.72) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @brcm_pcie_map_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %base1 = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %add.ptr = getelementptr i8, ptr %3, i32 %where
  %spec.select = select i1 %tobool.not, ptr %add.ptr, ptr null
  br label %cleanup

if.end:                                           ; preds = %entry
  %refusal_mode = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %refusal_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %refusal_mode, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end8, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  %add.ptr4 = getelementptr i8, ptr %3, i32 16440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #9, !srcloc !231
  %and6 = and i32 %where, 3
  %add.ptr7 = getelementptr i8, ptr %add.ptr4, i32 %and6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %9 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %number, align 4
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 20
  %and10 = shl i32 %devfn, 12
  %shl11 = and i32 %and10, 1044480
  %or = or i32 %shl, %shl11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base1, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 36864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %11) #9, !srcloc !231
  %add.ptr18 = getelementptr i8, ptr %3, i32 32768
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 %where
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.body, %if.then
  %retval.0 = phi ptr [ %spec.select, %if.then ], [ %add.ptr7, %do.body ], [ %add.ptr19, %if.end8 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_pcie_linkup(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 8
  %base2 = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %2 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base2, align 4
  %perst_set = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 15
  %4 = ptrtoint ptr %perst_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perst_set, align 4
  tail call void %5(ptr noundef %pcie, i32 noundef 0) #9
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry
  %i.0214 = phi i32 [ 0, %entry ], [ %add, %for.body.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base2, align 4
  %add.ptr.i196 = getelementptr i8, ptr %7, i32 16488
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  %9 = and i32 %8, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %9)
  %10 = icmp eq i32 %9, 805306368
  br i1 %10, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @msleep(i32 noundef 5) #9
  %add = add nuw nsw i32 %i.0214, 5
  %cmp = icmp ult i32 %i.0214, 95
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %11 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base2, align 4
  %add.ptr.i198 = getelementptr i8, ptr %12, i32 16488
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  %14 = and i32 %13, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %14)
  %15 = icmp eq i32 %14, 805306368
  br i1 %15, label %if.end, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55) #12
  br label %cleanup

if.end:                                           ; preds = %for.end
  %16 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base2, align 4
  %add.ptr.i199 = getelementptr i8, ptr %17, i32 16488
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i = icmp slt i32 %18, 0
  br i1 %tobool.i, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %windows = getelementptr i8, ptr %pcie, i32 -72
  %19 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %19)
  %entry3.0215 = load ptr, ptr %windows, align 4
  %cmp15.not216 = icmp eq ptr %entry3.0215, %windows
  br i1 %cmp15.not216, label %if.end11.for.end62_crit_edge, label %for.body17.lr.ph

if.end11.for.end62_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end62

for.body17.lr.ph:                                 ; preds = %if.end11
  %type.i = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 9
  br label %for.body17

for.body17:                                       ; preds = %for.inc56.for.body17_crit_edge, %for.body17.lr.ph
  %entry3.0218 = phi ptr [ %entry3.0215, %for.body17.lr.ph ], [ %entry3.0, %for.inc56.for.body17_crit_edge ]
  %num_out_wins.0217 = phi i32 [ 0, %for.body17.lr.ph ], [ %num_out_wins.1, %for.inc56.for.body17_crit_edge ]
  %res18 = getelementptr inbounds %struct.resource_entry, ptr %entry3.0218, i32 0, i32 1
  %20 = ptrtoint ptr %res18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res18, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i200 = and i32 %23, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i200)
  %cmp20.not = icmp eq i32 %and.i200, 512
  br i1 %cmp20.not, label %if.end22, label %for.body17.for.inc56_crit_edge

for.body17.for.inc56_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc56

if.end22:                                         ; preds = %for.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_out_wins.0217)
  %cmp23 = icmp sgt i32 %num_out_wins.0217, 3
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 8
  %28 = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %29 = icmp ult i32 %28, 2
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %21, align 4
  br i1 %29, label %if.then31, label %if.end46

if.then31:                                        ; preds = %if.end29
  %end.i = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %31
  %add.i = add i32 %sub.i, %33
  %div195 = lshr i32 %add.i, 27
  %34 = tail call i32 @llvm.umin.i32(i32 %div195, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp39219.not = icmp eq i32 %34, 0
  br i1 %cmp39219.not, label %if.then31.for.end62_crit_edge, label %for.body41.lr.ph

if.then31.for.end62_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end62

for.body41.lr.ph:                                 ; preds = %if.then31
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry3.0218, i32 0, i32 2
  %conv = zext i32 %31 to i64
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset, align 4
  %conv42 = zext i32 %36 to i64
  %sub = sub nsw i64 %conv, %conv42
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %pcie, i32 noundef 0, i64 noundef %conv, i64 noundef %sub, i64 noundef 134217728)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %exitcond.not = icmp eq i32 %34, 1
  br i1 %exitcond.not, label %for.body41.lr.ph.for.end62_crit_edge, label %for.body41.1

for.body41.lr.ph.for.end62_crit_edge:             ; preds = %for.body41.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end62

for.body41.1:                                     ; preds = %for.body41.lr.ph
  %add44 = add nuw nsw i64 %conv, 134217728
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %conv42.1 = zext i32 %38 to i64
  %sub.1 = sub nsw i64 %add44, %conv42.1
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %pcie, i32 noundef 1, i64 noundef %add44, i64 noundef %sub.1, i64 noundef 134217728)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %exitcond.not.1 = icmp eq i32 %34, 2
  br i1 %exitcond.not.1, label %for.body41.1.for.end62_crit_edge, label %for.body41.2

for.body41.1.for.end62_crit_edge:                 ; preds = %for.body41.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end62

for.body41.2:                                     ; preds = %for.body41.1
  %add44.1 = add nuw nsw i64 %conv, 268435456
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset, align 4
  %conv42.2 = zext i32 %40 to i64
  %sub.2 = sub nsw i64 %add44.1, %conv42.2
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %pcie, i32 noundef 2, i64 noundef %add44.1, i64 noundef %sub.2, i64 noundef 134217728)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %exitcond.not.2 = icmp eq i32 %34, 3
  br i1 %exitcond.not.2, label %for.body41.2.for.end62_crit_edge, label %for.body41.3

for.body41.2.for.end62_crit_edge:                 ; preds = %for.body41.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end62

for.body41.3:                                     ; preds = %for.body41.2
  call void @__sanitizer_cov_trace_pc() #11
  %add44.2 = add nuw nsw i64 %conv, 402653184
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset, align 4
  %conv42.3 = zext i32 %42 to i64
  %sub.3 = sub nsw i64 %add44.2, %conv42.3
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %pcie, i32 noundef 3, i64 noundef %add44.2, i64 noundef %sub.3, i64 noundef 134217728)
  br label %for.end62

if.end46:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %conv48 = zext i32 %31 to i64
  %offset50 = getelementptr inbounds %struct.resource_entry, ptr %entry3.0218, i32 0, i32 2
  %43 = ptrtoint ptr %offset50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset50, align 4
  %sub51 = sub i32 %31, %44
  %conv52 = zext i32 %sub51 to i64
  %end.i201 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1
  %45 = ptrtoint ptr %end.i201 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end.i201, align 4
  %sub.i202 = sub i32 1, %31
  %add.i203 = add i32 %sub.i202, %46
  %conv54 = zext i32 %add.i203 to i64
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %pcie, i32 noundef %num_out_wins.0217, i64 noundef %conv48, i64 noundef %conv52, i64 noundef %conv54)
  %inc55 = add nsw i32 %num_out_wins.0217, 1
  br label %for.inc56

for.inc56:                                        ; preds = %if.end46, %for.body17.for.inc56_crit_edge
  %num_out_wins.1 = phi i32 [ %num_out_wins.0217, %for.body17.for.inc56_crit_edge ], [ %inc55, %if.end46 ]
  %47 = ptrtoint ptr %entry3.0218 to i32
  call void @__asan_load4_noabort(i32 %47)
  %entry3.0 = load ptr, ptr %entry3.0218, align 4
  %cmp15.not = icmp eq ptr %entry3.0, %windows
  br i1 %cmp15.not, label %for.inc56.for.end62_crit_edge, label %for.inc56.for.body17_crit_edge

for.inc56.for.body17_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.inc56.for.end62_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end62

for.end62:                                        ; preds = %for.inc56.for.end62_crit_edge, %for.body41.3, %for.body41.2.for.end62_crit_edge, %for.body41.1.for.end62_crit_edge, %for.body41.lr.ph.for.end62_crit_edge, %if.then31.for.end62_crit_edge, %if.end11.for.end62_crit_edge
  %ssc = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 4
  %48 = ptrtoint ptr %ssc to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ssc, align 8, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  br i1 %tobool.not, label %for.end62.if.end72_crit_edge, label %if.then63

for.end62.if.end72_crit_edge:                     ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then63:                                        ; preds = %for.end62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %50 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %tmp.i, align 4, !annotation !269
  %51 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 520093696) #9, !srcloc !231
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i.i = getelementptr i8, ptr %52, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 1114240) #9, !srcloc !231
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %.mask.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not1.i.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not1.i.not.i, label %if.then63.if.end.i_crit_edge, label %if.then63.for.body.i.i_crit_edge

if.then63.for.body.i.i_crit_edge:                 ; preds = %if.then63
  br label %for.body.i.i

if.then63.if.end.i_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then63.for.body.i.i_crit_edge
  %tries.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then63.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #9
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %inc.i.i = add nuw nsw i32 %tries.02.i.i, 1
  %.mask91.i = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask91.i)
  %tobool.not.i.i = icmp ne i32 %.mask91.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %tries.02.i.i)
  %cmp.i.i = icmp ult i32 %tries.02.i.i, 9
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %brcm_pcie_mdio_write.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

brcm_pcie_mdio_write.exit.i:                      ; preds = %for.body.i.i
  br i1 %tobool.not.i.i, label %brcm_pcie_mdio_write.exit.i.do.end70_crit_edge, label %brcm_pcie_mdio_write.exit.i.if.end.i_crit_edge

brcm_pcie_mdio_write.exit.i.if.end.i_crit_edge:   ; preds = %brcm_pcie_mdio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

brcm_pcie_mdio_write.exit.i.do.end70_crit_edge:   ; preds = %brcm_pcie_mdio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

if.end.i:                                         ; preds = %brcm_pcie_mdio_write.exit.i.if.end.i_crit_edge, %if.then63.if.end.i_crit_edge
  %57 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base2, align 4
  %call2.i = call fastcc i32 @brcm_pcie_mdio_read(ptr noundef %58, i8 noundef zeroext 2, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.do.end70_crit_edge, label %if.end5.i

if.end.i.do.end70_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

if.end5.i:                                        ; preds = %if.end.i
  %59 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tmp.i, align 4
  %or.i67.i = or i32 %60, 49152
  store i32 %or.i67.i, ptr %tmp.i, align 4
  %61 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  tail call void @arm_heavy_mb() #9
  %add.ptr.i68.i = getelementptr i8, ptr %62, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 33554432) #9, !srcloc !231
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void @arm_heavy_mb() #9
  %conv8.i.i = and i32 %or.i67.i, 65535
  %or.i69.i = or i32 %conv8.i.i, -2147483648
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i69.i) #9
  %add.ptr9.i70.i = getelementptr i8, ptr %62, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i70.i, i32 %64) #9, !srcloc !231
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i70.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %.mask88.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask88.i)
  %tobool.not1.i71.not.i = icmp eq i32 %.mask88.i, 0
  br i1 %tobool.not1.i71.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.end5.i.for.body.i77.i_crit_edge

if.end5.i.for.body.i77.i_crit_edge:               ; preds = %if.end5.i
  br label %for.body.i77.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

for.body.i77.i:                                   ; preds = %for.body.i77.i.for.body.i77.i_crit_edge, %if.end5.i.for.body.i77.i_crit_edge
  %tries.02.i72.i = phi i32 [ %inc.i73.i, %for.body.i77.i.for.body.i77.i_crit_edge ], [ 0, %if.end5.i.for.body.i77.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 2147480) #9
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i70.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %inc.i73.i = add nuw nsw i32 %tries.02.i72.i, 1
  %.mask92.i = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask92.i)
  %tobool.not.i74.i = icmp ne i32 %.mask92.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %tries.02.i72.i)
  %cmp.i75.i = icmp ult i32 %tries.02.i72.i, 9
  %or.cond.i76.i = select i1 %tobool.not.i74.i, i1 %cmp.i75.i, i1 false
  br i1 %or.cond.i76.i, label %for.body.i77.i.for.body.i77.i_crit_edge, label %brcm_pcie_mdio_write.exit81.i

for.body.i77.i.for.body.i77.i_crit_edge:          ; preds = %for.body.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i77.i

brcm_pcie_mdio_write.exit81.i:                    ; preds = %for.body.i77.i
  br i1 %tobool.not.i74.i, label %brcm_pcie_mdio_write.exit81.i.do.end70_crit_edge, label %brcm_pcie_mdio_write.exit81.i.if.end11.i_crit_edge

brcm_pcie_mdio_write.exit81.i.if.end11.i_crit_edge: ; preds = %brcm_pcie_mdio_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

brcm_pcie_mdio_write.exit81.i.do.end70_crit_edge: ; preds = %brcm_pcie_mdio_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

if.end11.i:                                       ; preds = %brcm_pcie_mdio_write.exit81.i.if.end11.i_crit_edge, %if.end5.i.if.end11.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %68 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base2, align 4
  %call13.i = call fastcc i32 @brcm_pcie_mdio_read(ptr noundef %69, i8 noundef zeroext 1, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end11.i.do.end70_crit_edge, label %do.end29.i

if.end11.i.do.end70_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

do.end29.i:                                       ; preds = %if.end11.i
  %70 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tmp.i, align 4
  %72 = and i32 %71, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %72)
  %.not.i = icmp eq i32 %72, 3072
  br i1 %.not.i, label %brcm_pcie_set_ssc.exit, label %do.end29.i.do.end70_crit_edge

do.end29.i.do.end70_crit_edge:                    ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

brcm_pcie_set_ssc.exit:                           ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %if.end72

do.end70:                                         ; preds = %do.end29.i.do.end70_crit_edge, %if.end11.i.do.end70_crit_edge, %brcm_pcie_mdio_write.exit81.i.do.end70_crit_edge, %if.end.i.do.end70_crit_edge, %brcm_pcie_mdio_write.exit.i.do.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64) #12
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %brcm_pcie_set_ssc.exit, %for.end62.if.end72_crit_edge
  %ssc_good.0.off0 = phi ptr [ @.str.71, %do.end70 ], [ @.str.71, %for.end62.if.end72_crit_edge ], [ @.str.70, %brcm_pcie_set_ssc.exit ]
  %add.ptr74 = getelementptr i8, ptr %3, i32 190
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr74) #9, !srcloc !243
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  %and = and i16 %74, 15
  %75 = lshr i16 %74, 4
  %76 = and i16 %75, 63
  %idxprom = zext i16 %and to i32
  %arrayidx = getelementptr [0 x i8], ptr @pcie_link_speed, i32 0, i32 %idxprom
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx, align 1
  %conv119 = zext i8 %78 to i32
  %call120 = tail call ptr @pci_speed_string(i32 noundef %conv119) #9
  %conv121 = zext i16 %76 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.67, ptr noundef %call120, i32 noundef %conv121, ptr noundef nonnull %ssc_good.0.off0) #12
  %add.ptr126 = getelementptr i8, ptr %3, i32 392
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  %80 = and i32 %79, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %80) #9, !srcloc !231
  %add.ptr136 = getelementptr i8, ptr %3, i32 16900
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  %82 = or i32 %81, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %82) #9, !srcloc !231
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end27, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end27 ], [ 0, %if.end72 ], [ -22, %do.end10 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcm_pcie_set_outbound_win(ptr nocapture noundef readonly %pcie, i32 noundef %win, i64 noundef %cpu_addr, i64 noundef %pcie_addr, i64 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  tail call void @arm_heavy_mb() #9
  %conv = trunc i64 %pcie_addr to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %base = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 16396
  %mul = shl i32 %win, 3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %0) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  tail call void @arm_heavy_mb() #9
  %shr = lshr i64 %pcie_addr, 32
  %conv6 = trunc i64 %shr to i32
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 16400
  %add.ptr10 = getelementptr i8, ptr %add.ptr8, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %3) #9, !srcloc !231
  %div87 = lshr i64 %cpu_addr, 20
  %add = add i64 %cpu_addr, 4503599627370495
  %sub = add i64 %add, %size
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 16496
  %mul16 = shl i32 %win, 2
  %add.ptr17 = getelementptr i8, ptr %add.ptr15, i32 %mul16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !282
  %and528.i.i = shl nuw nsw i64 %div87, 4
  %9 = trunc i64 %and528.i.i to i32
  %conv8.i.i = and i32 %9, 65520
  %10 = and i32 %8, 251662080
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = trunc i64 %sub to i32
  %conv8.i.i103 = and i32 %12, -1048576
  %and.i99 = or i32 %conv8.i.i103, %conv8.i.i
  %or.i104 = or i32 %and.i99, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !283
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i104)
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 16496
  %add.ptr26 = getelementptr i8, ptr %add.ptr24, i32 %mul16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %13) #9, !srcloc !231
  %type.i = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 9
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 8
  %18 = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv11 = trunc i64 %div87 to i32
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %21, i32 16512
  %add.ptr34 = getelementptr i8, ptr %add.ptr32, i32 %mul
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  %shr28 = lshr i32 %conv11, 12
  %23 = and i32 %22, 16777215
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = and i32 %shr28, 255
  %or.i121 = or i32 %24, %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !285
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i121)
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr42 = getelementptr i8, ptr %28, i32 16512
  %add.ptr44 = getelementptr i8, ptr %add.ptr42, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %26) #9, !srcloc !231
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr49 = getelementptr i8, ptr %30, i32 16516
  %add.ptr51 = getelementptr i8, ptr %add.ptr49, i32 %mul
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !286
  %sum.shift = lshr i64 %sub, 32
  %shr45152 = trunc i64 %sum.shift to i32
  %32 = and i32 %31, 16777215
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = and i32 %shr45152, 255
  %or.i138 = or i32 %33, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i138)
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr59 = getelementptr i8, ptr %37, i32 16516
  %add.ptr61 = getelementptr i8, ptr %add.ptr59, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %35) #9, !srcloc !231
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_pcie_mdio_read(ptr noundef %base, i8 noundef zeroext %regad, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %conv1 = zext i8 %regad to i32
  %or63.i = or i32 %conv1, 1048576
  %0 = tail call i32 @llvm.bswap.i32(i32 %or63.i)
  %add.ptr = getelementptr i8, ptr %base, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !231
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  %add.ptr7 = getelementptr i8, ptr %base, i32 4360
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not1 = icmp sgt i32 %3, -1
  br i1 %tobool.not1, label %land.rhs.preheader, label %entry.do.end32_crit_edge

entry.do.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #9
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %land.rhs.1, label %land.rhs.preheader.do.end32_crit_edge

land.rhs.preheader.do.end32_crit_edge:            ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.1:                                       ; preds = %land.rhs.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.1 = icmp sgt i32 %9, -1
  br i1 %tobool.not.1, label %land.rhs.2, label %land.rhs.1.do.end32_crit_edge

land.rhs.1.do.end32_crit_edge:                    ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.2:                                       ; preds = %land.rhs.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not.2 = icmp sgt i32 %12, -1
  br i1 %tobool.not.2, label %land.rhs.3, label %land.rhs.2.do.end32_crit_edge

land.rhs.2.do.end32_crit_edge:                    ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.3:                                       ; preds = %land.rhs.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #9
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not.3 = icmp sgt i32 %15, -1
  br i1 %tobool.not.3, label %land.rhs.4, label %land.rhs.3.do.end32_crit_edge

land.rhs.3.do.end32_crit_edge:                    ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.4:                                       ; preds = %land.rhs.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not.4 = icmp sgt i32 %18, -1
  br i1 %tobool.not.4, label %land.rhs.5, label %land.rhs.4.do.end32_crit_edge

land.rhs.4.do.end32_crit_edge:                    ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.5:                                       ; preds = %land.rhs.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #9
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool.not.5 = icmp sgt i32 %21, -1
  br i1 %tobool.not.5, label %land.rhs.6, label %land.rhs.5.do.end32_crit_edge

land.rhs.5.do.end32_crit_edge:                    ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.6:                                       ; preds = %land.rhs.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #9
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool.not.6 = icmp sgt i32 %24, -1
  br i1 %tobool.not.6, label %land.rhs.7, label %land.rhs.6.do.end32_crit_edge

land.rhs.6.do.end32_crit_edge:                    ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.7:                                       ; preds = %land.rhs.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #9
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %tobool.not.7 = icmp sgt i32 %27, -1
  br i1 %tobool.not.7, label %land.rhs.8, label %land.rhs.7.do.end32_crit_edge

land.rhs.7.do.end32_crit_edge:                    ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.8:                                       ; preds = %land.rhs.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %tobool.not.8 = icmp sgt i32 %30, -1
  br i1 %tobool.not.8, label %land.rhs.9, label %land.rhs.8.do.end32_crit_edge

land.rhs.8.do.end32_crit_edge:                    ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.rhs.9:                                       ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !226
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.9.inv = icmp slt i32 %33, 0
  %spec.select = select i1 %tobool.not.9.inv, i32 0, i32 -5
  br label %do.end32

do.end32:                                         ; preds = %land.rhs.9, %land.rhs.8.do.end32_crit_edge, %land.rhs.7.do.end32_crit_edge, %land.rhs.6.do.end32_crit_edge, %land.rhs.5.do.end32_crit_edge, %land.rhs.4.do.end32_crit_edge, %land.rhs.3.do.end32_crit_edge, %land.rhs.2.do.end32_crit_edge, %land.rhs.1.do.end32_crit_edge, %land.rhs.preheader.do.end32_crit_edge, %entry.do.end32_crit_edge
  %data.0.lcssa = phi i32 [ %3, %entry.do.end32_crit_edge ], [ %6, %land.rhs.preheader.do.end32_crit_edge ], [ %9, %land.rhs.1.do.end32_crit_edge ], [ %12, %land.rhs.2.do.end32_crit_edge ], [ %15, %land.rhs.3.do.end32_crit_edge ], [ %18, %land.rhs.4.do.end32_crit_edge ], [ %21, %land.rhs.5.do.end32_crit_edge ], [ %24, %land.rhs.6.do.end32_crit_edge ], [ %27, %land.rhs.7.do.end32_crit_edge ], [ %30, %land.rhs.8.do.end32_crit_edge ], [ %33, %land.rhs.9 ]
  %cond38 = phi i32 [ 0, %entry.do.end32_crit_edge ], [ 0, %land.rhs.preheader.do.end32_crit_edge ], [ 0, %land.rhs.1.do.end32_crit_edge ], [ 0, %land.rhs.2.do.end32_crit_edge ], [ 0, %land.rhs.3.do.end32_crit_edge ], [ 0, %land.rhs.4.do.end32_crit_edge ], [ 0, %land.rhs.5.do.end32_crit_edge ], [ 0, %land.rhs.6.do.end32_crit_edge ], [ 0, %land.rhs.7.do.end32_crit_edge ], [ 0, %land.rhs.8.do.end32_crit_edge ], [ %spec.select, %land.rhs.9 ]
  %and34 = and i32 %data.0.lcssa, 2147483647
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and34, ptr %val, align 4
  ret i32 %cond38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcm_pcie_turn_off(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16488
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  %3 = and i32 %2, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %3)
  %4 = icmp eq i32 %3, 805306368
  br i1 %4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base1, align 4
  %add.ptr.i26 = getelementptr i8, ptr %6, i32 16484
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %8) #9, !srcloc !231
  %add.ptr7.i = getelementptr i8, ptr %6, i32 16488
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !294
  %10 = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not62.i = icmp eq i32 %10, 0
  br i1 %tobool.not62.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.063.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2400, i32 noundef 2) #9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !295
  %inc.i = add nuw nsw i32 %i.063.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.063.i)
  %cmp.i = icmp ult i32 %i.063.i, 14
  %12 = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %tobool.not.i, label %do.end54.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end54.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.79) #12
  br label %if.end

if.end:                                           ; preds = %do.end54.i, %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %perst_set = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 15
  %15 = ptrtoint ptr %perst_set to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %perst_set, align 4
  tail call void %16(ptr noundef %pcie, i32 noundef 1) #9
  %add.ptr = getelementptr i8, ptr %1, i32 16484
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  %18 = and i32 %17, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !297
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #9, !srcloc !231
  %add.ptr8 = getelementptr i8, ptr %1, i32 16900
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !298
  %20 = or i32 %19, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !299
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %20) #9, !srcloc !231
  %bridge_sw_init_set = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 16
  %21 = ptrtoint ptr %bridge_sw_init_set to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bridge_sw_init_set, align 8
  tail call void %22(ptr noundef %pcie, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_pcie_perst_set_generic(ptr nocapture noundef readonly %pcie, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %reg_offsets = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 8
  %2 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offsets, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !300
  %7 = and i32 %6, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = and i32 %val, 1
  %or.i = or i32 %8, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !301
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_offsets, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %10) #9, !srcloc !231
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_pcie_bridge_sw_init_set_generic(ptr nocapture noundef readonly %pcie, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %reg_offsets = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 8
  %2 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offsets, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  %7 = and i32 %6, -33554433
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shl = shl i32 %val, 1
  %and3 = and i32 %shl, 2
  %or = or i32 %8, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !303
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_offsets, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #9, !srcloc !231
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_pcie_perst_set_4908(ptr nocapture noundef readonly %pcie, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %perst_reset = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 11
  %0 = ptrtoint ptr %perst_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perst_reset, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39.critedge

land.rhs:                                         ; preds = %entry
  %.b50 = load i1, ptr @brcm_pcie_perst_set_4908.__already_done, align 1
  br i1 %.b50, label %land.rhs.if.end45_crit_edge, label %if.then, !prof !304

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @brcm_pcie_perst_set_4908.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 933, i32 noundef 9, ptr noundef nonnull @.str.81) #9
  br label %if.end45

if.end39.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool40.not = icmp eq i32 %val, 0
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @reset_control_assert(ptr noundef nonnull %1) #9
  br label %if.end45

if.else:                                          ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 @reset_control_deassert(ptr noundef nonnull %1) #9
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then41, %if.then, %land.rhs.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_pcie_perst_set_7278(ptr nocapture noundef readonly %pcie, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16484
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %3 = and i32 %2, -67108865
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv8.i.i = select i1 %tobool.not, i32 4, i32 0
  %or.i = or i32 %4, %conv8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  tail call void @arm_heavy_mb() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 16484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #9, !srcloc !231
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_pcie_bridge_sw_init_set_7278(ptr nocapture noundef readonly %pcie, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %reg_offsets = getelementptr inbounds %struct.brcm_pcie, ptr %pcie, i32 0, i32 8
  %2 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offsets, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  %7 = and i32 %6, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and3 = and i32 %val, 1
  %or = or i32 %8, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !308
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_offsets, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #9, !srcloc !231
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_pcie_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @brcm_pcie_turn_off(ptr noundef %1)
  %rescal.i = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %rescal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rescal.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %brcm_phy_stop.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

brcm_phy_stop.exit:                               ; preds = %entry
  %call.i = tail call fastcc i32 @brcm_phy_cntl(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %brcm_phy_stop.exit.if.end_crit_edge, label %do.end

brcm_phy_stop.exit.if.end_crit_edge:              ; preds = %brcm_phy_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %brcm_phy_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %brcm_phy_stop.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %rescal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rescal.i, align 4
  %call3 = tail call i32 @reset_control_rearm(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %sr = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sr, align 8
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.if.end28_crit_edge, label %if.then11

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then11:                                        ; preds = %if.end9
  %ep_wakeup_capable = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %ep_wakeup_capable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ep_wakeup_capable, align 4
  %bus = getelementptr i8, ptr %1, i32 -96
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 32
  tail call void @pci_walk_bus(ptr noundef %10, ptr noundef nonnull @pci_dev_may_wakeup, ptr noundef %ep_wakeup_capable) #9
  %11 = ptrtoint ptr %ep_wakeup_capable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ep_wakeup_capable, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  br i1 %tobool14.not, label %if.then15, label %if.then11.if.end28_crit_edge

if.then11.if.end28_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then15:                                        ; preds = %if.then11
  %13 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sr, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %supplies = getelementptr inbounds %struct.subdev_regulators, ptr %14, i32 0, i32 1
  %call18 = tail call i32 @regulator_bulk_disable(i32 noundef %16, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.if.end28_crit_edge, label %do.end23

if.then15.if.end28_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87) #12
  %17 = ptrtoint ptr %rescal.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rescal.i, align 4
  %call25 = tail call i32 @reset_control_reset(ptr noundef %18) #9
  br label %cleanup

if.end28:                                         ; preds = %if.then15.if.end28_crit_edge, %if.then11.if.end28_crit_edge, %if.end9.if.end28_crit_edge
  %clk = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %20) #9
  tail call void @clk_unprepare(ptr noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end23, %do.end8
  %retval.0 = phi i32 [ %call3, %do.end8 ], [ 0, %if.end28 ], [ %call18, %do.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_pcie_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base1 = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  %clk = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %sr = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sr, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %if.then4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then4:                                         ; preds = %if.end
  %ep_wakeup_capable = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %ep_wakeup_capable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ep_wakeup_capable, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ep_wakeup_capable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ep_wakeup_capable, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 4
  %supplies = getelementptr inbounds %struct.subdev_regulators, ptr %7, i32 0, i32 1
  %call10 = tail call i32 @regulator_bulk_enable(i32 noundef %12, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else.if.end15_crit_edge, label %do.end

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91) #12
  br label %err_disable_clk

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then6, %if.end.if.end15_crit_edge
  %rescal = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %rescal to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rescal, align 4
  %call16 = tail call i32 @reset_control_reset(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_regulator_crit_edge

if.end15.err_regulator_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regulator

if.end19:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %rescal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rescal, align 4
  %tobool.not.i89 = icmp eq ptr %16, null
  br i1 %tobool.not.i89, label %if.end19.if.end23_crit_edge, label %brcm_phy_start.exit

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

brcm_phy_start.exit:                              ; preds = %if.end19
  %call.i90 = tail call fastcc i32 @brcm_phy_cntl(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool21.not = icmp eq i32 %call.i90, 0
  br i1 %tobool21.not, label %brcm_phy_start.exit.if.end23_crit_edge, label %brcm_phy_start.exit.err_reset_crit_edge

brcm_phy_start.exit.err_reset_crit_edge:          ; preds = %brcm_phy_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_reset

brcm_phy_start.exit.if.end23_crit_edge:           ; preds = %brcm_phy_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %brcm_phy_start.exit.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  %bridge_sw_init_set = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %bridge_sw_init_set to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge_sw_init_set, align 8
  tail call void %18(ptr noundef %1, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %3, i32 16900
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !309
  %20 = and i32 %19, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !310
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 21474800) #9
  %call31 = tail call fastcc i32 @brcm_pcie_setup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end23.err_reset_crit_edge

if.end23.err_reset_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_reset

if.end34:                                         ; preds = %if.end23
  %call35 = tail call fastcc i32 @brcm_pcie_linkup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.err_reset_crit_edge

if.end34.err_reset_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_reset

if.end38:                                         ; preds = %if.end34
  %msi = getelementptr inbounds %struct.brcm_pcie, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %msi, align 8
  %tobool39.not = icmp eq ptr %23, null
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @brcm_msi_set_regs(ptr noundef nonnull %23)
  br label %cleanup

err_reset:                                        ; preds = %if.end34.err_reset_crit_edge, %if.end23.err_reset_crit_edge, %brcm_phy_start.exit.err_reset_crit_edge
  %ret.0 = phi i32 [ %call.i90, %brcm_phy_start.exit.err_reset_crit_edge ], [ %call31, %if.end23.err_reset_crit_edge ], [ %call35, %if.end34.err_reset_crit_edge ]
  %24 = ptrtoint ptr %rescal to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rescal, align 4
  %call44 = tail call i32 @reset_control_rearm(ptr noundef %25) #9
  br label %err_regulator

err_regulator:                                    ; preds = %err_reset, %if.end15.err_regulator_crit_edge
  %ret.1 = phi i32 [ %call16, %if.end15.err_regulator_crit_edge ], [ %ret.0, %err_reset ]
  %26 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sr, align 8
  %tobool46.not = icmp eq ptr %27, null
  br i1 %tobool46.not, label %err_regulator.err_disable_clk_crit_edge, label %if.then47

err_regulator.err_disable_clk_crit_edge:          ; preds = %err_regulator
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_clk

if.then47:                                        ; preds = %err_regulator
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %supplies51 = getelementptr inbounds %struct.subdev_regulators, ptr %27, i32 0, i32 1
  %call53 = tail call i32 @regulator_bulk_disable(i32 noundef %29, ptr noundef %supplies51) #9
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %if.then47, %err_regulator.err_disable_clk_crit_edge, %do.end
  %ret.2 = phi i32 [ %ret.1, %if.then47 ], [ %ret.1, %err_regulator.err_disable_clk_crit_edge ], [ %call10, %do.end ]
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %31) #9
  tail call void @clk_unprepare(ptr noundef %31) #9
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.then40, %if.end38.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_disable_clk ], [ 0, %if.then40 ], [ 0, %if.end38.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dev_may_wakeup(ptr noundef %dev, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %data, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.89) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1, !range !253
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !174, !176, !178, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !199, !200, !202, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @__initcall__kmod_pcie_brcmstb__359_1641_brcm_pcie_driver_init6, !1, !"__initcall__kmod_pcie_brcmstb__359_1641_brcm_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1641, i32 1}
!2 = !{ptr @__exitcall_brcm_pcie_driver_exit, !1, !"__exitcall_brcm_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file360, !4, !"__UNIQUE_ID_file360", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1643, i32 1}
!5 = !{ptr @__UNIQUE_ID_license361, !4, !"__UNIQUE_ID_license361", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description362, !7, !"__UNIQUE_ID_description362", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1644, i32 1}
!8 = !{ptr @__UNIQUE_ID_author363, !9, !"__UNIQUE_ID_author363", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1645, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1636, i32 11}
!12 = !{ptr @brcm_pcie_driver, !13, !"brcm_pcie_driver", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1632, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1532, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @brcm_pcie_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @brcm_pcie_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1548, i32 48}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1555, i32 40}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1559, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @brcm_pcie_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @brcm_pcie_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1562, i32 68}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1567, i32 76}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1575, i32 3}
!36 = !{ptr @brcm_pcie_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @brcm_pcie_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1590, i32 3}
!40 = !{ptr @brcm_pcie_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @brcm_pcie_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1595, i32 38}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1599, i32 4}
!46 = !{ptr @brcm_pcie_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @brcm_pcie_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @brcm_phy_cntl.shifts, !49, !"shifts", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1286, i32 19}
!50 = !{ptr @brcm_phy_cntl.masks, !51, !"masks", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1290, i32 19}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1315, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @brcm_phy_cntl._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @brcm_phy_cntl._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1144, i32 39}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 981, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 985, i32 54}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1040, i32 3}
!70 = !{ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @brcm_pcie_get_rc_bar2_size_and_offset._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 789, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @brcm_pcie_enable_msi._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @brcm_pcie_enable_msi._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @brcm_pcie_enable_msi.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 797, i32 2}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 728, i32 3}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @brcm_allocate_domains._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @brcm_allocate_domains._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 736, i32 3}
!87 = !{ptr @brcm_allocate_domains._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @brcm_allocate_domains._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @msi_domain_ops, !90, !"msi_domain_ops", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 716, i32 36}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 666, i32 12}
!93 = !{ptr @brcm_msi_bottom_irq_chip, !94, !"brcm_msi_bottom_irq_chip", i1 false, i1 false}
!94 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 665, i32 24}
!95 = !{ptr @brcm_msi_domain_info, !96, !"brcm_msi_domain_info", i1 false, i1 false}
!96 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 610, i32 31}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 604, i32 21}
!99 = !{ptr @brcm_msi_irq_chip, !100, !"brcm_msi_irq_chip", i1 false, i1 false}
!100 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 603, i32 24}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 635, i32 4}
!103 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @brcm_pcie_msi_isr.__UNIQUE_ID_ddebug322, !102, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!106 = !{ptr @brcm_pcie_ops32, !107, !"brcm_pcie_ops32", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 905, i32 23}
!108 = !{ptr @brcm_pcie_ops, !109, !"brcm_pcie_ops", i1 false, i1 false}
!109 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 897, i32 23}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 485, i32 3}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @pci_subdev_regulators_add_bus._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @pci_subdev_regulators_add_bus._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 498, i32 3}
!117 = !{ptr @pci_subdev_regulators_add_bus._entry.49, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @pci_subdev_regulators_add_bus._entry_ptr.51, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 456, i32 3}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 457, i32 3}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 458, i32 3}
!125 = distinct !{null, !126, !"supplies", i1 false, i1 false}
!126 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 455, i32 28}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1187, i32 3}
!129 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @brcm_pcie_linkup._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @brcm_pcie_linkup._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1192, i32 3}
!134 = !{ptr @brcm_pcie_linkup._entry.57, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @brcm_pcie_linkup._entry_ptr.59, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1203, i32 4}
!138 = !{ptr @brcm_pcie_linkup._entry.60, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @brcm_pcie_linkup._entry_ptr.62, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1231, i32 4}
!142 = !{ptr @brcm_pcie_linkup._entry.63, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @brcm_pcie_linkup._entry_ptr.65, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1237, i32 2}
!146 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @brcm_pcie_linkup._entry.66, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @brcm_pcie_linkup._entry_ptr.69, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 542, i32 3}
!153 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @pci_subdev_regulators_remove_bus._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @pci_subdev_regulators_remove_bus._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1488, i32 3}
!158 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @__brcm_pcie_remove._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @__brcm_pcie_remove._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1490, i32 3}
!163 = !{ptr @__brcm_pcie_remove._entry.76, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @__brcm_pcie_remove._entry_ptr.78, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1281, i32 3}
!167 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @brcm_pcie_enter_l23._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @brcm_pcie_enter_l23._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @brcm_pcie_match, !171, !"brcm_pcie_match", i1 false, i1 false}
!171 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1506, i32 34}
!172 = !{ptr @bcm2711_cfg, !173, !"bcm2711_cfg", i1 false, i1 false}
!173 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 282, i32 35}
!174 = !{ptr @pcie_offsets, !175, !"pcie_offsets", i1 false, i1 false}
!175 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 229, i32 18}
!176 = !{ptr @bcm4908_cfg, !177, !"bcm4908_cfg", i1 false, i1 false}
!177 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 262, i32 35}
!178 = distinct !{null, !179, !"__already_done", i1 false, i1 false}
!179 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 933, i32 6}
!180 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @generic_cfg, !182, !"generic_cfg", i1 false, i1 false}
!182 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 241, i32 35}
!183 = !{ptr @bcm7278_cfg, !184, !"bcm7278_cfg", i1 false, i1 false}
!184 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 275, i32 35}
!185 = !{ptr @pcie_offset_bcm7278, !186, !"pcie_offset_bcm7278", i1 false, i1 false}
!186 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 269, i32 18}
!187 = !{ptr @bcm7435_cfg, !188, !"bcm7435_cfg", i1 false, i1 false}
!188 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 255, i32 35}
!189 = !{ptr @bcm7425_cfg, !190, !"bcm7425_cfg", i1 false, i1 false}
!190 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 248, i32 35}
!191 = !{ptr @pcie_offsets_bmips_7425, !192, !"pcie_offsets_bmips_7425", i1 false, i1 false}
!192 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 235, i32 18}
!193 = !{ptr @brcm_pcie_pm_ops, !194, !"brcm_pcie_pm_ops", i1 false, i1 false}
!194 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1627, i32 32}
!195 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1378, i32 3}
!197 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @brcm_pcie_suspend._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @brcm_pcie_suspend._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @brcm_pcie_suspend._entry.84, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1382, i32 3}
!202 = !{ptr @brcm_pcie_suspend._entry_ptr.85, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1399, i32 5}
!205 = !{ptr @brcm_pcie_suspend._entry.86, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @brcm_pcie_suspend._entry_ptr.88, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1360, i32 3}
!209 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @pci_dev_may_wakeup._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @pci_dev_may_wakeup._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pci/controller/pcie-brcmstb.c", i32 1435, i32 5}
!214 = !{ptr @.str.92, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @brcm_pcie_resume._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @brcm_pcie_resume._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{i64 4315163}
!227 = !{i64 2155906966}
!228 = !{i64 2155756857}
!229 = !{i64 2155800005}
!230 = !{i64 2155800244}
!231 = !{i64 4314745}
!232 = !{i64 2155800892}
!233 = !{i64 2155801132}
!234 = !{i32 0, i32 33}
!235 = !{i64 2155801566}
!236 = !{i64 2155802034}
!237 = !{i64 2155802796}
!238 = !{i64 2155803571}
!239 = !{i64 2155804421}
!240 = !{i64 2155804643}
!241 = !{i64 2155805291}
!242 = !{i64 2155805513}
!243 = !{i64 4314325}
!244 = !{i64 2155720256}
!245 = !{i64 2155720790}
!246 = !{i64 2155721039}
!247 = !{i64 2155721471}
!248 = !{i64 4314125}
!249 = !{i64 2155806325}
!250 = !{i64 2155806548}
!251 = !{i64 2155807196}
!252 = !{i64 2155807422}
!253 = !{i8 0, i8 2}
!254 = !{i64 2155737022}
!255 = !{i64 2155737422}
!256 = !{i64 2155737910}
!257 = !{i64 2155738527}
!258 = !{i64 2155739067}
!259 = !{i64 2155884025}
!260 = !{i64 2155884242}
!261 = !{i64 2155884890}
!262 = !{i64 2155728849}
!263 = !{i64 2148799284, i64 2148799289, i64 2148799302, i64 2148799346, i64 2148799380, i64 2148799401}
!264 = !{i64 2155731672}
!265 = !{i64 2155785435}
!266 = !{i64 2155783937}
!267 = !{i64 2155784633}
!268 = !{i64 2155742949}
!269 = !{!"auto-init"}
!270 = !{i64 2155683177}
!271 = !{i64 2155683942}
!272 = !{i64 2155684186}
!273 = !{i64 2155684882}
!274 = !{i64 2155685955}
!275 = !{i64 2155822298}
!276 = !{i64 2155851772}
!277 = !{i64 2155851997}
!278 = !{i64 2155852645}
!279 = !{i64 2155852866}
!280 = !{i64 2155722025}
!281 = !{i64 2155722674}
!282 = !{i64 2155723612}
!283 = !{i64 2155723928}
!284 = !{i64 2155726738}
!285 = !{i64 2155727038}
!286 = !{i64 2155727853}
!287 = !{i64 2155728154}
!288 = !{i64 2155666549}
!289 = !{i64 2155667314}
!290 = !{i64 2155667791}
!291 = !{i64 2155668864}
!292 = !{i64 2155853514}
!293 = !{i64 2155853735}
!294 = !{i64 2155854383}
!295 = !{i64 2155868267}
!296 = !{i64 2155887311}
!297 = !{i64 2155887532}
!298 = !{i64 2155888180}
!299 = !{i64 2155888408}
!300 = !{i64 2155791544}
!301 = !{i64 2155791836}
!302 = !{i64 2155786511}
!303 = !{i64 2155786799}
!304 = !{!"branch_weights", i32 2000, i32 1}
!305 = !{i64 2155790312}
!306 = !{i64 2155790539}
!307 = !{i64 2155787843}
!308 = !{i64 2155788131}
!309 = !{i64 2155897400}
!310 = !{i64 2155897628}
