; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-rcar-host.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-rcar-host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.rcar_pcie_host = type { %struct.rcar_pcie, ptr, ptr, %struct.rcar_msi, ptr }
%struct.rcar_pcie = type { ptr, ptr }
%struct.rcar_msi = type { [1 x i32], ptr, %struct.mutex, %struct.spinlock, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.78, %union.anon.79, %union.anon.80 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pcie_rcar_host__300_1111_rcar_pcie_init6 = internal global ptr @rcar_pcie_init, section ".initcall6.init", align 4
@rcar_pcie_abort_handler_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-rcar-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imprecise external abort\00", [39 x i8] zeroinitializer }, align 32
@rcar_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rcar_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pmsr_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@pcie_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pcie_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pci/controller/pcie-rcar-host.c\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timeout waiting for L1 link state, ret=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pmsr_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar-pcie\00", [22 x i8] zeroinitializer }, align 32
@rcar_pcie_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_h1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-rcar-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-rcar-gen3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen3 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@rcar_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @rcar_pcie_resume, ptr null, ptr @rcar_pcie_resume, ptr null, ptr @rcar_pcie_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_pcie_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcar_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 906, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_runtime_get_sync failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcar_pcie_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_pcie_probe._entry_ptr = internal global ptr @rcar_pcie_probe._entry, section ".printk_index", align 4
@rcar_pcie_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.1, i32 912, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request resources: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rcar_pcie_probe._entry_ptr.11 = internal global ptr @rcar_pcie_probe._entry.9, section ".printk_index", align 4
@rcar_pcie_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.1, i32 918, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable bus clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rcar_pcie_probe._entry_ptr.14 = internal global ptr @rcar_pcie_probe._entry.12, section ".printk_index", align 4
@rcar_pcie_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.1, i32 929, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to init PCIe PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_pcie_probe._entry_ptr.17 = internal global ptr @rcar_pcie_probe._entry.15, section ".printk_index", align 4
@rcar_pcie_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.1, i32 935, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCIe link down\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rcar_pcie_probe._entry_ptr.21 = internal global ptr @rcar_pcie_probe._entry.18, section ".printk_index", align 4
@rcar_pcie_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.1, i32 941, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCIe x%d: link up\0A\00", [45 x i8] zeroinitializer }, align 32
@rcar_pcie_probe._entry_ptr.24 = internal global ptr @rcar_pcie_probe._entry.22, section ".printk_index", align 4
@rcar_pcie_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.1, i32 948, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable MSI support: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rcar_pcie_probe._entry_ptr.27 = internal global ptr @rcar_pcie_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_bus\00", [23 x i8] zeroinitializer }, align 32
@rcar_pcie_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.1, i32 770, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get pcie bus clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_pcie_get_resources\00", [40 x i8] zeroinitializer }, align 32
@rcar_pcie_get_resources._entry_ptr = internal global ptr @rcar_pcie_get_resources._entry, section ".printk_index", align 4
@rcar_pcie_get_resources._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.1, i32 776, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cannot get platform resources for msi interrupt\0A\00", [47 x i8] zeroinitializer }, align 32
@rcar_pcie_get_resources._entry_ptr.34 = internal global ptr @rcar_pcie_get_resources._entry.32, section ".printk_index", align 4
@rcar_pcie_get_resources._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.1, i32 784, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@rcar_pcie_get_resources._entry_ptr.36 = internal global ptr @rcar_pcie_get_resources._entry.35, section ".printk_index", align 4
@rcar_pcie_inbound_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.1, i32 822, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to map inbound regions!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_pcie_inbound_ranges\00", [39 x i8] zeroinitializer }, align 32
@rcar_pcie_inbound_ranges._entry_ptr = internal global ptr @rcar_pcie_inbound_ranges._entry, section ".printk_index", align 4
@rcar_pcie_enable_msi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&msi->map_lock\00", [17 x i8] zeroinitializer }, align 32
@rcar_pcie_enable_msi.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&msi->mask_lock\00", [16 x i8] zeroinitializer }, align 32
@rcar_msi_bottom_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.55, ptr null, ptr null, ptr null, ptr null, ptr @rcar_msi_irq_ack, ptr @rcar_msi_irq_mask, ptr null, ptr @rcar_msi_irq_unmask, ptr null, ptr @rcar_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rcar_pcie_enable_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.1, i32 707, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_pcie_enable_msi\00", [43 x i8] zeroinitializer }, align 32
@rcar_pcie_enable_msi._entry_ptr = internal global ptr @rcar_pcie_enable_msi._entry, section ".printk_index", align 4
@rcar_pcie_enable_msi._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.1, i32 715, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@rcar_pcie_enable_msi._entry_ptr.45 = internal global ptr @rcar_pcie_enable_msi._entry.44, section ".printk_index", align 4
@rcar_msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_msi_domain_alloc, ptr @rcar_msi_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rcar_allocate_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.1, i32 660, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcar_allocate_domains\00", [42 x i8] zeroinitializer }, align 32
@rcar_allocate_domains._entry_ptr = internal global ptr @rcar_allocate_domains._entry, section ".printk_index", align 4
@rcar_msi_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 7, ptr null, ptr @rcar_msi_top_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rcar_allocate_domains._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.1, i32 667, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@rcar_allocate_domains._entry_ptr.50 = internal global ptr @rcar_allocate_domains._entry.48, section ".printk_index", align 4
@rcar_msi_top_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.51, ptr null, ptr null, ptr null, ptr null, ptr @rcar_msi_top_irq_ack, ptr @rcar_msi_top_irq_mask, ptr null, ptr @rcar_msi_top_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCIe MSI\00", [23 x i8] zeroinitializer }, align 32
@rcar_pcie_msi_irq.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.53, ptr @.str.1, ptr @.str.54, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcie_rcar_host\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcar_pcie_msi_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unexpected MSI\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Rcar MSI\00", [23 x i8] zeroinitializer }, align 32
@rcar_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @rcar_pcie_read_conf, ptr @rcar_pcie_write_conf }, [44 x i8] zeroinitializer }, align 32
@rcar_pcie_force_speedup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.1, i32 225, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Speed change already in progress\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_pcie_force_speedup\00", [40 x i8] zeroinitializer }, align 32
@rcar_pcie_force_speedup._entry_ptr = internal global ptr @rcar_pcie_force_speedup._entry, section ".printk_index", align 4
@rcar_pcie_force_speedup._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.1, i32 254, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Speed change failed\0A\00", [43 x i8] zeroinitializer }, align 32
@rcar_pcie_force_speedup._entry_ptr.60 = internal global ptr @rcar_pcie_force_speedup._entry.58, section ".printk_index", align 4
@rcar_pcie_force_speedup._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.1, i32 262, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speed change timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@rcar_pcie_force_speedup._entry_ptr.63 = internal global ptr @rcar_pcie_force_speedup._entry.61, section ".printk_index", align 4
@rcar_pcie_force_speedup._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.1, i32 266, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Current link speed is %s GT/s\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_pcie_force_speedup._entry_ptr.66 = internal global ptr @rcar_pcie_force_speedup._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.5\00", [28 x i8] zeroinitializer }, align 32
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@rcar_pcie_read_conf.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.69, ptr @.str.1, ptr @.str.70, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_pcie_read_conf\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"pcie-config-read: bus=%3d devfn=0x%04x where=0x%04x size=%d val=0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@rcar_pcie_write_conf.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.71, ptr @.str.1, ptr @.str.72, i8 0, i8 47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_pcie_write_conf\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"pcie-config-write: bus=%3d devfn=0x%04x where=0x%04x size=%d val=0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@phy_wait_for_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.1, i32 323, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Access to PCIe phy timed out\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy_wait_for_ack\00", [47 x i8] zeroinitializer }, align 32
@phy_wait_for_ack._entry_ptr = internal global ptr @phy_wait_for_ack._entry, section ".printk_index", align 4
@rcar_pcie_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.75, ptr @.str.1, i32 997, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcar_pcie_resume\00", [47 x i8] zeroinitializer }, align 32
@rcar_pcie_resume._entry_ptr = internal global ptr @rcar_pcie_resume._entry, section ".printk_index", align 4
@rcar_pcie_resume._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.75, ptr @.str.1, i32 1002, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@rcar_pcie_resume._entry_ptr.77 = internal global ptr @rcar_pcie_resume._entry.76, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1105, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"rcar_pcie_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1042, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"pmsr_lock\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [10 x i8] c"pcie_base\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 51, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"pcie_dev\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 56, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1080, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1053, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1044, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"rcar_pcie_of_match\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 869, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"rcar_pcie_pm_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1037, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 906, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 912, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 918, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 929, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 935, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 941, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 946, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 756, i32 41 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 768, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 770, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 776, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 784, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 822, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 691, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 692, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [21 x i8] c"rcar_msi_bottom_chip\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 594, i32 24 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 707, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 715, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"rcar_msi_domain_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 640, i32 36 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 660, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [14 x i8] c"rcar_msi_info\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 645, i32 31 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 667, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [18 x i8] c"rcar_msi_top_chip\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 535, i32 24 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 536, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 507, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 595, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant [14 x i8] c"rcar_pcie_ops\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 210, i32 23 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 225, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 254, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 262, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 265, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 170, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 190, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 323, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 997, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.330 = private constant [43 x i8] c"../drivers/pci/controller/pcie-rcar-host.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1002, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__initcall__kmod_pcie_rcar_host__300_1111_rcar_pcie_init6, ptr @phy_wait_for_ack._entry, ptr @phy_wait_for_ack._entry_ptr, ptr @rcar_allocate_domains._entry, ptr @rcar_allocate_domains._entry.48, ptr @rcar_allocate_domains._entry_ptr, ptr @rcar_allocate_domains._entry_ptr.50, ptr @rcar_pcie_enable_msi._entry, ptr @rcar_pcie_enable_msi._entry.44, ptr @rcar_pcie_enable_msi._entry_ptr, ptr @rcar_pcie_enable_msi._entry_ptr.45, ptr @rcar_pcie_force_speedup._entry, ptr @rcar_pcie_force_speedup._entry.58, ptr @rcar_pcie_force_speedup._entry.61, ptr @rcar_pcie_force_speedup._entry.64, ptr @rcar_pcie_force_speedup._entry_ptr, ptr @rcar_pcie_force_speedup._entry_ptr.60, ptr @rcar_pcie_force_speedup._entry_ptr.63, ptr @rcar_pcie_force_speedup._entry_ptr.66, ptr @rcar_pcie_get_resources._entry, ptr @rcar_pcie_get_resources._entry.32, ptr @rcar_pcie_get_resources._entry.35, ptr @rcar_pcie_get_resources._entry_ptr, ptr @rcar_pcie_get_resources._entry_ptr.34, ptr @rcar_pcie_get_resources._entry_ptr.36, ptr @rcar_pcie_inbound_ranges._entry, ptr @rcar_pcie_inbound_ranges._entry_ptr, ptr @rcar_pcie_probe._entry, ptr @rcar_pcie_probe._entry.12, ptr @rcar_pcie_probe._entry.15, ptr @rcar_pcie_probe._entry.18, ptr @rcar_pcie_probe._entry.22, ptr @rcar_pcie_probe._entry.25, ptr @rcar_pcie_probe._entry.9, ptr @rcar_pcie_probe._entry_ptr, ptr @rcar_pcie_probe._entry_ptr.11, ptr @rcar_pcie_probe._entry_ptr.14, ptr @rcar_pcie_probe._entry_ptr.17, ptr @rcar_pcie_probe._entry_ptr.21, ptr @rcar_pcie_probe._entry_ptr.24, ptr @rcar_pcie_probe._entry_ptr.27, ptr @rcar_pcie_resume._entry, ptr @rcar_pcie_resume._entry.76, ptr @rcar_pcie_resume._entry_ptr, ptr @rcar_pcie_resume._entry_ptr.77, ptr @.str, ptr @rcar_pcie_driver, ptr @pmsr_lock, ptr @pcie_base, ptr @pcie_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rcar_pcie_of_match, ptr @rcar_pcie_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.37, ptr @.str.38, ptr @rcar_pcie_enable_msi.__key, ptr @.str.39, ptr @rcar_pcie_enable_msi.__key.40, ptr @.str.41, ptr @rcar_msi_bottom_chip, ptr @.str.42, ptr @.str.43, ptr @rcar_msi_domain_ops, ptr @.str.46, ptr @.str.47, ptr @rcar_msi_info, ptr @.str.49, ptr @rcar_msi_top_chip, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @rcar_pcie_ops, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_get_resources._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_get_resources._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_inbound_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_enable_msi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_enable_msi.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_msi_bottom_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_enable_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_enable_msi._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_allocate_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_msi_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_allocate_domains._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_msi_top_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_force_speedup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_force_speedup._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_force_speedup._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_force_speedup._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_wait_for_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_resume._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rcar_pcie_abort_handler_of_match, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hook_fault_code(i32 noundef 22, ptr noundef nonnull @rcar_pcie_aarch32_abort_handler, i32 noundef 7, i32 noundef 0, ptr noundef nonnull @.str) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_pcie_driver, ptr noundef null) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_aarch32_abort_handler(i32 noundef %addr, i32 noundef %fsr, ptr nocapture noundef readnone %regs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pmsr_lock) #7
  %0 = load ptr, ptr @pcie_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.unlock_exit_crit_edge, label %lor.lhs.false

entry.unlock_exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_exit

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @pcie_dev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %lor.lhs.false
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.unlock_exit_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_suspended.exit.unlock_exit_crit_edge:  ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_exit

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %0, i32 69724
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !167
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %and = and i32 %6, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %and11 = and i32 %6, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and11)
  %cmp12.not = icmp eq i32 %and11, 196608
  %or.cond = or i1 %tobool10.not, %cmp12.not
  br i1 %or.cond, label %if.end.unlock_exit_crit_edge, label %do.body15

if.end.unlock_exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_exit

do.body15:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr @pcie_base, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 69728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 128) #7, !srcloc !170
  %call19 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call19, 1000000
  %8 = load ptr, ptr @pcie_base, align 4
  %add.ptr23103 = getelementptr i8, ptr %8, i32 69724
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23103) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %.mask104 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask104)
  %tobool28.not105 = icmp eq i32 %.mask104, 0
  br i1 %tobool28.not105, label %do.body15.land.lhs.true32_crit_edge, label %do.body15.if.end74_crit_edge

do.body15.if.end74_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.body15.land.lhs.true32_crit_edge:              ; preds = %do.body15
  br label %land.lhs.true32

land.lhs.true32:                                  ; preds = %cond.false.land.lhs.true32_crit_edge, %do.body15.land.lhs.true32_crit_edge
  %call33 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #7
  %11 = load ptr, ptr @pcie_base, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 69724
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %.mask = and i32 %12, 128
  %tobool28.not = icmp eq i32 %.mask, 0
  br i1 %tobool28.not, label %cond.false.land.lhs.true32_crit_edge, label %cond.false.if.end74_crit_edge

cond.false.if.end74_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

cond.false.land.lhs.true32_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true32

for.end:                                          ; preds = %land.lhs.true32
  %13 = load ptr, ptr @pcie_base, align 4
  %add.ptr40 = getelementptr i8, ptr %13, i32 69724
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %.mask102 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask102)
  %tobool55.not.inv.not = icmp eq i32 %.mask102, 0
  br i1 %tobool55.not.inv.not, label %do.end68, label %for.end.if.end74_crit_edge, !prof !173

for.end.if.end74_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.end68:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1080, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef -110) #7
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %for.end.if.end74_crit_edge, %cond.false.if.end74_crit_edge, %do.body15.if.end74_crit_edge
  %cond101 = phi i32 [ -110, %do.end68 ], [ 0, %for.end.if.end74_crit_edge ], [ 0, %do.body15.if.end74_crit_edge ], [ 0, %cond.false.if.end74_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %15 = load ptr, ptr @pcie_base, align 4
  %add.ptr85 = getelementptr i8, ptr %15, i32 69724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 32896) #7, !srcloc !170
  br label %unlock_exit

unlock_exit:                                      ; preds = %if.end74, %if.end.unlock_exit_crit_edge, %pm_runtime_suspended.exit.unlock_exit_crit_edge, %entry.unlock_exit_crit_edge
  %ret.0 = phi i32 [ %cond101, %if.end74 ], [ 0, %if.end.unlock_exit_crit_edge ], [ 1, %pm_runtime_suspended.exit.unlock_exit_crit_edge ], [ 1, %entry.unlock_exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pmsr_lock, i32 noundef %call2) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 172) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @pm_runtime_enable(ptr noundef %2) #7
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #10
  br label %err_pm_put

if.end10:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #7
  %7 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call.i118 = tail call ptr @devm_phy_optional_get(ptr noundef %6, ptr noundef nonnull @.str.28) #7
  %phy.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i118, ptr %phy.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call.i118 to i32
  br label %rcar_pcie_get_resources.exit

if.end.i:                                         ; preds = %if.end10
  %of_node.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call7.i = call i32 @of_address_to_resource(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.end.i.rcar_pcie_get_resources.exit_crit_edge

if.end.i.rcar_pcie_get_resources.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_pcie_get_resources.exit

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef nonnull %res.i) #7
  %base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10.i, ptr %base.i, align 4
  %cmp.i76.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76.i, label %if.then13.i, label %if.end16.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call10.i to i32
  br label %rcar_pcie_get_resources.exit

if.end16.i:                                       ; preds = %if.end9.i
  %call17.i = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.29) #7
  %bus_clk.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17.i, ptr %bus_clk.i, align 4
  %cmp.i77.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77.i, label %do.end.i, label %if.end23.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30) #10
  %15 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_clk.i, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %rcar_pcie_get_resources.exit

if.end23.i:                                       ; preds = %if.end16.i
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i, align 8
  %call25.i = call i32 @irq_of_parse_and_map(ptr noundef %19, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %do.end30.i, label %if.end31.i

do.end30.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.33) #10
  br label %rcar_pcie_get_resources.exit.thread

if.end31.i:                                       ; preds = %if.end23.i
  %irq1.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 7
  %20 = ptrtoint ptr %irq1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call25.i, ptr %irq1.i, align 4
  %21 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i, align 8
  %call33.i = call i32 @irq_of_parse_and_map(ptr noundef %22, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %do.end38.i, label %rcar_pcie_get_resources.exit.thread127

do.end38.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.33) #10
  %23 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq1.i, align 4
  call void @irq_dispose_mapping(i32 noundef %24) #7
  br label %rcar_pcie_get_resources.exit.thread

rcar_pcie_get_resources.exit.thread127:           ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq2.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 8
  %25 = ptrtoint ptr %irq2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call33.i, ptr %irq2.i, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  store ptr %27, ptr @pcie_base, align 4
  %28 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private.i, align 4
  store ptr %29, ptr @pcie_dev, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  br label %if.end17

rcar_pcie_get_resources.exit.thread:              ; preds = %do.end38.i, %do.end30.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  br label %do.end16

rcar_pcie_get_resources.exit:                     ; preds = %do.end.i, %if.then13.i, %if.end.i.rcar_pcie_get_resources.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ %13, %if.then13.i ], [ %17, %do.end.i ], [ %call7.i, %if.end.i.rcar_pcie_get_resources.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp12 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp12, label %rcar_pcie_get_resources.exit.do.end16_crit_edge, label %rcar_pcie_get_resources.exit.if.end17_crit_edge

rcar_pcie_get_resources.exit.if.end17_crit_edge:  ; preds = %rcar_pcie_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

rcar_pcie_get_resources.exit.do.end16_crit_edge:  ; preds = %rcar_pcie_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end16:                                         ; preds = %rcar_pcie_get_resources.exit.do.end16_crit_edge, %rcar_pcie_get_resources.exit.thread
  %retval.0.i126 = phi i32 [ -2, %rcar_pcie_get_resources.exit.thread ], [ %retval.0.i, %rcar_pcie_get_resources.exit.do.end16_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i126) #10
  br label %err_pm_put

if.end17:                                         ; preds = %rcar_pcie_get_resources.exit.if.end17_crit_edge, %rcar_pcie_get_resources.exit.thread127
  %bus_clk = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %30 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus_clk, align 4
  %call.i119 = call i32 @clk_prepare(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %if.end.i121, label %if.end17.do.end23_crit_edge

if.end17.do.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end.i121:                                      ; preds = %if.end17
  %call1.i = call i32 @clk_enable(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end24, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %31) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then3.i, %if.end17.do.end23_crit_edge
  %retval.0.i122.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i119, %if.end17.do.end23_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i122.ph) #10
  br label %err_unmap_msi_irqs

if.end24:                                         ; preds = %if.end.i121
  %call25 = call fastcc i32 @rcar_pcie_parse_map_dma_ranges(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.err_clk_disable_crit_edge

if.end24.err_clk_disable_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable

if.end28:                                         ; preds = %if.end24
  %call29 = call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %phy_init_fn = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9
  %32 = ptrtoint ptr %phy_init_fn to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call29, ptr %phy_init_fn, align 4
  %call31 = call i32 %call29(ptr noundef %private.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  br label %err_clk_disable

if.end37:                                         ; preds = %if.end28
  %call38 = call fastcc i32 @rcar_pcie_hw_init(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19) #10
  br label %err_phy_shutdown

if.end44:                                         ; preds = %if.end37
  %call45 = call i32 @rcar_pci_read_reg(ptr noundef %private.i, i32 noundef 69716) #7
  %shr = lshr i32 %call45, 20
  %and = and i32 %shr, 63
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %and) #10
  %call49 = call fastcc i32 @rcar_pcie_enable_msi(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end55

do.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call49) #10
  br label %err_phy_shutdown

if.end55:                                         ; preds = %if.end44
  %call56 = call fastcc i32 @rcar_pcie_enable(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.cleanup_crit_edge, label %err_msi_teardown

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_msi_teardown:                                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @rcar_pcie_teardown_msi(ptr noundef %private.i)
  br label %err_phy_shutdown

err_phy_shutdown:                                 ; preds = %err_msi_teardown, %do.end54, %do.end43
  %err.0 = phi i32 [ -19, %do.end43 ], [ %call49, %do.end54 ], [ %call56, %err_msi_teardown ]
  %33 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy.i, align 4
  %tobool60.not = icmp eq ptr %34, null
  br i1 %tobool60.not, label %err_phy_shutdown.err_clk_disable_crit_edge, label %if.then61

err_phy_shutdown.err_clk_disable_crit_edge:       ; preds = %err_phy_shutdown
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable

if.then61:                                        ; preds = %err_phy_shutdown
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = call i32 @phy_power_off(ptr noundef nonnull %34) #7
  %35 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy.i, align 4
  %call65 = call i32 @phy_exit(ptr noundef %36) #7
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %if.then61, %err_phy_shutdown.err_clk_disable_crit_edge, %do.end36, %if.end24.err_clk_disable_crit_edge
  %err.1 = phi i32 [ %call25, %if.end24.err_clk_disable_crit_edge ], [ %call31, %do.end36 ], [ %err.0, %if.then61 ], [ %err.0, %err_phy_shutdown.err_clk_disable_crit_edge ]
  %37 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus_clk, align 4
  call void @clk_disable(ptr noundef %38) #7
  call void @clk_unprepare(ptr noundef %38) #7
  br label %err_unmap_msi_irqs

err_unmap_msi_irqs:                               ; preds = %err_clk_disable, %do.end23
  %err.2 = phi i32 [ %retval.0.i122.ph, %do.end23 ], [ %err.1, %err_clk_disable ]
  %irq2 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 8
  %39 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq2, align 4
  call void @irq_dispose_mapping(i32 noundef %40) #7
  %irq1 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 7
  %41 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq1, align 4
  call void @irq_dispose_mapping(i32 noundef %42) #7
  br label %err_pm_put

err_pm_put:                                       ; preds = %err_unmap_msi_irqs, %do.end16, %do.end
  %err.3 = phi i32 [ %call.i, %do.end ], [ %retval.0.i126, %do.end16 ], [ %err.2, %err_unmap_msi_irqs ]
  %call.i123 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #7
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pm_put, %if.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_pm_put ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_parse_map_dma_ranges(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ranges = getelementptr i8, ptr %host, i32 -64
  %0 = ptrtoint ptr %dma_ranges to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.017 = load ptr, ptr %dma_ranges, align 4
  %cmp.not18 = icmp eq ptr %entry1.017, %dma_ranges
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %rcar_pcie_inbound_ranges.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.020 = phi ptr [ %entry1.0, %rcar_pcie_inbound_ranges.exit.for.body_crit_edge ], [ %entry1.017, %entry.for.body_crit_edge ]
  %index.019 = phi i32 [ %index.1, %rcar_pcie_inbound_ranges.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.020, i32 0, i32 1
  %1 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %res.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %conv5.i = zext i32 %8 to i64
  %9 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6, i32 14
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp111.i = icmp ult i32 %6, %8
  br i1 %cmp111.i, label %while.body.preheader.i, label %for.body.rcar_pcie_inbound_ranges.exit_crit_edge

for.body.rcar_pcie_inbound_ranges.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_pcie_inbound_ranges.exit

while.body.preheader.i:                           ; preds = %for.body
  %sub.i.i = sub i32 1, %6
  %add.i.i = add i32 %sub.i.i, %8
  %conv11.i = zext i32 %add.i.i to i64
  %offset.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.020, i32 0, i32 2
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %6, %11
  %conv8.i = zext i32 %sub.i to i64
  %conv3.i = zext i32 %6 to i64
  br label %while.body.i

while.body.i:                                     ; preds = %cond.end58.i.while.body.i_crit_edge, %while.body.preheader.i
  %cpu_addr.0115.i = phi i64 [ %add68.i, %cond.end58.i.while.body.i_crit_edge ], [ %conv3.i, %while.body.preheader.i ]
  %pci_addr.0114.i = phi i64 [ %add67.i, %cond.end58.i.while.body.i_crit_edge ], [ %conv8.i, %while.body.preheader.i ]
  %idx.0113.i = phi i32 [ %add69.i, %cond.end58.i.while.body.i_crit_edge ], [ %index.019, %while.body.preheader.i ]
  %size.0112.i = phi i64 [ %size.1.i, %cond.end58.i.while.body.i_crit_edge ], [ %conv11.i, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx.0113.i)
  %cmp13.i = icmp sgt i32 %idx.0113.i, 4
  br i1 %cmp13.i, label %rcar_pcie_inbound_ranges.exit.thread, label %if.end16.i

rcar_pcie_inbound_ranges.exit.thread:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.37) #10
  br label %for.end

if.end16.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cpu_addr.0115.i)
  %cmp17.not.i = icmp eq i64 %cpu_addr.0115.i, 0
  br i1 %cmp17.not.i, label %if.end16.i.cond.end58.i_crit_edge, label %if.then19.i

if.end16.i.cond.end58.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end58.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = trunc i64 %cpu_addr.0115.i to i32
  %14 = tail call i32 @llvm.cttz.i32(i32 %conv.i.i, i1 false) #7, !range !175
  %sh_prom.i = zext i32 %14 to i64
  %shl.i = shl nuw nsw i64 1, %sh_prom.i
  %15 = tail call i64 @llvm.umin.i64(i64 %size.0112.i, i64 %shl.i) #7
  br label %cond.end58.i

cond.end58.i:                                     ; preds = %if.then19.i, %if.end16.i.cond.end58.i_crit_edge
  %size.1.i = phi i64 [ %15, %if.then19.i ], [ %size.0112.i, %if.end16.i.cond.end58.i_crit_edge ]
  %conv56.i = trunc i64 %size.1.i to i32
  %sub.i109.i = add i32 %conv56.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i109.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i109.i, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %sub.i109.i, i1 true) #7, !range !175
  %sub.i.i.i.i = sub nuw nsw i32 32, %16
  %notmask = shl nsw i32 -1, %sub.i.i.i.i
  %sub.i.i.op.i.i.op = and i32 %notmask, -16
  %sub.i.i.op.i.i.op.op = xor i32 %sub.i.i.op.i.i.op, -16
  %17 = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.op.i.i.op.op
  %or65.i = or i32 %17, %spec.select.i
  %conv66.i = zext i32 %or65.i to i64
  tail call void @rcar_pcie_set_inbound(ptr noundef %host, i64 noundef %cpu_addr.0115.i, i64 noundef %pci_addr.0114.i, i64 noundef %conv66.i, i32 noundef %idx.0113.i, i1 noundef zeroext true) #7
  %add67.i = add i64 %size.1.i, %pci_addr.0114.i
  %add68.i = add i64 %size.1.i, %cpu_addr.0115.i
  %add69.i = add nsw i32 %idx.0113.i, 2
  %cmp.i = icmp ult i64 %add68.i, %conv5.i
  br i1 %cmp.i, label %cond.end58.i.while.body.i_crit_edge, label %cond.end58.i.rcar_pcie_inbound_ranges.exit_crit_edge

cond.end58.i.rcar_pcie_inbound_ranges.exit_crit_edge: ; preds = %cond.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_pcie_inbound_ranges.exit

cond.end58.i.while.body.i_crit_edge:              ; preds = %cond.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

rcar_pcie_inbound_ranges.exit:                    ; preds = %cond.end58.i.rcar_pcie_inbound_ranges.exit_crit_edge, %for.body.rcar_pcie_inbound_ranges.exit_crit_edge
  %index.1 = phi i32 [ %index.019, %for.body.rcar_pcie_inbound_ranges.exit_crit_edge ], [ %add69.i, %cond.end58.i.rcar_pcie_inbound_ranges.exit_crit_edge ]
  %18 = ptrtoint ptr %entry1.020 to i32
  call void @__asan_load4_noabort(i32 %18)
  %entry1.0 = load ptr, ptr %entry1.020, align 4
  %cmp.not = icmp eq ptr %entry1.0, %dma_ranges
  br i1 %cmp.not, label %rcar_pcie_inbound_ranges.exit.for.end_crit_edge, label %rcar_pcie_inbound_ranges.exit.for.body_crit_edge

rcar_pcie_inbound_ranges.exit.for.body_crit_edge: ; preds = %rcar_pcie_inbound_ranges.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

rcar_pcie_inbound_ranges.exit.for.end_crit_edge:  ; preds = %rcar_pcie_inbound_ranges.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %rcar_pcie_inbound_ranges.exit.for.end_crit_edge, %rcar_pcie_inbound_ranges.exit.thread, %entry.for.end_crit_edge
  %err.1 = phi i32 [ -22, %rcar_pcie_inbound_ranges.exit.thread ], [ 0, %entry.for.end_crit_edge ], [ 0, %rcar_pcie_inbound_ranges.exit.for.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_hw_init(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef 0, i32 noundef 8192) #7
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef 1, i32 noundef 40) #7
  %call = tail call i32 @rcar_pcie_wait_for_phyrdy(ptr noundef %pcie) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef 100925440, i32 noundef 69636) #7
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 65561, i32 noundef 255, i32 noundef 1) #7
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 65562, i32 noundef 255, i32 noundef 1) #7
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 65648, i32 noundef 255, i32 noundef 16) #7
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 65650, i32 noundef 240, i32 noundef 64) #7
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 65550, i32 noundef 127, i32 noundef 1) #7
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 65660, i32 noundef 1048576, i32 noundef 1048576) #7
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 65668, i32 noundef -524288, i32 noundef 0) #7
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 69705, i32 noundef 63, i32 noundef 50) #7
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 65792, i32 noundef -1048576, i32 noundef 0) #7
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef -2145452032, i32 noundef 2112) #7
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef -2130771968, i32 noundef 69720) #7
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef 1, i32 noundef 8192) #7
  %call1 = tail call i32 @rcar_pcie_wait_for_dl(ptr noundef %pcie) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rcar_rmw32(ptr noundef %pcie, i32 noundef 1024, i32 noundef 0, i32 noundef 3840) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @arm_heavy_mb() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_pci_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_enable_msi(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %msi3 = getelementptr inbounds %struct.rcar_pcie_host, ptr %host, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %map_lock = getelementptr inbounds %struct.rcar_pcie_host, ptr %host, i32 0, i32 3, i32 2
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  tail call void @__mutex_init(ptr noundef %map_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @rcar_pcie_enable_msi.__key) #7
  %mask_lock = getelementptr inbounds %struct.rcar_pcie_host, ptr %host, i32 0, i32 3, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %mask_lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @rcar_pcie_enable_msi.__key.40, i16 noundef signext 3) #7
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call7 = call i32 @of_address_to_resource(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %call2.i = call ptr @dev_fwnode(ptr noundef %6) #7
  %call.i.i = call ptr @__irq_domain_add(ptr noundef %call2.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @rcar_msi_domain_ops, ptr noundef %msi3) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.46) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @irq_domain_update_bus_token(ptr noundef nonnull %call.i.i, i32 noundef 5) #7
  %call5.i = call ptr @pci_msi_create_irq_domain(ptr noundef %call2.i, ptr noundef nonnull @rcar_msi_info, ptr noundef nonnull %call.i.i) #7
  %domain.i = getelementptr inbounds %struct.rcar_pcie_host, ptr %host, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i, ptr %domain.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %do.end11.i, label %if.end11

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.49) #10
  call void @irq_domain_remove(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  %irq1 = getelementptr inbounds %struct.rcar_pcie_host, ptr %host, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq1, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.irq_chip, ptr @rcar_msi_bottom_chip, i32 0, i32 1), align 4
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %13, ptr noundef nonnull @rcar_pcie_msi_irq, ptr noundef null, i32 noundef 65664, ptr noundef %14, ptr noundef %host) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end11.err27_crit_edge, label %if.end17

if.end11.err27_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err27

if.end17:                                         ; preds = %if.end11
  %irq2 = getelementptr inbounds %struct.rcar_pcie_host, ptr %host, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq2, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.irq_chip, ptr @rcar_msi_bottom_chip, i32 0, i32 1), align 4
  %call.i55 = call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %16, ptr noundef nonnull @rcar_pcie_msi_irq, ptr noundef null, i32 noundef 65664, ptr noundef %17, ptr noundef %host) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp19 = icmp slt i32 %call.i55, 0
  br i1 %cmp19, label %if.end17.err27_crit_edge, label %if.end24

if.end17.err27_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err27

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 8272) #7
  %18 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res, align 4
  %or = or i32 %19, 1
  call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef %or, i32 noundef 8264) #7
  call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 8268) #7
  br label %cleanup

err27:                                            ; preds = %if.end17.err27_crit_edge, %if.end11.err27_crit_edge
  %call.i55.sink = phi i32 [ %call.i, %if.end11.err27_crit_edge ], [ %call.i55, %if.end17.err27_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %call.i55.sink) #10
  call fastcc void @rcar_free_domains(ptr noundef %msi3)
  br label %cleanup

cleanup:                                          ; preds = %err27, %if.end24, %do.end11.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i55.sink, %err27 ], [ 0, %if.end24 ], [ %call7, %entry.cleanup_crit_edge ], [ -12, %do.end11.i ], [ -12, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_enable(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -1024
  tail call fastcc void @rcar_pcie_hw_enable(ptr noundef %host)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %0 = load i32, ptr @pci_flags, align 4
  %or.i = or i32 %0, 2
  store i32 %or.i, ptr @pci_flags, align 4
  %sysdata = getelementptr i8, ptr %host, i32 -84
  %1 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %host, ptr %sysdata, align 4
  %ops = getelementptr i8, ptr %host, i32 -92
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rcar_pcie_ops, ptr %ops, align 4
  %call1 = tail call i32 @pci_host_probe(ptr noundef %add.ptr.i) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_pcie_teardown_msi(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 8272) #7
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 8264) #7
  %domain.i = getelementptr inbounds %struct.rcar_pcie_host, ptr %host, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain.i, align 4
  %parent1.i = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 4
  tail call void @irq_domain_remove(ptr noundef %1) #7
  tail call void @irq_domain_remove(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_pcie_set_inbound(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_pci_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_pcie_wait_for_phyrdy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_rmw32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_pcie_wait_for_dl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_msi_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %call = tail call i32 @rcar_pci_read_reg(ptr noundef %data, i32 noundef 8260) #7
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %domain = getelementptr inbounds %struct.rcar_pcie_host, ptr %data, i32 0, i32 3, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %call5 = call i32 @_find_first_bit_be(ptr noundef nonnull %reg, i32 noundef 32) #7
  %3 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %domain, align 4
  %parent = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %call6 = call i32 @generic_handle_domain_irq(ptr noundef %6, i32 noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %while.body.if.end16_crit_edge, label %do.body

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.body:                                          ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_pcie_msi_irq.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_pcie_msi_irq, %do.end)) #7
          to label %if.then14 [label %do.end], !srcloc !177

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_pcie_msi_irq.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.54) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %shl = shl nuw i32 1, %call5
  call void @rcar_pci_write_reg(ptr noundef %data, i32 noundef %shl, i32 noundef 8260) #7
  br label %if.end16

if.end16:                                         ; preds = %do.end, %while.body.if.end16_crit_edge
  %call17 = call i32 @rcar_pci_read_reg(ptr noundef %data, i32 noundef 8260) #7
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call17, ptr %reg, align 4
  %tobool4.not = icmp eq i32 %call17, 0
  br i1 %tobool4.not, label %if.end16.cleanup_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_free_domains(ptr nocapture noundef readonly %msi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.rcar_msi, ptr %msi, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %parent1 = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  tail call void @irq_domain_remove(ptr noundef %1) #7
  tail call void @irq_domain_remove(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_msi_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %map_lock = getelementptr inbounds %struct.rcar_msi, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i47 = add i32 %nr_irqs, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i47, i1 true) #7, !range !175
  %add.i = sub nuw nsw i32 32, %2
  %cond19 = select i1 %cmp.i, i32 %add.i, i32 0
  %call20 = tail call i32 @bitmap_find_free_region(ptr noundef %1, i32 noundef 32, i32 noundef %cond19) #7
  tail call void @mutex_unlock(ptr noundef %map_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp2448.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp2448.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add26 = add i32 %i.049, %virq
  %add27 = add i32 %i.049, %call20
  %3 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add26, i32 noundef %add27, ptr noundef nonnull @rcar_msi_bottom_chip, ptr noundef %4, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #7
  %inc = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_msi_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #7
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %map_lock = getelementptr inbounds %struct.rcar_msi, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i32 = add i32 %nr_irqs, -1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i32, i1 true) #7, !range !175
  %add.i = sub nuw nsw i32 32, %4
  %cond20 = select i1 %cmp.i, i32 %add.i, i32 0
  tail call void @bitmap_release_region(ptr noundef %1, i32 noundef %3, i32 noundef %cond20) #7
  tail call void @mutex_unlock(ptr noundef %map_lock) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_msi_top_irq_ack(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_chip_ack_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_msi_top_irq_mask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_mask_irq(ptr noundef %d) #7
  tail call void @irq_chip_mask_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_msi_top_irq_unmask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_unmask_irq(ptr noundef %d) #7
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_msi_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  tail call void @rcar_pci_write_reg(ptr noundef %add.ptr.i, i32 noundef %shl, i32 noundef 8260) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_msi_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %mask_lock = getelementptr inbounds %struct.rcar_msi, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mask_lock) #7
  %call8 = tail call i32 @rcar_pci_read_reg(ptr noundef %add.ptr.i, i32 noundef 8272) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %and = and i32 %call8, %neg
  tail call void @rcar_pci_write_reg(ptr noundef %add.ptr.i, i32 noundef %and, i32 noundef 8272) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mask_lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_msi_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %mask_lock = getelementptr inbounds %struct.rcar_msi, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mask_lock) #7
  %call8 = tail call i32 @rcar_pci_read_reg(ptr noundef %add.ptr.i, i32 noundef 8272) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %or = or i32 %shl, %call8
  tail call void @rcar_pci_write_reg(ptr noundef %add.ptr.i, i32 noundef %or, i32 noundef 8272) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mask_lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_msi_set_affinity(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %call3 = tail call i32 @rcar_pci_read_reg(ptr noundef %add.ptr.i, i32 noundef 8264) #7
  %and = and i32 %call3, -2
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %msg, align 4
  %call4 = tail call i32 @rcar_pci_read_reg(ptr noundef %add.ptr.i, i32 noundef 8268) #7
  %3 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4, ptr %3, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq, align 4
  %7 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_pcie_hw_enable(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  %res = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %res, i32 0, i32 1
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %res, ptr %res, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %res, ptr %0, align 4
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %call.i = call i32 @rcar_pci_read_reg(ptr noundef %host, i32 noundef 69752) #7
  %and.i = and i32 %call.i, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 131072
  br i1 %cmp.not.i, label %if.end.i, label %entry.rcar_pcie_force_speedup.exit_crit_edge

entry.rcar_pcie_force_speedup.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_pcie_force_speedup.exit

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @rcar_pci_read_reg(ptr noundef %host, i32 noundef 69720) #7
  %and3.i = and i32 %call2.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.56) #10
  br label %rcar_pcie_force_speedup.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @rcar_pci_read_reg(ptr noundef %host, i32 noundef 69716) #7
  %and7.i = and i32 %call6.i, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and7.i)
  %cmp8.i = icmp eq i32 %and7.i, 131072
  br i1 %cmp8.i, label %if.end5.i.do.end33.i_crit_edge, label %if.end10.i

if.end5.i.do.end33.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.i

if.end10.i:                                       ; preds = %if.end5.i
  call void @rcar_rmw32(ptr noundef %host, i32 noundef 65696, i32 noundef 15, i32 noundef 2) #7
  call void @rcar_rmw32(ptr noundef %host, i32 noundef 69764, i32 noundef -2147483648, i32 noundef 0) #7
  %and11.i = and i32 %call6.i, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then13.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef %call6.i, i32 noundef 69716) #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  call void @rcar_rmw32(ptr noundef %host, i32 noundef 69720, i32 noundef 16777216, i32 noundef 16777216) #7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end27.i.while.body.i_crit_edge, %if.end14.i
  %dec57.i = phi i32 [ 999, %if.end14.i ], [ %dec.i, %if.end27.i.while.body.i_crit_edge ]
  %call16.i = call i32 @rcar_pci_read_reg(ptr noundef %host, i32 noundef 69716) #7
  %and17.i = and i32 %call16.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end27.i, label %if.then19.i

if.then19.i:                                      ; preds = %while.body.i
  call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef %call16.i, i32 noundef 69716) #7
  %and20.i = and i32 %call16.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.then19.i.do.end33.i_crit_edge, label %if.then19.i.do.end33.sink.split.i_crit_edge

if.then19.i.do.end33.sink.split.i_crit_edge:      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.sink.split.i

if.then19.i.do.end33.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.i

if.end27.i:                                       ; preds = %while.body.i
  call void @msleep(i32 noundef 1) #7
  %dec.i = add nsw i32 %dec57.i, -1
  %tobool15.not.i = icmp eq i32 %dec57.i, 0
  br i1 %tobool15.not.i, label %if.end27.i.do.end33.sink.split.i_crit_edge, label %if.end27.i.while.body.i_crit_edge

if.end27.i.while.body.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end27.i.do.end33.sink.split.i_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.sink.split.i

do.end33.sink.split.i:                            ; preds = %if.end27.i.do.end33.sink.split.i_crit_edge, %if.then19.i.do.end33.sink.split.i_crit_edge
  %.str.62.sink.i = phi ptr [ @.str.59, %if.then19.i.do.end33.sink.split.i_crit_edge ], [ @.str.62, %if.end27.i.do.end33.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %.str.62.sink.i) #10
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.end33.sink.split.i, %if.then19.i.do.end33.i_crit_edge, %if.end5.i.do.end33.i_crit_edge
  %macsr.1.i = phi i32 [ %call6.i, %if.end5.i.do.end33.i_crit_edge ], [ %call16.i, %if.then19.i.do.end33.i_crit_edge ], [ %call16.i, %do.end33.sink.split.i ]
  %and34.i = and i32 %macsr.1.i, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and34.i)
  %cmp35.i = icmp eq i32 %and34.i, 131072
  %cond.i = select i1 %cmp35.i, ptr @.str.67, ptr @.str.68
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.65, ptr noundef nonnull %cond.i) #10
  br label %rcar_pcie_force_speedup.exit

rcar_pcie_force_speedup.exit:                     ; preds = %do.end33.i, %do.end.i, %entry.rcar_pcie_force_speedup.exit_crit_edge
  %windows = getelementptr i8, ptr %host, i32 -72
  %5 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %5)
  %win.023 = load ptr, ptr %windows, align 4
  %cmp.not24 = icmp eq ptr %win.023, %windows
  br i1 %cmp.not24, label %rcar_pcie_force_speedup.exit.for.end_crit_edge, label %rcar_pcie_force_speedup.exit.for.body_crit_edge

rcar_pcie_force_speedup.exit.for.body_crit_edge:  ; preds = %rcar_pcie_force_speedup.exit
  br label %for.body

rcar_pcie_force_speedup.exit.for.end_crit_edge:   ; preds = %rcar_pcie_force_speedup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %rcar_pcie_force_speedup.exit.for.body_crit_edge
  %win.026 = phi ptr [ %win.0, %cleanup.for.body_crit_edge ], [ %win.023, %rcar_pcie_force_speedup.exit.for.body_crit_edge ]
  %i.025 = phi i32 [ %i.2, %cleanup.for.body_crit_edge ], [ 0, %rcar_pcie_force_speedup.exit.for.body_crit_edge ]
  %res5 = getelementptr inbounds %struct.resource_entry, ptr %win.026, i32 0, i32 1
  %6 = ptrtoint ptr %res5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res5, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %and.i20 = and i32 %9, 7936
  %10 = zext i32 %and.i20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i20, label %if.end.cleanup_crit_edge [
    i32 256, label %if.end.sw.bb_crit_edge
    i32 512, label %if.end.sw.bb_crit_edge37
  ]

if.end.sw.bb_crit_edge37:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge37
  call void @rcar_pcie_set_outbound(ptr noundef %host, i32 noundef %i.025, ptr noundef %win.026) #7
  %inc = add i32 %i.025, 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %i.2 = phi i32 [ %i.025, %for.body.cleanup_crit_edge ], [ %i.025, %if.end.cleanup_crit_edge ], [ %inc, %sw.bb ]
  %11 = ptrtoint ptr %win.026 to i32
  call void @__asan_load4_noabort(i32 %11)
  %win.0 = load ptr, ptr %win.026, align 4
  %cmp.not = icmp eq ptr %win.0, %windows
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %rcar_pcie_force_speedup.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_pcie_set_outbound(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_read_conf(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %call = tail call fastcc i32 @rcar_pcie_config_access(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %size, label %if.end.do.body_crit_edge [
    i32 1, label %if.end.do.body.sink.split_crit_edge
    i32 2, label %if.then5
  ]

if.end.do.body.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.then5, %if.end.do.body.sink.split_crit_edge
  %.sink37 = phi i32 [ 16, %if.then5 ], [ 24, %if.end.do.body.sink.split_crit_edge ]
  %.sink = phi i32 [ 65535, %if.then5 ], [ 255, %if.end.do.body.sink.split_crit_edge ]
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = shl i32 %where, 3
  %mul = and i32 %and, %.sink37
  %shr = lshr i32 %4, %mul
  %and3 = and i32 %shr, %.sink
  store i32 %and3, ptr %val, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_pcie_read_conf.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_pcie_read_conf, %cleanup)) #7
          to label %if.then16 [label %cleanup], !srcloc !177

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %number, align 4
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_pcie_read_conf.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %conv, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_write_conf(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !178
  %call = call fastcc i32 @rcar_pcie_config_access(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_pcie_write_conf.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_pcie_write_conf, %do.end)) #7
          to label %if.then5 [label %do.end], !srcloc !177

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %number, align 4
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_pcie_write_conf.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %5 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %size, label %if.else24 [
    i32 1, label %if.then9
    i32 2, label %if.then15
  ]

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = shl i32 %where, 3
  %mul = and i32 %and, 24
  %shl = shl nuw i32 255, %mul
  %neg = xor i32 %shl, -1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %and10 = and i32 %7, %neg
  %and11 = and i32 %val, 255
  %shl12 = shl nuw i32 %and11, %mul
  %or = or i32 %and10, %shl12
  store i32 %or, ptr %data, align 4
  br label %if.end26

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %and16 = shl i32 %where, 3
  %mul17 = and i32 %and16, 16
  %shl18 = shl nuw i32 65535, %mul17
  %neg19 = xor i32 %shl18, -1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %and20 = and i32 %9, %neg19
  %and21 = and i32 %val, 65535
  %shl22 = shl nuw i32 %and21, %mul17
  %or23 = or i32 %and20, %shl22
  store i32 %or23, ptr %data, align 4
  br label %if.end26

if.else24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %val, ptr %data, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then15, %if.then9
  %call27 = call fastcc i32 @rcar_pcie_config_access(ptr noundef %1, i8 noundef zeroext 1, ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, ptr noundef nonnull %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_config_access(ptr noundef %host, i8 noundef zeroext %access_type, ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %devfn, 3
  %and = and i32 %shr, 31
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %access_type)
  %cmp5 = icmp eq i8 %access_type, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = add i32 %where, 65536
  %add = and i32 %2, -4
  %call8 = tail call i32 @rcar_pci_read_reg(ptr noundef %host, i32 noundef %add) #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call8, ptr %data, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %6 = add i32 %where, 65536
  %add10 = and i32 %6, -4
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef %5, i32 noundef %add10) #7
  br label %cleanup

if.end12:                                         ; preds = %entry
  %and3 = and i32 %where, -4
  %call13 = tail call i32 @rcar_pci_read_reg(ptr noundef %host, i32 noundef 8224) #7
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef %call13, i32 noundef 8224) #7
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %number, align 4
  %conv14 = zext i8 %8 to i32
  %shl = shl nuw i32 %conv14, 24
  %shl17 = shl nuw nsw i32 %and, 19
  %or = or i32 %shl, %shl17
  %and2 = shl i32 %devfn, 16
  %shl19 = and i32 %and2, 458752
  %or20 = or i32 %or, %shl19
  %or21 = or i32 %or20, %and3
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef %or21, i32 noundef 16) #7
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %parent.i68 = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i68 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i68, align 8
  %tobool.not.i69 = icmp eq ptr %12, null
  %. = select i1 %tobool.not.i69, i32 -2147483648, i32 -2147483392
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef %., i32 noundef 24) #7
  %call26 = tail call i32 @rcar_pci_read_reg(ptr noundef %host, i32 noundef 8224) #7
  %and27 = and i32 %call26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.end29, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end12
  %call.i = tail call i32 @rcar_pci_read_reg(ptr noundef %host, i32 noundef 65540) #7
  %13 = and i32 %call.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool32.not = icmp eq i32 %13, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %access_type)
  %cmp36 = icmp eq i8 %access_type, 0
  br i1 %cmp36, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 @rcar_pci_read_reg(ptr noundef %host, i32 noundef 32) #7
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call39, ptr %data, align 4
  br label %if.end41

if.else40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef %16, i32 noundef 32) #7
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then38
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end29.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.else, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 134, %if.then.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then7 ], [ 134, %if.end12.cleanup_crit_edge ], [ 134, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_phy_init_h1(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 66, i32 noundef 247677329)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 1, i32 noundef 66, i32 noundef 247677312)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 67, i32 noundef 2163080)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 1, i32 noundef 67, i32 noundef 2163080)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 68, i32 noundef 22806548)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 1, i32 noundef 68, i32 noundef 22806548)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 1, i32 noundef 76, i32 noundef 2019652768)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 1, i32 noundef 77, i32 noundef 75497659)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 81, i32 noundef 127844450)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 82, i32 noundef 536870912)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 1, i32 noundef 82, i32 noundef 536870912)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 1, i32 noundef 86, i32 noundef 14342)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 96, i32 noundef 4916133)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 100, i32 noundef 1057955599)
  tail call fastcc void @phy_write_reg(ptr noundef %host, i32 noundef 0, i32 noundef 102, i32 noundef 32768)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_phy_init_gen2(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 983088, i32 noundef 1920) #7
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 3674627, i32 noundef 1924) #7
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 1, i32 noundef 1932) #7
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 6, i32 noundef 1932) #7
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 983124, i32 noundef 1920) #7
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 327163911, i32 noundef 1924) #7
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 1, i32 noundef 1932) #7
  tail call void @rcar_pci_write_reg(ptr noundef %host, i32 noundef 6, i32 noundef 1932) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_phy_init_gen3(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.rcar_pcie_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 @phy_init(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %call2 = tail call i32 @phy_power_on(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call6 = tail call i32 @phy_exit(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_write_reg(ptr noundef %pcie, i32 noundef %rate, i32 noundef %addr, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %rate, 12
  %shl = and i32 %and, 4096
  %and4 = and i32 %addr, 255
  %or3 = or i32 %and4, %shl
  %or6 = or i32 %or3, 65792
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef %data, i32 noundef 262164) #7
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef %or6, i32 noundef 262156) #7
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec1.i = phi i32 [ 99, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @rcar_pci_read_reg(ptr noundef %pcie, i32 noundef 262156) #7
  %and.i = and i32 %call.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %while.body.i.phy_wait_for_ack.exit_crit_edge

while.body.i.phy_wait_for_ack.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_wait_for_ack.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #7
  %dec.i = add nsw i32 %dec1.i, -1
  %tobool.not.i = icmp eq i32 %dec1.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.73) #10
  br label %phy_wait_for_ack.exit

phy_wait_for_ack.exit:                            ; preds = %do.end.i, %while.body.i.phy_wait_for_ack.exit_crit_edge
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef 0, i32 noundef 262164) #7
  tail call void @rcar_pci_write_reg(ptr noundef %pcie, i32 noundef 0, i32 noundef 262156) #7
  %3 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie, align 4
  br label %while.body.i5

while.body.i5:                                    ; preds = %if.end.i8.while.body.i5_crit_edge, %phy_wait_for_ack.exit
  %dec1.i1 = phi i32 [ 99, %phy_wait_for_ack.exit ], [ %dec.i6, %if.end.i8.while.body.i5_crit_edge ]
  %call.i2 = tail call i32 @rcar_pci_read_reg(ptr noundef %pcie, i32 noundef 262156) #7
  %and.i3 = and i32 %call.i2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool2.not.i4 = icmp eq i32 %and.i3, 0
  br i1 %tobool2.not.i4, label %if.end.i8, label %while.body.i5.phy_wait_for_ack.exit10_crit_edge

while.body.i5.phy_wait_for_ack.exit10_crit_edge:  ; preds = %while.body.i5
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_wait_for_ack.exit10

if.end.i8:                                        ; preds = %while.body.i5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #7
  %dec.i6 = add nsw i32 %dec1.i1, -1
  %tobool.not.i7 = icmp eq i32 %dec1.i1, 0
  br i1 %tobool.not.i7, label %do.end.i9, label %if.end.i8.while.body.i5_crit_edge

if.end.i8.while.body.i5_crit_edge:                ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i5

do.end.i9:                                        ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.73) #10
  br label %phy_wait_for_ack.exit10

phy_wait_for_ack.exit10:                          ; preds = %do.end.i9, %while.body.i5.phy_wait_for_ack.exit10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_resume(ptr noundef %dev) #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call fastcc i32 @rcar_pcie_parse_map_dma_ranges(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_init_fn = getelementptr inbounds %struct.rcar_pcie_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy_init_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_init_fn, align 4
  %call3 = tail call i32 %3(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 69716) #7
  %shr = lshr i32 %call7, 20
  %and = and i32 %shr, 63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %and) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = call ptr @memset(ptr %res, i32 255, i32 32)
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call11 = call i32 @of_address_to_resource(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef 0, i32 noundef 8268) #7
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res, align 4
  %or = or i32 %8, 1
  call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %or, i32 noundef 8264) #7
  %msi = getelementptr inbounds %struct.rcar_pcie_host, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msi, align 4
  call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %10, i32 noundef 8272) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  call fastcc void @rcar_pcie_hw_enable(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 69724) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 8192) #7
  %and = and i32 %call3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef -2130771968, i32 noundef 69720) #7
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef 1, i32 noundef 8192) #7
  %call5 = tail call i32 @rcar_pcie_wait_for_dl(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !132, !134, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151, !153, !154, !155, !157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_pcie_rcar_host__300_1111_rcar_pcie_init6, !1, !"__initcall__kmod_pcie_rcar_host__300_1111_rcar_pcie_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 1111, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 1105, i32 5}
!4 = !{ptr @rcar_pcie_abort_handler_of_match, !5, !"rcar_pcie_abort_handler_of_match", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 1089, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 1080, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 1053, i32 8}
!11 = !{ptr @pmsr_lock, !10, !"pmsr_lock", i1 false, i1 false}
!12 = !{ptr @pcie_base, !13, !"pcie_base", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 51, i32 22}
!14 = !{ptr @pcie_dev, !15, !"pcie_dev", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 56, i32 23}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 1044, i32 11}
!18 = !{ptr @rcar_pcie_driver, !19, !"rcar_pcie_driver", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 1042, i32 31}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 906, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rcar_pcie_probe._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @rcar_pcie_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 912, i32 3}
!29 = !{ptr @rcar_pcie_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rcar_pcie_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 918, i32 3}
!33 = !{ptr @rcar_pcie_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rcar_pcie_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 929, i32 3}
!37 = !{ptr @rcar_pcie_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rcar_pcie_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 935, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rcar_pcie_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @rcar_pcie_probe._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 941, i32 2}
!46 = !{ptr @rcar_pcie_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rcar_pcie_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 946, i32 4}
!50 = !{ptr @rcar_pcie_probe._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rcar_pcie_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 756, i32 41}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 768, i32 36}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 770, i32 3}
!58 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rcar_pcie_get_resources._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @rcar_pcie_get_resources._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 776, i32 3}
!63 = !{ptr @rcar_pcie_get_resources._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rcar_pcie_get_resources._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @rcar_pcie_get_resources._entry.35, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 784, i32 3}
!67 = !{ptr @rcar_pcie_get_resources._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 822, i32 4}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rcar_pcie_inbound_ranges._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @rcar_pcie_inbound_ranges._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @rcar_pcie_enable_msi.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 691, i32 2}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rcar_pcie_enable_msi.__key.40, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 692, i32 2}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 707, i32 3}
!81 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rcar_pcie_enable_msi._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @rcar_pcie_enable_msi._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @rcar_pcie_enable_msi._entry.44, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 715, i32 3}
!86 = !{ptr @rcar_pcie_enable_msi._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 660, i32 3}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rcar_allocate_domains._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @rcar_allocate_domains._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 667, i32 3}
!94 = !{ptr @rcar_allocate_domains._entry.48, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @rcar_allocate_domains._entry_ptr.50, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @rcar_msi_domain_ops, !97, !"rcar_msi_domain_ops", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 640, i32 36}
!98 = !{ptr @rcar_msi_info, !99, !"rcar_msi_info", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 645, i32 31}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 536, i32 11}
!102 = !{ptr @rcar_msi_top_chip, !103, !"rcar_msi_top_chip", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 535, i32 24}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 507, i32 4}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rcar_pcie_msi_irq.__UNIQUE_ID_ddebug295, !105, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 595, i32 12}
!111 = !{ptr @rcar_msi_bottom_chip, !112, !"rcar_msi_bottom_chip", i1 false, i1 false}
!112 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 594, i32 24}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 225, i32 3}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @rcar_pcie_force_speedup._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @rcar_pcie_force_speedup._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 254, i32 5}
!120 = !{ptr @rcar_pcie_force_speedup._entry.58, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @rcar_pcie_force_speedup._entry_ptr.60, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 262, i32 2}
!124 = !{ptr @rcar_pcie_force_speedup._entry.61, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @rcar_pcie_force_speedup._entry_ptr.63, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 265, i32 2}
!128 = !{ptr @rcar_pcie_force_speedup._entry.64, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @rcar_pcie_force_speedup._entry_ptr.66, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @rcar_pcie_ops, !133, !"rcar_pcie_ops", i1 false, i1 false}
!133 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 210, i32 23}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 170, i32 2}
!136 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @rcar_pcie_read_conf.__UNIQUE_ID_ddebug293, !135, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 190, i32 2}
!140 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @rcar_pcie_write_conf.__UNIQUE_ID_ddebug294, !139, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!142 = !{ptr @rcar_pcie_of_match, !143, !"rcar_pcie_of_match", i1 false, i1 false}
!143 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 869, i32 34}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 323, i32 2}
!146 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @phy_wait_for_ack._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @phy_wait_for_ack._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @rcar_pcie_pm_ops, !150, !"rcar_pcie_pm_ops", i1 false, i1 false}
!150 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 1037, i32 32}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 997, i32 3}
!153 = !{ptr @rcar_pcie_resume._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @rcar_pcie_resume._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @rcar_pcie_resume._entry.76, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/pci/controller/pcie-rcar-host.c", i32 1002, i32 2}
!157 = !{ptr @rcar_pcie_resume._entry_ptr.77, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 4696523}
!168 = !{i64 2155693503}
!169 = !{i64 2155694624}
!170 = !{i64 4696105}
!171 = !{i64 2155696967}
!172 = !{i64 2155697465}
!173 = !{!"branch_weights", i32 1, i32 2000}
!174 = !{i64 2155699083}
!175 = !{i32 0, i32 33}
!176 = !{i64 2155640640}
!177 = !{i64 2148748756, i64 2148748761, i64 2148748774, i64 2148748818, i64 2148748852, i64 2148748873}
!178 = !{!"auto-init"}
