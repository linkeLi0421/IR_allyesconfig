; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-tegra.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tegra_pcie_soc = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.92 }
%struct.anon.92 = type { %struct.anon.93, i8 }
%struct.anon.93 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_pcie_port_soc = type { %struct.anon.91 }
%struct.anon.91 = type { i8, i8 }
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
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.tegra_pcie_port = type { ptr, ptr, %struct.list_head, %struct.resource, ptr, i32, i32, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tegra_pcie = type { ptr, ptr, ptr, ptr, i32, %struct.resource, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.tegra_msi, %struct.list_head, i32, ptr, i32, ptr, ptr }
%struct.tegra_msi = type { [8 x i32], ptr, %struct.mutex, %struct.spinlock, ptr, i32, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.msi_msg = type { %union.anon.78, %union.anon.79, %union.anon.80 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.85, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.87, ptr, %struct.address_space, %struct.list_head, %union.anon.88, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.86 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.87 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.88 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }

@__pci_fixup_tegra_pcie_fixup_class731 = internal constant %struct.pci_fixup { i16 4318, i16 3056, i32 -1, i32 0, ptr @tegra_pcie_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_tegra_pcie_fixup_class732 = internal constant %struct.pci_fixup { i16 4318, i16 3057, i32 -1, i32 0, ptr @tegra_pcie_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_tegra_pcie_fixup_class733 = internal constant %struct.pci_fixup { i16 4318, i16 3612, i32 -1, i32 0, ptr @tegra_pcie_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_tegra_pcie_fixup_class734 = internal constant %struct.pci_fixup { i16 4318, i16 3613, i32 -1, i32 0, ptr @tegra_pcie_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_tegra_pcie_relax_enable741 = internal constant %struct.pci_fixup { i16 4318, i16 3056, i32 -1, i32 0, ptr @tegra_pcie_relax_enable }, section ".pci_fixup_final", align 4
@__pci_fixup_tegra_pcie_relax_enable742 = internal constant %struct.pci_fixup { i16 4318, i16 3057, i32 -1, i32 0, ptr @tegra_pcie_relax_enable }, section ".pci_fixup_final", align 4
@__pci_fixup_tegra_pcie_relax_enable743 = internal constant %struct.pci_fixup { i16 4318, i16 3612, i32 -1, i32 0, ptr @tegra_pcie_relax_enable }, section ".pci_fixup_final", align 4
@__pci_fixup_tegra_pcie_relax_enable744 = internal constant %struct.pci_fixup { i16 4318, i16 3613, i32 -1, i32 0, ptr @tegra_pcie_relax_enable }, section ".pci_fixup_final", align 4
@__initcall__kmod_pci_tegra__296_2816_tegra_pcie_driver_init6 = internal global ptr @tegra_pcie_driver_init, section ".initcall6.init", align 4
@tegra_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_pcie_probe, ptr @tegra_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_pcie_driver_exit = internal global ptr @tegra_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file297 = internal constant [48 x i8] c"pci_tegra.file=drivers/pci/controller/pci-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [22 x i8] c"pci_tegra.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-pcie\00", [21 x i8] zeroinitializer }, align 32
@tegra_pcie_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_pcie }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_pcie }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_pcie }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_pcie }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_pcie }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@tegra_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcie_pm_suspend, ptr @tegra_pcie_pm_resume, ptr @tegra_pcie_pm_suspend, ptr @tegra_pcie_pm_resume, ptr @tegra_pcie_pm_suspend, ptr @tegra_pcie_pm_resume, ptr @tegra_pcie_pm_suspend, ptr @tegra_pcie_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request resources: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_pcie_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/pci/controller/pci-tegra.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_pcie_probe._entry_ptr = internal global ptr @tegra_pcie_probe._entry, section ".printk_index", align 4
@tegra_pcie_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2651, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable MSI support: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_pcie_probe._entry_ptr.8 = internal global ptr @tegra_pcie_probe._entry.6, section ".printk_index", align 4
@tegra_pcie_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fail to enable pcie controller: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_pcie_probe._entry_ptr.11 = internal global ptr @tegra_pcie_probe._entry.9, section ".printk_index", align 4
@tegra_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @tegra_pcie_map_bus, ptr @tegra_pcie_config_read, ptr @tegra_pcie_config_write }, [44 x i8] zeroinitializer }, align 32
@tegra_pcie_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2667, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register host: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_pcie_probe._entry_ptr.14 = internal global ptr @tegra_pcie_probe._entry.12, section ".printk_index", align 4
@tegra_pcie_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 2133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to parse address: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_pcie_parse_dt\00", [44 x i8] zeroinitializer }, align 32
@tegra_pcie_parse_dt._entry_ptr = internal global ptr @tegra_pcie_parse_dt._entry, section ".printk_index", align 4
@tegra_pcie_parse_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 2140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid port number: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_pcie_parse_dt._entry_ptr.19 = internal global ptr @tegra_pcie_parse_dt._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvidia,num-lanes\00", [47 x i8] zeroinitializer }, align 32
@tegra_pcie_parse_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.3, i32 2150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse # of lanes: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_pcie_parse_dt._entry_ptr.23 = internal global ptr @tegra_pcie_parse_dt._entry.21, section ".printk_index", align 4
@tegra_pcie_parse_dt._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str.3, i32 2155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid # of lanes: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_parse_dt._entry_ptr.26 = internal global ptr @tegra_pcie_parse_dt._entry.24, section ".printk_index", align 4
@tegra_pcie_parse_dt._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 2178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra_pcie_parse_dt._entry_ptr.28 = internal global ptr @tegra_pcie_parse_dt._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pex-reset-%u\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@tegra_pcie_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.16, ptr @.str.3, i32 2214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get reset GPIO: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_pcie_parse_dt._entry_ptr.33 = internal global ptr @tegra_pcie_parse_dt._entry.31, section ".printk_index", align 4
@tegra_pcie_parse_dt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.16, ptr @.str.3, i32 2225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid lane configuration\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_pcie_parse_dt._entry_ptr.36 = internal global ptr @tegra_pcie_parse_dt._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,tegra186-pcie\00", [43 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 1867, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"4x1, 1x1 configuration\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_pcie_get_xbar_config\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr = internal global ptr @tegra_pcie_get_xbar_config._entry, section ".printk_index", align 4
@tegra_pcie_get_xbar_config._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.3, i32 1872, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"2x1, 1X1, 1x1 configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.43 = internal global ptr @tegra_pcie_get_xbar_config._entry.41, section ".printk_index", align 4
@tegra_pcie_get_xbar_config._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.39, ptr @.str.3, i32 1877, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"1x1, 1x1, 1x1 configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.46 = internal global ptr @tegra_pcie_get_xbar_config._entry.44, section ".printk_index", align 4
@tegra_pcie_get_xbar_config._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.39, ptr @.str.3, i32 1884, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"wrong configuration updated in DT, switching to default 2x1, 1x1, 1x1 configuration\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.49 = internal global ptr @tegra_pcie_get_xbar_config._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,tegra124-pcie\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,tegra210-pcie\00", [43 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 1892, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.53 = internal global ptr @tegra_pcie_get_xbar_config._entry.52, section ".printk_index", align 4
@tegra_pcie_get_xbar_config._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.39, ptr @.str.3, i32 1897, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"2x1, 1x1 configuration\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.56 = internal global ptr @tegra_pcie_get_xbar_config._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,tegra30-pcie\00", [44 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.39, ptr @.str.3, i32 1904, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"4x1, 2x1 configuration\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.60 = internal global ptr @tegra_pcie_get_xbar_config._entry.58, section ".printk_index", align 4
@tegra_pcie_get_xbar_config._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.39, ptr @.str.3, i32 1909, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"2x3 configuration\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.63 = internal global ptr @tegra_pcie_get_xbar_config._entry.61, section ".printk_index", align 4
@tegra_pcie_get_xbar_config._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.39, ptr @.str.3, i32 1914, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"4x1, 1x2 configuration\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.66 = internal global ptr @tegra_pcie_get_xbar_config._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,tegra20-pcie\00", [44 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.39, ptr @.str.3, i32 1921, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"single-mode configuration\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.70 = internal global ptr @tegra_pcie_get_xbar_config._entry.68, section ".printk_index", align 4
@tegra_pcie_get_xbar_config._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.39, ptr @.str.3, i32 1926, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dual-mode configuration\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_pcie_get_xbar_config._entry_ptr.73 = internal global ptr @tegra_pcie_get_xbar_config._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvdd-pex\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hvdd-pex-pll\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hvdd-pex\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vddio-pexctl-aud\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hvddio-pex\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dvddio-pex\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vddio-pex-ctl\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"avddio-pex\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"avdd-pex-pll\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avdd-plle\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avdd-pexa\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd-pexa\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avdd-pexb\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd-pexb\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avdd-pex\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-pex\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vddio-pex-clk\00", [18 x i8] zeroinitializer }, align 32
@tegra_pcie_get_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 2107, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"using legacy DT binding for power supplies\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_pcie_get_regulators\00", [38 x i8] zeroinitializer }, align 32
@tegra_pcie_get_regulators._entry_ptr = internal global ptr @tegra_pcie_get_regulators._entry, section ".printk_index", align 4
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-supply\00", [22 x i8] zeroinitializer }, align 32
@tegra_pcie_get_legacy_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1975, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"device %pOF not supported in legacy mode\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_pcie_get_legacy_regulators\00", [63 x i8] zeroinitializer }, align 32
@tegra_pcie_get_legacy_regulators._entry_ptr = internal global ptr @tegra_pcie_get_legacy_regulators._entry, section ".printk_index", align 4
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pex-clk\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@tegra_pcie_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 1426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clocks: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_pcie_get_resources\00", [39 x i8] zeroinitializer }, align 32
@tegra_pcie_get_resources._entry_ptr = internal global ptr @tegra_pcie_get_resources._entry, section ".printk_index", align 4
@tegra_pcie_get_resources._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 1432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get resets: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_pcie_get_resources._entry_ptr.103 = internal global ptr @tegra_pcie_get_resources._entry.101, section ".printk_index", align 4
@tegra_pcie_get_resources._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.3, i32 1439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get PHYs: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_get_resources._entry_ptr.106 = internal global ptr @tegra_pcie_get_resources._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pads\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afi\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIE\00", [27 x i8] zeroinitializer }, align 32
@tegra_pcie_get_resources._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.100, ptr @.str.3, i32 1483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register IRQ: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_pcie_get_resources._entry_ptr.114 = internal global ptr @tegra_pcie_get_resources._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pex\00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_e\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cml\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie_x\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@tegra_pcie_phys_get_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 1306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get PHY: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_pcie_phys_get_legacy\00", [37 x i8] zeroinitializer }, align 32
@tegra_pcie_phys_get_legacy._entry_ptr = internal global ptr @tegra_pcie_phys_get_legacy._entry, section ".printk_index", align 4
@tegra_pcie_phys_get_legacy._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 1312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize PHY: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_pcie_phys_get_legacy._entry_ptr.125 = internal global ptr @tegra_pcie_phys_get_legacy._entry.123, section ".printk_index", align 4
@tegra_pcie_port_get_phys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 1357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get PHY#%u: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_pcie_port_get_phys\00", [39 x i8] zeroinitializer }, align 32
@tegra_pcie_port_get_phys._entry_ptr = internal global ptr @tegra_pcie_port_get_phys._entry, section ".printk_index", align 4
@tegra_pcie_port_get_phys._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 1364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize PHY#%u: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_pcie_port_get_phys._entry_ptr.130 = internal global ptr @tegra_pcie_port_get_phys._entry.128, section ".printk_index", align 4
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%u\00", [26 x i8] zeroinitializer }, align 32
@tegra_pcie_isr.err_msg = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], [36 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AXI slave error\00", [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AXI decode error\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Target abort\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Master abort\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid write\00", [18 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Legacy interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Response decoding error\00", [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AXI response decoding error\00", [36 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Transaction timeout\00", [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Slot present pin change\00", [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Slot clock request change\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TMS clock ramp change\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TMS ready for power down\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Peer2Peer error\00", [16 x i8] zeroinitializer }, align 32
@tegra_pcie_isr.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.147, ptr @.str.148, ptr @.str.3, ptr @.str.149, i8 0, i8 -57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_tegra\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_pcie_isr\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s, signature: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_pcie_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.148, ptr @.str.3, i32 800, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra_pcie_isr._entry_ptr = internal global ptr @tegra_pcie_isr._entry, section ".printk_index", align 4
@tegra_pcie_isr.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.147, ptr @.str.148, ptr @.str.3, ptr @.str.150, i8 0, i8 -54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  FPCI address: %10llx\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_isr._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.3, i32 810, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra_pcie_isr._entry_ptr.152 = internal global ptr @tegra_pcie_isr._entry.151, section ".printk_index", align 4
@tegra_pcie_phys_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.3, i32 1402, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to teardown PHY: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_pcie_phys_put\00", [44 x i8] zeroinitializer }, align 32
@tegra_pcie_phys_put._entry_ptr = internal global ptr @tegra_pcie_phys_put._entry, section ".printk_index", align 4
@tegra_pcie_phys_put._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.3, i32 1411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to teardown PHY#%u: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_pcie_phys_put._entry_ptr.157 = internal global ptr @tegra_pcie_phys_put._entry.155, section ".printk_index", align 4
@tegra_pcie_msi_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&msi->map_lock\00", [17 x i8] zeroinitializer }, align 32
@tegra_pcie_msi_setup.__key.159 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&msi->mask_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msi\00", [28 x i8] zeroinitializer }, align 32
@tegra_pcie_msi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.3, i32 1771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set DMA coherent mask: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_pcie_msi_setup\00", [43 x i8] zeroinitializer }, align 32
@tegra_pcie_msi_setup._entry_ptr = internal global ptr @tegra_pcie_msi_setup._entry, section ".printk_index", align 4
@tegra_pcie_msi_setup._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.3, i32 1778, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate DMA memory for MSI\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_pcie_msi_setup._entry_ptr.166 = internal global ptr @tegra_pcie_msi_setup._entry.164, section ".printk_index", align 4
@tegra_msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_msi_domain_alloc, ptr @tegra_msi_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@tegra_allocate_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.3, i32 1717, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_allocate_domains\00", [41 x i8] zeroinitializer }, align 32
@tegra_allocate_domains._entry_ptr = internal global ptr @tegra_allocate_domains._entry, section ".printk_index", align 4
@tegra_msi_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 11, ptr null, ptr @tegra_msi_top_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra_allocate_domains._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.3, i32 1724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_allocate_domains._entry_ptr.171 = internal global ptr @tegra_allocate_domains._entry.169, section ".printk_index", align 4
@tegra_msi_bottom_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.172, ptr null, ptr null, ptr null, ptr null, ptr @tegra_msi_irq_ack, ptr @tegra_msi_irq_mask, ptr null, ptr @tegra_msi_irq_unmask, ptr null, ptr @tegra_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tegra MSI\00", [22 x i8] zeroinitializer }, align 32
@tegra_msi_top_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.173, ptr null, ptr null, ptr null, ptr null, ptr @tegra_msi_top_irq_ack, ptr @tegra_msi_top_irq_mask, ptr null, ptr @tegra_msi_top_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tegra PCIe MSI\00", [17 x i8] zeroinitializer }, align 32
@tegra_pcie_msi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.3, i32 1559, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unexpected MSI\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_pcie_msi_irq\00", [45 x i8] zeroinitializer }, align 32
@tegra_pcie_msi_irq._entry_ptr = internal global ptr @tegra_pcie_msi_irq._entry, section ".printk_index", align 4
@.str.176 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@tegra_pcie_ports_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_pcie_ports_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra_pcie_ports_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @tegra_pcie_ports_seq_start, ptr @tegra_pcie_ports_seq_stop, ptr @tegra_pcie_ports_seq_next, ptr @tegra_pcie_ports_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Index  Status\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%2u     \00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@tegra186_pcie = internal constant { %struct.tegra_pcie_soc, [44 x i8] } { %struct.tegra_pcie_soc { i32 3, ptr @tegra186_pcie_ports, i32 8, i32 412, i32 180, i32 4194304, i32 -2135392072, i32 295096, i32 0, i8 1, i8 1, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, %struct.anon.92 zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@tegra210_pcie = internal constant { %struct.tegra_pcie_soc, [44 x i8] } { %struct.tegra_pcie_soc { i32 2, ptr @tegra20_pcie_ports, i32 8, i32 0, i32 180, i32 4194304, i32 -1866952520, i32 0, i32 25165824, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, %struct.anon.92 { %struct.anon.93 { i32 15, i32 103, i32 1426128896, i32 1, i32 143, i32 199, i32 1426128896, i32 1 }, i8 1 } }, [44 x i8] zeroinitializer }, align 32
@tegra124_pcie = internal constant { %struct.tegra_pcie_soc, [44 x i8] } { %struct.tegra_pcie_soc { i32 2, ptr @tegra20_pcie_ports, i32 8, i32 0, i32 180, i32 4194304, i32 1152140460, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, %struct.anon.92 zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@tegra30_pcie = internal constant { %struct.tegra_pcie_soc, [44 x i8] } { %struct.tegra_pcie_soc { i32 3, ptr @tegra30_pcie_ports, i32 8, i32 296, i32 180, i32 4194304, i32 -94569892, i32 -94569892, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, %struct.anon.92 zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@tegra20_pcie = internal constant { %struct.tegra_pcie_soc, [44 x i8] } { %struct.tegra_pcie_soc { i32 2, ptr @tegra20_pcie_ports, i32 0, i32 0, i32 184, i32 0, i32 -94569892, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, %struct.anon.92 zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@tegra186_pcie_ports = internal constant { [3 x %struct.tegra_pcie_port_soc], [26 x i8] } { [3 x %struct.tegra_pcie_port_soc] [%struct.tegra_pcie_port_soc { %struct.anon.91 { i8 0, i8 5 } }, %struct.tegra_pcie_port_soc { %struct.anon.91 { i8 8, i8 10 } }, %struct.tegra_pcie_port_soc { %struct.anon.91 { i8 12, i8 14 } }], [26 x i8] zeroinitializer }, align 32
@tegra20_pcie_ports = internal constant { [2 x %struct.tegra_pcie_port_soc], [28 x i8] } { [2 x %struct.tegra_pcie_port_soc] [%struct.tegra_pcie_port_soc { %struct.anon.91 { i8 0, i8 5 } }, %struct.tegra_pcie_port_soc { %struct.anon.91 { i8 8, i8 10 } }], [28 x i8] zeroinitializer }, align 32
@tegra30_pcie_ports = internal constant { [3 x %struct.tegra_pcie_port_soc], [26 x i8] } { [3 x %struct.tegra_pcie_port_soc] [%struct.tegra_pcie_port_soc { %struct.anon.91 { i8 0, i8 5 } }, %struct.tegra_pcie_port_soc { %struct.anon.91 { i8 8, i8 10 } }, %struct.tegra_pcie_port_soc { %struct.anon.91 { i8 16, i8 18 } }], [26 x i8] zeroinitializer }, align 32
@tegra_pcie_pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.3, i32 2730, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to power off PHY(s): %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_pcie_pm_suspend\00", [42 x i8] zeroinitializer }, align 32
@tegra_pcie_pm_suspend._entry_ptr = internal global ptr @tegra_pcie_pm_suspend._entry, section ".printk_index", align 4
@tegra_pcie_pme_turnoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.3, i32 1526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PME Ack is not received on port: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_pcie_pme_turnoff\00", [41 x i8] zeroinitializer }, align 32
@tegra_pcie_pme_turnoff._entry_ptr = internal global ptr @tegra_pcie_pme_turnoff._entry, section ".printk_index", align 4
@tegra_pcie_phy_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.3, i32 1070, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to power off PHY: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_pcie_phy_power_off\00", [39 x i8] zeroinitializer }, align 32
@tegra_pcie_phy_power_off._entry_ptr = internal global ptr @tegra_pcie_phy_power_off._entry, section ".printk_index", align 4
@tegra_pcie_phy_power_off._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.3, i32 1080, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to power off PCIe port %u PHY: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@tegra_pcie_phy_power_off._entry_ptr.191 = internal global ptr @tegra_pcie_phy_power_off._entry.189, section ".printk_index", align 4
@tegra_pcie_port_phy_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.3, i32 1018, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to power off PHY#%u: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra_pcie_port_phy_power_off\00", [34 x i8] zeroinitializer }, align 32
@tegra_pcie_port_phy_power_off._entry_ptr = internal global ptr @tegra_pcie_port_phy_power_off._entry, section ".printk_index", align 4
@tegra_pcie_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.3, i32 1170, ptr @.str.196, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to disable regulators: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_pcie_power_off\00", [43 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_pcie_power_off._entry_ptr = internal global ptr @tegra_pcie_power_off._entry, section ".printk_index", align 4
@tegra_pcie_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.3, i32 2752, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra pcie power on fail: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_pcie_pm_resume\00", [43 x i8] zeroinitializer }, align 32
@tegra_pcie_pm_resume._entry_ptr = internal global ptr @tegra_pcie_pm_resume._entry, section ".printk_index", align 4
@tegra_pcie_pm_resume._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.3, i32 2758, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to disable PCIe IO DPD: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_pcie_pm_resume._entry_ptr.201 = internal global ptr @tegra_pcie_pm_resume._entry.199, section ".printk_index", align 4
@tegra_pcie_pm_resume._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.198, ptr @.str.3, i32 2770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable PEX clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_pcie_pm_resume._entry_ptr.204 = internal global ptr @tegra_pcie_pm_resume._entry.202, section ".printk_index", align 4
@tegra_pcie_pm_resume._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.198, ptr @.str.3, i32 2779, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to power on PHY(s): %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_pcie_pm_resume._entry_ptr.207 = internal global ptr @tegra_pcie_pm_resume._entry.205, section ".printk_index", align 4
@tegra_pcie_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.3, i32 1189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_pcie_power_on\00", [44 x i8] zeroinitializer }, align 32
@tegra_pcie_power_on._entry_ptr = internal global ptr @tegra_pcie_power_on._entry, section ".printk_index", align 4
@tegra_pcie_power_on._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.209, ptr @.str.3, i32 1194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to power ungate: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_pcie_power_on._entry_ptr.212 = internal global ptr @tegra_pcie_power_on._entry.210, section ".printk_index", align 4
@tegra_pcie_power_on._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.209, ptr @.str.3, i32 1199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to remove clamp: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_pcie_power_on._entry_ptr.215 = internal global ptr @tegra_pcie_power_on._entry.213, section ".printk_index", align 4
@tegra_pcie_power_on._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.209, ptr @.str.3, i32 1206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable AFI clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_pcie_power_on._entry_ptr.218 = internal global ptr @tegra_pcie_power_on._entry.216, section ".printk_index", align 4
@tegra_pcie_power_on._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.209, ptr @.str.3, i32 1213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable CML clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_pcie_power_on._entry_ptr.221 = internal global ptr @tegra_pcie_power_on._entry.219, section ".printk_index", align 4
@tegra_pcie_power_on._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.209, ptr @.str.3, i32 1220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable PLLE clock: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_pcie_power_on._entry_ptr.224 = internal global ptr @tegra_pcie_power_on._entry.222, section ".printk_index", align 4
@tegra_pcie_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.3, i32 1039, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to power on PHY: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_pcie_phy_power_on\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_phy_power_on._entry_ptr = internal global ptr @tegra_pcie_phy_power_on._entry, section ".printk_index", align 4
@tegra_pcie_phy_power_on._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.226, ptr @.str.3, i32 1049, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to power on PCIe port %u PHY: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_pcie_phy_power_on._entry_ptr.229 = internal global ptr @tegra_pcie_phy_power_on._entry.227, section ".printk_index", align 4
@tegra_pcie_phy_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.3, i32 949, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PLL failed to lock: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_pcie_phy_enable\00", [42 x i8] zeroinitializer }, align 32
@tegra_pcie_phy_enable._entry_ptr = internal global ptr @tegra_pcie_phy_enable._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tegra_pcie_port_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.3, i32 1000, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to power on PHY#%u: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra_pcie_port_phy_power_on\00", [35 x i8] zeroinitializer }, align 32
@tegra_pcie_port_phy_power_on._entry_ptr = internal global ptr @tegra_pcie_port_phy_power_on._entry, section ".printk_index", align 4
@tegra_pcie_enable_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.3, i32 2358, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"probing port %u, using %u lanes\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_pcie_enable_ports\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_enable_ports._entry_ptr = internal global ptr @tegra_pcie_enable_ports._entry, section ".printk_index", align 4
@tegra_pcie_enable_ports._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.235, ptr @.str.3, i32 2370, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"link %u down, ignoring\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_enable_ports._entry_ptr.238 = internal global ptr @tegra_pcie_enable_ports._entry.236, section ".printk_index", align 4
@tegra_pcie_port_check_link.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.147, ptr @.str.239, ptr @.str.3, ptr @.str.240, i8 2, i8 55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.239 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_pcie_port_check_link\00", [37 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"link %u down, retrying\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_change_link_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.3, i32 2328, ptr @.str.196, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PCIe port %u link is in recovery\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra_pcie_change_link_speed\00", [35 x i8] zeroinitializer }, align 32
@tegra_pcie_change_link_speed._entry_ptr = internal global ptr @tegra_pcie_change_link_speed._entry, section ".printk_index", align 4
@tegra_pcie_change_link_speed._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.242, ptr @.str.3, i32 2347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to retrain link of port %u\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_pcie_change_link_speed._entry_ptr.245 = internal global ptr @tegra_pcie_change_link_speed._entry.243, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 65540, i64 65793, i64 65794]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 32, i64 258, i64 260]
@__sancov_gen_cov_switch_values.247 = internal global [5 x i64] [i64 3, i64 32, i64 516, i64 65796, i64 131586]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 514]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 10]
@__sancov_gen_cov_switch_values.250 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.252 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.253 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.254 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.255 = private unnamed_addr constant [18 x i8] c"tegra_pcie_driver\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2806, i32 31 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2808, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"tegra_pcie_of_match\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2530, i32 34 }
@___asan_gen_.264 = private unnamed_addr constant [18 x i8] c"tegra_pcie_pm_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2800, i32 32 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2645, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2651, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2658, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [15 x i8] c"tegra_pcie_ops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 479, i32 23 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2667, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2133, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2140, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2147, i32 36 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2149, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2155, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2178, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2194, i32 43 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2206, i32 13 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2213, i32 5 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2225, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1864, i32 34 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1867, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1872, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1877, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1882, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1888, i32 41 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1889, i32 34 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1892, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1897, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1901, i32 41 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1904, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1909, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1914, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1918, i32 41 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1921, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1926, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2018, i32 32 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2019, i32 32 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2020, i32 32 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2021, i32 32 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2031, i32 32 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2032, i32 32 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2033, i32 32 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2043, i32 32 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2067, i32 32 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2070, i32 32 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2073, i32 33 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2074, i32 33 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2078, i32 33 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2079, i32 33 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2090, i32 30 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2091, i32 30 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2094, i32 30 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2107, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1948, i32 26 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1975, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1985, i32 29 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1986, i32 29 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1989, i32 30 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1426, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1432, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1439, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1444, i32 59 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1450, i32 58 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1457, i32 59 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1475, i32 38 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1481, i32 60 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1483, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1258, i32 36 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1266, i32 34 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1271, i32 37 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1291, i32 58 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1381, i32 45 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1303, i32 41 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1306, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1312, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1356, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1363, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1329, i32 31 }
@___asan_gen_.615 = private unnamed_addr constant [8 x i8] c"err_msg\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 762, i32 28 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 763, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 764, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 765, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 766, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 767, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 768, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 769, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 770, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 771, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 772, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 773, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 774, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 775, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 776, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 777, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 798, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 800, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 808, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 810, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1402, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1410, i32 5 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1747, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1748, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1756, i32 38 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1771, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1778, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c"tegra_msi_domain_ops\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1697, i32 36 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1717, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant [15 x i8] c"tegra_msi_info\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1702, i32 31 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1724, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant [22 x i8] c"tegra_msi_bottom_chip\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1649, i32 24 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1650, i32 12 }
@___asan_gen_.753 = private unnamed_addr constant [19 x i8] c"tegra_msi_top_chip\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1588, i32 24 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1589, i32 11 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1559, i32 5 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2616, i32 22 }
@___asan_gen_.771 = private unnamed_addr constant [22 x i8] c"tegra_pcie_ports_fops\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2604, i32 1 }
@___asan_gen_.774 = private unnamed_addr constant [22 x i8] c"tegra_pcie_ports_sops\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2597, i32 36 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2547, i32 14 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2581, i32 16 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2584, i32 15 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2588, i32 16 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2590, i32 15 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2593, i32 14 }
@___asan_gen_.795 = private unnamed_addr constant [14 x i8] c"tegra186_pcie\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2507, i32 36 }
@___asan_gen_.798 = private unnamed_addr constant [14 x i8] c"tegra210_pcie\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2466, i32 36 }
@___asan_gen_.801 = private unnamed_addr constant [14 x i8] c"tegra124_pcie\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2445, i32 36 }
@___asan_gen_.804 = private unnamed_addr constant [13 x i8] c"tegra30_pcie\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2422, i32 36 }
@___asan_gen_.807 = private unnamed_addr constant [13 x i8] c"tegra20_pcie\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2395, i32 36 }
@___asan_gen_.810 = private unnamed_addr constant [20 x i8] c"tegra186_pcie_ports\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2501, i32 41 }
@___asan_gen_.813 = private unnamed_addr constant [19 x i8] c"tegra20_pcie_ports\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2390, i32 41 }
@___asan_gen_.816 = private unnamed_addr constant [19 x i8] c"tegra30_pcie_ports\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2416, i32 41 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2730, i32 4 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1525, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1070, i32 4 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1078, i32 4 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1017, i32 4 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1170, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2752, i32 3 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2758, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2770, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2779, i32 4 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1189, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1194, i32 4 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1199, i32 4 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1206, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1213, i32 4 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1220, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1039, i32 4 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1047, i32 4 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 949, i32 3 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 1000, i32 4 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2357, i32 3 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2370, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2271, i32 4 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2327, i32 4 }
@___asan_gen_.1002 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1006 = private constant [38 x i8] c"../drivers/pci/controller/pci-tegra.c\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1006, i32 2346, i32 4 }
@llvm.compiler.used = appending global [329 x ptr] [ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_tegra_pcie_driver_exit, ptr @__initcall__kmod_pci_tegra__296_2816_tegra_pcie_driver_init6, ptr @__pci_fixup_tegra_pcie_fixup_class731, ptr @__pci_fixup_tegra_pcie_fixup_class732, ptr @__pci_fixup_tegra_pcie_fixup_class733, ptr @__pci_fixup_tegra_pcie_fixup_class734, ptr @__pci_fixup_tegra_pcie_relax_enable741, ptr @__pci_fixup_tegra_pcie_relax_enable742, ptr @__pci_fixup_tegra_pcie_relax_enable743, ptr @__pci_fixup_tegra_pcie_relax_enable744, ptr @tegra_allocate_domains._entry, ptr @tegra_allocate_domains._entry.169, ptr @tegra_allocate_domains._entry_ptr, ptr @tegra_allocate_domains._entry_ptr.171, ptr @tegra_pcie_change_link_speed._entry, ptr @tegra_pcie_change_link_speed._entry.243, ptr @tegra_pcie_change_link_speed._entry_ptr, ptr @tegra_pcie_change_link_speed._entry_ptr.245, ptr @tegra_pcie_driver_exit, ptr @tegra_pcie_enable_ports._entry, ptr @tegra_pcie_enable_ports._entry.236, ptr @tegra_pcie_enable_ports._entry_ptr, ptr @tegra_pcie_enable_ports._entry_ptr.238, ptr @tegra_pcie_get_legacy_regulators._entry, ptr @tegra_pcie_get_legacy_regulators._entry_ptr, ptr @tegra_pcie_get_regulators._entry, ptr @tegra_pcie_get_regulators._entry_ptr, ptr @tegra_pcie_get_resources._entry, ptr @tegra_pcie_get_resources._entry.101, ptr @tegra_pcie_get_resources._entry.104, ptr @tegra_pcie_get_resources._entry.112, ptr @tegra_pcie_get_resources._entry_ptr, ptr @tegra_pcie_get_resources._entry_ptr.103, ptr @tegra_pcie_get_resources._entry_ptr.106, ptr @tegra_pcie_get_resources._entry_ptr.114, ptr @tegra_pcie_get_xbar_config._entry, ptr @tegra_pcie_get_xbar_config._entry.41, ptr @tegra_pcie_get_xbar_config._entry.44, ptr @tegra_pcie_get_xbar_config._entry.47, ptr @tegra_pcie_get_xbar_config._entry.52, ptr @tegra_pcie_get_xbar_config._entry.54, ptr @tegra_pcie_get_xbar_config._entry.58, ptr @tegra_pcie_get_xbar_config._entry.61, ptr @tegra_pcie_get_xbar_config._entry.64, ptr @tegra_pcie_get_xbar_config._entry.68, ptr @tegra_pcie_get_xbar_config._entry.71, ptr @tegra_pcie_get_xbar_config._entry_ptr, ptr @tegra_pcie_get_xbar_config._entry_ptr.43, ptr @tegra_pcie_get_xbar_config._entry_ptr.46, ptr @tegra_pcie_get_xbar_config._entry_ptr.49, ptr @tegra_pcie_get_xbar_config._entry_ptr.53, ptr @tegra_pcie_get_xbar_config._entry_ptr.56, ptr @tegra_pcie_get_xbar_config._entry_ptr.60, ptr @tegra_pcie_get_xbar_config._entry_ptr.63, ptr @tegra_pcie_get_xbar_config._entry_ptr.66, ptr @tegra_pcie_get_xbar_config._entry_ptr.70, ptr @tegra_pcie_get_xbar_config._entry_ptr.73, ptr @tegra_pcie_isr._entry, ptr @tegra_pcie_isr._entry.151, ptr @tegra_pcie_isr._entry_ptr, ptr @tegra_pcie_isr._entry_ptr.152, ptr @tegra_pcie_msi_irq._entry, ptr @tegra_pcie_msi_irq._entry_ptr, ptr @tegra_pcie_msi_setup._entry, ptr @tegra_pcie_msi_setup._entry.164, ptr @tegra_pcie_msi_setup._entry_ptr, ptr @tegra_pcie_msi_setup._entry_ptr.166, ptr @tegra_pcie_parse_dt._entry, ptr @tegra_pcie_parse_dt._entry.17, ptr @tegra_pcie_parse_dt._entry.21, ptr @tegra_pcie_parse_dt._entry.24, ptr @tegra_pcie_parse_dt._entry.27, ptr @tegra_pcie_parse_dt._entry.31, ptr @tegra_pcie_parse_dt._entry.34, ptr @tegra_pcie_parse_dt._entry_ptr, ptr @tegra_pcie_parse_dt._entry_ptr.19, ptr @tegra_pcie_parse_dt._entry_ptr.23, ptr @tegra_pcie_parse_dt._entry_ptr.26, ptr @tegra_pcie_parse_dt._entry_ptr.28, ptr @tegra_pcie_parse_dt._entry_ptr.33, ptr @tegra_pcie_parse_dt._entry_ptr.36, ptr @tegra_pcie_phy_enable._entry, ptr @tegra_pcie_phy_enable._entry_ptr, ptr @tegra_pcie_phy_power_off._entry, ptr @tegra_pcie_phy_power_off._entry.189, ptr @tegra_pcie_phy_power_off._entry_ptr, ptr @tegra_pcie_phy_power_off._entry_ptr.191, ptr @tegra_pcie_phy_power_on._entry, ptr @tegra_pcie_phy_power_on._entry.227, ptr @tegra_pcie_phy_power_on._entry_ptr, ptr @tegra_pcie_phy_power_on._entry_ptr.229, ptr @tegra_pcie_phys_get_legacy._entry, ptr @tegra_pcie_phys_get_legacy._entry.123, ptr @tegra_pcie_phys_get_legacy._entry_ptr, ptr @tegra_pcie_phys_get_legacy._entry_ptr.125, ptr @tegra_pcie_phys_put._entry, ptr @tegra_pcie_phys_put._entry.155, ptr @tegra_pcie_phys_put._entry_ptr, ptr @tegra_pcie_phys_put._entry_ptr.157, ptr @tegra_pcie_pm_resume._entry, ptr @tegra_pcie_pm_resume._entry.199, ptr @tegra_pcie_pm_resume._entry.202, ptr @tegra_pcie_pm_resume._entry.205, ptr @tegra_pcie_pm_resume._entry_ptr, ptr @tegra_pcie_pm_resume._entry_ptr.201, ptr @tegra_pcie_pm_resume._entry_ptr.204, ptr @tegra_pcie_pm_resume._entry_ptr.207, ptr @tegra_pcie_pm_suspend._entry, ptr @tegra_pcie_pm_suspend._entry_ptr, ptr @tegra_pcie_pme_turnoff._entry, ptr @tegra_pcie_pme_turnoff._entry_ptr, ptr @tegra_pcie_port_get_phys._entry, ptr @tegra_pcie_port_get_phys._entry.128, ptr @tegra_pcie_port_get_phys._entry_ptr, ptr @tegra_pcie_port_get_phys._entry_ptr.130, ptr @tegra_pcie_port_phy_power_off._entry, ptr @tegra_pcie_port_phy_power_off._entry_ptr, ptr @tegra_pcie_port_phy_power_on._entry, ptr @tegra_pcie_port_phy_power_on._entry_ptr, ptr @tegra_pcie_power_off._entry, ptr @tegra_pcie_power_off._entry_ptr, ptr @tegra_pcie_power_on._entry, ptr @tegra_pcie_power_on._entry.210, ptr @tegra_pcie_power_on._entry.213, ptr @tegra_pcie_power_on._entry.216, ptr @tegra_pcie_power_on._entry.219, ptr @tegra_pcie_power_on._entry.222, ptr @tegra_pcie_power_on._entry_ptr, ptr @tegra_pcie_power_on._entry_ptr.212, ptr @tegra_pcie_power_on._entry_ptr.215, ptr @tegra_pcie_power_on._entry_ptr.218, ptr @tegra_pcie_power_on._entry_ptr.221, ptr @tegra_pcie_power_on._entry_ptr.224, ptr @tegra_pcie_probe._entry, ptr @tegra_pcie_probe._entry.12, ptr @tegra_pcie_probe._entry.6, ptr @tegra_pcie_probe._entry.9, ptr @tegra_pcie_probe._entry_ptr, ptr @tegra_pcie_probe._entry_ptr.11, ptr @tegra_pcie_probe._entry_ptr.14, ptr @tegra_pcie_probe._entry_ptr.8, ptr @tegra_pcie_driver, ptr @.str, ptr @tegra_pcie_of_match, ptr @tegra_pcie_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @tegra_pcie_ops, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @tegra_pcie_isr.err_msg, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @tegra_pcie_msi_setup.__key, ptr @.str.158, ptr @tegra_pcie_msi_setup.__key.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @tegra_msi_domain_ops, ptr @.str.167, ptr @.str.168, ptr @tegra_msi_info, ptr @.str.170, ptr @tegra_msi_bottom_chip, ptr @.str.172, ptr @tegra_msi_top_chip, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @tegra_pcie_ports_fops, ptr @tegra_pcie_ports_sops, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @tegra186_pcie, ptr @tegra210_pcie, ptr @tegra124_pcie, ptr @tegra30_pcie, ptr @tegra20_pcie, ptr @tegra186_pcie_ports, ptr @tegra20_pcie_ports, ptr @tegra30_pcie_ports, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.228, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.244], section "llvm.metadata"
@0 = internal global [251 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_parse_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_parse_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_parse_dt._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_parse_dt._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_parse_dt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_xbar_config._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_legacy_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_resources._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_resources._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_get_resources._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_phys_get_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_phys_get_legacy._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_port_get_phys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_port_get_phys._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_isr.err_msg to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_isr._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_phys_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_phys_put._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_msi_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_msi_setup.__key.159 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_msi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_msi_setup._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_allocate_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_msi_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_allocate_domains._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_msi_bottom_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_msi_top_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_msi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_ports_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_ports_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_pcie to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_pcie to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pcie to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_pcie to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_pcie to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_pcie_ports to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_pcie_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_pcie_ports to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_pme_turnoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_phy_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_phy_power_off._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_port_phy_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_pm_resume._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_pm_resume._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_pm_resume._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_power_on._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_power_on._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_power_on._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_power_on._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_power_on._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_phy_power_on._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_phy_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_port_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_enable_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_enable_ports._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_change_link_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_change_link_speed._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @tegra_pcie_fixup_class(ptr nocapture noundef writeonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 394240, ptr %class, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_pcie_relax_enable(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 8, i16 noundef zeroext 0, i16 noundef zeroext 16) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_pcie_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_pcie_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_pcie_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_probe(ptr noundef %pdev) #1 align 64 {
entry:
  %property.i.i.i = alloca [32 x i8], align 1
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 300) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %private.i, ptr %sysdata, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %soc = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 2
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %soc, align 4
  %ports = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 2
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ports, ptr %ports, align 4
  %prev.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 3
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ports, ptr %prev.i, align 4
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %private.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %7, ptr noundef null) #10
  %cmp.not239.i = icmp eq ptr %call.i, null
  br i1 %cmp.not239.i, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %lane.0245.i = phi i32 [ %lane.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %mask.0244.i = phi i32 [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %lanes.0243.i = phi i32 [ %or.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %port.0240.i = phi ptr [ %call81.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #10
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value.i, align 4, !annotation !506
  %call3.i = call i32 @of_pci_get_devfn(ptr noundef nonnull %port.0240.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call3.i) #13
  br label %tegra_pcie_parse_dt.exit.thread134

if.end.i:                                         ; preds = %for.body.i
  %9 = lshr i32 %call3.i, 3
  %and.i = and i32 %9, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 0
  br i1 %cmp5.i, label %if.end.i.do.end10.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %11)
  %cmp6.i = icmp ugt i32 %and.i, %11
  br i1 %cmp6.i, label %lor.lhs.false.i.do.end10.i_crit_edge, label %if.end11.i

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %lor.lhs.false.i.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %and.i) #13
  br label %tegra_pcie_parse_dt.exit.thread134

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %dec.i = add nsw i32 %and.i, -1
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %port.0240.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp13.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp13.i, label %do.end17.i, label %if.end18.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call.i.i.i) #13
  br label %tegra_pcie_parse_dt.exit.thread134

if.end18.i:                                       ; preds = %if.end11.i
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp19.i = icmp ugt i32 %13, 16
  br i1 %cmp19.i, label %do.end23.i, label %if.end24.i

do.end23.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %13) #13
  br label %tegra_pcie_parse_dt.exit.thread134

if.end24.i:                                       ; preds = %if.end18.i
  %shl.i = shl nuw nsw i32 %dec.i, 3
  %shl25.i = shl i32 %13, %shl.i
  %or.i = or i32 %shl25.i, %lanes.0243.i
  %call26.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %port.0240.i) #10
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i, align 4
  br i1 %call26.i, label %if.end28.i, label %if.end24.i.for.inc.i_crit_edge

if.end24.i.for.inc.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end28.i:                                       ; preds = %if.end24.i
  %notmask.i = shl nsw i32 -1, %15
  %sub.i = xor i32 %notmask.i, -1
  %shl30.i = shl i32 %sub.i, %lane.0245.i
  %or31.i = or i32 %shl30.i, %mask.0244.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end28.i.tegra_pcie_parse_dt.exit.thread134_crit_edge, label %if.end35.i

if.end28.i.tegra_pcie_parse_dt.exit.thread134_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_parse_dt.exit.thread134

if.end35.i:                                       ; preds = %if.end28.i
  %regs.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %call.i.i, i32 0, i32 3
  %call36.i = call i32 @of_address_to_resource(ptr noundef nonnull %port.0240.i, i32 noundef 0, ptr noundef %regs.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %do.end41.i, label %if.end42.i

do.end41.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call36.i) #13
  br label %tegra_pcie_parse_dt.exit.thread134

if.end42.i:                                       ; preds = %if.end35.i
  %list.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %call.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %call.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list.i, ptr %prev.i.i, align 4
  %index43.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %call.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %index43.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dec.i, ptr %index43.i, align 4
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i, align 4
  %lanes44.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %call.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %lanes44.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %lanes44.i, align 4
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %private.i, ptr %call.i.i, align 4
  %np46.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %np46.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %port.0240.i, ptr %np46.i, align 4
  %call48.i = call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev1, ptr noundef %regs.i) #10
  %base.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %call.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call48.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end42.i.tegra_pcie_parse_dt.exit_crit_edge, label %if.end54.i

if.end42.i.tegra_pcie_parse_dt.exit_crit_edge:    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_parse_dt.exit

if.end54.i:                                       ; preds = %if.end42.i
  %call55.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.29, i32 noundef %dec.i) #10
  %tobool56.not.i = icmp eq ptr %call55.i, null
  br i1 %tobool56.not.i, label %if.end54.i.tegra_pcie_parse_dt.exit.thread134_crit_edge, label %if.end58.i

if.end54.i.tegra_pcie_parse_dt.exit.thread134_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_parse_dt.exit.thread134

if.end58.i:                                       ; preds = %if.end54.i
  %call59.i = call ptr @devm_gpiod_get_from_of_node(ptr noundef %dev1, ptr noundef nonnull %port.0240.i, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %call55.i) #10
  %reset_gpio.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %call.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call59.i, ptr %reset_gpio.i, align 4
  %cmp.i166.i = icmp ugt ptr %call59.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166.i, label %if.then62.i, label %if.end58.i.if.end76.i_crit_edge

if.end58.i.if.end76.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i

if.then62.i:                                      ; preds = %if.end58.i
  %cmp65.i = icmp eq ptr %call59.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp65.i, label %if.then66.i, label %do.end70.i

if.then66.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %reset_gpio.i, align 4
  br label %if.end76.i

do.end70.i:                                       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call59.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %27) #13
  %28 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset_gpio.i, align 4
  br label %tegra_pcie_parse_dt.exit

if.end76.i:                                       ; preds = %if.then66.i, %if.end58.i.if.end76.i_crit_edge
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i168.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %31, ptr noundef %ports) #10
  br i1 %call.i.i168.i, label %if.end.i.i.i, label %if.end76.i.for.inc.i_crit_edge

if.end76.i.for.inc.i_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list.i, ptr %prev.i, align 4
  %33 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ports, ptr %list.i, align 4
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list.i, ptr %31, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.end76.i.for.inc.i_crit_edge, %if.end24.i.for.inc.i_crit_edge
  %mask.1.i = phi i32 [ %or31.i, %if.end76.i.for.inc.i_crit_edge ], [ %or31.i, %if.end.i.i.i ], [ %mask.0244.i, %if.end24.i.for.inc.i_crit_edge ]
  %lane.1.i = add i32 %15, %lane.0245.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  %call81.i = call ptr @of_get_next_child(ptr noundef %7, ptr noundef nonnull %port.0240.i) #10
  %cmp.not.i = icmp eq ptr %call81.i, null
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %lanes.0.lcssa.i = phi i32 [ 0, %if.end.for.end.i_crit_edge ], [ %or.i, %for.inc.i.for.end.i_crit_edge ]
  %mask.0.lcssa.i = phi i32 [ 0, %if.end.for.end.i_crit_edge ], [ %mask.1.i, %for.inc.i.for.end.i_crit_edge ]
  %xbar_config.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4
  %36 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node.i.i, align 8
  %call.i169.i = call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169.i)
  %tobool.not.i.i = icmp eq i32 %call.i169.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i
  %40 = zext i32 %lanes.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %lanes.0.lcssa.i, label %do.end12.i.i [
    i32 65540, label %if.then.i.i.if.end88.i_crit_edge
    i32 65794, label %do.end5.i.i
    i32 65793, label %do.end9.i.i
  ]

if.then.i.i.if.end88.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

do.end5.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

do.end9.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

do.end12.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.else.i.i:                                      ; preds = %for.end.i
  %call13.i.i = call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %lor.lhs.false.i.i, label %if.else.i.i.if.then17.i.i_crit_edge

if.else.i.i.if.then17.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i.i

lor.lhs.false.i.i:                                ; preds = %if.else.i.i
  %call15.i.i = call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.else26.i.i, label %lor.lhs.false.i.i.if.then17.i.i_crit_edge

lor.lhs.false.i.i.if.then17.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i.i

if.then17.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then17.i.i_crit_edge, %if.else.i.i.if.then17.i.i_crit_edge
  %41 = zext i32 %lanes.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %lanes.0.lcssa.i, label %if.then17.i.i.do.end87.i_crit_edge [
    i32 260, label %if.then17.i.i.if.end88.i_crit_edge
    i32 258, label %do.end25.i.i
  ]

if.then17.i.i.if.end88.i_crit_edge:               ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.then17.i.i.do.end87.i_crit_edge:               ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87.i

do.end25.i.i:                                     ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.else26.i.i:                                    ; preds = %lor.lhs.false.i.i
  %call27.i.i = call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.else43.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.else26.i.i
  %42 = zext i32 %lanes.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %lanes.0.lcssa.i, label %if.then29.i.i.do.end87.i_crit_edge [
    i32 516, label %if.then29.i.i.if.end88.i_crit_edge
    i32 131586, label %do.end37.i.i
    i32 65796, label %do.end41.i.i
  ]

if.then29.i.i.if.end88.i_crit_edge:               ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.then29.i.i.do.end87.i_crit_edge:               ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87.i

do.end37.i.i:                                     ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

do.end41.i.i:                                     ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.else43.i.i:                                    ; preds = %if.else26.i.i
  %call44.i.i = call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %tobool45.not.i.i = icmp eq i32 %call44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.else43.i.i.do.end87.i_crit_edge, label %if.then46.i.i

if.else43.i.i.do.end87.i_crit_edge:               ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87.i

if.then46.i.i:                                    ; preds = %if.else43.i.i
  %43 = zext i32 %lanes.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %lanes.0.lcssa.i, label %if.then46.i.i.do.end87.i_crit_edge [
    i32 4, label %if.then46.i.i.if.end88.i_crit_edge
    i32 514, label %do.end54.i.i
  ]

if.then46.i.i.if.end88.i_crit_edge:               ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.then46.i.i.do.end87.i_crit_edge:               ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87.i

do.end54.i.i:                                     ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

do.end87.i:                                       ; preds = %if.then46.i.i.do.end87.i_crit_edge, %if.else43.i.i.do.end87.i_crit_edge, %if.then29.i.i.do.end87.i_crit_edge, %if.then17.i.i.do.end87.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end88.i:                                       ; preds = %do.end54.i.i, %if.then46.i.i.if.end88.i_crit_edge, %do.end41.i.i, %do.end37.i.i, %if.then29.i.i.if.end88.i_crit_edge, %do.end25.i.i, %if.then17.i.i.if.end88.i_crit_edge, %do.end12.i.i, %do.end9.i.i, %do.end5.i.i, %if.then.i.i.if.end88.i_crit_edge
  %.str.72.sink.i.i = phi ptr [ @.str.72, %do.end54.i.i ], [ @.str.65, %do.end41.i.i ], [ @.str.62, %do.end37.i.i ], [ @.str.55, %do.end25.i.i ], [ @.str.48, %do.end12.i.i ], [ @.str.45, %do.end9.i.i ], [ @.str.42, %do.end5.i.i ], [ @.str.38, %if.then.i.i.if.end88.i_crit_edge ], [ @.str.38, %if.then17.i.i.if.end88.i_crit_edge ], [ @.str.59, %if.then29.i.i.if.end88.i_crit_edge ], [ @.str.69, %if.then46.i.i.if.end88.i_crit_edge ]
  %.sink.i.i = phi i32 [ 1048576, %do.end54.i.i ], [ 2097152, %do.end41.i.i ], [ 1048576, %do.end37.i.i ], [ 0, %do.end25.i.i ], [ 1048576, %do.end12.i.i ], [ 2097152, %do.end9.i.i ], [ 1048576, %do.end5.i.i ], [ 0, %if.then.i.i.if.end88.i_crit_edge ], [ 1048576, %if.then17.i.i.if.end88.i_crit_edge ], [ 0, %if.then29.i.i.if.end88.i_crit_edge ], [ 0, %if.then46.i.i.if.end88.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull %.str.72.sink.i.i) #13
  %44 = ptrtoint ptr %xbar_config.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i.i, ptr %xbar_config.i, align 4
  %45 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private.i, align 4
  %of_node.i170.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %of_node.i170.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node.i170.i, align 8
  %call.i171.i = call i32 @of_device_is_compatible(ptr noundef %48, ptr noundef nonnull @.str.37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.i)
  %tobool.not.i172.i = icmp eq i32 %call.i171.i, 0
  br i1 %tobool.not.i172.i, label %if.else.i174.i, label %if.then.i173.i

if.then.i173.i:                                   ; preds = %if.end88.i
  %num_supplies.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1, i32 1
  %49 = ptrtoint ptr %num_supplies.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %num_supplies.i.i, align 4
  %50 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private.i, align 4
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %51, i32 noundef 48, i32 noundef 3520) #10
  %supplies.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1
  %52 = ptrtoint ptr %supplies.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5.i.i.i.i, ptr %supplies.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.then.i173.i.cleanup_crit_edge, label %if.end.i.i

if.then.i173.i.cleanup_crit_edge:                 ; preds = %if.then.i173.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i173.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %call5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.74, ptr %call5.i.i.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i.i, i32 1
  %54 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.75, ptr %arrayidx11.i.i, align 4
  %arrayidx15.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i.i, i32 2
  %55 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.76, ptr %arrayidx15.i.i, align 4
  %arrayidx19.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i.i, i32 3
  %56 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.77, ptr %arrayidx19.i.i, align 4
  br label %if.end166.i.i

if.else.i174.i:                                   ; preds = %if.end88.i
  %call21.i.i = call i32 @of_device_is_compatible(ptr noundef %48, ptr noundef nonnull @.str.51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.else45.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.else.i174.i
  %num_supplies24.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1, i32 1
  %57 = ptrtoint ptr %num_supplies24.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %num_supplies24.i.i, align 4
  %58 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %private.i, align 4
  %call5.i.i269.i.i = call noalias ptr @devm_kmalloc(ptr noundef %59, i32 noundef 36, i32 noundef 3520) #10
  %supplies28.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1
  %60 = ptrtoint ptr %supplies28.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call5.i.i269.i.i, ptr %supplies28.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %call5.i.i269.i.i, null
  br i1 %tobool30.not.i.i, label %if.then23.i.i.cleanup_crit_edge, label %if.end32.i.i

if.then23.i.i.cleanup_crit_edge:                  ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32.i.i:                                     ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %call5.i.i269.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.78, ptr %call5.i.i269.i.i, align 4
  %arrayidx39.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i269.i.i, i32 1
  %62 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.79, ptr %arrayidx39.i.i, align 4
  %arrayidx43.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i269.i.i, i32 2
  %63 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.80, ptr %arrayidx43.i.i, align 4
  br label %if.end166.i.i

if.else45.i.i:                                    ; preds = %if.else.i174.i
  %call46.i.i = call i32 @of_device_is_compatible(ptr noundef %48, ptr noundef nonnull @.str.50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool47.not.i.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.else73.i.i, label %if.then48.i.i

if.then48.i.i:                                    ; preds = %if.else45.i.i
  %num_supplies49.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1, i32 1
  %64 = ptrtoint ptr %num_supplies49.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %num_supplies49.i.i, align 4
  %call5.i.i270.i.i = call noalias ptr @devm_kmalloc(ptr noundef %46, i32 noundef 48, i32 noundef 3520) #10
  %supplies52.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1
  %65 = ptrtoint ptr %supplies52.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call5.i.i270.i.i, ptr %supplies52.i.i, align 4
  %tobool54.not.i.i = icmp eq ptr %call5.i.i270.i.i, null
  br i1 %tobool54.not.i.i, label %if.then48.i.i.cleanup_crit_edge, label %if.end56.i.i

if.then48.i.i.cleanup_crit_edge:                  ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56.i.i:                                     ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %call5.i.i270.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.81, ptr %call5.i.i270.i.i, align 4
  %arrayidx63.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i270.i.i, i32 1
  %67 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.79, ptr %arrayidx63.i.i, align 4
  %arrayidx67.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i270.i.i, i32 2
  %68 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.76, ptr %arrayidx67.i.i, align 4
  %arrayidx71.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i270.i.i, i32 3
  %69 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.80, ptr %arrayidx71.i.i, align 4
  br label %if.end166.i.i

if.else73.i.i:                                    ; preds = %if.else45.i.i
  %call74.i.i = call i32 @of_device_is_compatible(ptr noundef %48, ptr noundef nonnull @.str.57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %tobool75.not.i.i = icmp eq i32 %call74.i.i, 0
  br i1 %tobool75.not.i.i, label %if.else135.i.i, label %if.then76.i.i

if.then76.i.i:                                    ; preds = %if.else73.i.i
  %and.i.i = and i32 %mask.0.lcssa.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool77.not.i.i = icmp eq i32 %and.i.i, 0
  %and80.i.i = and i32 %mask.0.lcssa.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i.i)
  %tobool81.not.i.i = icmp eq i32 %and80.i.i, 0
  %cond86.i.i = select i1 %tobool81.not.i.i, i32 0, i32 2
  %add.i.i = select i1 %tobool77.not.i.i, i32 4, i32 6
  %add87.i.i = add nuw nsw i32 %add.i.i, %cond86.i.i
  %num_supplies88.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1, i32 1
  %70 = ptrtoint ptr %num_supplies88.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add87.i.i, ptr %num_supplies88.i.i, align 4
  %71 = mul nuw nsw i32 %add87.i.i, 12
  %call5.i.i271.i.i = call noalias ptr @devm_kmalloc(ptr noundef %46, i32 noundef %71, i32 noundef 3520) #10
  %supplies91.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1
  %72 = ptrtoint ptr %supplies91.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call5.i.i271.i.i, ptr %supplies91.i.i, align 4
  %tobool93.not.i.i = icmp eq ptr %call5.i.i271.i.i, null
  br i1 %tobool93.not.i.i, label %if.then76.i.i.cleanup_crit_edge, label %if.end95.i.i

if.then76.i.i.cleanup_crit_edge:                  ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end95.i.i:                                     ; preds = %if.then76.i.i
  %73 = ptrtoint ptr %call5.i.i271.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.82, ptr %call5.i.i271.i.i, align 4
  %arrayidx102.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i271.i.i, i32 1
  %74 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.76, ptr %arrayidx102.i.i, align 4
  %arrayidx106.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i271.i.i, i32 2
  %75 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.80, ptr %arrayidx106.i.i, align 4
  %arrayidx110.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i271.i.i, i32 3
  %76 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.83, ptr %arrayidx110.i.i, align 4
  br i1 %tobool77.not.i.i, label %if.end95.i.i.if.end122.i.i_crit_edge, label %if.then113.i.i

if.end95.i.i.if.end122.i.i_crit_edge:             ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.i.i

if.then113.i.i:                                   ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx116.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i271.i.i, i32 4
  %77 = ptrtoint ptr %arrayidx116.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.84, ptr %arrayidx116.i.i, align 4
  %arrayidx120.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i271.i.i, i32 5
  %78 = ptrtoint ptr %arrayidx120.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.85, ptr %arrayidx120.i.i, align 4
  br label %if.end122.i.i

if.end122.i.i:                                    ; preds = %if.then113.i.i, %if.end95.i.i.if.end122.i.i_crit_edge
  %i.0.i.i = phi i32 [ 6, %if.then113.i.i ], [ 4, %if.end95.i.i.if.end122.i.i_crit_edge ]
  br i1 %tobool81.not.i.i, label %if.end122.i.i.if.end166.i.i_crit_edge, label %if.then124.i.i

if.end122.i.i.if.end166.i.i_crit_edge:            ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166.i.i

if.then124.i.i:                                   ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %supplies91.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %supplies91.i.i, align 4
  %inc126.i.i = or i32 %i.0.i.i, 1
  %arrayidx127.i.i = getelementptr %struct.regulator_bulk_data, ptr %80, i32 %i.0.i.i
  %81 = ptrtoint ptr %arrayidx127.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.86, ptr %arrayidx127.i.i, align 4
  %82 = load ptr, ptr %supplies91.i.i, align 4
  %arrayidx131.i.i = getelementptr %struct.regulator_bulk_data, ptr %82, i32 %inc126.i.i
  %83 = ptrtoint ptr %arrayidx131.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.87, ptr %arrayidx131.i.i, align 4
  br label %if.end166.i.i

if.else135.i.i:                                   ; preds = %if.else73.i.i
  %call136.i.i = call i32 @of_device_is_compatible(ptr noundef %48, ptr noundef nonnull @.str.67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i.i)
  %tobool137.not.i.i = icmp eq i32 %call136.i.i, 0
  br i1 %tobool137.not.i.i, label %if.else135.i.i.if.end166.i.i_crit_edge, label %if.then138.i.i

if.else135.i.i.if.end166.i.i_crit_edge:           ; preds = %if.else135.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166.i.i

if.then138.i.i:                                   ; preds = %if.else135.i.i
  %num_supplies139.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1, i32 1
  %84 = ptrtoint ptr %num_supplies139.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 5, ptr %num_supplies139.i.i, align 4
  %call5.i.i272.i.i = call noalias ptr @devm_kmalloc(ptr noundef %46, i32 noundef 60, i32 noundef 3520) #10
  %supplies142.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1
  %85 = ptrtoint ptr %supplies142.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call5.i.i272.i.i, ptr %supplies142.i.i, align 4
  %tobool144.not.i.i = icmp eq ptr %call5.i.i272.i.i, null
  br i1 %tobool144.not.i.i, label %if.then138.i.i.cleanup_crit_edge, label %if.end146.i.i

if.then138.i.i.cleanup_crit_edge:                 ; preds = %if.then138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end146.i.i:                                    ; preds = %if.then138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %call5.i.i272.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.88, ptr %call5.i.i272.i.i, align 4
  %arrayidx151.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i272.i.i, i32 1
  %87 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.89, ptr %arrayidx151.i.i, align 4
  %arrayidx154.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i272.i.i, i32 2
  %88 = ptrtoint ptr %arrayidx154.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.82, ptr %arrayidx154.i.i, align 4
  %arrayidx157.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i272.i.i, i32 3
  %89 = ptrtoint ptr %arrayidx157.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.83, ptr %arrayidx157.i.i, align 4
  %arrayidx160.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i272.i.i, i32 4
  %90 = ptrtoint ptr %arrayidx160.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.90, ptr %arrayidx160.i.i, align 4
  br label %if.end166.i.i

if.end166.i.i:                                    ; preds = %if.end146.i.i, %if.else135.i.i.if.end166.i.i_crit_edge, %if.then124.i.i, %if.end122.i.i.if.end166.i.i_crit_edge, %if.end56.i.i, %if.end32.i.i, %if.end.i.i
  %91 = ptrtoint ptr %of_node.i170.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %of_node.i170.i, align 8
  %supplies168.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1
  %93 = ptrtoint ptr %supplies168.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %supplies168.i.i, align 4
  %num_supplies169.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 1, i32 1
  %95 = ptrtoint ptr %num_supplies169.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_supplies169.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %property.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp7.not.i.i.i = icmp eq i32 %96, 0
  %97 = call ptr @memset(ptr %property.i.i.i, i32 255, i32 32)
  br i1 %cmp7.not.i.i.i, label %of_regulator_bulk_available.exit.thread.i.i, label %for.body.i.preheader.i.i

for.body.i.preheader.i.i:                         ; preds = %if.end166.i.i
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %94, align 4
  %call.i284.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %property.i.i.i, i32 noundef 32, ptr noundef nonnull @.str.93, ptr noundef %99) #10
  %call2.i285.i.i = call ptr @of_find_property(ptr noundef %92, ptr noundef nonnull %property.i.i.i, ptr noundef null) #10
  %cmp3.i286.i.i = icmp eq ptr %call2.i285.i.i, null
  br i1 %cmp3.i286.i.i, label %do.end.critedge.i.i, label %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge

for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.cond.i.i.i

of_regulator_bulk_available.exit.thread.i.i:      ; preds = %if.end166.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %property.i.i.i) #10
  br label %if.then171.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge
  %i.08.i287.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw i32 %i.08.i287.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %96)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %96
  br i1 %exitcond.not.i.i.i, label %of_regulator_bulk_available.exit.i.thread.i, label %for.body.i.i.i

of_regulator_bulk_available.exit.i.thread.i:      ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %property.i.i.i) #10
  br label %if.then171.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.regulator_bulk_data, ptr %94, i32 %inc.i.i.i
  %100 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i175.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %property.i.i.i, i32 noundef 32, ptr noundef nonnull @.str.93, ptr noundef %101) #10
  %call2.i.i.i = call ptr @of_find_property(ptr noundef %92, ptr noundef nonnull %property.i.i.i, ptr noundef null) #10
  %cmp3.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %cmp3.i.i.i, label %of_regulator_bulk_available.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i

of_regulator_bulk_available.exit.i.i:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %96)
  %cmp.i.le.i.i = icmp ult i32 %inc.i.i.i, %96
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %property.i.i.i) #10
  br i1 %cmp.i.le.i.i, label %of_regulator_bulk_available.exit.i.i.do.end.i.i_crit_edge, label %of_regulator_bulk_available.exit.i.i.if.then171.i.i_crit_edge

of_regulator_bulk_available.exit.i.i.if.then171.i.i_crit_edge: ; preds = %of_regulator_bulk_available.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then171.i.i

of_regulator_bulk_available.exit.i.i.do.end.i.i_crit_edge: ; preds = %of_regulator_bulk_available.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then171.i.i:                                   ; preds = %of_regulator_bulk_available.exit.i.i.if.then171.i.i_crit_edge, %of_regulator_bulk_available.exit.i.thread.i, %of_regulator_bulk_available.exit.thread.i.i
  %102 = ptrtoint ptr %num_supplies169.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_supplies169.i.i, align 4
  %104 = ptrtoint ptr %supplies168.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %supplies168.i.i, align 4
  %call174.i.i = call i32 @devm_regulator_bulk_get(ptr noundef %46, i32 noundef %103, ptr noundef %105) #10
  br label %tegra_pcie_get_regulators.exit.i

do.end.critedge.i.i:                              ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %property.i.i.i) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.critedge.i.i, %of_regulator_bulk_available.exit.i.i.do.end.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.91) #13
  %106 = ptrtoint ptr %supplies168.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %supplies168.i.i, align 4
  call void @devm_kfree(ptr noundef %46, ptr noundef %107) #10
  %108 = ptrtoint ptr %num_supplies169.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %num_supplies169.i.i, align 4
  %109 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %private.i, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 27
  %111 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %of_node.i.i.i, align 8
  %call.i275.i.i = call i32 @of_device_is_compatible(ptr noundef %112, ptr noundef nonnull @.str.57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i275.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %do.end.i.i.if.end6.i.thread.i.i_crit_edge

do.end.i.i.if.end6.i.thread.i.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.thread.i.i

if.else.i.i.i:                                    ; preds = %do.end.i.i
  %call2.i276.i.i = call i32 @of_device_is_compatible(ptr noundef %112, ptr noundef nonnull @.str.67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i276.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i276.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end6.i.i.i, label %if.else.i.i.i.if.end6.i.thread.i.i_crit_edge

if.else.i.i.i.if.end6.i.thread.i.i_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.thread.i.i

if.end6.i.thread.i.i:                             ; preds = %if.else.i.i.i.if.end6.i.thread.i.i_crit_edge, %do.end.i.i.if.end6.i.thread.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 3, %do.end.i.i.if.end6.i.thread.i.i_crit_edge ], [ 2, %if.else.i.i.i.if.end6.i.thread.i.i_crit_edge ]
  %113 = ptrtoint ptr %num_supplies169.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %.sink.i.i.i, ptr %num_supplies169.i.i, align 4
  br label %if.end9.i.i.i

if.end6.i.i.i:                                    ; preds = %if.else.i.i.i
  %114 = ptrtoint ptr %num_supplies169.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr.i.i = load i32, ptr %num_supplies169.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp.i277.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %cmp.i277.i.i, label %do.end.i.i.i, label %if.end6.i.i.i.if.end9.i.i.i_crit_edge

if.end6.i.i.i.if.end9.i.i.i_crit_edge:            ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i.i

do.end.i.i.i:                                     ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.94, ptr noundef %112) #13
  br label %cleanup

if.end9.i.i.i:                                    ; preds = %if.end6.i.i.i.if.end9.i.i.i_crit_edge, %if.end6.i.thread.i.i
  %115 = phi i32 [ %.sink.i.i.i, %if.end6.i.thread.i.i ], [ %.pr.i.i, %if.end6.i.i.i.if.end9.i.i.i_crit_edge ]
  %116 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %115, i32 12) #10
  %117 = extractvalue { i32, i1 } %116, 1
  br i1 %117, label %devm_kcalloc.exit.thread.i.i.i, label %devm_kcalloc.exit.i.i.i, !prof !507

devm_kcalloc.exit.thread.i.i.i:                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %supplies168.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %supplies168.i.i, align 4
  br label %cleanup

devm_kcalloc.exit.i.i.i:                          ; preds = %if.end9.i.i.i
  %119 = extractvalue { i32, i1 } %116, 0
  %call5.i.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %110, i32 noundef %119, i32 noundef 3520) #10
  %120 = ptrtoint ptr %supplies168.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call5.i.i.i.i.i, ptr %supplies168.i.i, align 4
  %tobool13.not.i.i.i = icmp eq ptr %call5.i.i.i.i.i, null
  br i1 %tobool13.not.i.i.i, label %devm_kcalloc.exit.i.i.i.cleanup_crit_edge, label %if.end15.i.i.i

devm_kcalloc.exit.i.i.i.cleanup_crit_edge:        ; preds = %devm_kcalloc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.i.i.i:                                   ; preds = %devm_kcalloc.exit.i.i.i
  %121 = ptrtoint ptr %call5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.96, ptr %call5.i.i.i.i.i, align 4
  %arrayidx18.i.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i.i.i, i32 1
  %122 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.97, ptr %arrayidx18.i.i.i, align 4
  %123 = ptrtoint ptr %num_supplies169.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_supplies169.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp21.i.i.i = icmp ugt i32 %124, 2
  br i1 %cmp21.i.i.i, label %if.then22.i.i.i, label %if.end15.i.i.i.if.end26.i.i.i_crit_edge

if.end15.i.i.i.if.end26.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i.i

if.then22.i.i.i:                                  ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i.i.i, i32 2
  %125 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @.str.98, ptr %arrayidx24.i.i.i, align 4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.then22.i.i.i, %if.end15.i.i.i.if.end26.i.i.i_crit_edge
  %call29.i.i.i = call i32 @devm_regulator_bulk_get(ptr noundef %110, i32 noundef %124, ptr noundef nonnull %call5.i.i.i.i.i) #10
  br label %tegra_pcie_get_regulators.exit.i

tegra_pcie_get_regulators.exit.i:                 ; preds = %if.end26.i.i.i, %if.then171.i.i
  %retval.1.i.i = phi i32 [ %call174.i.i, %if.then171.i.i ], [ %call29.i.i.i, %if.end26.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i.i)
  %cmp90.i = icmp slt i32 %retval.1.i.i, 0
  br i1 %cmp90.i, label %tegra_pcie_get_regulators.exit.i.cleanup_crit_edge, label %tegra_pcie_get_regulators.exit.i.if.end7_crit_edge

tegra_pcie_get_regulators.exit.i.if.end7_crit_edge: ; preds = %tegra_pcie_get_regulators.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

tegra_pcie_get_regulators.exit.i.cleanup_crit_edge: ; preds = %tegra_pcie_get_regulators.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tegra_pcie_parse_dt.exit.thread134:               ; preds = %if.end54.i.tegra_pcie_parse_dt.exit.thread134_crit_edge, %do.end41.i, %if.end28.i.tegra_pcie_parse_dt.exit.thread134_crit_edge, %do.end23.i, %do.end17.i, %do.end10.i, %do.end.i
  %err.0.ph.i.ph = phi i32 [ %call3.i, %do.end.i ], [ -22, %do.end10.i ], [ %call.i.i.i, %do.end17.i ], [ -22, %do.end23.i ], [ %call36.i, %do.end41.i ], [ -12, %if.end28.i.tegra_pcie_parse_dt.exit.thread134_crit_edge ], [ -12, %if.end54.i.tegra_pcie_parse_dt.exit.thread134_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @of_node_put(ptr noundef nonnull %port.0240.i) #10
  br label %cleanup

tegra_pcie_parse_dt.exit:                         ; preds = %do.end70.i, %if.end42.i.tegra_pcie_parse_dt.exit_crit_edge
  %err.0.ph.i.in = phi ptr [ %29, %do.end70.i ], [ %call48.i, %if.end42.i.tegra_pcie_parse_dt.exit_crit_edge ]
  %err.0.ph.i = ptrtoint ptr %err.0.ph.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @of_node_put(ptr noundef nonnull %port.0240.i) #10
  %cmp = icmp slt ptr %err.0.ph.i.in, null
  br i1 %cmp, label %tegra_pcie_parse_dt.exit.cleanup_crit_edge, label %tegra_pcie_parse_dt.exit.if.end7_crit_edge

tegra_pcie_parse_dt.exit.if.end7_crit_edge:       ; preds = %tegra_pcie_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

tegra_pcie_parse_dt.exit.cleanup_crit_edge:       ; preds = %tegra_pcie_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %tegra_pcie_parse_dt.exit.if.end7_crit_edge, %tegra_pcie_get_regulators.exit.i.if.end7_crit_edge
  %126 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %private.i, align 4
  %add.ptr.i = getelementptr i8, ptr %127, i32 -16
  %128 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %soc, align 4
  %call.i.i80 = call ptr @devm_clk_get(ptr noundef %127, ptr noundef nonnull @.str.115) #10
  %pex_clk.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1
  %130 = ptrtoint ptr %pex_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i.i80, ptr %pex_clk.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end7.tegra_pcie_clocks_get.exit.i_crit_edge, label %if.end.i.i81

if.end7.tegra_pcie_clocks_get.exit.i_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_clocks_get.exit.i

if.end.i.i81:                                     ; preds = %if.end7
  %call7.i.i = call ptr @devm_clk_get(ptr noundef %127, ptr noundef nonnull @.str.108) #10
  %afi_clk.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %131 = ptrtoint ptr %afi_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call7.i.i, ptr %afi_clk.i.i, align 4
  %cmp.i47.i.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i.i, label %if.end.i.i81.tegra_pcie_clocks_get.exit.i_crit_edge, label %if.end13.i.i

if.end.i.i81.tegra_pcie_clocks_get.exit.i_crit_edge: ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_clocks_get.exit.i

if.end13.i.i:                                     ; preds = %if.end.i.i81
  %call14.i.i = call ptr @devm_clk_get(ptr noundef %127, ptr noundef nonnull @.str.116) #10
  %pll_e.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 2
  %132 = ptrtoint ptr %pll_e.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call14.i.i, ptr %pll_e.i.i, align 4
  %cmp.i48.i.i = icmp ugt ptr %call14.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.i.i, label %if.end13.i.i.tegra_pcie_clocks_get.exit.i_crit_edge, label %if.end20.i.i

if.end13.i.i.tegra_pcie_clocks_get.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_clocks_get.exit.i

if.end20.i.i:                                     ; preds = %if.end13.i.i
  %has_cml_clk.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %129, i32 0, i32 12
  %133 = ptrtoint ptr %has_cml_clk.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %has_cml_clk.i.i, align 1, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i.i82 = icmp eq i8 %134, 0
  br i1 %tobool.not.i.i82, label %if.end20.i.i.if.end.i86_crit_edge, label %if.then21.i.i

if.end20.i.i.if.end.i86_crit_edge:                ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i86

if.then21.i.i:                                    ; preds = %if.end20.i.i
  %call22.i.i = call ptr @devm_clk_get(ptr noundef %127, ptr noundef nonnull @.str.117) #10
  %cml_clk.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 3
  %135 = ptrtoint ptr %cml_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call22.i.i, ptr %cml_clk.i.i, align 4
  %cmp.i49.i.i = icmp ugt ptr %call22.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49.i.i, label %if.then21.i.i.tegra_pcie_clocks_get.exit.i_crit_edge, label %if.then21.i.i.if.end.i86_crit_edge

if.then21.i.i.if.end.i86_crit_edge:               ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i86

if.then21.i.i.tegra_pcie_clocks_get.exit.i_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_clocks_get.exit.i

tegra_pcie_clocks_get.exit.i:                     ; preds = %if.then21.i.i.tegra_pcie_clocks_get.exit.i_crit_edge, %if.end13.i.i.tegra_pcie_clocks_get.exit.i_crit_edge, %if.end.i.i81.tegra_pcie_clocks_get.exit.i_crit_edge, %if.end7.tegra_pcie_clocks_get.exit.i_crit_edge
  %retval.0.i.in.i = phi ptr [ %call22.i.i, %if.then21.i.i.tegra_pcie_clocks_get.exit.i_crit_edge ], [ %call.i.i80, %if.end7.tegra_pcie_clocks_get.exit.i_crit_edge ], [ %call7.i.i, %if.end.i.i81.tegra_pcie_clocks_get.exit.i_crit_edge ], [ %call14.i.i, %if.end13.i.i.tegra_pcie_clocks_get.exit.i_crit_edge ]
  %tobool.not.i83 = icmp eq ptr %retval.0.i.in.i, null
  br i1 %tobool.not.i83, label %tegra_pcie_clocks_get.exit.i.if.end.i86_crit_edge, label %do.end.i84

tegra_pcie_clocks_get.exit.i.if.end.i86_crit_edge: ; preds = %tegra_pcie_clocks_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i86

do.end.i84:                                       ; preds = %tegra_pcie_clocks_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %retval.0.i.i = ptrtoint ptr %retval.0.i.in.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.99, i32 noundef %retval.0.i.i) #13
  br label %tegra_pcie_get_resources.exit

if.end.i86:                                       ; preds = %tegra_pcie_clocks_get.exit.i.if.end.i86_crit_edge, %if.then21.i.i.if.end.i86_crit_edge, %if.end20.i.i.if.end.i86_crit_edge
  %136 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %private.i, align 4
  %call.i.i.i85 = call ptr @__devm_reset_control_get(ptr noundef %137, ptr noundef nonnull @.str.115, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %pex_rst.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 6
  %138 = ptrtoint ptr %pex_rst.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call.i.i.i85, ptr %pex_rst.i.i, align 4
  %cmp.i.i111.i = icmp ugt ptr %call.i.i.i85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i111.i, label %if.end.i86.tegra_pcie_resets_get.exit.i_crit_edge, label %if.end.i113.i

if.end.i86.tegra_pcie_resets_get.exit.i_crit_edge: ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_resets_get.exit.i

if.end.i113.i:                                    ; preds = %if.end.i86
  %call.i31.i.i = call ptr @__devm_reset_control_get(ptr noundef %137, ptr noundef nonnull @.str.108, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %afi_rst.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 7
  %139 = ptrtoint ptr %afi_rst.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i31.i.i, ptr %afi_rst.i.i, align 4
  %cmp.i32.i.i = icmp ugt ptr %call.i31.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i.i, label %if.end.i113.i.tegra_pcie_resets_get.exit.i_crit_edge, label %if.end12.i.i

if.end.i113.i.tegra_pcie_resets_get.exit.i_crit_edge: ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_resets_get.exit.i

if.end12.i.i:                                     ; preds = %if.end.i113.i
  %call.i33.i.i = call ptr @__devm_reset_control_get(ptr noundef %137, ptr noundef nonnull @.str.118, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %pcie_xrst.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1
  %140 = ptrtoint ptr %pcie_xrst.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i33.i.i, ptr %pcie_xrst.i.i, align 4
  %cmp.i34.i.i = icmp ugt ptr %call.i33.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34.i.i, label %if.end12.i.i.tegra_pcie_resets_get.exit.i_crit_edge, label %if.end12.i.i.if.end9.i_crit_edge

if.end12.i.i.if.end9.i_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end12.i.i.tegra_pcie_resets_get.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_resets_get.exit.i

tegra_pcie_resets_get.exit.i:                     ; preds = %if.end12.i.i.tegra_pcie_resets_get.exit.i_crit_edge, %if.end.i113.i.tegra_pcie_resets_get.exit.i_crit_edge, %if.end.i86.tegra_pcie_resets_get.exit.i_crit_edge
  %retval.0.i115.in.i = phi ptr [ %call.i33.i.i, %if.end12.i.i.tegra_pcie_resets_get.exit.i_crit_edge ], [ %call.i.i.i85, %if.end.i86.tegra_pcie_resets_get.exit.i_crit_edge ], [ %call.i31.i.i, %if.end.i113.i.tegra_pcie_resets_get.exit.i_crit_edge ]
  %tobool4.not.i = icmp eq ptr %retval.0.i115.in.i, null
  br i1 %tobool4.not.i, label %tegra_pcie_resets_get.exit.i.if.end9.i_crit_edge, label %do.end8.i

tegra_pcie_resets_get.exit.i.if.end9.i_crit_edge: ; preds = %tegra_pcie_resets_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

do.end8.i:                                        ; preds = %tegra_pcie_resets_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %retval.0.i115.i = ptrtoint ptr %retval.0.i115.in.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.102, i32 noundef %retval.0.i115.i) #13
  br label %tegra_pcie_get_resources.exit

if.end9.i:                                        ; preds = %tegra_pcie_resets_get.exit.i.if.end9.i_crit_edge, %if.end12.i.i.if.end9.i_crit_edge
  %program_uphy.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %129, i32 0, i32 15
  %141 = ptrtoint ptr %program_uphy.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %program_uphy.i, align 2, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool10.not.i = icmp eq i8 %142, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end18.i100_crit_edge, label %if.then11.i

if.end9.i.if.end18.i100_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i100

if.then11.i:                                      ; preds = %if.end9.i
  %143 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %soc, align 4
  %has_gen2.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %144, i32 0, i32 13
  %145 = ptrtoint ptr %has_gen2.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %has_gen2.i.i, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i116.i = icmp eq i8 %146, 0
  br i1 %tobool.not.i116.i, label %if.then11.i.if.then.i119.i_crit_edge, label %lor.lhs.false.i.i88

if.then11.i.if.then.i119.i_crit_edge:             ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i119.i

lor.lhs.false.i.i88:                              ; preds = %if.then11.i
  %147 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %private.i, align 4
  %of_node.i.i87 = getelementptr inbounds %struct.device, ptr %148, i32 0, i32 27
  %149 = ptrtoint ptr %of_node.i.i87 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %of_node.i.i87, align 8
  %call.i117.i = call ptr @of_find_property(ptr noundef %150, ptr noundef nonnull @.str.119, ptr noundef null) #10
  %cmp.not.i.i = icmp eq ptr %call.i117.i, null
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i88.for.cond.i.i_crit_edge, label %lor.lhs.false.i.i88.if.then.i119.i_crit_edge

lor.lhs.false.i.i88.if.then.i119.i_crit_edge:     ; preds = %lor.lhs.false.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i119.i

lor.lhs.false.i.i88.for.cond.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i88
  br label %for.cond.i.i

if.then.i119.i:                                   ; preds = %lor.lhs.false.i.i88.if.then.i119.i_crit_edge, %if.then11.i.if.then.i119.i_crit_edge
  %151 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %private.i, align 4
  %call.i.i118.i = call ptr @devm_phy_optional_get(ptr noundef %152, ptr noundef nonnull @.str.120) #10
  %phy.i.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 1
  %153 = ptrtoint ptr %phy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i.i118.i, ptr %phy.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i118.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %tegra_pcie_phys_get.exit.i, label %if.end.i.i.i89

if.end.i.i.i89:                                   ; preds = %if.then.i119.i
  %call7.i.i.i = call i32 @phy_init(ptr noundef %call.i.i118.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %cmp.i.i120.i = icmp slt i32 %call7.i.i.i, 0
  br i1 %cmp.i.i120.i, label %do.end11.i.i.i, label %if.end12.i.i.i

do.end11.i.i.i:                                   ; preds = %if.end.i.i.i89
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.124, i32 noundef %call7.i.i.i) #13
  br label %do.end16.i

if.end12.i.i.i:                                   ; preds = %if.end.i.i.i89
  call void @__sanitizer_cov_trace_pc() #12
  %legacy_phy.i.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 0, i32 1
  %154 = ptrtoint ptr %legacy_phy.i.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %legacy_phy.i.i.i, align 4
  br label %if.end18.i100

for.cond.i.i:                                     ; preds = %tegra_pcie_port_get_phys.exit.i.i.for.cond.i.i_crit_edge, %lor.lhs.false.i.i88.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %tegra_pcie_port_get_phys.exit.i.i.for.cond.i.i_crit_edge ], [ %ports, %lor.lhs.false.i.i88.for.cond.i.i_crit_edge ]
  %155 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %.pn.i.i, %ports
  br i1 %cmp4.not.i.i, label %for.cond.i.i.if.end18.i100_crit_edge, label %for.body.i.i

for.cond.i.i.if.end18.i100_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i100

for.body.i.i:                                     ; preds = %for.cond.i.i
  %port.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %156 = ptrtoint ptr %port.0.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %port.0.i.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %lanes.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 48
  %160 = ptrtoint ptr %lanes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %lanes.i.i.i, align 4
  %162 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %161, i32 4) #10
  %163 = extractvalue { i32, i1 } %162, 1
  br i1 %163, label %devm_kcalloc.exit.thread.i.i.i90, label %devm_kcalloc.exit.i.i.i93, !prof !507

devm_kcalloc.exit.thread.i.i.i90:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %phys43.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 52
  %164 = ptrtoint ptr %phys43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %phys43.i.i.i, align 4
  br label %do.end16.i

devm_kcalloc.exit.i.i.i93:                        ; preds = %for.body.i.i
  %165 = extractvalue { i32, i1 } %162, 0
  %call5.i.i.i.i.i91 = call noalias ptr @devm_kmalloc(ptr noundef %159, i32 noundef %165, i32 noundef 3520) #10
  %phys.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 52
  %166 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call5.i.i.i.i.i91, ptr %phys.i.i.i, align 4
  %tobool.not.i.i.i92 = icmp eq ptr %call5.i.i.i.i.i91, null
  br i1 %tobool.not.i.i.i92, label %devm_kcalloc.exit.i.i.i93.do.end16.i_crit_edge, label %for.cond.preheader.i.i.i

devm_kcalloc.exit.i.i.i93.do.end16.i_crit_edge:   ; preds = %devm_kcalloc.exit.i.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

for.cond.preheader.i.i.i:                         ; preds = %devm_kcalloc.exit.i.i.i93
  %167 = ptrtoint ptr %lanes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %lanes.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp54.not.i.i.i = icmp eq i32 %168, 0
  br i1 %cmp54.not.i.i.i, label %for.cond.preheader.i.i.i.tegra_pcie_port_get_phys.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.tegra_pcie_port_get_phys.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_phys.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %np.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  br label %for.body.i.i.i94

for.body.i.i.i94:                                 ; preds = %if.end16.i.i.i.for.body.i.i.i94_crit_edge, %for.body.lr.ph.i.i.i
  %i.055.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i98, %if.end16.i.i.i.for.body.i.i.i94_crit_edge ]
  %169 = ptrtoint ptr %np.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %np.i.i.i, align 4
  %call.i.i.i.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.120, i32 noundef %i.055.i.i.i) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i94.do.end.i.i.i95_crit_edge, label %if.end.i.i.i.i

for.body.i.i.i94.do.end.i.i.i95_crit_edge:        ; preds = %for.body.i.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i95

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i94
  %call2.i.i.i.i = call ptr @devm_of_phy_get(ptr noundef %159, ptr noundef %170, ptr noundef nonnull %call.i.i.i.i) #10
  call void @kfree(ptr noundef nonnull %call.i.i.i.i) #10
  %cmp.i.i24.i.i = icmp eq ptr %call2.i.i.i.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp.i.i24.i.i, label %if.end.i.i.i.i.if.end9.i.i.i96_crit_edge, label %devm_of_phy_optional_get_index.exit.i.i.i

if.end.i.i.i.i.if.end9.i.i.i96_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i.i96

devm_of_phy_optional_get_index.exit.i.i.i:        ; preds = %if.end.i.i.i.i
  %cmp.i41.i.i.i = icmp ugt ptr %call2.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41.i.i.i, label %devm_of_phy_optional_get_index.exit.i.i.i.do.end.i.i.i95_crit_edge, label %devm_of_phy_optional_get_index.exit.i.i.i.if.end9.i.i.i96_crit_edge

devm_of_phy_optional_get_index.exit.i.i.i.if.end9.i.i.i96_crit_edge: ; preds = %devm_of_phy_optional_get_index.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i.i96

devm_of_phy_optional_get_index.exit.i.i.i.do.end.i.i.i95_crit_edge: ; preds = %devm_of_phy_optional_get_index.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i95

do.end.i.i.i95:                                   ; preds = %devm_of_phy_optional_get_index.exit.i.i.i.do.end.i.i.i95_crit_edge, %for.body.i.i.i94.do.end.i.i.i95_crit_edge
  %retval.0.i47.i.i.i = phi ptr [ %call2.i.i.i.i, %devm_of_phy_optional_get_index.exit.i.i.i.do.end.i.i.i95_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.body.i.i.i94.do.end.i.i.i95_crit_edge ]
  %171 = ptrtoint ptr %retval.0.i47.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.126, i32 noundef %i.055.i.i.i, i32 noundef %171) #13
  br label %tegra_pcie_port_get_phys.exit.i.i

if.end9.i.i.i96:                                  ; preds = %devm_of_phy_optional_get_index.exit.i.i.i.if.end9.i.i.i96_crit_edge, %if.end.i.i.i.i.if.end9.i.i.i96_crit_edge
  %retval.0.i51.i.i.i = phi ptr [ %call2.i.i.i.i, %devm_of_phy_optional_get_index.exit.i.i.i.if.end9.i.i.i96_crit_edge ], [ null, %if.end.i.i.i.i.if.end9.i.i.i96_crit_edge ]
  %call10.i.i.i = call i32 @phy_init(ptr noundef %retval.0.i51.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %cmp11.i.i.i = icmp slt i32 %call10.i.i.i, 0
  br i1 %cmp11.i.i.i, label %do.end15.i.i.i, label %if.end16.i.i.i

do.end15.i.i.i:                                   ; preds = %if.end9.i.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.129, i32 noundef %i.055.i.i.i, i32 noundef %call10.i.i.i) #13
  br label %do.end16.i

if.end16.i.i.i:                                   ; preds = %if.end9.i.i.i96
  %172 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %phys.i.i.i, align 4
  %arrayidx.i.i.i97 = getelementptr ptr, ptr %173, i32 %i.055.i.i.i
  %174 = ptrtoint ptr %arrayidx.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %retval.0.i51.i.i.i, ptr %arrayidx.i.i.i97, align 4
  %inc.i.i.i98 = add nuw i32 %i.055.i.i.i, 1
  %175 = ptrtoint ptr %lanes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %lanes.i.i.i, align 4
  %cmp.i25.i.i = icmp ult i32 %inc.i.i.i98, %176
  br i1 %cmp.i25.i.i, label %if.end16.i.i.i.for.body.i.i.i94_crit_edge, label %if.end16.i.i.i.tegra_pcie_port_get_phys.exit.i.i_crit_edge

if.end16.i.i.i.tegra_pcie_port_get_phys.exit.i.i_crit_edge: ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_phys.exit.i.i

if.end16.i.i.i.for.body.i.i.i94_crit_edge:        ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i94

tegra_pcie_port_get_phys.exit.i.i:                ; preds = %if.end16.i.i.i.tegra_pcie_port_get_phys.exit.i.i_crit_edge, %do.end.i.i.i95, %for.cond.preheader.i.i.i.tegra_pcie_port_get_phys.exit.i.i_crit_edge
  %retval.0.i26.i.i = phi i32 [ %171, %do.end.i.i.i95 ], [ 0, %for.cond.preheader.i.i.i.tegra_pcie_port_get_phys.exit.i.i_crit_edge ], [ 0, %if.end16.i.i.i.tegra_pcie_port_get_phys.exit.i.i_crit_edge ]
  %cmp6.i.i = icmp slt i32 %retval.0.i26.i.i, 0
  br i1 %cmp6.i.i, label %tegra_pcie_port_get_phys.exit.i.i.do.end16.i_crit_edge, label %tegra_pcie_port_get_phys.exit.i.i.for.cond.i.i_crit_edge

tegra_pcie_port_get_phys.exit.i.i.for.cond.i.i_crit_edge: ; preds = %tegra_pcie_port_get_phys.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

tegra_pcie_port_get_phys.exit.i.i.do.end16.i_crit_edge: ; preds = %tegra_pcie_port_get_phys.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

tegra_pcie_phys_get.exit.i:                       ; preds = %if.then.i119.i
  %177 = ptrtoint ptr %call.i.i118.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.121, i32 noundef %177) #13
  %cmp.i = icmp slt ptr %call.i.i118.i, null
  br i1 %cmp.i, label %tegra_pcie_phys_get.exit.i.do.end16.i_crit_edge, label %tegra_pcie_phys_get.exit.i.if.end18.i100_crit_edge

tegra_pcie_phys_get.exit.i.if.end18.i100_crit_edge: ; preds = %tegra_pcie_phys_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i100

tegra_pcie_phys_get.exit.i.do.end16.i_crit_edge:  ; preds = %tegra_pcie_phys_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

do.end16.i:                                       ; preds = %tegra_pcie_phys_get.exit.i.do.end16.i_crit_edge, %tegra_pcie_port_get_phys.exit.i.i.do.end16.i_crit_edge, %do.end15.i.i.i, %devm_kcalloc.exit.i.i.i93.do.end16.i_crit_edge, %devm_kcalloc.exit.thread.i.i.i90, %do.end11.i.i.i
  %retval.0.i122133.i = phi i32 [ %177, %tegra_pcie_phys_get.exit.i.do.end16.i_crit_edge ], [ %call10.i.i.i, %do.end15.i.i.i ], [ -12, %devm_kcalloc.exit.thread.i.i.i90 ], [ %call7.i.i.i, %do.end11.i.i.i ], [ %retval.0.i26.i.i, %tegra_pcie_port_get_phys.exit.i.i.do.end16.i_crit_edge ], [ -12, %devm_kcalloc.exit.i.i.i93.do.end16.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.105, i32 noundef %retval.0.i122133.i) #13
  br label %tegra_pcie_get_resources.exit

if.end18.i100:                                    ; preds = %tegra_pcie_phys_get.exit.i.if.end18.i100_crit_edge, %for.cond.i.i.if.end18.i100_crit_edge, %if.end12.i.i.i, %if.end9.i.if.end18.i100_crit_edge
  %call19.i = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.107) #10
  %pads.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %178 = ptrtoint ptr %pads.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call19.i, ptr %pads.i, align 4
  %cmp.i.i99 = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i99, label %if.then22.i, label %if.end25.i

if.then22.i:                                      ; preds = %if.end18.i100
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %call19.i to i32
  br label %phys_put.i

if.end25.i:                                       ; preds = %if.end18.i100
  %call26.i101 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.108) #10
  %afi.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %afi.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call26.i101, ptr %afi.i, align 4
  %cmp.i123.i = icmp ugt ptr %call26.i101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123.i, label %if.then29.i, label %if.end32.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %call26.i101 to i32
  br label %phys_put.i

if.end32.i:                                       ; preds = %if.end25.i
  %call33.i = call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i, i32 noundef 512, ptr noundef nonnull @.str.109) #10
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %if.end32.i.phys_put.i_crit_edge, label %if.end36.i

if.end32.i.phys_put.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_put.i

if.end36.i:                                       ; preds = %if.end32.i
  %cs.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %182 = call ptr @memcpy(ptr %cs.i, ptr %call33.i, i32 32)
  %183 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %cs.i, align 4
  %sub.i102 = add i32 %184, 4095
  %end.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  %185 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %sub.i102, ptr %end.i, align 4
  %call40.i = call ptr @devm_ioremap_resource(ptr noundef %127, ptr noundef %cs.i) #10
  %cfg.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %186 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call40.i, ptr %cfg.i, align 4
  %cmp.i124.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124.i, label %if.then43.i, label %if.end46.i

if.then43.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %call40.i to i32
  br label %phys_put.i

if.end46.i:                                       ; preds = %if.end36.i
  %call47.i = call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.110) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %if.end46.i.phys_put.i_crit_edge, label %if.end50.i

if.end46.i.phys_put.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_put.i

if.end50.i:                                       ; preds = %if.end46.i
  %irq.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %188 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %call47.i, ptr %irq.i, align 4
  %call.i125.i = call i32 @request_threaded_irq(i32 noundef %call47.i, ptr noundef nonnull @tegra_pcie_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.111, ptr noundef %private.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i)
  %tobool53.not.i = icmp eq i32 %call.i125.i, 0
  br i1 %tobool53.not.i, label %if.end50.i.if.end11_crit_edge, label %do.end57.i

if.end50.i.if.end11_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end57.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.113, i32 noundef %call.i125.i) #13
  br label %phys_put.i

phys_put.i:                                       ; preds = %do.end57.i, %if.end46.i.phys_put.i_crit_edge, %if.then43.i, %if.end32.i.phys_put.i_crit_edge, %if.then29.i, %if.then22.i
  %err.0.i = phi i32 [ %179, %if.then22.i ], [ %181, %if.then29.i ], [ %187, %if.then43.i ], [ %call47.i, %if.end46.i.phys_put.i_crit_edge ], [ %call.i125.i, %do.end57.i ], [ -99, %if.end32.i.phys_put.i_crit_edge ]
  %189 = ptrtoint ptr %program_uphy.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %program_uphy.i, align 2, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool60.not.i = icmp eq i8 %190, 0
  br i1 %tobool60.not.i, label %phys_put.i.tegra_pcie_get_resources.exit_crit_edge, label %if.then61.i

phys_put.i.tegra_pcie_get_resources.exit_crit_edge: ; preds = %phys_put.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_get_resources.exit

if.then61.i:                                      ; preds = %phys_put.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tegra_pcie_phys_put(ptr noundef %private.i) #10
  br label %tegra_pcie_get_resources.exit

tegra_pcie_get_resources.exit:                    ; preds = %if.then61.i, %phys_put.i.tegra_pcie_get_resources.exit_crit_edge, %do.end16.i, %do.end8.i, %do.end.i84
  %retval.0.i103 = phi i32 [ %retval.0.i.i, %do.end.i84 ], [ %retval.0.i115.i, %do.end8.i ], [ %retval.0.i122133.i, %do.end16.i ], [ %err.0.i, %if.then61.i ], [ %err.0.i, %phys_put.i.tegra_pcie_get_resources.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i103)
  %cmp9 = icmp slt i32 %retval.0.i103, 0
  br i1 %cmp9, label %do.end, label %tegra_pcie_get_resources.exit.if.end11_crit_edge

tegra_pcie_get_resources.exit.if.end11_crit_edge: ; preds = %tegra_pcie_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end:                                           ; preds = %tegra_pcie_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i103) #13
  br label %cleanup

if.end11:                                         ; preds = %tegra_pcie_get_resources.exit.if.end11_crit_edge, %if.end50.i.if.end11_crit_edge
  %191 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %private.i, align 4
  %msi1.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  %map_lock.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 2
  call void @__mutex_init(ptr noundef %map_lock.i, ptr noundef nonnull @.str.158, ptr noundef nonnull @tegra_pcie_msi_setup.__key) #10
  %mask_lock.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9, i32 2
  call void @__raw_spin_lock_init(ptr noundef %mask_lock.i, ptr noundef nonnull @.str.160, ptr noundef nonnull @tegra_pcie_msi_setup.__key.159, i16 noundef signext 3) #10
  %193 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %private.i, align 4
  %call1.i.i = call ptr @dev_fwnode(ptr noundef %194) #10
  %call.i.i.i104 = call ptr @__irq_domain_add(ptr noundef %call1.i.i, i32 noundef 256, i32 noundef 256, i32 noundef 0, ptr noundef nonnull @tegra_msi_domain_ops, ptr noundef %msi1.i) #10
  %tobool.not.i.i105 = icmp eq ptr %call.i.i.i104, null
  br i1 %tobool.not.i.i105, label %do.end.i.i106, label %if.end.i.i108

do.end.i.i106:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %private.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %196, ptr noundef nonnull @.str.167) #13
  br label %do.end17

if.end.i.i108:                                    ; preds = %if.end11
  call void @irq_domain_update_bus_token(ptr noundef nonnull %call.i.i.i104, i32 noundef 5) #10
  %call4.i.i = call ptr @pci_msi_create_irq_domain(ptr noundef %call1.i.i, ptr noundef nonnull @tegra_msi_info, ptr noundef nonnull %call.i.i.i104) #10
  %domain.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 7
  %197 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call4.i.i, ptr %domain.i.i, align 4
  %tobool6.not.i.i107 = icmp eq ptr %call4.i.i, null
  br i1 %tobool6.not.i.i107, label %do.end10.i.i, label %if.end.i111

do.end10.i.i:                                     ; preds = %if.end.i.i108
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %private.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.170) #13
  call void @irq_domain_remove(ptr noundef nonnull %call.i.i.i104) #10
  br label %do.end17

if.end.i111:                                      ; preds = %if.end.i.i108
  %add.ptr.i109 = getelementptr i8, ptr %192, i32 -16
  %call8.i = call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i109, ptr noundef nonnull @.str.161) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i110 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i110, label %if.end.i111.free_irq_domain.i_crit_edge, label %if.end10.i

if.end.i111.free_irq_domain.i_crit_edge:          ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_irq_domain.i

if.end10.i:                                       ; preds = %if.end.i111
  %irq.i112 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 1
  %200 = ptrtoint ptr %irq.i112 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %call8.i, ptr %irq.i112, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %call8.i, ptr noundef nonnull @tegra_pcie_msi_irq, ptr noundef %private.i) #10
  %call12.i = call i32 @dma_set_coherent_mask(ptr noundef %192, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i113 = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i113, label %do.end17.i114, label %if.end18.i116

do.end17.i114:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.162, i32 noundef %call12.i) #13
  br label %free_irq.i

if.end18.i116:                                    ; preds = %if.end10.i
  %phys.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1
  %call19.i115 = call ptr @dma_alloc_attrs(ptr noundef %192, i32 noundef 4096, ptr noundef %phys.i, i32 noundef 3264, i32 noundef 16) #10
  %virt.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10
  %201 = ptrtoint ptr %virt.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call19.i115, ptr %virt.i, align 4
  %tobool21.not.i = icmp eq ptr %call19.i115, null
  br i1 %tobool21.not.i, label %do.end25.i, label %if.end18

do.end25.i:                                       ; preds = %if.end18.i116
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.165) #13
  br label %free_irq.i

free_irq.i:                                       ; preds = %do.end25.i, %do.end17.i114
  %err.0.i117 = phi i32 [ %call12.i, %do.end17.i114 ], [ -12, %do.end25.i ]
  %202 = ptrtoint ptr %irq.i112 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %irq.i112, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %203, ptr noundef null, ptr noundef null) #10
  br label %free_irq_domain.i

free_irq_domain.i:                                ; preds = %free_irq.i, %if.end.i111.free_irq_domain.i_crit_edge
  %err.1.i = phi i32 [ %call8.i, %if.end.i111.free_irq_domain.i_crit_edge ], [ %err.0.i117, %free_irq.i ]
  %204 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %domain.i.i, align 4
  %parent1.i.i = getelementptr inbounds %struct.irq_domain, ptr %205, i32 0, i32 9
  %206 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %parent1.i.i, align 4
  call void @irq_domain_remove(ptr noundef %205) #10
  call void @irq_domain_remove(ptr noundef %207) #10
  br label %do.end17

do.end17:                                         ; preds = %free_irq_domain.i, %do.end10.i.i, %do.end.i.i106
  %retval.0.i118.ph = phi i32 [ -12, %do.end.i.i106 ], [ -12, %do.end10.i.i ], [ %err.1.i, %free_irq_domain.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i118.ph) #13
  br label %put_resources

if.end18:                                         ; preds = %if.end18.i116
  %208 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %private.i, align 4
  call void @pm_runtime_enable(ptr noundef %209) #10
  %210 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %private.i, align 4
  %call.i119 = call i32 @__pm_runtime_resume(ptr noundef %211, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp22 = icmp slt i32 %call.i119, 0
  br i1 %cmp22, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call.i119) #13
  br label %pm_runtime_put

if.end27:                                         ; preds = %if.end18
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %212 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @tegra_pcie_ops, ptr %ops, align 4
  %map_irq = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 10
  %213 = ptrtoint ptr %map_irq to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @tegra_pcie_map_irq, ptr %map_irq, align 4
  %call28 = call i32 @pci_host_probe(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end34

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call28) #13
  br label %pm_runtime_put

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call.i120 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.120, ptr noundef null) #10
  %debugfs.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 10, i32 1, i32 4, i32 3
  %214 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call.i120, ptr %debugfs.i, align 4
  %call2.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.176, i16 noundef zeroext -32476, ptr noundef %call.i120, ptr noundef %private.i, ptr noundef nonnull @tegra_pcie_ports_fops) #10
  br label %cleanup

pm_runtime_put:                                   ; preds = %do.end33, %do.end26
  %err.0 = phi i32 [ %call.i119, %do.end26 ], [ %call28, %do.end33 ]
  %215 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %private.i, align 4
  %call.i121 = call i32 @__pm_runtime_idle(ptr noundef %216, i32 noundef 4) #10
  %217 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %private.i, align 4
  call void @__pm_runtime_disable(ptr noundef %218, i1 noundef zeroext true) #10
  call fastcc void @tegra_pcie_msi_teardown(ptr noundef %private.i)
  br label %put_resources

put_resources:                                    ; preds = %pm_runtime_put, %do.end17
  %err.1 = phi i32 [ %retval.0.i118.ph, %do.end17 ], [ %err.0, %pm_runtime_put ]
  %219 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %soc, align 4
  %irq.i122 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %221 = ptrtoint ptr %irq.i122 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %irq.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp.i123 = icmp sgt i32 %222, 0
  br i1 %cmp.i123, label %if.then.i, label %put_resources.if.end.i127_crit_edge

put_resources.if.end.i127_crit_edge:              ; preds = %put_resources
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i127

if.then.i:                                        ; preds = %put_resources
  call void @__sanitizer_cov_trace_pc() #12
  %call.i124 = call ptr @free_irq(i32 noundef %222, ptr noundef %private.i) #10
  br label %if.end.i127

if.end.i127:                                      ; preds = %if.then.i, %put_resources.if.end.i127_crit_edge
  %program_uphy.i125 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %220, i32 0, i32 15
  %223 = ptrtoint ptr %program_uphy.i125 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %program_uphy.i125, align 2, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i126 = icmp eq i8 %224, 0
  br i1 %tobool.not.i126, label %if.end.i127.cleanup_crit_edge, label %if.then3.i

if.end.i127.cleanup_crit_edge:                    ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tegra_pcie_phys_put(ptr noundef %private.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i127.cleanup_crit_edge, %if.end34, %do.end, %tegra_pcie_parse_dt.exit.cleanup_crit_edge, %tegra_pcie_parse_dt.exit.thread134, %tegra_pcie_get_regulators.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.i.i.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i.i.i, %do.end.i.i.i, %if.then138.i.i.cleanup_crit_edge, %if.then76.i.i.cleanup_crit_edge, %if.then48.i.i.cleanup_crit_edge, %if.then23.i.i.cleanup_crit_edge, %if.then.i173.i.cleanup_crit_edge, %do.end87.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i103, %do.end ], [ 0, %if.end34 ], [ -12, %entry.cleanup_crit_edge ], [ %err.0.ph.i, %tegra_pcie_parse_dt.exit.cleanup_crit_edge ], [ %err.0.ph.i.ph, %tegra_pcie_parse_dt.exit.thread134 ], [ %err.1, %if.end.i127.cleanup_crit_edge ], [ %err.1, %if.then3.i ], [ -22, %do.end87.i ], [ %retval.1.i.i, %tegra_pcie_get_regulators.exit.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i.i.i ], [ -12, %devm_kcalloc.exit.i.i.i.cleanup_crit_edge ], [ -19, %do.end.i.i.i ], [ -12, %if.then76.i.i.cleanup_crit_edge ], [ -12, %if.then138.i.i.cleanup_crit_edge ], [ -12, %if.then48.i.i.cleanup_crit_edge ], [ -12, %if.then23.i.i.cleanup_crit_edge ], [ -12, %if.then.i173.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #10
  %4 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %debugfs.i, align 4
  %bus = getelementptr i8, ptr %1, i32 -96
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %6) #10
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %8) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 4) #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %12, i1 noundef zeroext true) #10
  tail call fastcc void @tegra_pcie_msi_teardown(ptr noundef %1)
  %soc1.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc1.i, align 4
  %irq.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp sgt i32 %16, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i30 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %1) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %program_uphy.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %14, i32 0, i32 15
  %17 = ptrtoint ptr %program_uphy.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %program_uphy.i, align 2, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i.tegra_pcie_put_resources.exit_crit_edge, label %if.then3.i

if.end.i.tegra_pcie_put_resources.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_put_resources.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tegra_pcie_phys_put(ptr noundef %1) #10
  br label %tegra_pcie_put_resources.exit

tegra_pcie_put_resources.exit:                    ; preds = %if.then3.i, %if.end.i.tegra_pcie_put_resources.exit_crit_edge
  %ports = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ports, align 4
  %cmp.not31 = icmp eq ptr %20, %ports
  br i1 %cmp.not31, label %tegra_pcie_put_resources.exit.for.end_crit_edge, label %tegra_pcie_put_resources.exit.for.body_crit_edge

tegra_pcie_put_resources.exit.for.body_crit_edge: ; preds = %tegra_pcie_put_resources.exit
  br label %for.body

tegra_pcie_put_resources.exit.for.end_crit_edge:  ; preds = %tegra_pcie_put_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %tegra_pcie_port_free.exit.for.body_crit_edge, %tegra_pcie_put_resources.exit.for.body_crit_edge
  %.pn.in32 = phi ptr [ %.pn, %tegra_pcie_port_free.exit.for.body_crit_edge ], [ %20, %tegra_pcie_put_resources.exit.for.body_crit_edge ]
  %port.0 = getelementptr i8, ptr %.pn.in32, i32 -8
  %21 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn.in32, align 4
  %22 = ptrtoint ptr %port.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port.0, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %base.i = getelementptr i8, ptr %.pn.in32, i32 40
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  tail call void @devm_iounmap(ptr noundef %25, ptr noundef %27) #10
  %regs.i = getelementptr i8, ptr %.pn.in32, i32 8
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regs.i, align 4
  %end.i.i = getelementptr i8, ptr %.pn.in32, i32 12
  %30 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %29
  %add.i.i = add i32 %sub.i.i, %31
  tail call void @__devm_release_region(ptr noundef %25, ptr noundef nonnull @iomem_resource, i32 noundef %29, i32 noundef %add.i.i) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in32) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.tegra_pcie_port_free.exit_crit_edge

for.body.tegra_pcie_port_free.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_free.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr i8, ptr %.pn.in32, i32 4
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in32, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %tegra_pcie_port_free.exit

tegra_pcie_port_free.exit:                        ; preds = %if.end.i.i.i, %for.body.tegra_pcie_port_free.exit_crit_edge
  %38 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in32, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in32, i32 4
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @devm_kfree(ptr noundef %25, ptr noundef %port.0) #10
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %tegra_pcie_port_free.exit.for.end_crit_edge, label %tegra_pcie_port_free.exit.for.body_crit_edge

tegra_pcie_port_free.exit.for.body_crit_edge:     ; preds = %tegra_pcie_port_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

tegra_pcie_port_free.exit.for.end_crit_edge:      ; preds = %tegra_pcie_port_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %tegra_pcie_port_free.exit.for.end_crit_edge, %tegra_pcie_put_resources.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_map_irq(ptr noundef %pdev, i8 noundef zeroext %slot, i8 noundef zeroext %pin) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysdata, align 4
  tail call void @tegra_cpuidle_pcie_irqs_in_use() #10
  %call = tail call i32 @of_irq_parse_and_map_pci(ptr noundef %pdev, i8 noundef zeroext %slot, i8 noundef zeroext %pin) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq1 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %5, %if.then ]
  ret i32 %irq.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_msi_teardown(ptr nocapture noundef readonly %pcie) unnamed_addr #1 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %virt = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 15, i32 4
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 15, i32 5
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef 4096, ptr noundef %3, i32 noundef %5, i32 noundef 16) #10
  %domain = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 15, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #10
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %irq.i, align 4, !annotation !506
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %7, i32 noundef %i.014, ptr noundef nonnull %irq.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #10
  br label %for.inc

irq_find_mapping.exit:                            ; preds = %for.body
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.not = icmp eq i32 %10, 0
  br i1 %cmp2.not, label %irq_find_mapping.exit.for.inc_crit_edge, label %if.then

irq_find_mapping.exit.for.inc_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @irq_domain_free_irqs(i32 noundef %10, i32 noundef 1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %irq_find_mapping.exit.for.inc_crit_edge, %irq_find_mapping.exit.thread
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %irq3 = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 15, i32 6
  %11 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq3, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %12, ptr noundef null, ptr noundef null) #10
  %13 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %domain, align 4
  %parent1.i = getelementptr inbounds %struct.irq_domain, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent1.i, align 4
  call void @irq_domain_remove(ptr noundef %14) #10
  call void @irq_domain_remove(ptr noundef %16) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_devfn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_isr(i32 noundef %irq, ptr nocapture noundef readonly %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %afi.i = getelementptr inbounds %struct.tegra_pcie, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %afi.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 184
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !509
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %and = and i32 %5, 15
  %6 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afi.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %7, i32 188
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #10, !srcloc !509
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %afi.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %11, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 0) #10, !srcloc !512
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp = icmp eq i32 %and, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp3 = icmp eq i32 %and, 15
  %spec.store.select = select i1 %cmp3, i32 0, i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.store.select)
  %cmp6 = icmp eq i32 %spec.store.select, 4
  %12 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %spec.store.select, label %do.end17 [
    i32 10, label %if.end.do.body_crit_edge
    i32 4, label %if.end.do.body_crit_edge91
  ]

if.end.do.body_crit_edge91:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_pcie_isr.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_pcie_isr, %if.end19)) #10
          to label %if.then13 [label %if.end19], !srcloc !513

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [15 x ptr], ptr @tegra_pcie_isr.err_msg, i32 0, i32 %spec.store.select
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_pcie_isr.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef %14, i32 noundef %9) #10
  br label %if.end19

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr [15 x ptr], ptr @tegra_pcie_isr.err_msg, i32 0, i32 %spec.store.select
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef %16, i32 noundef %9) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.then13, %do.body
  %17 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %spec.store.select, label %if.end19.cleanup_crit_edge [
    i32 7, label %if.end19.if.then25_crit_edge
    i32 4, label %if.end19.if.then25_crit_edge92
    i32 3, label %if.end19.if.then25_crit_edge93
  ]

if.end19.if.then25_crit_edge93:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.end19.if.then25_crit_edge92:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.end19.if.then25_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end19.if.then25_crit_edge, %if.end19.if.then25_crit_edge92, %if.end19.if.then25_crit_edge93
  %18 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %afi.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %19, i32 192
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #10, !srcloc !509
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %conv = zext i32 %21 to i64
  %shl = shl nuw nsw i64 %conv, 32
  %and28 = and i32 %9, -4
  %conv29 = zext i32 %and28 to i64
  %or = or i64 %shl, %conv29
  br i1 %cmp6, label %do.body33, label %do.end54

do.body33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_pcie_isr.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_pcie_isr, %cleanup)) #10
          to label %if.then47 [label %cleanup], !srcloc !513

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_pcie_isr.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.150, i64 noundef %or) #10
  br label %cleanup

do.end54:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.150, i64 noundef %or) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.then47, %do.body33, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end54 ], [ 1, %if.then47 ], [ 1, %if.end19.cleanup_crit_edge ], [ 1, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_phys_put(ptr noundef readonly %pcie) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %legacy_phy = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 13
  %2 = ptrtoint ptr %legacy_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %legacy_phy, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 14
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call = tail call i32 @phy_exit(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.153, i32 noundef %call) #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %ports = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 16
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn43 = load ptr, ptr %ports, align 4
  %cmp5.not44 = icmp eq ptr %.pn43, %ports
  br i1 %cmp5.not44, label %if.end3.cleanup_crit_edge, label %if.end3.for.cond6.preheader_crit_edge

if.end3.for.cond6.preheader_crit_edge:            ; preds = %if.end3
  br label %for.cond6.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.cond6.preheader.for.cond.loopexit_crit_edge
  %7 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn45, align 4
  %cmp5.not = icmp eq ptr %.pn, %ports
  br i1 %cmp5.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.cond6.preheader_crit_edge

for.cond.loopexit.for.cond6.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond6.preheader:                              ; preds = %for.cond.loopexit.for.cond6.preheader_crit_edge, %if.end3.for.cond6.preheader_crit_edge
  %.pn45 = phi ptr [ %.pn, %for.cond.loopexit.for.cond6.preheader_crit_edge ], [ %.pn43, %if.end3.for.cond6.preheader_crit_edge ]
  %lanes = getelementptr i8, ptr %.pn45, i32 48
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp740.not = icmp eq i32 %9, 0
  br i1 %cmp740.not, label %for.cond6.preheader.for.cond.loopexit_crit_edge, label %for.body8.lr.ph

for.cond6.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %phys = getelementptr i8, ptr %.pn45, i32 52
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %i.041 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.inc.for.body8_crit_edge ]
  %10 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.041
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 @phy_exit(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %for.body8.for.inc_crit_edge

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end14:                                         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.156, i32 noundef %i.041, i32 noundef %call9) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end14, %for.body8.for.inc_crit_edge
  %inc = add nuw i32 %i.041, 1
  %14 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lanes, align 4
  %cmp7 = icmp ult i32 %inc, %15
  br i1 %cmp7, label %for.inc.for.body8_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

cleanup:                                          ; preds = %for.cond.loopexit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_pcie_msi_irq(ptr noundef %desc) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i) #10
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i) #10
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %13(ptr noundef %irq_data4.i) #10
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %afi.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 2
  %domain = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15, i32 1
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %chained_irq_enter.exit
  %i.038 = phi i32 [ 0, %chained_irq_enter.exit ], [ %inc, %while.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %reg, align 4, !annotation !506
  %mul = shl nuw nsw i32 %i.038, 2
  %add = add nuw nsw i32 %mul, 108
  %15 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %afi.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !509
  %18 = call i32 @llvm.bswap.i32(i32 %17) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not37 = icmp eq i32 %17, 0
  br i1 %tobool.not37, label %for.body.while.end_crit_edge, label %while.body.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.body
  %mul6 = shl i32 %i.038, 5
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call5 = call i32 @_find_first_bit_be(ptr noundef nonnull %reg, i32 noundef 32) #10
  %add7 = add i32 %call5, %mul6
  %20 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain, align 4
  %parent = getelementptr inbounds %struct.irq_domain, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 4
  %call8 = call i32 @generic_handle_domain_irq(ptr noundef %23, i32 noundef %add7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %while.body.if.end_crit_edge, label %do.end

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.174) #13
  %rem = and i32 %add7, 31
  %shl = shl nuw i32 1, %rem
  %mul10 = shl i32 %add7, 2
  %add11 = add i32 %mul10, 108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  call void @arm_heavy_mb() #10
  %24 = call i32 @llvm.bswap.i32(i32 %shl) #10
  %25 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %afi.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %26, i32 %add11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %24) #10, !srcloc !512
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %27 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %afi.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %28, i32 %add
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #10, !srcloc !509
  %30 = call i32 @llvm.bswap.i32(i32 %29) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %reg, align 4
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %for.body.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %while.end
  %32 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i34 = icmp eq ptr %33, null
  br i1 %tobool.not.i34, label %if.else.i35, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_exit.exit

if.else.i35:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %34 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i35, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %35, %if.else.i35 ], [ %33, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_msi_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %map_lock = getelementptr inbounds %struct.tegra_msi, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i47 = add i32 %nr_irqs, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i47, i1 false) #10, !range !514
  %add.i = sub nuw nsw i32 32, %2
  %cond19 = select i1 %cmp.i, i32 %add.i, i32 0
  %call20 = tail call i32 @bitmap_find_free_region(ptr noundef %1, i32 noundef 256, i32 noundef %cond19) #10
  tail call void @mutex_unlock(ptr noundef %map_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp2448.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp2448.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add26 = add i32 %i.049, %virq
  %add27 = add i32 %i.049, %call20
  %3 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add26, i32 noundef %add27, ptr noundef nonnull @tegra_msi_bottom_chip, ptr noundef %4, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #10
  %inc = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @tegra_cpuidle_pcie_irqs_in_use() #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_msi_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #10
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %map_lock = getelementptr inbounds %struct.tegra_msi, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i32 = add i32 %nr_irqs, -1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i32, i1 false) #10, !range !514
  %add.i = sub nuw nsw i32 32, %4
  %cond20 = select i1 %cmp.i, i32 %add.i, i32 0
  tail call void @bitmap_release_region(ptr noundef %1, i32 noundef %3, i32 noundef %cond20) #10
  tail call void @mutex_unlock(ptr noundef %map_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_cpuidle_pcie_irqs_in_use() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_msi_irq_ack(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %4 = lshr i32 %3, 3
  %mul = and i32 %4, 536870908
  %add = add nuw nsw i32 %mul, 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  %afi.i = getelementptr i8, ptr %1, i32 -80
  %6 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afi.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %5) #10, !srcloc !512
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_msi_irq_mask(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %mask_lock = getelementptr inbounds %struct.tegra_msi, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mask_lock) #10
  %4 = lshr i32 %3, 3
  %mul = and i32 %4, 536870908
  %add = add nuw nsw i32 %mul, 140
  %afi.i = getelementptr i8, ptr %1, i32 -80
  %5 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %afi.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #10, !srcloc !509
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %9 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq, align 4
  %rem = and i32 %10, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %and = and i32 %8, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %12 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %afi.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %11) #10, !srcloc !512
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mask_lock, i32 noundef %call4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_msi_irq_unmask(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %mask_lock = getelementptr inbounds %struct.tegra_msi, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mask_lock) #10
  %4 = lshr i32 %3, 3
  %mul = and i32 %4, 536870908
  %add = add nuw nsw i32 %mul, 140
  %afi.i = getelementptr i8, ptr %1, i32 -80
  %5 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %afi.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #10, !srcloc !509
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %9 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq, align 4
  %rem = and i32 %10, 31
  %shl = shl nuw i32 1, %rem
  %or = or i32 %shl, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %12 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %afi.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %11) #10, !srcloc !512
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mask_lock, i32 noundef %call4) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_msi_set_affinity(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %phys = getelementptr inbounds %struct.tegra_msi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys, align 4
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
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_msi_top_irq_ack(ptr noundef %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_chip_ack_parent(ptr noundef %d) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_msi_top_irq_mask(ptr noundef %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_mask_irq(ptr noundef %d) #10
  tail call void @irq_chip_mask_parent(ptr noundef %d) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_msi_top_irq_unmask(ptr noundef %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_unmask_irq(ptr noundef %d) #10
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_pcie_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shr = lshr i32 %devfn, 3
  %and = and i32 %shr, 31
  %ports = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %.pn.in = phi ptr [ %ports, %if.then ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp3.not = icmp eq ptr %.pn, %ports
  br i1 %cmp3.not, label %for.cond.if.end22_crit_edge, label %for.body

for.cond.if.end22_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

for.body:                                         ; preds = %for.cond
  %index = getelementptr i8, ptr %.pn, i32 44
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %add = add i32 %6, 1
  %cmp5 = icmp eq i32 %add, %and
  br i1 %cmp5, label %if.then7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr i8, ptr %.pn, i32 40
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %and8 = and i32 %where, -4
  %add.ptr9 = getelementptr i8, ptr %8, i32 %and8
  br label %if.end22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = shl i32 %where, 16
  %shl.i = and i32 %and.i, 251658240
  %conv.i = zext i8 %3 to i32
  %shl1.i = shl nuw nsw i32 %conv.i, 16
  %or.i = or i32 %shl1.i, %shl.i
  %9 = shl i32 %devfn, 8
  %shl3.i = and i32 %9, 61440
  %or4.i = or i32 %or.i, %shl3.i
  %and8.i = and i32 %where, 255
  %and17 = lshr exact i32 %or4.i, 8
  %add19 = or i32 %and17, -32505856
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %add19) #10
  %afi.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %afi.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #10, !srcloc !512
  %cfg = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 4
  %.masked = and i32 %9, 3840
  %and20 = or i32 %.masked, %and8.i
  %add.ptr21 = getelementptr i8, ptr %14, i32 %and20
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then7, %for.cond.if.end22_crit_edge
  %addr.1 = phi ptr [ %add.ptr21, %if.else ], [ %add.ptr9, %if.then7 ], [ null, %for.cond.if.end22_crit_edge ]
  ret ptr %addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @pci_generic_config_read32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @pci_generic_config_write32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @pci_generic_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_and_map_pci(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_ports_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @tegra_pcie_ports_sops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_pcie_ports_seq_start(ptr noundef %s, ptr nocapture noundef readonly %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ports = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ports, align 4
  %cmp.i.not = icmp eq ptr %3, %ports
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.177) #10
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %call2 = tail call ptr @seq_list_start(ptr noundef %ports, i64 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_pcie_ports_seq_stop(ptr nocapture noundef %s, ptr nocapture noundef %v) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_pcie_ports_seq_next(ptr nocapture noundef readonly %s, ptr noundef %v, ptr noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ports = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 16
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %ports, ptr noundef %pos) #10
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_ports_seq_show(ptr noundef %s, ptr nocapture noundef readonly %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %v, i32 40
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 3840
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !515
  %3 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !516
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  %index = getelementptr i8, ptr %v, i32 44
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.178, i32 noundef %9) #10
  br i1 %tobool.not, label %if.end17, label %if.end17.thread

if.end17:                                         ; preds = %entry
  br i1 %tobool12.not, label %if.end17.if.end23_crit_edge, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end17.thread:                                  ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.179) #10
  br i1 %tobool12.not, label %if.end17.thread.if.end23_crit_edge, label %if.then21

if.end17.thread.if.end23_crit_edge:               ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.180) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17.if.end22_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.181) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end17.thread.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.182) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__devm_release_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_pm_suspend(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ports = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn48 = load ptr, ptr %ports, align 4
  %cmp.not49 = icmp eq ptr %.pn48, %ports
  br i1 %cmp.not49, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %tegra_pcie_pme_turnoff.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn50 = phi ptr [ %.pn, %tegra_pcie_pme_turnoff.exit.for.body_crit_edge ], [ %.pn48, %entry.for.body_crit_edge ]
  %port.0 = getelementptr i8, ptr %.pn50, i32 -8
  %3 = ptrtoint ptr %port.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port.0, align 4
  %soc2.i = getelementptr inbounds %struct.tegra_pcie, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %soc2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc2.i, align 4
  %afi.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %afi.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %afi.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 240
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !509
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %ports.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ports.i, align 4
  %index.i = getelementptr i8, ptr %.pn50, i32 44
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_pcie_port_soc, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %or.i = or i32 %shl.i, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %18 = ptrtoint ptr %afi.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %afi.i.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %19, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 %17) #10, !srcloc !512
  %20 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports.i, align 4
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  %ack_bit7.i = getelementptr %struct.tegra_pcie_port_soc, ptr %21, i32 %23, i32 0, i32 1
  %24 = ptrtoint ptr %ack_bit7.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ack_bit7.i, align 1
  %call8.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call8.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1523) #10
  %26 = ptrtoint ptr %afi.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %afi.i.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %27, i32 240
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #10, !srcloc !509
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !517
  %conv19.i = zext i8 %25 to i32
  %shl20.i = shl nuw i32 1, %conv19.i
  %and94.i = and i32 %29, %shl20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool.not95.i = icmp eq i32 %and94.i, 0
  br i1 %tobool.not95.i, label %for.body.land.lhs.true.i_crit_edge, label %for.body.for.end.i_crit_edge

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.land.lhs.true.i_crit_edge:               ; preds = %for.body
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then38.i.land.lhs.true.i_crit_edge, %for.body.land.lhs.true.i_crit_edge
  %call24.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call24.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call24.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then28.i, label %if.then38.i

if.then28.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %afi.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %afi.i.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %31, i32 240
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #10, !srcloc !509
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !518
  br label %for.end.i

if.then38.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %34 = ptrtoint ptr %afi.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %afi.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 240
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !509
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !517
  %and.i = and i32 %37, %shl20.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then38.i.land.lhs.true.i_crit_edge, label %if.then38.i.for.end.i_crit_edge

if.then38.i.for.end.i_crit_edge:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then38.i.land.lhs.true.i_crit_edge:            ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then38.i.for.end.i_crit_edge, %if.then28.i, %for.body.for.end.i_crit_edge
  %val.0.i = phi i32 [ %33, %if.then28.i ], [ %29, %for.body.for.end.i_crit_edge ], [ %37, %if.then38.i.for.end.i_crit_edge ]
  %and43.i = and i32 %val.0.i, %shl20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %do.end49.i, label %for.end.i.tegra_pcie_pme_turnoff.exit_crit_edge

for.end.i.tegra_pcie_pme_turnoff.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_pme_turnoff.exit

do.end49.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %4, align 4
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.185, i32 noundef %41) #13
  br label %tegra_pcie_pme_turnoff.exit

tegra_pcie_pme_turnoff.exit:                      ; preds = %do.end49.i, %for.end.i.tegra_pcie_pme_turnoff.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #10
  %42 = ptrtoint ptr %afi.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %afi.i.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %43, i32 240
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i) #10, !srcloc !509
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %46 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ports.i, align 4
  %48 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index.i, align 4
  %arrayidx55.i = getelementptr %struct.tegra_pcie_port_soc, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx55.i, align 1
  %conv58.i = zext i8 %51 to i32
  %shl59.i = shl nuw i32 1, %conv58.i
  %neg.i = xor i32 %shl59.i, -1
  %and60.i = and i32 %45, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %and60.i) #10
  %53 = ptrtoint ptr %afi.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %afi.i.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %54, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %52) #10, !srcloc !512
  %55 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %tegra_pcie_pme_turnoff.exit.for.end_crit_edge, label %tegra_pcie_pme_turnoff.exit.for.body_crit_edge

tegra_pcie_pme_turnoff.exit.for.body_crit_edge:   ; preds = %tegra_pcie_pme_turnoff.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

tegra_pcie_pme_turnoff.exit.for.end_crit_edge:    ; preds = %tegra_pcie_pme_turnoff.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %tegra_pcie_pme_turnoff.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pcie_xrst.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 12
  %56 = ptrtoint ptr %pcie_xrst.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcie_xrst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %57) #10
  %58 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ports, align 4
  %cmp.not19.i = icmp eq ptr %59, %ports
  br i1 %cmp.not19.i, label %for.end.tegra_pcie_disable_ports.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.tegra_pcie_disable_ports.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_disable_ports.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %59, %for.end.for.body.i_crit_edge ]
  %port.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -8
  %60 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  tail call fastcc void @tegra_pcie_port_disable(ptr noundef %port.0.i) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %ports
  br i1 %cmp.not.i, label %for.body.i.tegra_pcie_disable_ports.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.tegra_pcie_disable_ports.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_disable_ports.exit

tegra_pcie_disable_ports.exit:                    ; preds = %for.body.i.tegra_pcie_disable_ports.exit_crit_edge, %for.end.tegra_pcie_disable_ports.exit_crit_edge
  %afi.i.i30 = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %afi.i.i30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %afi.i.i30, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %62, i32 180
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %64 = and i32 %63, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %afi.i.i30 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %afi.i.i30, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %66, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %64) #10, !srcloc !512
  %soc = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 20
  %67 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %soc, align 4
  %program_uphy = getelementptr inbounds %struct.tegra_pcie_soc, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %program_uphy to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %program_uphy, align 2, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not = icmp eq i8 %70, 0
  br i1 %tobool.not, label %tegra_pcie_disable_ports.exit.if.end10_crit_edge, label %if.then

tegra_pcie_disable_ports.exit.if.end10_crit_edge: ; preds = %tegra_pcie_disable_ports.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %tegra_pcie_disable_ports.exit
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %legacy_phy.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 13
  %73 = ptrtoint ptr %legacy_phy.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %legacy_phy.i, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i32 = icmp eq i8 %74, 0
  br i1 %tobool.not.i32, label %if.end8.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %phy.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 14
  %75 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phy.i, align 4
  %tobool2.not.i = icmp eq ptr %76, null
  br i1 %tobool2.not.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pads.i.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %78, i32 160
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %80 = and i32 %79, -1074003969
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %81 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %82, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %80) #10, !srcloc !512
  %83 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %84, i32 160
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %86 = or i32 %85, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %87 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %88, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %86) #10, !srcloc !512
  %pads_pll_ctl.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %68, i32 0, i32 4
  %89 = ptrtoint ptr %pads_pll_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pads_pll_ctl.i.i, align 4
  %91 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %92, i32 %90
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %94 = and i32 %93, -33554433
  %95 = ptrtoint ptr %pads_pll_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pads_pll_ctl.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %98, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %94) #10, !srcloc !512
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #10
  br label %if.end10

if.end.i:                                         ; preds = %if.then.i
  %call.i33 = tail call i32 @phy_power_off(ptr noundef nonnull %76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i = icmp slt i32 %call.i33, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.187, i32 noundef %call.i33) #13
  br label %do.end

if.end8.i:                                        ; preds = %if.then
  %99 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn48.i = load ptr, ptr %ports, align 4
  %cmp10.not49.i = icmp eq ptr %.pn48.i, %ports
  br i1 %cmp10.not49.i, label %if.end8.i.if.end10_crit_edge, label %if.end8.i.for.body.i36_crit_edge

if.end8.i.for.body.i36_crit_edge:                 ; preds = %if.end8.i
  br label %for.body.i36

if.end8.i.if.end10_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.body.i36:                                     ; preds = %tegra_pcie_port_phy_power_off.exit.i.for.body.i36_crit_edge, %if.end8.i.for.body.i36_crit_edge
  %.pn50.i = phi ptr [ %.pn.i37, %tegra_pcie_port_phy_power_off.exit.i.for.body.i36_crit_edge ], [ %.pn48.i, %if.end8.i.for.body.i36_crit_edge ]
  %port.0.i35 = getelementptr i8, ptr %.pn50.i, i32 -8
  %100 = ptrtoint ptr %port.0.i35 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %port.0.i35, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %lanes.i.i = getelementptr i8, ptr %.pn50.i, i32 48
  %104 = ptrtoint ptr %lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %lanes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp13.not.i.i = icmp eq i32 %105, 0
  br i1 %cmp13.not.i.i, label %for.body.i36.tegra_pcie_port_phy_power_off.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i36.tegra_pcie_port_phy_power_off.exit.i_crit_edge: ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_phy_power_off.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i36
  %phys.i.i = getelementptr i8, ptr %.pn50.i, i32 52
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %106 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phys.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %107, i32 %i.014.i.i
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @phy_power_off(ptr noundef %109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i.i, label %do.end16.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %110 = ptrtoint ptr %lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lanes.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %111
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.tegra_pcie_port_phy_power_off.exit.i_crit_edge

for.inc.i.i.tegra_pcie_port_phy_power_off.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_phy_power_off.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

tegra_pcie_port_phy_power_off.exit.i:             ; preds = %for.inc.i.i.tegra_pcie_port_phy_power_off.exit.i_crit_edge, %for.body.i36.tegra_pcie_port_phy_power_off.exit.i_crit_edge
  %112 = ptrtoint ptr %.pn50.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pn.i37 = load ptr, ptr %.pn50.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn.i37, %ports
  br i1 %cmp10.not.i, label %tegra_pcie_port_phy_power_off.exit.i.if.end10_crit_edge, label %tegra_pcie_port_phy_power_off.exit.i.for.body.i36_crit_edge

tegra_pcie_port_phy_power_off.exit.i.for.body.i36_crit_edge: ; preds = %tegra_pcie_port_phy_power_off.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i36

tegra_pcie_port_phy_power_off.exit.i.if.end10_crit_edge: ; preds = %tegra_pcie_port_phy_power_off.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end16.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.192, i32 noundef %i.014.i.i, i32 noundef %call.i.i) #13
  %index.i38 = getelementptr i8, ptr %.pn50.i, i32 44
  %113 = ptrtoint ptr %index.i38 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %index.i38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.190, i32 noundef %114, i32 noundef %call.i.i) #13
  br label %do.end

do.end:                                           ; preds = %do.end16.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i, %do.end16.i ], [ %call.i33, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.183, i32 noundef %retval.0.i) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end, %tegra_pcie_port_phy_power_off.exit.i.if.end10_crit_edge, %if.end8.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %if.end.thread.i, %tegra_pcie_disable_ports.exit.if.end10_crit_edge
  %pex_rst = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 10
  %115 = ptrtoint ptr %pex_rst to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pex_rst, align 4
  %call11 = tail call i32 @reset_control_assert(ptr noundef %116) #10
  %pex_clk = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 6
  %117 = ptrtoint ptr %pex_clk to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pex_clk, align 4
  tail call void @clk_disable(ptr noundef %118) #10
  tail call void @clk_unprepare(ptr noundef %118) #10
  %119 = ptrtoint ptr %afi.i.i30 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %afi.i.i30, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %120, i32 180
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %122 = and i32 %121, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %123 = ptrtoint ptr %afi.i.i30 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %afi.i.i30, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %124, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %122) #10, !srcloc !512
  %call13 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #10
  tail call fastcc void @tegra_pcie_power_off(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_pm_resume(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %soc2.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %soc2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc2.i, align 4
  %pcie_xrst.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %pcie_xrst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_xrst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %7) #10
  %afi_rst.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %afi_rst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %afi_rst.i, align 4
  %call3.i = tail call i32 @reset_control_assert(ptr noundef %9) #10
  %pex_rst.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %pex_rst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pex_rst.i, align 4
  %call4.i = tail call i32 @reset_control_assert(ptr noundef %11) #10
  %pm_domain.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pm_domain.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @tegra_powergate_power_off(i32 noundef 3) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %num_supplies.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_supplies.i, align 4
  %supplies.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %supplies.i, align 4
  %call6.i = tail call i32 @regulator_bulk_enable(i32 noundef %15, ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.208, i32 noundef %call6.i) #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %if.end.i.if.end8.i_crit_edge
  %18 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pm_domain.i, align 8
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.if.end26.i_crit_edge

if.end8.i.if.end26.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then11.i:                                      ; preds = %if.end8.i
  %call12.i = tail call i32 @tegra_powergate_power_on(i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end18.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.211, i32 noundef %call12.i) #13
  br label %do.end

if.end18.i:                                       ; preds = %if.then11.i
  %call19.i = tail call i32 @tegra_powergate_remove_clamping(i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end26.i_crit_edge, label %do.end24.i

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.214, i32 noundef %call19.i) #13
  br label %powergate.i

if.end26.i:                                       ; preds = %if.end18.i.if.end26.i_crit_edge, %if.end8.i.if.end26.i_crit_edge
  %afi_clk.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %afi_clk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %afi_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end26.i.clk_prepare_enable.exit.i_crit_edge

if.end26.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end26.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end33.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end33.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %21) #10
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end26.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end26.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp28.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp28.i, label %do.end32.i, label %clk_prepare_enable.exit.i.if.end33.i_crit_edge

clk_prepare_enable.exit.i.if.end33.i_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

do.end32.i:                                       ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.217, i32 noundef %retval.0.i.i) #13
  br label %powergate.i

if.end33.i:                                       ; preds = %clk_prepare_enable.exit.i.if.end33.i_crit_edge, %if.end.i.i.if.end33.i_crit_edge
  %has_cml_clk.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %5, i32 0, i32 12
  %22 = ptrtoint ptr %has_cml_clk.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_cml_clk.i, align 1, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not.i = icmp eq i8 %23, 0
  br i1 %tobool34.not.i, label %if.end33.i.if.end43.i_crit_edge, label %if.then35.i

if.end33.i.if.end43.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then35.i:                                      ; preds = %if.end33.i
  %cml_clk.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %cml_clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cml_clk.i, align 4
  %call.i104.i = tail call i32 @clk_prepare(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i)
  %tobool.not.i105.i = icmp eq i32 %call.i104.i, 0
  br i1 %tobool.not.i105.i, label %if.end.i108.i, label %if.then35.i.clk_prepare_enable.exit111.i_crit_edge

if.then35.i.clk_prepare_enable.exit111.i_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit111.i

if.end.i108.i:                                    ; preds = %if.then35.i
  %call1.i106.i = tail call i32 @clk_enable(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106.i)
  %tobool2.not.i107.i = icmp eq i32 %call1.i106.i, 0
  br i1 %tobool2.not.i107.i, label %if.end.i108.i.if.end43.i_crit_edge, label %if.then3.i109.i

if.end.i108.i.if.end43.i_crit_edge:               ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then3.i109.i:                                  ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %25) #10
  br label %clk_prepare_enable.exit111.i

clk_prepare_enable.exit111.i:                     ; preds = %if.then3.i109.i, %if.then35.i.clk_prepare_enable.exit111.i_crit_edge
  %retval.0.i110.i = phi i32 [ %call.i104.i, %if.then35.i.clk_prepare_enable.exit111.i_crit_edge ], [ %call1.i106.i, %if.then3.i109.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i110.i)
  %cmp37.i = icmp slt i32 %retval.0.i110.i, 0
  br i1 %cmp37.i, label %do.end41.i, label %clk_prepare_enable.exit111.i.if.end43.i_crit_edge

clk_prepare_enable.exit111.i.if.end43.i_crit_edge: ; preds = %clk_prepare_enable.exit111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

do.end41.i:                                       ; preds = %clk_prepare_enable.exit111.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.220, i32 noundef %retval.0.i110.i) #13
  br label %disable_afi_clk.i

if.end43.i:                                       ; preds = %clk_prepare_enable.exit111.i.if.end43.i_crit_edge, %if.end.i108.i.if.end43.i_crit_edge, %if.end33.i.if.end43.i_crit_edge
  %pll_e.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %pll_e.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pll_e.i, align 4
  %call.i112.i = tail call i32 @clk_prepare(ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %tobool.not.i113.i = icmp eq i32 %call.i112.i, 0
  br i1 %tobool.not.i113.i, label %if.end.i116.i, label %if.end43.i.clk_prepare_enable.exit119.i_crit_edge

if.end43.i.clk_prepare_enable.exit119.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit119.i

if.end.i116.i:                                    ; preds = %if.end43.i
  %call1.i114.i = tail call i32 @clk_enable(ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114.i)
  %tobool2.not.i115.i = icmp eq i32 %call1.i114.i, 0
  br i1 %tobool2.not.i115.i, label %if.end.i116.i.if.end_crit_edge, label %if.then3.i117.i

if.end.i116.i.if.end_crit_edge:                   ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i117.i:                                  ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %27) #10
  br label %clk_prepare_enable.exit119.i

clk_prepare_enable.exit119.i:                     ; preds = %if.then3.i117.i, %if.end43.i.clk_prepare_enable.exit119.i_crit_edge
  %retval.0.i118.i = phi i32 [ %call.i112.i, %if.end43.i.clk_prepare_enable.exit119.i_crit_edge ], [ %call1.i114.i, %if.then3.i117.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i118.i)
  %cmp45.i = icmp slt i32 %retval.0.i118.i, 0
  br i1 %cmp45.i, label %do.end49.i, label %clk_prepare_enable.exit119.i.if.end_crit_edge

clk_prepare_enable.exit119.i.if.end_crit_edge:    ; preds = %clk_prepare_enable.exit119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end49.i:                                       ; preds = %clk_prepare_enable.exit119.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.223, i32 noundef %retval.0.i118.i) #13
  %28 = ptrtoint ptr %has_cml_clk.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_cml_clk.i, align 1, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool54.not.i = icmp eq i8 %29, 0
  br i1 %tobool54.not.i, label %do.end49.i.disable_afi_clk.i_crit_edge, label %if.then55.i

do.end49.i.disable_afi_clk.i_crit_edge:           ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_afi_clk.i

if.then55.i:                                      ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  %cml_clk56.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %cml_clk56.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cml_clk56.i, align 4
  tail call void @clk_disable(ptr noundef %31) #10
  tail call void @clk_unprepare(ptr noundef %31) #10
  br label %disable_afi_clk.i

disable_afi_clk.i:                                ; preds = %if.then55.i, %do.end49.i.disable_afi_clk.i_crit_edge, %do.end41.i
  %err.0.i = phi i32 [ %retval.0.i110.i, %do.end41.i ], [ %retval.0.i118.i, %if.then55.i ], [ %retval.0.i118.i, %do.end49.i.disable_afi_clk.i_crit_edge ]
  %32 = ptrtoint ptr %afi_clk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %afi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %33) #10
  tail call void @clk_unprepare(ptr noundef %33) #10
  br label %powergate.i

powergate.i:                                      ; preds = %disable_afi_clk.i, %do.end32.i, %do.end24.i
  %err.1.i = phi i32 [ %retval.0.i.i, %do.end32.i ], [ %err.0.i, %disable_afi_clk.i ], [ %call19.i, %do.end24.i ]
  %34 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pm_domain.i, align 8
  %tobool60.not.i = icmp eq ptr %35, null
  br i1 %tobool60.not.i, label %if.then61.i, label %powergate.i.do.end_crit_edge

powergate.i.do.end_crit_edge:                     ; preds = %powergate.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then61.i:                                      ; preds = %powergate.i
  call void @__sanitizer_cov_trace_pc() #12
  %call62.i = tail call i32 @tegra_powergate_power_off(i32 noundef 3) #10
  br label %do.end

do.end:                                           ; preds = %if.then61.i, %powergate.i.do.end_crit_edge, %do.end17.i
  %err.2.i = phi i32 [ %err.1.i, %powergate.i.do.end_crit_edge ], [ %err.1.i, %if.then61.i ], [ %call12.i, %do.end17.i ]
  %36 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_supplies.i, align 4
  %38 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %supplies.i, align 4
  %call66.i = tail call i32 @regulator_bulk_disable(i32 noundef %37, ptr noundef %39) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.197, i32 noundef %err.2.i) #13
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit119.i.if.end_crit_edge, %if.end.i116.i.if.end_crit_edge
  %40 = ptrtoint ptr %afi_rst.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %afi_rst.i, align 4
  %call52.i = tail call i32 @reset_control_deassert(ptr noundef %41) #10
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.200, i32 noundef %call2) #13
  br label %poweroff

if.end7:                                          ; preds = %if.end
  %42 = ptrtoint ptr %soc2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %soc2.i, align 4
  %phy.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 14
  %44 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy.i, align 4
  %tobool.not.i58 = icmp eq ptr %45, null
  br i1 %tobool.not.i58, label %if.end7.if.end.i60_crit_edge, label %if.then.i59

if.end7.if.end.i60_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i60

if.then.i59:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %afi.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %afi.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %afi.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 352
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %49 = and i32 %48, -33685505
  %50 = or i32 %49, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %afi.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %afi.i.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %52, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 %50) #10, !srcloc !512
  br label %if.end.i60

if.end.i60:                                       ; preds = %if.then.i59, %if.end7.if.end.i60_crit_edge
  %has_pex_bias_ctrl.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %43, i32 0, i32 10
  %53 = ptrtoint ptr %has_pex_bias_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %has_pex_bias_ctrl.i, align 1, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool2.not.i = icmp eq i8 %54, 0
  br i1 %tobool2.not.i, label %if.end.i60.if.end4.i_crit_edge, label %if.then3.i

if.end.i60.if.end4.i_crit_edge:                   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %afi.i79.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %afi.i79.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %afi.i79.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %56, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 0) #10, !srcloc !512
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i60.if.end4.i_crit_edge
  %afi.i81.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %58, i32 248
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %60 = and i32 %59, -234942689
  %xbar_config.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 17
  %61 = ptrtoint ptr %xbar_config.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xbar_config.i, align 4
  %63 = or i32 %60, 234881248
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %or9.i = or i32 %64, %62
  %ports.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 16
  %65 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn105.i = load ptr, ptr %ports.i, align 4
  %cmp.not106.i = icmp eq ptr %.pn105.i, %ports.i
  br i1 %cmp.not106.i, label %if.end4.i.for.end.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %.pn108.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn105.i, %if.end4.i.for.body.i_crit_edge ]
  %value.0107.i = phi i32 [ %and16.i, %for.body.i.for.body.i_crit_edge ], [ %or9.i, %if.end4.i.for.body.i_crit_edge ]
  %index.i = getelementptr i8, ptr %.pn108.i, i32 44
  %66 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index.i, align 4
  %add.i = add i32 %67, 1
  %shl.i = shl nuw i32 1, %add.i
  %add13.i = add i32 %67, 29
  %shl14.i = shl nuw i32 1, %add13.i
  %68 = or i32 %shl.i, %shl14.i
  %69 = xor i32 %68, -1
  %and16.i = and i32 %value.0107.i, %69
  %70 = ptrtoint ptr %.pn108.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn.i = load ptr, ptr %.pn108.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end4.i.for.end.i_crit_edge
  %value.0.lcssa.i = phi i32 [ %or9.i, %if.end4.i.for.end.i_crit_edge ], [ %and16.i, %for.body.i.for.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %71 = tail call i32 @llvm.bswap.i32(i32 %value.0.lcssa.i) #10
  %72 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %73, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i, i32 %71) #10, !srcloc !512
  %has_gen2.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %43, i32 0, i32 13
  %74 = ptrtoint ptr %has_gen2.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %has_gen2.i, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool22.not.i = icmp eq i8 %75, 0
  %76 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %77, i32 260
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool22.not.i, label %if.else.i, label %if.then23.i

if.then23.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = and i32 %78, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %81, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %79) #10, !srcloc !512
  br label %tegra_pcie_enable_controller.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = or i32 %78, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %83 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %84, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %82) #10, !srcloc !512
  br label %tegra_pcie_enable_controller.exit

tegra_pcie_enable_controller.exit:                ; preds = %if.else.i, %if.then23.i
  %85 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %86, i32 172
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %88 = or i32 %87, 16777344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %89 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %90, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i, i32 %88) #10, !srcloc !512
  %has_intr_prsnt_sense.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %43, i32 0, i32 11
  %91 = ptrtoint ptr %has_intr_prsnt_sense.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %has_intr_prsnt_sense.i, align 2, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool32.not.i = icmp eq i8 %92, 0
  %spec.select.i = select i1 %tobool32.not.i, i32 63, i32 319
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %93 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #10
  %94 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %95, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i, i32 %93) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %97, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 -1) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %98 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %99, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 16777216) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %100 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %101, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 0) #10, !srcloc !512
  %cs.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 5
  %end.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 5, i32 1
  %102 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %end.i.i, align 4
  %104 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cs.i, align 4
  %sub.i.i = add i32 %103, 1
  %add.i.i = sub i32 %sub.i.i, %105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #10
  %107 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %108, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %106) #10, !srcloc !512
  %shr.i = lshr i32 %add.i.i, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %109 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #10
  %110 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %afi.i81.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #10, !srcloc !512
  %windows.i = getelementptr i8, ptr %1, i32 -72
  %112 = ptrtoint ptr %windows.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %entry1.0121.i = load ptr, ptr %windows.i, align 4
  %cmp.not122.i = icmp eq ptr %entry1.0121.i, %windows.i
  br i1 %cmp.not122.i, label %tegra_pcie_enable_controller.exit.for.end.i68_crit_edge, label %tegra_pcie_enable_controller.exit.for.body.i62_crit_edge

tegra_pcie_enable_controller.exit.for.body.i62_crit_edge: ; preds = %tegra_pcie_enable_controller.exit
  br label %for.body.i62

tegra_pcie_enable_controller.exit.for.end.i68_crit_edge: ; preds = %tegra_pcie_enable_controller.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i68

for.body.i62:                                     ; preds = %sw.epilog.i.for.body.i62_crit_edge, %tegra_pcie_enable_controller.exit.for.body.i62_crit_edge
  %entry1.0123.i = phi ptr [ %entry1.0.i, %sw.epilog.i.for.body.i62_crit_edge ], [ %entry1.0121.i, %tegra_pcie_enable_controller.exit.for.body.i62_crit_edge ]
  %res5.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0123.i, i32 0, i32 1
  %113 = ptrtoint ptr %res5.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %res5.i, align 4
  %end.i71.i = getelementptr inbounds %struct.resource, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %end.i71.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %end.i71.i, align 4
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %114, align 4
  %sub.i72.i = add i32 %116, 1
  %add.i73.i = sub i32 %sub.i72.i, %118
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %114, i32 0, i32 3
  %119 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %120, 7936
  %121 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %and.i.i, label %for.body.i62.sw.epilog.i_crit_edge [
    i32 256, label %sw.bb.i
    i32 512, label %sw.bb11.i
  ]

for.body.i62.sw.epilog.i_crit_edge:               ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = tail call i32 @pci_pio_to_address(i32 noundef %118) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %122 = tail call i32 @llvm.bswap.i32(i32 %call9.i) #10
  %123 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %124, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %122) #10, !srcloc !512
  %shr10.i = lshr i32 %add.i73.i, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %125 = tail call i32 @llvm.bswap.i32(i32 %shr10.i) #10
  %126 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %127, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 %125) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %128 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %129, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 64765) #10, !srcloc !512
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %for.body.i62
  %130 = lshr i32 %118, 8
  %shl.i63 = and i32 %130, 16777200
  %or.i = or i32 %shl.i63, 1
  %and15.i = and i32 %120, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i64 = icmp eq i32 %and15.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %131 = tail call i32 @llvm.bswap.i32(i32 %118) #10
  %132 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %afi.i81.i, align 4
  br i1 %tobool.not.i64, label %if.else.i66, label %if.then.i65

if.then.i65:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i81.i = getelementptr i8, ptr %133, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 %131) #10, !srcloc !512
  %shr16.i = lshr i32 %add.i73.i, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %134 = tail call i32 @llvm.bswap.i32(i32 %shr16.i) #10
  %135 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %136, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %134) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %137 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %138 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %139, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 %137) #10, !srcloc !512
  br label %sw.epilog.i

if.else.i66:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i87.i = getelementptr i8, ptr %133, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 %131) #10, !srcloc !512
  %shr17.i = lshr i32 %add.i73.i, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %140 = tail call i32 @llvm.bswap.i32(i32 %shr17.i) #10
  %141 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %142, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %140) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %143 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %144 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %145, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %143) #10, !srcloc !512
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else.i66, %if.then.i65, %sw.bb.i, %for.body.i62.sw.epilog.i_crit_edge
  %146 = ptrtoint ptr %entry1.0123.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %entry1.0.i = load ptr, ptr %entry1.0123.i, align 4
  %cmp.not.i67 = icmp eq ptr %entry1.0.i, %windows.i
  br i1 %cmp.not.i67, label %sw.epilog.i.for.end.i68_crit_edge, label %sw.epilog.i.for.body.i62_crit_edge

sw.epilog.i.for.body.i62_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i62

sw.epilog.i.for.end.i68_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i68

for.end.i68:                                      ; preds = %sw.epilog.i.for.end.i68_crit_edge, %tegra_pcie_enable_controller.exit.for.end.i68_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %147 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %148, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %149 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %150, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %151 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %152, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %153 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %154, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %155 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %156, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %157 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %158, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 0) #10, !srcloc !512
  %159 = ptrtoint ptr %soc2.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %soc2.i, align 4
  %has_cache_bars.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %160, i32 0, i32 19
  %161 = ptrtoint ptr %has_cache_bars.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %has_cache_bars.i, align 2, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool23.not.i = icmp eq i8 %162, 0
  br i1 %tobool23.not.i, label %for.end.i68.tegra_pcie_setup_translations.exit_crit_edge, label %if.then24.i

for.end.i68.tegra_pcie_setup_translations.exit_crit_edge: ; preds = %for.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_setup_translations.exit

if.then24.i:                                      ; preds = %for.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %163 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %164, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %165 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %166, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %167 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %168, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %169 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %170, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 0) #10, !srcloc !512
  br label %tegra_pcie_setup_translations.exit

tegra_pcie_setup_translations.exit:               ; preds = %if.then24.i, %for.end.i68.tegra_pcie_setup_translations.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %171 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %172, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %173 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %174, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %175 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %176, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 0) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %177 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %178, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 0) #10, !srcloc !512
  %179 = ptrtoint ptr %soc2.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %soc2.i, align 4
  %msi2.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15
  %phys.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15, i32 5
  %181 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %phys.i, align 4
  %msi_base_shift.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %180, i32 0, i32 2
  %183 = ptrtoint ptr %msi_base_shift.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %msi_base_shift.i, align 4
  %shr.i70 = lshr i32 %182, %184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %185 = tail call i32 @llvm.bswap.i32(i32 %shr.i70) #10
  %186 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %187, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %185) #10, !srcloc !512
  %188 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %phys.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #10
  %191 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %192, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %190) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %193 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %194, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 16777216) #10, !srcloc !512
  %195 = ptrtoint ptr %msi2.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %msi_state.sroa.0.0.copyload.i = load i32, ptr %msi2.i, align 4
  %msi_state.sroa.5.0.msi2.sroa_idx.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15, i32 0, i32 1
  %196 = ptrtoint ptr %msi_state.sroa.5.0.msi2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %msi_state.sroa.5.0.copyload.i = load i32, ptr %msi_state.sroa.5.0.msi2.sroa_idx.i, align 4
  %msi_state.sroa.7.0.msi2.sroa_idx.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15, i32 0, i32 2
  %197 = ptrtoint ptr %msi_state.sroa.7.0.msi2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %msi_state.sroa.7.0.copyload.i = load i32, ptr %msi_state.sroa.7.0.msi2.sroa_idx.i, align 4
  %msi_state.sroa.9.0.msi2.sroa_idx.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15, i32 0, i32 3
  %198 = ptrtoint ptr %msi_state.sroa.9.0.msi2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %msi_state.sroa.9.0.copyload.i = load i32, ptr %msi_state.sroa.9.0.msi2.sroa_idx.i, align 4
  %msi_state.sroa.11.0.msi2.sroa_idx.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15, i32 0, i32 4
  %199 = ptrtoint ptr %msi_state.sroa.11.0.msi2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %msi_state.sroa.11.0.copyload.i = load i32, ptr %msi_state.sroa.11.0.msi2.sroa_idx.i, align 4
  %msi_state.sroa.13.0.msi2.sroa_idx.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15, i32 0, i32 5
  %200 = ptrtoint ptr %msi_state.sroa.13.0.msi2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %msi_state.sroa.13.0.copyload.i = load i32, ptr %msi_state.sroa.13.0.msi2.sroa_idx.i, align 4
  %msi_state.sroa.15.0.msi2.sroa_idx.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15, i32 0, i32 6
  %201 = ptrtoint ptr %msi_state.sroa.15.0.msi2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %msi_state.sroa.15.0.copyload.i = load i32, ptr %msi_state.sroa.15.0.msi2.sroa_idx.i, align 4
  %msi_state.sroa.17.0.msi2.sroa_idx.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 15, i32 0, i32 7
  %202 = ptrtoint ptr %msi_state.sroa.17.0.msi2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %msi_state.sroa.17.0.copyload.i = load i32, ptr %msi_state.sroa.17.0.msi2.sroa_idx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %203 = tail call i32 @llvm.bswap.i32(i32 %msi_state.sroa.0.0.copyload.i) #10
  %204 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %205, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %203) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %206 = tail call i32 @llvm.bswap.i32(i32 %msi_state.sroa.5.0.copyload.i) #10
  %207 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i23.1.i = getelementptr i8, ptr %208, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.1.i, i32 %206) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %209 = tail call i32 @llvm.bswap.i32(i32 %msi_state.sroa.7.0.copyload.i) #10
  %210 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i23.2.i = getelementptr i8, ptr %211, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.2.i, i32 %209) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %212 = tail call i32 @llvm.bswap.i32(i32 %msi_state.sroa.9.0.copyload.i) #10
  %213 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i23.3.i = getelementptr i8, ptr %214, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.3.i, i32 %212) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %215 = tail call i32 @llvm.bswap.i32(i32 %msi_state.sroa.11.0.copyload.i) #10
  %216 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i23.4.i = getelementptr i8, ptr %217, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.4.i, i32 %215) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %218 = tail call i32 @llvm.bswap.i32(i32 %msi_state.sroa.13.0.copyload.i) #10
  %219 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i23.5.i = getelementptr i8, ptr %220, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.5.i, i32 %218) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %221 = tail call i32 @llvm.bswap.i32(i32 %msi_state.sroa.15.0.copyload.i) #10
  %222 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i23.6.i = getelementptr i8, ptr %223, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.6.i, i32 %221) #10, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %224 = tail call i32 @llvm.bswap.i32(i32 %msi_state.sroa.17.0.copyload.i) #10
  %225 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i23.7.i = getelementptr i8, ptr %226, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.7.i, i32 %224) #10, !srcloc !512
  %227 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %228, i32 180
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %230 = or i32 %229, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %231 = ptrtoint ptr %afi.i81.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %afi.i81.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %232, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %230) #10, !srcloc !512
  %pex_clk = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 6
  %233 = ptrtoint ptr %pex_clk to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %pex_clk, align 4
  %call.i73 = tail call i32 @clk_prepare(ptr noundef %234) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i74, label %if.end.i76, label %tegra_pcie_setup_translations.exit.do.end13_crit_edge

tegra_pcie_setup_translations.exit.do.end13_crit_edge: ; preds = %tegra_pcie_setup_translations.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

if.end.i76:                                       ; preds = %tegra_pcie_setup_translations.exit
  %call1.i = tail call i32 @clk_enable(ptr noundef %234) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i75 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i75, label %if.end14, label %if.then3.i77

if.then3.i77:                                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %234) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then3.i77, %tegra_pcie_setup_translations.exit.do.end13_crit_edge
  %retval.0.i78.ph = phi i32 [ %call1.i, %if.then3.i77 ], [ %call.i73, %tegra_pcie_setup_translations.exit.do.end13_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.203, i32 noundef %retval.0.i78.ph) #13
  br label %pex_dpd_enable

if.end14:                                         ; preds = %if.end.i76
  %235 = ptrtoint ptr %pex_rst.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pex_rst.i, align 4
  %call15 = tail call i32 @reset_control_deassert(ptr noundef %236) #10
  %237 = ptrtoint ptr %soc2.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %soc2.i, align 4
  %program_uphy = getelementptr inbounds %struct.tegra_pcie_soc, ptr %238, i32 0, i32 15
  %239 = ptrtoint ptr %program_uphy to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %program_uphy, align 2, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool16.not = icmp eq i8 %240, 0
  br i1 %tobool16.not, label %if.end14.if.end25_crit_edge, label %if.then17

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then17:                                        ; preds = %if.end14
  %241 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %1, align 4
  %legacy_phy.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 13
  %243 = ptrtoint ptr %legacy_phy.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %legacy_phy.i, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not.i79 = icmp eq i8 %244, 0
  br i1 %tobool.not.i79, label %if.end8.i89, label %if.then.i82

if.then.i82:                                      ; preds = %if.then17
  %245 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %phy.i, align 4
  %tobool2.not.i81 = icmp eq ptr %246, null
  br i1 %tobool2.not.i81, label %if.else.i83, label %if.end.i86

if.else.i83:                                      ; preds = %if.then.i82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %pads.i.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 1
  %247 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %248, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !512
  %249 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %250, i32 160
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %252 = or i32 %251, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %253 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i61.i.i = getelementptr i8, ptr %254, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 %252) #10, !srcloc !512
  %pads_pll_ctl.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %238, i32 0, i32 4
  %255 = ptrtoint ptr %pads_pll_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %pads_pll_ctl.i.i, align 4
  %257 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i63.i.i = getelementptr i8, ptr %258, i32 %256
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %260 = and i32 %259, -4865
  %261 = tail call i32 @llvm.bswap.i32(i32 %260) #10
  %tx_ref_sel.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %238, i32 0, i32 5
  %262 = ptrtoint ptr %tx_ref_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %tx_ref_sel.i.i, align 4
  %or5.i.i = or i32 %261, %263
  %264 = ptrtoint ptr %pads_pll_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %pads_pll_ctl.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %266 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #10
  %267 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i65.i.i = getelementptr i8, ptr %268, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i.i, i32 %266) #10, !srcloc !512
  %269 = ptrtoint ptr %pads_pll_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %pads_pll_ctl.i.i, align 4
  %271 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %272, i32 %270
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %274 = and i32 %273, -33554433
  %275 = ptrtoint ptr %pads_pll_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %pads_pll_ctl.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %277 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i69.i.i = getelementptr i8, ptr %278, i32 %276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i.i, i32 %274) #10, !srcloc !512
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #10
  %279 = ptrtoint ptr %pads_pll_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %pads_pll_ctl.i.i, align 4
  %281 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i71.i.i = getelementptr i8, ptr %282, i32 %280
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %284 = or i32 %283, 33554432
  %285 = ptrtoint ptr %pads_pll_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %pads_pll_ctl.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %287 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i73.i.i = getelementptr i8, ptr %288, i32 %286
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i.i, i32 %284) #10, !srcloc !512
  %289 = ptrtoint ptr %soc2.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %soc2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %291 = load volatile i32, ptr @jiffies, align 128
  %pads_pll_ctl.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %290, i32 0, i32 4
  %add.neg.i.i.i = sub i32 -50, %291
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.else.i83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %292 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = add i32 %add.neg.i.i.i, %292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %if.end.thread.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %293 = ptrtoint ptr %pads_pll_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %pads_pll_ctl.i.i.i, align 4
  %295 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %296, i32 %294
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %298 = and i32 %297, 65536
  %tobool.not.i.i.i = icmp eq i32 %298, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %if.end.thread45.i

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.i

if.end.thread.i:                                  ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.230, i32 noundef -110) #13
  br label %do.end.i87

if.end.thread45.i:                                ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %299 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i75.i.i = getelementptr i8, ptr %300, i32 160
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %302 = and i32 %301, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %303 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i77.i.i = getelementptr i8, ptr %304, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i.i, i32 %302) #10, !srcloc !512
  %305 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i79.i.i = getelementptr i8, ptr %306, i32 160
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  %308 = or i32 %307, 1074003968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %309 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %pads.i.i.i, align 4
  %add.ptr.i81.i.i = getelementptr i8, ptr %310, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i.i, i32 %308) #10, !srcloc !512
  br label %if.end25

if.end.i86:                                       ; preds = %if.then.i82
  %call.i84 = tail call i32 @phy_power_on(ptr noundef nonnull %246) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp.i85 = icmp slt i32 %call.i84, 0
  br i1 %cmp.i85, label %if.end.i86.do.end.i87_crit_edge, label %if.end.i86.if.end25_crit_edge

if.end.i86.if.end25_crit_edge:                    ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end.i86.do.end.i87_crit_edge:                  ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i87

do.end.i87:                                       ; preds = %if.end.i86.do.end.i87_crit_edge, %if.end.thread.i
  %err.044.i = phi i32 [ -110, %if.end.thread.i ], [ %call.i84, %if.end.i86.do.end.i87_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.225, i32 noundef %err.044.i) #13
  br label %do.end23

if.end8.i89:                                      ; preds = %if.then17
  %311 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %.pn54.i = load ptr, ptr %ports.i, align 4
  %cmp10.not55.i = icmp eq ptr %.pn54.i, %ports.i
  br i1 %cmp10.not55.i, label %if.end8.i89.if.end25_crit_edge, label %if.end8.i89.for.body.i90_crit_edge

if.end8.i89.for.body.i90_crit_edge:               ; preds = %if.end8.i89
  br label %for.body.i90

if.end8.i89.if.end25_crit_edge:                   ; preds = %if.end8.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.body.i90:                                     ; preds = %tegra_pcie_port_phy_power_on.exit.i.for.body.i90_crit_edge, %if.end8.i89.for.body.i90_crit_edge
  %.pn56.i = phi ptr [ %.pn.i92, %tegra_pcie_port_phy_power_on.exit.i.for.body.i90_crit_edge ], [ %.pn54.i, %if.end8.i89.for.body.i90_crit_edge ]
  %port.0.i = getelementptr i8, ptr %.pn56.i, i32 -8
  %312 = ptrtoint ptr %port.0.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %port.0.i, align 4
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %313, align 4
  %lanes.i.i = getelementptr i8, ptr %.pn56.i, i32 48
  %316 = ptrtoint ptr %lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %lanes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %cmp13.not.i.i = icmp eq i32 %317, 0
  br i1 %cmp13.not.i.i, label %for.body.i90.tegra_pcie_port_phy_power_on.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i90.tegra_pcie_port_phy_power_on.exit.i_crit_edge: ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_phy_power_on.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i90
  %phys.i.i = getelementptr i8, ptr %.pn56.i, i32 52
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %318 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %phys.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %319, i32 %i.014.i.i
  %320 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i91 = tail call i32 @phy_power_on(ptr noundef %321) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %cmp2.i.i = icmp slt i32 %call.i.i91, 0
  br i1 %cmp2.i.i, label %do.end16.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %322 = ptrtoint ptr %lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %lanes.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %323
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.tegra_pcie_port_phy_power_on.exit.i_crit_edge

for.inc.i.i.tegra_pcie_port_phy_power_on.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_phy_power_on.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

tegra_pcie_port_phy_power_on.exit.i:              ; preds = %for.inc.i.i.tegra_pcie_port_phy_power_on.exit.i_crit_edge, %for.body.i90.tegra_pcie_port_phy_power_on.exit.i_crit_edge
  %324 = ptrtoint ptr %.pn56.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %.pn.i92 = load ptr, ptr %.pn56.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn.i92, %ports.i
  br i1 %cmp10.not.i, label %tegra_pcie_port_phy_power_on.exit.i.if.end25_crit_edge, label %tegra_pcie_port_phy_power_on.exit.i.for.body.i90_crit_edge

tegra_pcie_port_phy_power_on.exit.i.for.body.i90_crit_edge: ; preds = %tegra_pcie_port_phy_power_on.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i90

tegra_pcie_port_phy_power_on.exit.i.if.end25_crit_edge: ; preds = %tegra_pcie_port_phy_power_on.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end16.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %315, ptr noundef nonnull @.str.232, i32 noundef %i.014.i.i, i32 noundef %call.i.i91) #13
  %index.i93 = getelementptr i8, ptr %.pn56.i, i32 44
  %325 = ptrtoint ptr %index.i93 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %index.i93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.228, i32 noundef %326, i32 noundef %call.i.i91) #13
  br label %do.end23

do.end23:                                         ; preds = %do.end16.i, %do.end.i87
  %retval.0.i94 = phi i32 [ %call.i.i91, %do.end16.i ], [ %err.044.i, %do.end.i87 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.206, i32 noundef %retval.0.i94) #13
  %327 = ptrtoint ptr %pex_rst.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %pex_rst.i, align 4
  %call27 = tail call i32 @reset_control_assert(ptr noundef %328) #10
  %329 = ptrtoint ptr %pex_clk to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %pex_clk, align 4
  tail call void @clk_disable(ptr noundef %330) #10
  tail call void @clk_unprepare(ptr noundef %330) #10
  br label %pex_dpd_enable

if.end25:                                         ; preds = %tegra_pcie_port_phy_power_on.exit.i.if.end25_crit_edge, %if.end8.i89.if.end25_crit_edge, %if.end.i86.if.end25_crit_edge, %if.end.thread45.i, %if.end14.if.end25_crit_edge
  %331 = ptrtoint ptr %soc2.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %soc2.i, align 4
  %pads_refclk_cfg0.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %332, i32 0, i32 6
  %333 = ptrtoint ptr %pads_refclk_cfg0.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %pads_refclk_cfg0.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %335 = tail call i32 @llvm.bswap.i32(i32 %334) #10
  %pads.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 1
  %336 = ptrtoint ptr %pads.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %pads.i.i, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %337, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i96, i32 %335) #10, !srcloc !512
  %338 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %332, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %339)
  %cmp.i97 = icmp ugt i32 %339, 2
  br i1 %cmp.i97, label %if.then.i98, label %if.end25.tegra_pcie_apply_pad_settings.exit_crit_edge

if.end25.tegra_pcie_apply_pad_settings.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_apply_pad_settings.exit

if.then.i98:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %pads_refclk_cfg1.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %332, i32 0, i32 7
  %340 = ptrtoint ptr %pads_refclk_cfg1.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %pads_refclk_cfg1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  tail call void @arm_heavy_mb() #10
  %342 = tail call i32 @llvm.bswap.i32(i32 %341) #10
  %343 = ptrtoint ptr %pads.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %pads.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %344, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %342) #10, !srcloc !512
  br label %tegra_pcie_apply_pad_settings.exit

tegra_pcie_apply_pad_settings.exit:               ; preds = %if.then.i98, %if.end25.tegra_pcie_apply_pad_settings.exit_crit_edge
  %345 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %1, align 4
  %347 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %ports.i, align 4
  %cmp.not72.i = icmp eq ptr %348, %ports.i
  br i1 %cmp.not72.i, label %tegra_pcie_apply_pad_settings.exit.for.end.i113_crit_edge, label %tegra_pcie_apply_pad_settings.exit.do.end.i104_crit_edge

tegra_pcie_apply_pad_settings.exit.do.end.i104_crit_edge: ; preds = %tegra_pcie_apply_pad_settings.exit
  br label %do.end.i104

tegra_pcie_apply_pad_settings.exit.for.end.i113_crit_edge: ; preds = %tegra_pcie_apply_pad_settings.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i113

do.end.i104:                                      ; preds = %tegra_pcie_port_enable.exit.i.do.end.i104_crit_edge, %tegra_pcie_apply_pad_settings.exit.do.end.i104_crit_edge
  %.pn.in73.i = phi ptr [ %.pn.i102, %tegra_pcie_port_enable.exit.i.do.end.i104_crit_edge ], [ %348, %tegra_pcie_apply_pad_settings.exit.do.end.i104_crit_edge ]
  %port.0.i101 = getelementptr i8, ptr %.pn.in73.i, i32 -8
  %349 = ptrtoint ptr %.pn.in73.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %.pn.i102 = load ptr, ptr %.pn.in73.i, align 4
  %index.i103 = getelementptr i8, ptr %.pn.in73.i, i32 44
  %350 = ptrtoint ptr %index.i103 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %index.i103, align 4
  %lanes.i = getelementptr i8, ptr %.pn.in73.i, i32 48
  %352 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %lanes.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %346, ptr noundef nonnull @.str.234, i32 noundef %351, i32 noundef %353) #13
  %354 = ptrtoint ptr %index.i103 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %index.i103, align 4
  %356 = zext i32 %355 to i64
  call void @__sanitizer_cov_trace_switch(i64 %356, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %355, label %do.end.i104.tegra_pcie_port_get_pex_ctrl.exit.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb2.i.i.i
    i32 2, label %sw.bb3.i.i.i
  ]

do.end.i104.tegra_pcie_port_get_pex_ctrl.exit.i.i_crit_edge: ; preds = %do.end.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_pex_ctrl.exit.i.i

sw.bb.i.i.i:                                      ; preds = %do.end.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_pex_ctrl.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %do.end.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_pex_ctrl.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %do.end.i104
  call void @__sanitizer_cov_trace_pc() #12
  %357 = ptrtoint ptr %port.0.i101 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %port.0.i101, align 4
  %soc1.i.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %358, i32 0, i32 20
  %359 = ptrtoint ptr %soc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %soc1.i.i.i, align 4
  %afi_pex2_ctrl.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %360, i32 0, i32 3
  %361 = ptrtoint ptr %afi_pex2_ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %afi_pex2_ctrl.i.i.i, align 4
  br label %tegra_pcie_port_get_pex_ctrl.exit.i.i

tegra_pcie_port_get_pex_ctrl.exit.i.i:            ; preds = %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb.i.i.i, %do.end.i104.tegra_pcie_port_get_pex_ctrl.exit.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ 0, %do.end.i104.tegra_pcie_port_get_pex_ctrl.exit.i.i_crit_edge ], [ %362, %sw.bb3.i.i.i ], [ 280, %sw.bb2.i.i.i ], [ 272, %sw.bb.i.i.i ]
  %363 = ptrtoint ptr %port.0.i101 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %port.0.i101, align 4
  %soc1.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %364, i32 0, i32 20
  %365 = ptrtoint ptr %soc1.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %soc1.i.i, align 4
  %afi.i.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %364, i32 0, i32 2
  %367 = ptrtoint ptr %afi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %afi.i.i.i, align 4
  %add.ptr.i.i.i105 = getelementptr i8, ptr %368, i32 %ret.0.i.i.i
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i105) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %has_pex_clkreq_en.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %366, i32 0, i32 9
  %370 = ptrtoint ptr %has_pex_clkreq_en.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %has_pex_clkreq_en.i.i, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %371)
  %tobool.not.i.i106 = icmp eq i8 %371, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i106, i32 8, i32 10
  %372 = or i32 %369, 268435456
  %373 = tail call i32 @llvm.bswap.i32(i32 %372) #10
  %or5.i.i107 = or i32 %spec.select.v.i.i, %373
  %374 = ptrtoint ptr %port.0.i101 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %port.0.i101, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %376 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i107) #10
  %afi.i35.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %375, i32 0, i32 2
  %377 = ptrtoint ptr %afi.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %afi.i35.i.i, align 4
  %add.ptr.i36.i.i = getelementptr i8, ptr %378, i32 %ret.0.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i.i, i32 %376) #10, !srcloc !512
  tail call fastcc void @tegra_pcie_port_reset(ptr noundef %port.0.i101) #10
  %force_pca_enable.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %366, i32 0, i32 14
  %379 = ptrtoint ptr %force_pca_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %force_pca_enable.i.i, align 1, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %tobool7.not.i.i = icmp eq i8 %380, 0
  br i1 %tobool7.not.i.i, label %tegra_pcie_port_get_pex_ctrl.exit.i.i.if.end14.i.i_crit_edge, label %if.then8.i.i

tegra_pcie_port_get_pex_ctrl.exit.i.i.if.end14.i.i_crit_edge: ; preds = %tegra_pcie_port_get_pex_ctrl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.then8.i.i:                                     ; preds = %tegra_pcie_port_get_pex_ctrl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr i8, ptr %.pn.in73.i, i32 40
  %381 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %382, i32 4008
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i108) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !521
  %384 = or i32 %383, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !522
  tail call void @arm_heavy_mb() #10
  %385 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %base.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %386, i32 4008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %384) #10, !srcloc !512
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then8.i.i, %tegra_pcie_port_get_pex_ctrl.exit.i.i.if.end14.i.i_crit_edge
  %387 = ptrtoint ptr %port.0.i101 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %port.0.i101, align 4
  %soc1.i37.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %388, i32 0, i32 20
  %389 = ptrtoint ptr %soc1.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %soc1.i37.i.i, align 4
  %base.i.i.i = getelementptr i8, ptr %.pn.in73.i, i32 40
  %391 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i38.i.i = getelementptr i8, ptr %392, i32 3912
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !523
  %394 = or i32 %393, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call void @arm_heavy_mb() #10
  %395 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %396, i32 3912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %394) #10, !srcloc !512
  %397 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %398, i32 3840
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !525
  %400 = or i32 %399, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !526
  tail call void @arm_heavy_mb() #10
  %401 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr18.i.i.i = getelementptr i8, ptr %402, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i.i, i32 %400) #10, !srcloc !512
  %403 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr22.i.i.i = getelementptr i8, ptr %404, i32 3916
  %405 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !527
  %406 = or i32 %405, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !528
  tail call void @arm_heavy_mb() #10
  %407 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr31.i.i.i = getelementptr i8, ptr %408, i32 3916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i.i.i, i32 %406) #10, !srcloc !512
  %409 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr35.i.i.i = getelementptr i8, ptr %410, i32 4064
  %411 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !529
  %412 = or i32 %411, 32896
  %413 = tail call i32 @llvm.bswap.i32(i32 %412) #10
  %update_clamp_threshold.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %390, i32 0, i32 16
  %414 = ptrtoint ptr %update_clamp_threshold.i.i.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %update_clamp_threshold.i.i.i, align 1, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %415)
  %tobool.not.i.i.i109 = icmp eq i8 %415, 0
  %and.i.i.i = and i32 %413, -2139029505
  %or41.i.i.i = or i32 %and.i.i.i, 252641280
  %value.0.i.i.i = select i1 %tobool.not.i.i.i109, i32 %413, i32 %or41.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !530
  tail call void @arm_heavy_mb() #10
  %416 = tail call i32 @llvm.bswap.i32(i32 %value.0.i.i.i) #10
  %417 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr46.i.i.i = getelementptr i8, ptr %418, i32 4064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i.i.i, i32 %416) #10, !srcloc !512
  %enable.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %366, i32 0, i32 20, i32 1
  %419 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %enable.i.i, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool15.not.i.i = icmp eq i8 %420, 0
  br i1 %tobool15.not.i.i, label %if.end14.i.i.if.end17.i.i_crit_edge, label %if.then16.i.i

if.end14.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %421 = ptrtoint ptr %port.0.i101 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %port.0.i101, align 4
  %soc1.i39.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %422, i32 0, i32 20
  %423 = ptrtoint ptr %soc1.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %soc1.i39.i.i, align 4
  %425 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i41.i.i = getelementptr i8, ptr %426, i32 3716
  %427 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !531
  %428 = and i32 %427, 65535
  %429 = tail call i32 @llvm.bswap.i32(i32 %428) #10
  %ectl.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %424, i32 0, i32 20
  %430 = ptrtoint ptr %ectl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %ectl.i.i.i, align 4
  %or.i.i.i = or i32 %429, %431
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !532
  tail call void @arm_heavy_mb() #10
  %432 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #10
  %433 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i42.i.i = getelementptr i8, ptr %434, i32 3716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i42.i.i, i32 %432) #10, !srcloc !512
  %435 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr8.i43.i.i = getelementptr i8, ptr %436, i32 3724
  %437 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i43.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !533
  %438 = and i32 %437, -65536
  %439 = tail call i32 @llvm.bswap.i32(i32 %438) #10
  %rp_ectl_4_r1.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %424, i32 0, i32 20, i32 0, i32 1
  %440 = ptrtoint ptr %rp_ectl_4_r1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %rp_ectl_4_r1.i.i.i, align 4
  %shl.i.i.i = shl i32 %441, 16
  %or15.i.i.i = or i32 %shl.i.i.i, %439
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !534
  tail call void @arm_heavy_mb() #10
  %442 = tail call i32 @llvm.bswap.i32(i32 %or15.i.i.i) #10
  %443 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr20.i.i.i = getelementptr i8, ptr %444, i32 3724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i.i, i32 %442) #10, !srcloc !512
  %445 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr24.i.i.i = getelementptr i8, ptr %446, i32 3728
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !535
  %rp_ectl_5_r1.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %424, i32 0, i32 20, i32 0, i32 2
  %448 = ptrtoint ptr %rp_ectl_5_r1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %rp_ectl_5_r1.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !536
  tail call void @arm_heavy_mb() #10
  %450 = tail call i32 @llvm.bswap.i32(i32 %449) #10
  %451 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr36.i.i.i = getelementptr i8, ptr %452, i32 3728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i.i, i32 %450) #10, !srcloc !512
  %453 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr40.i.i.i = getelementptr i8, ptr %454, i32 3732
  %455 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !537
  %rp_ectl_6_r1.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %424, i32 0, i32 20, i32 0, i32 3
  %456 = ptrtoint ptr %rp_ectl_6_r1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %rp_ectl_6_r1.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !538
  tail call void @arm_heavy_mb() #10
  %458 = tail call i32 @llvm.bswap.i32(i32 %457) #10
  %459 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr52.i.i.i = getelementptr i8, ptr %460, i32 3732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i.i.i, i32 %458) #10, !srcloc !512
  %461 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr56.i.i.i = getelementptr i8, ptr %462, i32 3748
  %463 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !539
  %464 = and i32 %463, 65535
  %465 = tail call i32 @llvm.bswap.i32(i32 %464) #10
  %rp_ectl_2_r2.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %424, i32 0, i32 20, i32 0, i32 4
  %466 = ptrtoint ptr %rp_ectl_2_r2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %rp_ectl_2_r2.i.i.i, align 4
  %or63.i.i.i = or i32 %465, %467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !540
  tail call void @arm_heavy_mb() #10
  %468 = tail call i32 @llvm.bswap.i32(i32 %or63.i.i.i) #10
  %469 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr68.i.i.i = getelementptr i8, ptr %470, i32 3748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i.i.i, i32 %468) #10, !srcloc !512
  %471 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr72.i.i.i = getelementptr i8, ptr %472, i32 3756
  %473 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !541
  %474 = and i32 %473, -65536
  %475 = tail call i32 @llvm.bswap.i32(i32 %474) #10
  %rp_ectl_4_r2.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %424, i32 0, i32 20, i32 0, i32 5
  %476 = ptrtoint ptr %rp_ectl_4_r2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %rp_ectl_4_r2.i.i.i, align 4
  %shl79.i.i.i = shl i32 %477, 16
  %or80.i.i.i = or i32 %shl79.i.i.i, %475
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !542
  tail call void @arm_heavy_mb() #10
  %478 = tail call i32 @llvm.bswap.i32(i32 %or80.i.i.i) #10
  %479 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr85.i.i.i = getelementptr i8, ptr %480, i32 3756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i.i.i, i32 %478) #10, !srcloc !512
  %481 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr89.i.i.i = getelementptr i8, ptr %482, i32 3760
  %483 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !543
  %rp_ectl_5_r2.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %424, i32 0, i32 20, i32 0, i32 6
  %484 = ptrtoint ptr %rp_ectl_5_r2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %rp_ectl_5_r2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !544
  tail call void @arm_heavy_mb() #10
  %486 = tail call i32 @llvm.bswap.i32(i32 %485) #10
  %487 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr101.i.i.i = getelementptr i8, ptr %488, i32 3760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i.i.i, i32 %486) #10, !srcloc !512
  %489 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr105.i.i.i = getelementptr i8, ptr %490, i32 3764
  %491 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !545
  %rp_ectl_6_r2.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %424, i32 0, i32 20, i32 0, i32 7
  %492 = ptrtoint ptr %rp_ectl_6_r2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %rp_ectl_6_r2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !546
  tail call void @arm_heavy_mb() #10
  %494 = tail call i32 @llvm.bswap.i32(i32 %493) #10
  %495 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr117.i.i.i = getelementptr i8, ptr %496, i32 3764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117.i.i.i, i32 %494) #10, !srcloc !512
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then16.i.i, %if.end14.i.i.if.end17.i.i_crit_edge
  %497 = ptrtoint ptr %port.0.i101 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %port.0.i101, align 4
  %soc1.i44.i.i = getelementptr inbounds %struct.tegra_pcie, ptr %498, i32 0, i32 20
  %499 = ptrtoint ptr %soc1.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %soc1.i44.i.i, align 4
  %program_deskew_time.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %500, i32 0, i32 17
  %501 = ptrtoint ptr %program_deskew_time.i.i.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %program_deskew_time.i.i.i, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %502)
  %tobool.not.i45.i.i = icmp eq i8 %502, 0
  br i1 %tobool.not.i45.i.i, label %if.end17.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end17.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %503 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i47.i.i = getelementptr i8, ptr %504, i32 3908
  %505 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !547
  %506 = and i32 %505, -15728641
  %507 = or i32 %506, 9437184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !548
  tail call void @arm_heavy_mb() #10
  %508 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i48.i.i = getelementptr i8, ptr %509, i32 3908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i48.i.i, i32 %507) #10, !srcloc !512
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end17.i.i.if.end.i.i.i_crit_edge
  %update_fc_timer.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %500, i32 0, i32 18
  %510 = ptrtoint ptr %update_fc_timer.i.i.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %update_fc_timer.i.i.i, align 1, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %511)
  %tobool5.not.i.i.i = icmp eq i8 %511, 0
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.tegra_pcie_port_enable.exit.i_crit_edge, label %if.then6.i.i.i

if.end.i.i.i.tegra_pcie_port_enable.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_enable.exit.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %512 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr10.i.i.i = getelementptr i8, ptr %513, i32 3840
  %514 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !549
  %515 = and i32 %514, -64516
  %516 = tail call i32 @llvm.bswap.i32(i32 %515) #10
  %update_fc_threshold.i.i.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %500, i32 0, i32 8
  %517 = ptrtoint ptr %update_fc_threshold.i.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %update_fc_threshold.i.i.i, align 4
  %or15.i49.i.i = or i32 %516, %518
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !550
  tail call void @arm_heavy_mb() #10
  %519 = tail call i32 @llvm.bswap.i32(i32 %or15.i49.i.i) #10
  %520 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr20.i50.i.i = getelementptr i8, ptr %521, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i50.i.i, i32 %519) #10, !srcloc !512
  br label %tegra_pcie_port_enable.exit.i

tegra_pcie_port_enable.exit.i:                    ; preds = %if.then6.i.i.i, %if.end.i.i.i.tegra_pcie_port_enable.exit.i_crit_edge
  %522 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr25.i.i.i = getelementptr i8, ptr %523, i32 176
  %524 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !551
  %525 = and i32 %524, -251658241
  %526 = or i32 %525, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !552
  tail call void @arm_heavy_mb() #10
  %527 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr35.i51.i.i = getelementptr i8, ptr %528, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i51.i.i, i32 %526) #10, !srcloc !512
  %cmp.not.i110 = icmp eq ptr %.pn.i102, %ports.i
  br i1 %cmp.not.i110, label %tegra_pcie_port_enable.exit.i.for.end.i113_crit_edge, label %tegra_pcie_port_enable.exit.i.do.end.i104_crit_edge

tegra_pcie_port_enable.exit.i.do.end.i104_crit_edge: ; preds = %tegra_pcie_port_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i104

tegra_pcie_port_enable.exit.i.for.end.i113_crit_edge: ; preds = %tegra_pcie_port_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i113

for.end.i113:                                     ; preds = %tegra_pcie_port_enable.exit.i.for.end.i113_crit_edge, %tegra_pcie_apply_pad_settings.exit.for.end.i113_crit_edge
  %529 = ptrtoint ptr %pcie_xrst.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %pcie_xrst.i, align 4
  %call.i112 = tail call i32 @reset_control_deassert(ptr noundef %530) #10
  %531 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %ports.i, align 4
  %cmp27.not76.i = icmp eq ptr %532, %ports.i
  br i1 %cmp27.not76.i, label %for.end.i113.for.end41.i_crit_edge, label %for.end.i113.for.body29.i_crit_edge

for.end.i113.for.body29.i_crit_edge:              ; preds = %for.end.i113
  br label %for.body29.i

for.end.i113.for.end41.i_crit_edge:               ; preds = %for.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41.i

for.body29.i:                                     ; preds = %for.inc35.i.for.body29.i_crit_edge, %for.end.i113.for.body29.i_crit_edge
  %.pn65.in77.i = phi ptr [ %.pn6580.i, %for.inc35.i.for.body29.i_crit_edge ], [ %532, %for.end.i113.for.body29.i_crit_edge ]
  %port.179.i = getelementptr i8, ptr %.pn65.in77.i, i32 -8
  %533 = ptrtoint ptr %.pn65.in77.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %.pn6580.i = load ptr, ptr %.pn65.in77.i, align 4
  %call30.i = tail call fastcc zeroext i1 @tegra_pcie_port_check_link(ptr noundef %port.179.i) #10
  br i1 %call30.i, label %for.body29.i.for.inc35.i_crit_edge, label %do.end33.i

for.body29.i.for.inc35.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc35.i

do.end33.i:                                       ; preds = %for.body29.i
  %index34.i = getelementptr i8, ptr %.pn65.in77.i, i32 44
  %534 = ptrtoint ptr %index34.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %index34.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %346, ptr noundef nonnull @.str.237, i32 noundef %535) #13
  tail call fastcc void @tegra_pcie_port_disable(ptr noundef %port.179.i) #10
  %536 = ptrtoint ptr %port.179.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %port.179.i, align 4
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %537, align 4
  %base.i68.i = getelementptr i8, ptr %.pn65.in77.i, i32 40
  %540 = ptrtoint ptr %base.i68.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %base.i68.i, align 4
  tail call void @devm_iounmap(ptr noundef %539, ptr noundef %541) #10
  %regs.i.i = getelementptr i8, ptr %.pn65.in77.i, i32 8
  %542 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %regs.i.i, align 4
  %end.i.i.i = getelementptr i8, ptr %.pn65.in77.i, i32 12
  %544 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %end.i.i.i, align 4
  %sub.i.i.i114 = sub i32 1, %543
  %add.i.i.i = add i32 %sub.i.i.i114, %545
  tail call void @__devm_release_region(ptr noundef %539, ptr noundef nonnull @iomem_resource, i32 noundef %543, i32 noundef %add.i.i.i) #10
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn65.in77.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end33.i.tegra_pcie_port_free.exit.i_crit_edge

do.end33.i.tegra_pcie_port_free.exit.i_crit_edge: ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_free.exit.i

if.end.i.i.i.i:                                   ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr i8, ptr %.pn65.in77.i, i32 4
  %546 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %prev.i.i.i.i, align 4
  %548 = ptrtoint ptr %.pn65.in77.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %.pn65.in77.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %549, i32 0, i32 1
  %550 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store ptr %547, ptr %prev1.i.i.i.i.i, align 4
  %551 = ptrtoint ptr %547 to i32
  call void @__asan_store4_noabort(i32 %551)
  store volatile ptr %549, ptr %547, align 4
  br label %tegra_pcie_port_free.exit.i

tegra_pcie_port_free.exit.i:                      ; preds = %if.end.i.i.i.i, %do.end33.i.tegra_pcie_port_free.exit.i_crit_edge
  %552 = ptrtoint ptr %.pn65.in77.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn65.in77.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn65.in77.i, i32 4
  %553 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @devm_kfree(ptr noundef %539, ptr noundef %port.179.i) #10
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %tegra_pcie_port_free.exit.i, %for.body29.i.for.inc35.i_crit_edge
  %cmp27.not.i = icmp eq ptr %.pn6580.i, %ports.i
  br i1 %cmp27.not.i, label %for.inc35.i.for.end41.i_crit_edge, label %for.inc35.i.for.body29.i_crit_edge

for.inc35.i.for.body29.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29.i

for.inc35.i.for.end41.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41.i

for.end41.i:                                      ; preds = %for.inc35.i.for.end41.i_crit_edge, %for.end.i113.for.end41.i_crit_edge
  %554 = ptrtoint ptr %soc2.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %soc2.i, align 4
  %has_gen2.i116 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %555, i32 0, i32 13
  %556 = ptrtoint ptr %has_gen2.i116 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %has_gen2.i116, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %557)
  %tobool.not.i117 = icmp eq i8 %557, 0
  br i1 %tobool.not.i117, label %for.end41.i.cleanup_crit_edge, label %if.then42.i

for.end41.i.cleanup_crit_edge:                    ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42.i:                                      ; preds = %for.end41.i
  %558 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %1, align 4
  %560 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %.pn101.i.i = load ptr, ptr %ports.i, align 4
  %cmp.not102.i.i = icmp eq ptr %.pn101.i.i, %ports.i
  br i1 %cmp.not102.i.i, label %if.then42.i.cleanup_crit_edge, label %if.then42.i.for.body.i.i118_crit_edge

if.then42.i.for.body.i.i118_crit_edge:            ; preds = %if.then42.i
  br label %for.body.i.i118

if.then42.i.cleanup_crit_edge:                    ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.i118:                                  ; preds = %for.inc.i.i120.for.body.i.i118_crit_edge, %if.then42.i.for.body.i.i118_crit_edge
  %.pn103.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i120.for.body.i.i118_crit_edge ], [ %.pn101.i.i, %if.then42.i.for.body.i.i118_crit_edge ]
  %base.i69.i = getelementptr i8, ptr %.pn103.i.i, i32 40
  %561 = ptrtoint ptr %base.i69.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %base.i69.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %562, i32 176
  %563 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !553
  %564 = and i32 %563, -251658241
  %565 = or i32 %564, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !554
  tail call void @arm_heavy_mb() #10
  %566 = ptrtoint ptr %base.i69.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %base.i69.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %567, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %565) #10, !srcloc !512
  %call8.i.i = tail call i64 @ktime_get() #10
  %add.i.i70.i = add i64 %call8.i.i, 100000000
  %call1094.i.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call1094.i.i, i64 %add.i.i70.i)
  %cmp.i.i95.i.i = icmp slt i64 %call1094.i.i, %add.i.i70.i
  br i1 %cmp.i.i95.i.i, label %for.body.i.i118.while.body.i.i_crit_edge, label %while.end.i.i

for.body.i.i118.while.body.i.i_crit_edge:         ; preds = %for.body.i.i118
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i119.while.body.i.i_crit_edge, %for.body.i.i118.while.body.i.i_crit_edge
  %568 = ptrtoint ptr %base.i69.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %base.i69.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %569, i32 144
  %570 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !555
  %571 = and i32 %570, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %571)
  %cmp20.i.i = icmp eq i32 %571, 0
  br i1 %cmp20.i.i, label %while.body.i.i.if.end26.i.i_crit_edge, label %if.end.i.i119

while.body.i.i.if.end26.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

if.end.i.i119:                                    ; preds = %while.body.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #10
  %call10.i.i = tail call i64 @ktime_get() #10
  %cmp.i.i.i.i = icmp slt i64 %call10.i.i, %add.i.i70.i
  br i1 %cmp.i.i.i.i, label %if.end.i.i119.while.body.i.i_crit_edge, label %if.end.i.i119.do.end25.i.i_crit_edge

if.end.i.i119.do.end25.i.i_crit_edge:             ; preds = %if.end.i.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25.i.i

if.end.i.i119.while.body.i.i_crit_edge:           ; preds = %if.end.i.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %for.body.i.i118
  %572 = and i32 %563, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %572)
  %tobool.not.i71.i = icmp eq i32 %572, 0
  br i1 %tobool.not.i71.i, label %while.end.i.i.if.end26.i.i_crit_edge, label %while.end.i.i.do.end25.i.i_crit_edge

while.end.i.i.do.end25.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25.i.i

while.end.i.i.if.end26.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

do.end25.i.i:                                     ; preds = %while.end.i.i.do.end25.i.i_crit_edge, %if.end.i.i119.do.end25.i.i_crit_edge
  %index.i.i = getelementptr i8, ptr %.pn103.i.i, i32 44
  %573 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %index.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %559, ptr noundef nonnull @.str.241, i32 noundef %574) #13
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %do.end25.i.i, %while.end.i.i.if.end26.i.i_crit_edge, %while.body.i.i.if.end26.i.i_crit_edge
  %575 = ptrtoint ptr %base.i69.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %base.i69.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %576, i32 144
  %577 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !556
  %578 = or i32 %577, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !557
  tail call void @arm_heavy_mb() #10
  %579 = ptrtoint ptr %base.i69.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %base.i69.i, align 4
  %add.ptr39.i.i = getelementptr i8, ptr %580, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i.i, i32 %578) #10, !srcloc !512
  %call40.i.i = tail call i64 @ktime_get() #10
  %add.i92.i.i = add i64 %call40.i.i, 100000000
  %call4397.i.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call4397.i.i, i64 %add.i92.i.i)
  %cmp.i.i9398.i.i = icmp slt i64 %call4397.i.i, %add.i92.i.i
  br i1 %cmp.i.i9398.i.i, label %if.end26.i.i.while.body45.i.i_crit_edge, label %while.end57.i.i

if.end26.i.i.while.body45.i.i_crit_edge:          ; preds = %if.end26.i.i
  br label %while.body45.i.i

while.body45.i.i:                                 ; preds = %if.end56.i.i.while.body45.i.i_crit_edge, %if.end26.i.i.while.body45.i.i_crit_edge
  %581 = ptrtoint ptr %base.i69.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %base.i69.i, align 4
  %add.ptr49.i.i = getelementptr i8, ptr %582, i32 144
  %583 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !558
  %584 = and i32 %583, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %584)
  %cmp54.i.i = icmp eq i32 %584, 0
  br i1 %cmp54.i.i, label %while.body45.i.i.for.inc.i.i120_crit_edge, label %if.end56.i.i

while.body45.i.i.for.inc.i.i120_crit_edge:        ; preds = %while.body45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i120

if.end56.i.i:                                     ; preds = %while.body45.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #10
  %call43.i.i = tail call i64 @ktime_get() #10
  %cmp.i.i93.i.i = icmp slt i64 %call43.i.i, %add.i92.i.i
  br i1 %cmp.i.i93.i.i, label %if.end56.i.i.while.body45.i.i_crit_edge, label %if.end56.i.i.do.end63.i.i_crit_edge

if.end56.i.i.do.end63.i.i_crit_edge:              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63.i.i

if.end56.i.i.while.body45.i.i_crit_edge:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body45.i.i

while.end57.i.i:                                  ; preds = %if.end26.i.i
  %585 = and i32 %577, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %585)
  %tobool59.not.i.i = icmp eq i32 %585, 0
  br i1 %tobool59.not.i.i, label %while.end57.i.i.for.inc.i.i120_crit_edge, label %while.end57.i.i.do.end63.i.i_crit_edge

while.end57.i.i.do.end63.i.i_crit_edge:           ; preds = %while.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63.i.i

while.end57.i.i.for.inc.i.i120_crit_edge:         ; preds = %while.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i120

do.end63.i.i:                                     ; preds = %while.end57.i.i.do.end63.i.i_crit_edge, %if.end56.i.i.do.end63.i.i_crit_edge
  %index64.i.i = getelementptr i8, ptr %.pn103.i.i, i32 44
  %586 = ptrtoint ptr %index64.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %index64.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %559, ptr noundef nonnull @.str.244, i32 noundef %587) #13
  br label %for.inc.i.i120

for.inc.i.i120:                                   ; preds = %do.end63.i.i, %while.end57.i.i.for.inc.i.i120_crit_edge, %while.body45.i.i.for.inc.i.i120_crit_edge
  %588 = ptrtoint ptr %.pn103.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %.pn.i.i = load ptr, ptr %.pn103.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i
  br i1 %cmp.not.i.i, label %for.inc.i.i120.cleanup_crit_edge, label %for.inc.i.i120.for.body.i.i118_crit_edge

for.inc.i.i120.for.body.i.i118_crit_edge:         ; preds = %for.inc.i.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i118

for.inc.i.i120.cleanup_crit_edge:                 ; preds = %for.inc.i.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pex_dpd_enable:                                   ; preds = %do.end23, %do.end13
  %err.0 = phi i32 [ %retval.0.i78.ph, %do.end13 ], [ %retval.0.i94, %do.end23 ]
  %call29 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #10
  br label %poweroff

poweroff:                                         ; preds = %pex_dpd_enable, %do.end6
  %err.1 = phi i32 [ %call2, %do.end6 ], [ %err.0, %pex_dpd_enable ]
  tail call fastcc void @tegra_pcie_power_off(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %poweroff, %for.inc.i.i120.cleanup_crit_edge, %if.then42.i.cleanup_crit_edge, %for.end41.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.2.i, %do.end ], [ %err.1, %poweroff ], [ 0, %for.end41.i.cleanup_crit_edge ], [ 0, %if.then42.i.cleanup_crit_edge ], [ 0, %for.inc.i.i120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_power_off(ptr nocapture noundef readonly %pcie) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %soc2 = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 20
  %2 = ptrtoint ptr %soc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc2, align 4
  %afi_rst = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 11
  %4 = ptrtoint ptr %afi_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %afi_rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %5) #10
  %pll_e = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 8
  %6 = ptrtoint ptr %pll_e to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_e, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %has_cml_clk = getelementptr inbounds %struct.tegra_pcie_soc, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %has_cml_clk to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_cml_clk, align 1, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cml_clk = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 9
  %10 = ptrtoint ptr %cml_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cml_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %afi_clk = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 7
  %12 = ptrtoint ptr %afi_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %afi_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  %pm_domain = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pm_domain, align 8
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @tegra_powergate_power_off(i32 noundef 3) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %num_supplies = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 19
  %16 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.tegra_pcie, ptr %pcie, i32 0, i32 18
  %18 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %supplies, align 4
  %call7 = tail call i32 @regulator_bulk_disable(i32 noundef %17, ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.194, i32 noundef %call7) #13
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end6.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_port_disable(ptr nocapture noundef readonly %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %1, label %entry.tegra_pcie_port_get_pex_ctrl.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb3.i
  ]

entry.tegra_pcie_port_get_pex_ctrl.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_pex_ctrl.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_pex_ctrl.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_pex_ctrl.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %soc1.i = getelementptr inbounds %struct.tegra_pcie, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc1.i, align 4
  %afi_pex2_ctrl.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %afi_pex2_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %afi_pex2_ctrl.i, align 4
  br label %tegra_pcie_port_get_pex_ctrl.exit

tegra_pcie_port_get_pex_ctrl.exit:                ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %entry.tegra_pcie_port_get_pex_ctrl.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %entry.tegra_pcie_port_get_pex_ctrl.exit_crit_edge ], [ %8, %sw.bb3.i ], [ 280, %sw.bb2.i ], [ 272, %sw.bb.i ]
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %soc1 = getelementptr inbounds %struct.tegra_pcie, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc1, align 4
  %afi.i = getelementptr inbounds %struct.tegra_pcie, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %afi.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %ret.0.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %16 = and i32 %15, -16777217
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %afi.i36 = getelementptr inbounds %struct.tegra_pcie, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %afi.i36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %afi.i36, align 4
  %add.ptr.i37 = getelementptr i8, ptr %20, i32 %ret.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %16) #10, !srcloc !512
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 4
  %afi.i38 = getelementptr inbounds %struct.tegra_pcie, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %afi.i38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %afi.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %24, i32 %ret.0.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #10, !srcloc !509
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %has_pex_clkreq_en = getelementptr inbounds %struct.tegra_pcie_soc, ptr %12, i32 0, i32 9
  %27 = ptrtoint ptr %has_pex_clkreq_en to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_pex_clkreq_en, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  %and7 = and i32 %26, -11
  %spec.select = select i1 %tobool.not, i32 %26, i32 %and7
  %and8 = and i32 %spec.select, -9
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %and8) #10
  %afi.i40 = getelementptr inbounds %struct.tegra_pcie, ptr %30, i32 0, i32 2
  %32 = ptrtoint ptr %afi.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %afi.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %33, i32 %ret.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %31) #10, !srcloc !512
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port, align 4
  %afi.i42 = getelementptr inbounds %struct.tegra_pcie, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %afi.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %afi.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %37, i32 248
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #10, !srcloc !509
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i, align 4
  %add = add i32 %41, 1
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %39
  %add13 = add i32 %41, 29
  %shl14 = shl nuw i32 1, %add13
  %or15 = or i32 %or, %shl14
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %44 = tail call i32 @llvm.bswap.i32(i32 %or15) #10
  %afi.i44 = getelementptr inbounds %struct.tegra_pcie, ptr %43, i32 0, i32 2
  %45 = ptrtoint ptr %afi.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %afi.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %46, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %44) #10, !srcloc !512
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_off(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_on(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_remove_clamping(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tegra_pcie_port_check_link(ptr nocapture noundef readonly %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %base = getelementptr inbounds %struct.tegra_pcie_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4064
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !559
  %7 = and i32 %6, -251658241
  %8 = or i32 %7, 234881024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !560
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 4064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #10, !srcloc !512
  %index = getelementptr inbounds %struct.tegra_pcie_port, ptr %port, i32 0, i32 5
  br label %do.body5

do.body5:                                         ; preds = %cleanup.do.body5_crit_edge, %entry
  %retries.0 = phi i32 [ 3, %entry ], [ %dec49, %cleanup.do.body5_crit_edge ]
  br label %do.body6

do.body6:                                         ; preds = %if.end.do.body6_crit_edge, %do.body5
  %timeout.0 = phi i32 [ 200, %do.body5 ], [ %dec, %if.end.do.body6_crit_edge ]
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 3840
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !561
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end, label %do.body6.do.body32_crit_edge

do.body6.do.body32_crit_edge:                     ; preds = %do.body6
  br label %do.body32

if.end:                                           ; preds = %do.body6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %dec = add nsw i32 %timeout.0, -1
  %tobool16.not = icmp eq i32 %dec, 0
  br i1 %tobool16.not, label %do.body20, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_pcie_port_check_link.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_pcie_port_check_link, %cleanup)) #10
          to label %if.then27 [label %cleanup], !srcloc !513

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_pcie_port_check_link.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.240, i32 noundef %16) #10
  br label %cleanup

do.body32:                                        ; preds = %if.end43.do.body32_crit_edge, %do.body6.do.body32_crit_edge
  %timeout.2 = phi i32 [ %dec45, %if.end43.do.body32_crit_edge ], [ 200, %do.body6.do.body32_crit_edge ]
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr36 = getelementptr i8, ptr %18, i32 144
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !562
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool41.not = icmp eq i32 %20, 0
  br i1 %tobool41.not, label %if.end43, label %do.body32.cleanup52_crit_edge

do.body32.cleanup52_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.end43:                                         ; preds = %do.body32
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %dec45 = add nsw i32 %timeout.2, -1
  %tobool46.not = icmp eq i32 %dec45, 0
  br i1 %tobool46.not, label %if.end43.cleanup_crit_edge, label %if.end43.do.body32_crit_edge

if.end43.do.body32_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end43.cleanup_crit_edge, %if.then27, %do.body20
  tail call fastcc void @tegra_pcie_port_reset(ptr noundef %port)
  %dec49 = add nsw i32 %retries.0, -1
  %tobool50.not = icmp eq i32 %dec49, 0
  br i1 %tobool50.not, label %cleanup.cleanup52_crit_edge, label %cleanup.do.body5_crit_edge

cleanup.do.body5_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

cleanup.cleanup52_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup.cleanup52_crit_edge, %do.body32.cleanup52_crit_edge
  %cond.not75 = phi i1 [ true, %do.body32.cleanup52_crit_edge ], [ false, %cleanup.cleanup52_crit_edge ]
  ret i1 %cond.not75
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_port_reset(ptr nocapture noundef readonly %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.tegra_pcie_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %1, label %entry.tegra_pcie_port_get_pex_ctrl.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb3.i
  ]

entry.tegra_pcie_port_get_pex_ctrl.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_pex_ctrl.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_pex_ctrl.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_pcie_port_get_pex_ctrl.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %soc1.i = getelementptr inbounds %struct.tegra_pcie, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc1.i, align 4
  %afi_pex2_ctrl.i = getelementptr inbounds %struct.tegra_pcie_soc, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %afi_pex2_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %afi_pex2_ctrl.i, align 4
  br label %tegra_pcie_port_get_pex_ctrl.exit

tegra_pcie_port_get_pex_ctrl.exit:                ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %entry.tegra_pcie_port_get_pex_ctrl.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %entry.tegra_pcie_port_get_pex_ctrl.exit_crit_edge ], [ %8, %sw.bb3.i ], [ 280, %sw.bb2.i ], [ 272, %sw.bb.i ]
  %reset_gpio = getelementptr inbounds %struct.tegra_pcie_port, ptr %port, i32 0, i32 8
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %tegra_pcie_port_get_pex_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %10, i32 noundef 1) #10
  br label %if.end

if.else:                                          ; preds = %tegra_pcie_port_get_pex_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %afi.i = getelementptr inbounds %struct.tegra_pcie, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %afi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %afi.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %ret.0.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %16 = and i32 %15, -16777217
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %afi.i28 = getelementptr inbounds %struct.tegra_pcie, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %afi.i28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %afi.i28, align 4
  %add.ptr.i29 = getelementptr i8, ptr %20, i32 %ret.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %16) #10, !srcloc !512
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %21 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset_gpio, align 4
  %tobool5.not = icmp eq ptr %22, null
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %22, i32 noundef 0) #10
  br label %if.end12

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 4
  %afi.i30 = getelementptr inbounds %struct.tegra_pcie, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %afi.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %afi.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %26, i32 %ret.0.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #10, !srcloc !509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %28 = or i32 %27, 16777216
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %afi.i32 = getelementptr inbounds %struct.tegra_pcie, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %afi.i32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %afi.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %32, i32 %ret.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %28) #10, !srcloc !512
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !130, !131, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !174, !176, !178, !179, !180, !181, !183, !185, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !206, !208, !210, !212, !213, !214, !216, !218, !220, !222, !224, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !281, !282, !283, !285, !286, !288, !289, !291, !292, !294, !295, !296, !297, !299, !300, !301, !303, !304, !306, !307, !309, !311, !312, !313, !314, !316, !317, !318, !320, !321, !322, !323, !325, !326, !327, !329, !331, !333, !335, !337, !339, !341, !342, !343, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !399, !401, !402, !403, !405, !406, !407, !408, !410, !411, !412, !413, !414, !416, !417, !418, !419, !421, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !435, !436, !438, !439, !440, !442, !443, !444, !446, !447, !448, !450, !451, !452, !454, !455, !456, !458, !459, !460, !461, !463, !464, !465, !467, !468, !469, !470, !472, !473, !474, !475, !477, !478, !479, !480, !482, !483, !484, !486, !487, !488, !490, !491, !492, !493, !495, !496}
!llvm.module.flags = !{!497, !498, !499, !500, !501, !502, !503, !504}
!llvm.ident = !{!505}

!0 = !{ptr @__pci_fixup_tegra_pcie_fixup_class731, !1, !"__pci_fixup_tegra_pcie_fixup_class731", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-tegra.c", i32 731, i32 1}
!2 = !{ptr @__pci_fixup_tegra_pcie_fixup_class732, !3, !"__pci_fixup_tegra_pcie_fixup_class732", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-tegra.c", i32 732, i32 1}
!4 = !{ptr @__pci_fixup_tegra_pcie_fixup_class733, !5, !"__pci_fixup_tegra_pcie_fixup_class733", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pci-tegra.c", i32 733, i32 1}
!6 = !{ptr @__pci_fixup_tegra_pcie_fixup_class734, !7, !"__pci_fixup_tegra_pcie_fixup_class734", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pci-tegra.c", i32 734, i32 1}
!8 = !{ptr @__pci_fixup_tegra_pcie_relax_enable741, !9, !"__pci_fixup_tegra_pcie_relax_enable741", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pci-tegra.c", i32 741, i32 1}
!10 = !{ptr @__pci_fixup_tegra_pcie_relax_enable742, !11, !"__pci_fixup_tegra_pcie_relax_enable742", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pci-tegra.c", i32 742, i32 1}
!12 = !{ptr @__pci_fixup_tegra_pcie_relax_enable743, !13, !"__pci_fixup_tegra_pcie_relax_enable743", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/pci-tegra.c", i32 743, i32 1}
!14 = !{ptr @__pci_fixup_tegra_pcie_relax_enable744, !15, !"__pci_fixup_tegra_pcie_relax_enable744", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pci-tegra.c", i32 744, i32 1}
!16 = !{ptr @__initcall__kmod_pci_tegra__296_2816_tegra_pcie_driver_init6, !17, !"__initcall__kmod_pci_tegra__296_2816_tegra_pcie_driver_init6", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2816, i32 1}
!18 = !{ptr @__exitcall_tegra_pcie_driver_exit, !17, !"__exitcall_tegra_pcie_driver_exit", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_file297, !20, !"__UNIQUE_ID_file297", i1 false, i1 false}
!20 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2817, i32 1}
!21 = !{ptr @__UNIQUE_ID_license298, !20, !"__UNIQUE_ID_license298", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2808, i32 11}
!24 = !{ptr @tegra_pcie_driver, !25, !"tegra_pcie_driver", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2806, i32 31}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2645, i32 3}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tegra_pcie_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @tegra_pcie_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2651, i32 3}
!36 = !{ptr @tegra_pcie_probe._entry.6, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tegra_pcie_probe._entry_ptr.8, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2658, i32 3}
!40 = !{ptr @tegra_pcie_probe._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra_pcie_probe._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2667, i32 3}
!44 = !{ptr @tegra_pcie_probe._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tegra_pcie_probe._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2133, i32 4}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tegra_pcie_parse_dt._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @tegra_pcie_parse_dt._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2140, i32 4}
!53 = !{ptr @tegra_pcie_parse_dt._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tegra_pcie_parse_dt._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2147, i32 36}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2149, i32 4}
!59 = !{ptr @tegra_pcie_parse_dt._entry.21, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tegra_pcie_parse_dt._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2155, i32 4}
!63 = !{ptr @tegra_pcie_parse_dt._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tegra_pcie_parse_dt._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @tegra_pcie_parse_dt._entry.27, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2178, i32 4}
!67 = !{ptr @tegra_pcie_parse_dt._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2194, i32 43}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2206, i32 13}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2213, i32 5}
!74 = !{ptr @tegra_pcie_parse_dt._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @tegra_pcie_parse_dt._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2225, i32 3}
!78 = !{ptr @tegra_pcie_parse_dt._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tegra_pcie_parse_dt._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1864, i32 34}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1867, i32 4}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tegra_pcie_get_xbar_config._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1872, i32 4}
!90 = !{ptr @tegra_pcie_get_xbar_config._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1877, i32 4}
!94 = !{ptr @tegra_pcie_get_xbar_config._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1882, i32 4}
!98 = !{ptr @tegra_pcie_get_xbar_config._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1888, i32 41}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1889, i32 34}
!104 = !{ptr @tegra_pcie_get_xbar_config._entry.52, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1892, i32 4}
!106 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.53, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1897, i32 4}
!109 = !{ptr @tegra_pcie_get_xbar_config._entry.54, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.56, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1901, i32 41}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1904, i32 4}
!115 = !{ptr @tegra_pcie_get_xbar_config._entry.58, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1909, i32 4}
!119 = !{ptr @tegra_pcie_get_xbar_config._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1914, i32 4}
!123 = !{ptr @tegra_pcie_get_xbar_config._entry.64, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.66, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1918, i32 41}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1921, i32 4}
!129 = !{ptr @tegra_pcie_get_xbar_config._entry.68, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1926, i32 4}
!133 = !{ptr @tegra_pcie_get_xbar_config._entry.71, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @tegra_pcie_get_xbar_config._entry_ptr.73, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2018, i32 32}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2019, i32 32}
!139 = !{ptr @.str.76, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2020, i32 32}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2021, i32 32}
!143 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2031, i32 32}
!145 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2032, i32 32}
!147 = !{ptr @.str.80, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2033, i32 32}
!149 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2043, i32 32}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2067, i32 32}
!153 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2070, i32 32}
!155 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2073, i32 33}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2074, i32 33}
!159 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2078, i32 33}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2079, i32 33}
!163 = !{ptr @.str.88, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2090, i32 30}
!165 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2091, i32 30}
!167 = !{ptr @.str.90, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2094, i32 30}
!169 = !{ptr @.str.91, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2107, i32 2}
!171 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @tegra_pcie_get_regulators._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @tegra_pcie_get_regulators._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1948, i32 26}
!176 = !{ptr @.str.94, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1975, i32 3}
!178 = !{ptr @.str.95, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @tegra_pcie_get_legacy_regulators._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @tegra_pcie_get_legacy_regulators._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.96, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1985, i32 29}
!183 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1986, i32 29}
!185 = !{ptr @.str.98, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1989, i32 30}
!187 = !{ptr @.str.99, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1426, i32 3}
!189 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @tegra_pcie_get_resources._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @tegra_pcie_get_resources._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1432, i32 3}
!194 = !{ptr @tegra_pcie_get_resources._entry.101, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @tegra_pcie_get_resources._entry_ptr.103, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1439, i32 4}
!198 = !{ptr @tegra_pcie_get_resources._entry.104, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @tegra_pcie_get_resources._entry_ptr.106, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.107, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1444, i32 59}
!202 = !{ptr @.str.108, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1450, i32 58}
!204 = !{ptr @.str.109, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1457, i32 59}
!206 = !{ptr @.str.110, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1475, i32 38}
!208 = !{ptr @.str.111, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1481, i32 60}
!210 = !{ptr @.str.113, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1483, i32 3}
!212 = !{ptr @tegra_pcie_get_resources._entry.112, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @tegra_pcie_get_resources._entry_ptr.114, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.115, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1258, i32 36}
!216 = !{ptr @.str.116, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1266, i32 34}
!218 = !{ptr @.str.117, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1271, i32 37}
!220 = !{ptr @.str.118, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1291, i32 58}
!222 = !{ptr @.str.119, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1381, i32 45}
!224 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1303, i32 41}
!226 = !{ptr @.str.121, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1306, i32 3}
!228 = !{ptr @.str.122, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @tegra_pcie_phys_get_legacy._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @tegra_pcie_phys_get_legacy._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.124, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1312, i32 3}
!233 = !{ptr @tegra_pcie_phys_get_legacy._entry.123, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @tegra_pcie_phys_get_legacy._entry_ptr.125, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.126, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1356, i32 4}
!237 = !{ptr @.str.127, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @tegra_pcie_port_get_phys._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @tegra_pcie_port_get_phys._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.129, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1363, i32 4}
!242 = !{ptr @tegra_pcie_port_get_phys._entry.128, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @tegra_pcie_port_get_phys._entry_ptr.130, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.131, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1329, i32 31}
!246 = !{ptr @.str.132, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pci/controller/pci-tegra.c", i32 763, i32 3}
!248 = !{ptr @.str.133, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pci/controller/pci-tegra.c", i32 764, i32 3}
!250 = !{ptr @.str.134, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pci/controller/pci-tegra.c", i32 765, i32 3}
!252 = !{ptr @.str.135, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pci/controller/pci-tegra.c", i32 766, i32 3}
!254 = !{ptr @.str.136, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pci/controller/pci-tegra.c", i32 767, i32 3}
!256 = !{ptr @.str.137, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pci/controller/pci-tegra.c", i32 768, i32 3}
!258 = !{ptr @.str.138, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pci/controller/pci-tegra.c", i32 769, i32 3}
!260 = !{ptr @.str.139, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pci/controller/pci-tegra.c", i32 770, i32 3}
!262 = !{ptr @.str.140, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pci/controller/pci-tegra.c", i32 771, i32 3}
!264 = !{ptr @.str.141, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pci/controller/pci-tegra.c", i32 772, i32 3}
!266 = !{ptr @.str.142, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pci/controller/pci-tegra.c", i32 773, i32 3}
!268 = !{ptr @.str.143, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pci/controller/pci-tegra.c", i32 774, i32 3}
!270 = !{ptr @.str.144, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pci/controller/pci-tegra.c", i32 775, i32 3}
!272 = !{ptr @.str.145, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pci/controller/pci-tegra.c", i32 776, i32 3}
!274 = !{ptr @.str.146, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pci/controller/pci-tegra.c", i32 777, i32 3}
!276 = !{ptr @tegra_pcie_isr.err_msg, !277, !"err_msg", i1 false, i1 false}
!277 = !{!"../drivers/pci/controller/pci-tegra.c", i32 762, i32 28}
!278 = !{ptr @.str.147, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pci/controller/pci-tegra.c", i32 798, i32 3}
!280 = !{ptr @.str.148, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.149, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @tegra_pcie_isr.__UNIQUE_ID_ddebug293, !279, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!283 = !{ptr @tegra_pcie_isr._entry, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/pci/controller/pci-tegra.c", i32 800, i32 3}
!285 = !{ptr @tegra_pcie_isr._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.150, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/pci/controller/pci-tegra.c", i32 808, i32 4}
!288 = !{ptr @tegra_pcie_isr.__UNIQUE_ID_ddebug294, !287, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!289 = !{ptr @tegra_pcie_isr._entry.151, !290, !"_entry", i1 false, i1 false}
!290 = !{!"../drivers/pci/controller/pci-tegra.c", i32 810, i32 4}
!291 = !{ptr @tegra_pcie_isr._entry_ptr.152, !290, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.153, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1402, i32 4}
!294 = !{ptr @.str.154, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @tegra_pcie_phys_put._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @tegra_pcie_phys_put._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.156, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1410, i32 5}
!299 = !{ptr @tegra_pcie_phys_put._entry.155, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @tegra_pcie_phys_put._entry_ptr.157, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @tegra_pcie_msi_setup.__key, !302, !"__key", i1 false, i1 false}
!302 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1747, i32 2}
!303 = !{ptr @.str.158, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @tegra_pcie_msi_setup.__key.159, !305, !"__key", i1 false, i1 false}
!305 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1748, i32 2}
!306 = !{ptr @.str.160, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.161, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1756, i32 38}
!309 = !{ptr @.str.162, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1771, i32 3}
!311 = !{ptr @.str.163, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @tegra_pcie_msi_setup._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @tegra_pcie_msi_setup._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.165, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1778, i32 3}
!316 = !{ptr @tegra_pcie_msi_setup._entry.164, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @tegra_pcie_msi_setup._entry_ptr.166, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.167, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1717, i32 3}
!320 = !{ptr @.str.168, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @tegra_allocate_domains._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @tegra_allocate_domains._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.170, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1724, i32 3}
!325 = !{ptr @tegra_allocate_domains._entry.169, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @tegra_allocate_domains._entry_ptr.171, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @tegra_msi_domain_ops, !328, !"tegra_msi_domain_ops", i1 false, i1 false}
!328 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1697, i32 36}
!329 = !{ptr @.str.172, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1650, i32 12}
!331 = !{ptr @tegra_msi_bottom_chip, !332, !"tegra_msi_bottom_chip", i1 false, i1 false}
!332 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1649, i32 24}
!333 = !{ptr @tegra_msi_info, !334, !"tegra_msi_info", i1 false, i1 false}
!334 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1702, i32 31}
!335 = !{ptr @.str.173, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1589, i32 11}
!337 = !{ptr @tegra_msi_top_chip, !338, !"tegra_msi_top_chip", i1 false, i1 false}
!338 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1588, i32 24}
!339 = !{ptr @.str.174, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1559, i32 5}
!341 = !{ptr @.str.175, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @tegra_pcie_msi_irq._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @tegra_pcie_msi_irq._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @tegra_pcie_ops, !345, !"tegra_pcie_ops", i1 false, i1 false}
!345 = !{!"../drivers/pci/controller/pci-tegra.c", i32 479, i32 23}
!346 = !{ptr @.str.176, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2616, i32 22}
!348 = !{ptr @tegra_pcie_ports_fops, !349, !"tegra_pcie_ports_fops", i1 false, i1 false}
!349 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2604, i32 1}
!350 = !{ptr @tegra_pcie_ports_sops, !351, !"tegra_pcie_ports_sops", i1 false, i1 false}
!351 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2597, i32 36}
!352 = !{ptr @.str.177, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2547, i32 14}
!354 = !{ptr @.str.178, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2581, i32 16}
!356 = !{ptr @.str.179, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2584, i32 15}
!358 = !{ptr @.str.180, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2588, i32 16}
!360 = !{ptr @.str.181, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2590, i32 15}
!362 = !{ptr @.str.182, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2593, i32 14}
!364 = !{ptr @tegra_pcie_of_match, !365, !"tegra_pcie_of_match", i1 false, i1 false}
!365 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2530, i32 34}
!366 = !{ptr @tegra186_pcie, !367, !"tegra186_pcie", i1 false, i1 false}
!367 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2507, i32 36}
!368 = !{ptr @tegra186_pcie_ports, !369, !"tegra186_pcie_ports", i1 false, i1 false}
!369 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2501, i32 41}
!370 = !{ptr @tegra210_pcie, !371, !"tegra210_pcie", i1 false, i1 false}
!371 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2466, i32 36}
!372 = !{ptr @tegra20_pcie_ports, !373, !"tegra20_pcie_ports", i1 false, i1 false}
!373 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2390, i32 41}
!374 = !{ptr @tegra124_pcie, !375, !"tegra124_pcie", i1 false, i1 false}
!375 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2445, i32 36}
!376 = !{ptr @tegra30_pcie, !377, !"tegra30_pcie", i1 false, i1 false}
!377 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2422, i32 36}
!378 = !{ptr @tegra30_pcie_ports, !379, !"tegra30_pcie_ports", i1 false, i1 false}
!379 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2416, i32 41}
!380 = !{ptr @tegra20_pcie, !381, !"tegra20_pcie", i1 false, i1 false}
!381 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2395, i32 36}
!382 = !{ptr @tegra_pcie_pm_ops, !383, !"tegra_pcie_pm_ops", i1 false, i1 false}
!383 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2800, i32 32}
!384 = !{ptr @.str.183, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2730, i32 4}
!386 = !{ptr @.str.184, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @tegra_pcie_pm_suspend._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @tegra_pcie_pm_suspend._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.185, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1525, i32 3}
!391 = !{ptr @.str.186, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @tegra_pcie_pme_turnoff._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @tegra_pcie_pme_turnoff._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.187, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1070, i32 4}
!396 = !{ptr @.str.188, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @tegra_pcie_phy_power_off._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @tegra_pcie_phy_power_off._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.190, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1078, i32 4}
!401 = !{ptr @tegra_pcie_phy_power_off._entry.189, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @tegra_pcie_phy_power_off._entry_ptr.191, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.192, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1017, i32 4}
!405 = !{ptr @.str.193, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @tegra_pcie_port_phy_power_off._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @tegra_pcie_port_phy_power_off._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.194, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1170, i32 3}
!410 = !{ptr @.str.195, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.196, !409, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @tegra_pcie_power_off._entry, !409, !"_entry", i1 false, i1 false}
!413 = !{ptr @tegra_pcie_power_off._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.197, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2752, i32 3}
!416 = !{ptr @.str.198, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @tegra_pcie_pm_resume._entry, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @tegra_pcie_pm_resume._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.200, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2758, i32 3}
!421 = !{ptr @tegra_pcie_pm_resume._entry.199, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @tegra_pcie_pm_resume._entry_ptr.201, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.203, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2770, i32 3}
!425 = !{ptr @tegra_pcie_pm_resume._entry.202, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @tegra_pcie_pm_resume._entry_ptr.204, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.206, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2779, i32 4}
!429 = !{ptr @tegra_pcie_pm_resume._entry.205, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @tegra_pcie_pm_resume._entry_ptr.207, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.208, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1189, i32 3}
!433 = !{ptr @.str.209, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @tegra_pcie_power_on._entry, !432, !"_entry", i1 false, i1 false}
!435 = !{ptr @tegra_pcie_power_on._entry_ptr, !432, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.211, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1194, i32 4}
!438 = !{ptr @tegra_pcie_power_on._entry.210, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @tegra_pcie_power_on._entry_ptr.212, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.214, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1199, i32 4}
!442 = !{ptr @tegra_pcie_power_on._entry.213, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @tegra_pcie_power_on._entry_ptr.215, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.217, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1206, i32 3}
!446 = !{ptr @tegra_pcie_power_on._entry.216, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @tegra_pcie_power_on._entry_ptr.218, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.220, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1213, i32 4}
!450 = !{ptr @tegra_pcie_power_on._entry.219, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @tegra_pcie_power_on._entry_ptr.221, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.223, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1220, i32 3}
!454 = !{ptr @tegra_pcie_power_on._entry.222, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @tegra_pcie_power_on._entry_ptr.224, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.225, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1039, i32 4}
!458 = !{ptr @.str.226, !457, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @tegra_pcie_phy_power_on._entry, !457, !"_entry", i1 false, i1 false}
!460 = !{ptr @tegra_pcie_phy_power_on._entry_ptr, !457, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.228, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1047, i32 4}
!463 = !{ptr @tegra_pcie_phy_power_on._entry.227, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @tegra_pcie_phy_power_on._entry_ptr.229, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.230, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/pci/controller/pci-tegra.c", i32 949, i32 3}
!467 = !{ptr @.str.231, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @tegra_pcie_phy_enable._entry, !466, !"_entry", i1 false, i1 false}
!469 = !{ptr @tegra_pcie_phy_enable._entry_ptr, !466, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.232, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/pci/controller/pci-tegra.c", i32 1000, i32 4}
!472 = !{ptr @.str.233, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @tegra_pcie_port_phy_power_on._entry, !471, !"_entry", i1 false, i1 false}
!474 = !{ptr @tegra_pcie_port_phy_power_on._entry_ptr, !471, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.234, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2357, i32 3}
!477 = !{ptr @.str.235, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @tegra_pcie_enable_ports._entry, !476, !"_entry", i1 false, i1 false}
!479 = !{ptr @tegra_pcie_enable_ports._entry_ptr, !476, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.237, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2370, i32 3}
!482 = !{ptr @tegra_pcie_enable_ports._entry.236, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @tegra_pcie_enable_ports._entry_ptr.238, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.239, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2271, i32 4}
!486 = !{ptr @.str.240, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @tegra_pcie_port_check_link.__UNIQUE_ID_ddebug295, !485, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!488 = !{ptr @.str.241, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2327, i32 4}
!490 = !{ptr @.str.242, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @tegra_pcie_change_link_speed._entry, !489, !"_entry", i1 false, i1 false}
!492 = !{ptr @tegra_pcie_change_link_speed._entry_ptr, !489, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.244, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/pci/controller/pci-tegra.c", i32 2346, i32 4}
!495 = !{ptr @tegra_pcie_change_link_speed._entry.243, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @tegra_pcie_change_link_speed._entry_ptr.245, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{i32 1, !"wchar_size", i32 2}
!498 = !{i32 1, !"min_enum_size", i32 4}
!499 = !{i32 8, !"branch-target-enforcement", i32 0}
!500 = !{i32 8, !"sign-return-address", i32 0}
!501 = !{i32 8, !"sign-return-address-all", i32 0}
!502 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!503 = !{i32 7, !"uwtable", i32 1}
!504 = !{i32 7, !"frame-pointer", i32 2}
!505 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!506 = !{!"auto-init"}
!507 = !{!"branch_weights", i32 1, i32 2000}
!508 = !{i8 0, i8 2}
!509 = !{i64 5323338}
!510 = !{i64 2155728749}
!511 = !{i64 2155727908}
!512 = !{i64 5322920}
!513 = !{i64 2148793642, i64 2148793647, i64 2148793660, i64 2148793704, i64 2148793738, i64 2148793759}
!514 = !{i32 0, i32 33}
!515 = !{i64 2155920276}
!516 = !{i64 2155920807}
!517 = !{i64 2155830431}
!518 = !{i64 2155830913}
!519 = !{i64 2155729982}
!520 = !{i64 2155729136}
!521 = !{i64 2155748282}
!522 = !{i64 2155748524}
!523 = !{i64 2155733885}
!524 = !{i64 2155734128}
!525 = !{i64 2155734836}
!526 = !{i64 2155735089}
!527 = !{i64 2155735797}
!528 = !{i64 2155736040}
!529 = !{i64 2155736748}
!530 = !{i64 2155737051}
!531 = !{i64 2155737759}
!532 = !{i64 2155737999}
!533 = !{i64 2155738707}
!534 = !{i64 2155738958}
!535 = !{i64 2155739666}
!536 = !{i64 2155739910}
!537 = !{i64 2155740618}
!538 = !{i64 2155740862}
!539 = !{i64 2155741570}
!540 = !{i64 2155741810}
!541 = !{i64 2155742518}
!542 = !{i64 2155742769}
!543 = !{i64 2155743477}
!544 = !{i64 2155743721}
!545 = !{i64 2155744429}
!546 = !{i64 2155744673}
!547 = !{i64 2155745381}
!548 = !{i64 2155745638}
!549 = !{i64 2155746346}
!550 = !{i64 2155746592}
!551 = !{i64 2155747300}
!552 = !{i64 2155747547}
!553 = !{i64 2155890843}
!554 = !{i64 2155891090}
!555 = !{i64 2155891805}
!556 = !{i64 2155894049}
!557 = !{i64 2155894289}
!558 = !{i64 2155895004}
!559 = !{i64 2155883278}
!560 = !{i64 2155883533}
!561 = !{i64 2155884245}
!562 = !{i64 2155887081}
