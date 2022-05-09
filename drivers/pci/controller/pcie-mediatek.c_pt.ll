; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-mediatek.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-mediatek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_pcie_soc = type { i8, i8, i8, i32, ptr, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mtk_pcie = type { ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.mtk_pcie_port = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.mutex, [1 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.90, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.90 = type { ptr }
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

@__initcall__kmod_pcie_mediatek__294_1249_mtk_pcie_driver_init6 = internal global ptr @mtk_pcie_driver_init, section ".initcall6.init", align 4
@mtk_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_pcie_probe, ptr @mtk_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @mtk_pcie_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_pcie_driver_exit = internal global ptr @mtk_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file295 = internal constant [56 x i8] c"pcie_mediatek.file=drivers/pci/controller/pcie-mediatek\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [29 x i8] c"pcie_mediatek.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtk-pcie\00", [23 x i8] zeroinitializer }, align 32
@mtk_pcie_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pcie_soc_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pcie_soc_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pcie_soc_mt2712 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pcie_soc_mt7622 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pcie_soc_mt7629 }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@mtk_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_pcie_suspend_noirq, ptr @mtk_pcie_resume_noirq, ptr @mtk_pcie_suspend_noirq, ptr @mtk_pcie_resume_noirq, ptr @mtk_pcie_suspend_noirq, ptr @mtk_pcie_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_pcie_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1054, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get devfn: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_pcie_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pci/controller/pcie-mediatek.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_pcie_setup._entry_ptr = internal global ptr @mtk_pcie_setup._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"port%d\00", [25 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 928, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to map port%d base\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_pcie_parse_port\00", [44 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry_ptr = internal global ptr @mtk_pcie_parse_port._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_ck%d\00", [23 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 935, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get sys_ck%d clock\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_pcie_parse_port._entry_ptr.12 = internal global ptr @mtk_pcie_parse_port._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ahb_ck%d\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"axi_ck%d\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aux_ck%d\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"obff_ck%d\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pipe_ck%d\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie-rst%d\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie-phy%d\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"subsys\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,generic-pciecfg\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"free_ck\00", [24 x i8] zeroinitializer }, align 32
@mtk_pcie_subsys_powerup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 1029, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable free_ck\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_pcie_subsys_powerup\00", [40 x i8] zeroinitializer }, align 32
@mtk_pcie_subsys_powerup._entry_ptr = internal global ptr @mtk_pcie_subsys_powerup._entry, section ".printk_index", align 4
@mtk_pcie_enable_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 838, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable sys_ck%d clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_pcie_enable_port\00", [43 x i8] zeroinitializer }, align 32
@mtk_pcie_enable_port._entry_ptr = internal global ptr @mtk_pcie_enable_port._entry, section ".printk_index", align 4
@mtk_pcie_enable_port._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 844, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable ahb_ck%d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_pcie_enable_port._entry_ptr.29 = internal global ptr @mtk_pcie_enable_port._entry.27, section ".printk_index", align 4
@mtk_pcie_enable_port._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 850, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable aux_ck%d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_pcie_enable_port._entry_ptr.32 = internal global ptr @mtk_pcie_enable_port._entry.30, section ".printk_index", align 4
@mtk_pcie_enable_port._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.3, i32 856, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable axi_ck%d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_pcie_enable_port._entry_ptr.35 = internal global ptr @mtk_pcie_enable_port._entry.33, section ".printk_index", align 4
@mtk_pcie_enable_port._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.3, i32 862, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable obff_ck%d\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_pcie_enable_port._entry_ptr.38 = internal global ptr @mtk_pcie_enable_port._entry.36, section ".printk_index", align 4
@mtk_pcie_enable_port._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.3, i32 868, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable pipe_ck%d\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_pcie_enable_port._entry_ptr.41 = internal global ptr @mtk_pcie_enable_port._entry.39, section ".printk_index", align 4
@mtk_pcie_enable_port._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.26, ptr @.str.3, i32 877, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize port%d phy\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_pcie_enable_port._entry_ptr.44 = internal global ptr @mtk_pcie_enable_port._entry.42, section ".printk_index", align 4
@mtk_pcie_enable_port._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.26, ptr @.str.3, i32 883, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to power on port%d phy\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_pcie_enable_port._entry_ptr.47 = internal global ptr @mtk_pcie_enable_port._entry.45, section ".printk_index", align 4
@mtk_pcie_enable_port._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.26, ptr @.str.3, i32 890, ptr @.str.50, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Port%d link down\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_pcie_enable_port._entry_ptr.51 = internal global ptr @mtk_pcie_enable_port._entry.48, section ".printk_index", align 4
@mtk_pcie_soc_v1 = internal constant { %struct.mtk_pcie_soc, [44 x i8] } { %struct.mtk_pcie_soc { i8 0, i8 0, i8 1, i32 0, ptr @mtk_pcie_ops, ptr @mtk_pcie_startup_port, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_pcie_soc_mt2712 = internal constant { %struct.mtk_pcie_soc, [44 x i8] } { %struct.mtk_pcie_soc { i8 0, i8 0, i8 0, i32 0, ptr @mtk_pcie_ops_v2, ptr @mtk_pcie_startup_port_v2, ptr @mtk_pcie_setup_irq }, [44 x i8] zeroinitializer }, align 32
@mtk_pcie_soc_mt7622 = internal constant { %struct.mtk_pcie_soc, [44 x i8] } { %struct.mtk_pcie_soc { i8 1, i8 0, i8 0, i32 0, ptr @mtk_pcie_ops_v2, ptr @mtk_pcie_startup_port_v2, ptr @mtk_pcie_setup_irq }, [44 x i8] zeroinitializer }, align 32
@mtk_pcie_soc_mt7629 = internal constant { %struct.mtk_pcie_soc, [44 x i8] } { %struct.mtk_pcie_soc { i8 1, i8 1, i8 0, i32 30249, ptr @mtk_pcie_ops_v2, ptr @mtk_pcie_startup_port_v2, ptr @mtk_pcie_setup_irq }, [44 x i8] zeroinitializer }, align 32
@mtk_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @mtk_pcie_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@mtk_pcie_ops_v2 = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @mtk_pcie_config_read, ptr @mtk_pcie_config_write }, [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtk_pcie_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 642, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to init PCIe IRQ domain\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_pcie_setup_irq\00", [45 x i8] zeroinitializer }, align 32
@mtk_pcie_setup_irq._entry_ptr = internal global ptr @mtk_pcie_setup_irq._entry, section ".printk_index", align 4
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"interrupt-names\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_irq\00", [23 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no PCIe Intc node found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_pcie_init_irq_domain\00", [39 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domain._entry_ptr = internal global ptr @mtk_pcie_init_irq_domain._entry, section ".printk_index", align 4
@intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mtk_pcie_intx_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domain._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get INTx IRQ domain\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_pcie_init_irq_domain._entry_ptr.60 = internal global ptr @mtk_pcie_init_irq_domain._entry.58, section ".printk_index", align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@mtk_pcie_allocate_msi_domains.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_pcie_irq_domain_alloc, ptr @mtk_pcie_irq_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mtk_pcie_allocate_msi_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 503, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mtk_pcie_allocate_msi_domains\00", [34 x i8] zeroinitializer }, align 32
@mtk_pcie_allocate_msi_domains._entry_ptr = internal global ptr @mtk_pcie_allocate_msi_domains._entry, section ".printk_index", align 4
@mtk_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 11, ptr null, ptr @mtk_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mtk_pcie_allocate_msi_domains._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_pcie_allocate_msi_domains._entry_ptr.66 = internal global ptr @mtk_pcie_allocate_msi_domains._entry.64, section ".printk_index", align 4
@mtk_msi_bottom_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.67, ptr null, ptr null, ptr null, ptr null, ptr @mtk_msi_ack_irq, ptr null, ptr null, ptr null, ptr null, ptr @mtk_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MTK MSI\00", [24 x i8] zeroinitializer }, align 32
@mtk_compose_msi_msg.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 0, i8 101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_mediatek\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_compose_msi_msg\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"msi#%d address_hi %#x address_lo %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@mtk_pcie_irq_domain_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"trying to free unused MSI#%lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_pcie_irq_domain_free\00", [39 x i8] zeroinitializer }, align 32
@mtk_pcie_irq_domain_free._entry_ptr = internal global ptr @mtk_pcie_irq_domain_free._entry, section ".printk_index", align 4
@mtk_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.73, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MTK PCIe MSI\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"mtk_pcie_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1239, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1243, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"mtk_pcie_ids\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1229, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"mtk_pcie_pm_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1196, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1054, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 925, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 928, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 932, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 935, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 940, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 945, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 950, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 955, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 960, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 965, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 971, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1000, i32 60 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1008, i32 9 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1015, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1029, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 838, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 844, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 850, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 856, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 862, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 868, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 877, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 883, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 890, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [16 x i8] c"mtk_pcie_soc_v1\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1201, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"mtk_pcie_soc_mt2712\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1207, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c"mtk_pcie_soc_mt7622\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1213, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"mtk_pcie_soc_mt7629\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1220, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant [13 x i8] c"mtk_pcie_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 764, i32 23 }
@___asan_gen_.239 = private unnamed_addr constant [16 x i8] c"mtk_pcie_ops_v2\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 389, i32 23 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 642, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 646, i32 37 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 647, i32 45 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 576, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [16 x i8] c"intx_domain_ops\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 562, i32 36 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 584, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 498, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [15 x i8] c"msi_domain_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 476, i32 36 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 503, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c"mtk_msi_domain_info\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 488, i32 31 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 510, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [24 x i8] c"mtk_msi_bottom_irq_chip\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 424, i32 24 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 425, i32 12 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 406, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 466, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"mtk_msi_irq_chip\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 481, i32 24 }
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.330 = private constant [42 x i8] c"../drivers/pci/controller/pcie-mediatek.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 482, i32 11 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_mtk_pcie_driver_exit, ptr @__initcall__kmod_pcie_mediatek__294_1249_mtk_pcie_driver_init6, ptr @mtk_pcie_allocate_msi_domains._entry, ptr @mtk_pcie_allocate_msi_domains._entry.64, ptr @mtk_pcie_allocate_msi_domains._entry_ptr, ptr @mtk_pcie_allocate_msi_domains._entry_ptr.66, ptr @mtk_pcie_driver_exit, ptr @mtk_pcie_enable_port._entry, ptr @mtk_pcie_enable_port._entry.27, ptr @mtk_pcie_enable_port._entry.30, ptr @mtk_pcie_enable_port._entry.33, ptr @mtk_pcie_enable_port._entry.36, ptr @mtk_pcie_enable_port._entry.39, ptr @mtk_pcie_enable_port._entry.42, ptr @mtk_pcie_enable_port._entry.45, ptr @mtk_pcie_enable_port._entry.48, ptr @mtk_pcie_enable_port._entry_ptr, ptr @mtk_pcie_enable_port._entry_ptr.29, ptr @mtk_pcie_enable_port._entry_ptr.32, ptr @mtk_pcie_enable_port._entry_ptr.35, ptr @mtk_pcie_enable_port._entry_ptr.38, ptr @mtk_pcie_enable_port._entry_ptr.41, ptr @mtk_pcie_enable_port._entry_ptr.44, ptr @mtk_pcie_enable_port._entry_ptr.47, ptr @mtk_pcie_enable_port._entry_ptr.51, ptr @mtk_pcie_init_irq_domain._entry, ptr @mtk_pcie_init_irq_domain._entry.58, ptr @mtk_pcie_init_irq_domain._entry_ptr, ptr @mtk_pcie_init_irq_domain._entry_ptr.60, ptr @mtk_pcie_irq_domain_free._entry, ptr @mtk_pcie_irq_domain_free._entry_ptr, ptr @mtk_pcie_parse_port._entry, ptr @mtk_pcie_parse_port._entry.10, ptr @mtk_pcie_parse_port._entry_ptr, ptr @mtk_pcie_parse_port._entry_ptr.12, ptr @mtk_pcie_setup._entry, ptr @mtk_pcie_setup._entry_ptr, ptr @mtk_pcie_setup_irq._entry, ptr @mtk_pcie_setup_irq._entry_ptr, ptr @mtk_pcie_subsys_powerup._entry, ptr @mtk_pcie_subsys_powerup._entry_ptr, ptr @mtk_pcie_driver, ptr @.str, ptr @mtk_pcie_ids, ptr @mtk_pcie_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @mtk_pcie_soc_v1, ptr @mtk_pcie_soc_mt2712, ptr @mtk_pcie_soc_mt7622, ptr @mtk_pcie_soc_mt7629, ptr @mtk_pcie_ops, ptr @mtk_pcie_ops_v2, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @intx_domain_ops, ptr @.str.59, ptr @mtk_pcie_allocate_msi_domains.__key, ptr @.str.61, ptr @msi_domain_ops, ptr @.str.62, ptr @.str.63, ptr @mtk_msi_domain_info, ptr @.str.65, ptr @mtk_msi_bottom_irq_chip, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @mtk_msi_irq_chip, ptr @.str.73], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_parse_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_parse_port._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_subsys_powerup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_enable_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_enable_port._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_enable_port._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_enable_port._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_enable_port._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_enable_port._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_enable_port._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_enable_port._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_enable_port._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_soc_v1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_soc_mt2712 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_soc_mt7622 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_soc_mt7629 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_ops_v2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_init_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_init_irq_domain._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_allocate_msi_domains.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_allocate_msi_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_allocate_msi_domains._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_msi_bottom_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcie_irq_domain_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
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
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 28) #8
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
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %soc = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %soc, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %ports = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ports, ptr %ports, align 4
  %prev.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ports, ptr %prev.i, align 4
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_get_pci_domain_nr(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %call3.i = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef null) #8
  %cmp4.not90.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.not90.i, label %if.then.i.if.end16.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.if.end16.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %child.091.i = phi ptr [ %call11.i, %for.inc.i.for.body.i_crit_edge ], [ %call3.i, %if.then.i.for.body.i_crit_edge ]
  %call5.i = tail call i32 @of_pci_get_devfn(ptr noundef nonnull %child.091.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %call5.i) #11
  br label %error_put_node.i

if.end.i:                                         ; preds = %for.body.i
  %9 = lshr i32 %call5.i, 3
  %and.i = and i32 %9, 31
  %call8.i = tail call fastcc i32 @mtk_pcie_parse_port(ptr noundef %private.i, ptr noundef nonnull %child.091.i, i32 noundef %and.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end.i.error_put_node.i_crit_edge

if.end.i.error_put_node.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put_node.i

for.inc.i:                                        ; preds = %if.end.i
  %call11.i = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef nonnull %child.091.i) #8
  %cmp4.not.i = icmp eq ptr %call11.i, null
  br i1 %cmp4.not.i, label %for.inc.i.if.end16.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end16.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end
  %call12.i = tail call fastcc i32 @mtk_pcie_parse_port(ptr noundef %private.i, ptr noundef %8, i32 noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.else.i.if.end16.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i.if.end16.i_crit_edge, %for.inc.i.if.end16.i_crit_edge, %if.then.i.if.end16.i_crit_edge
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -16
  %call.i.i = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i.i, i32 noundef 512, ptr noundef nonnull @.str.20) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end16.i.if.end8.i.i_crit_edge, label %if.then.i.i

if.end16.i.if.end8.i.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %if.end16.i
  %call2.i.i = tail call ptr @devm_ioremap_resource(ptr noundef %11, ptr noundef nonnull %call.i.i) #8
  %base.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2.i.i, ptr %base.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i.mtk_pcie_setup.exit_crit_edge, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then.i.i.mtk_pcie_setup.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_setup.exit

if.end8.i.i:                                      ; preds = %if.then.i.i.if.end8.i.i_crit_edge, %if.end16.i.if.end8.i.i_crit_edge
  %call9.i.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21) #8
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %if.end8.i.i.if.end19.i.i_crit_edge, label %if.then11.i.i

if.end8.i.i.if.end19.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  %call12.i.i = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %call9.i.i) #8
  %cfg.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12.i.i, ptr %cfg.i.i, align 4
  %cmp.i62.i.i = icmp ugt ptr %call12.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i.i, label %if.then11.i.i.mtk_pcie_setup.exit_crit_edge, label %if.then11.i.i.if.end19.i.i_crit_edge

if.then11.i.i.if.end19.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.then11.i.i.mtk_pcie_setup.exit_crit_edge:      ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_setup.exit

if.end19.i.i:                                     ; preds = %if.then11.i.i.if.end19.i.i_crit_edge, %if.end8.i.i.if.end19.i.i_crit_edge
  %call20.i.i = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.22) #8
  %free_ck.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %free_ck.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20.i.i, ptr %free_ck.i.i, align 4
  %cmp.i63.i.i = icmp ugt ptr %call20.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i.i, label %if.then23.i.i, label %if.end19.i.i.if.end29.i.i_crit_edge

if.end19.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i.i

if.then23.i.i:                                    ; preds = %if.end19.i.i
  %cmp.i.i = icmp eq ptr %call20.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i.i, label %if.then23.i.i.cleanup_crit_edge, label %if.end27.i.i

if.then23.i.i.cleanup_crit_edge:                  ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27.i.i:                                     ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %free_ck.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %free_ck.i.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end27.i.i, %if.end19.i.i.if.end29.i.i_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %11) #8
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #8
  %16 = ptrtoint ptr %free_ck.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_ck.i.i, align 4
  %call.i64.i.i = tail call i32 @clk_prepare(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i64.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end29.i.i.do.end.i.i_crit_edge

if.end29.i.i.do.end.i.i_crit_edge:                ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.end.i.i.i:                                     ; preds = %if.end29.i.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end20.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %17) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then3.i.i.i, %if.end29.i.i.do.end.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call1.i.i.i, %if.then3.i.i.i ], [ %call.i64.i.i, %if.end29.i.i.do.end.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23) #11
  %call.i65.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #8
  br label %cleanup

if.end20.i:                                       ; preds = %if.end.i.i.i
  %18 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ports, align 4
  %cmp29.not92.i = icmp eq ptr %19, %ports
  br i1 %cmp29.not92.i, label %if.end20.i.for.end37.i_crit_edge, label %if.end20.i.for.body30.i_crit_edge

if.end20.i.for.body30.i_crit_edge:                ; preds = %if.end20.i
  br label %for.body30.i

if.end20.i.for.end37.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %if.end20.i.for.body30.i_crit_edge
  %.pn.in93.i = phi ptr [ %.pn.i, %for.body30.i.for.body30.i_crit_edge ], [ %19, %if.end20.i.for.body30.i_crit_edge ]
  %port.0.i = getelementptr i8, ptr %.pn.in93.i, i32 -4
  %20 = ptrtoint ptr %.pn.in93.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %.pn.in93.i, align 4
  tail call fastcc void @mtk_pcie_enable_port(ptr noundef %port.0.i) #8
  %cmp29.not.i = icmp eq ptr %.pn.i, %ports
  br i1 %cmp29.not.i, label %for.body30.i.for.end37.i_crit_edge, label %for.body30.i.for.body30.i_crit_edge

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30.i

for.body30.i.for.end37.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37.i

for.end37.i:                                      ; preds = %for.body30.i.for.end37.i_crit_edge, %if.end20.i.for.end37.i_crit_edge
  %21 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %ports, align 4
  %cmp.i78.not.i = icmp eq ptr %22, %ports
  br i1 %cmp.i78.not.i, label %if.then41.i, label %for.end37.i.if.end8_crit_edge

for.end37.i.if.end8_crit_edge:                    ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then41.i:                                      ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private.i, align 4
  %25 = ptrtoint ptr %free_ck.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %free_ck.i.i, align 4
  tail call void @clk_disable(ptr noundef %26) #8
  tail call void @clk_unprepare(ptr noundef %26) #8
  %call.i.i80.i = tail call i32 @__pm_runtime_idle(ptr noundef %24, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %24, i1 noundef zeroext true) #8
  br label %if.end8

error_put_node.i:                                 ; preds = %if.end.i.error_put_node.i_crit_edge, %do.end.i
  %err.0.i = phi i32 [ %call5.i, %do.end.i ], [ %call8.i, %if.end.i.error_put_node.i_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %child.091.i) #8
  br label %cleanup

mtk_pcie_setup.exit:                              ; preds = %if.then11.i.i.mtk_pcie_setup.exit_crit_edge, %if.then.i.i.mtk_pcie_setup.exit_crit_edge
  %retval.0.i.in.i = phi ptr [ %call2.i.i, %if.then.i.i.mtk_pcie_setup.exit_crit_edge ], [ %call12.i.i, %if.then11.i.i.mtk_pcie_setup.exit_crit_edge ]
  %retval.0.i.i = ptrtoint ptr %retval.0.i.in.i to i32
  %tobool6.not = icmp eq ptr %retval.0.i.in.i, null
  br i1 %tobool6.not, label %mtk_pcie_setup.exit.if.end8_crit_edge, label %mtk_pcie_setup.exit.cleanup_crit_edge

mtk_pcie_setup.exit.cleanup_crit_edge:            ; preds = %mtk_pcie_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtk_pcie_setup.exit.if.end8_crit_edge:            ; preds = %mtk_pcie_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %mtk_pcie_setup.exit.if.end8_crit_edge, %if.then41.i, %for.end37.i.if.end8_crit_edge
  %27 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc, align 4
  %ops = getelementptr inbounds %struct.mtk_pcie_soc, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %ops10 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %31 = ptrtoint ptr %ops10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %ops10, align 4
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %32 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %private.i, ptr %sysdata, align 4
  %no_msi = getelementptr inbounds %struct.mtk_pcie_soc, ptr %28, i32 0, i32 2
  %33 = ptrtoint ptr %no_msi to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %no_msi, align 2, !range !173
  %msi_domain = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 13
  %35 = ptrtoint ptr %msi_domain to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load = load i16, ptr %msi_domain, align 8
  %36 = shl nuw nsw i8 %34, 5
  %bf.shl = zext i8 %36 to i16
  %bf.clear = and i16 %bf.load, -33
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %msi_domain, align 8
  %call13 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end8.cleanup_crit_edge, label %put_resources

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

put_resources:                                    ; preds = %if.end8
  %37 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %ports, align 4
  %cmp.i45.not = icmp eq ptr %38, %ports
  br i1 %cmp.i45.not, label %put_resources.cleanup_crit_edge, label %if.then20

put_resources.cleanup_crit_edge:                  ; preds = %put_resources
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %put_resources
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtk_pcie_put_resources(ptr noundef %private.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %put_resources.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %mtk_pcie_setup.exit.cleanup_crit_edge, %error_put_node.i, %do.end.i.i, %if.then23.i.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.i, %mtk_pcie_setup.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call13, %if.then20 ], [ %call13, %put_resources.cleanup_crit_edge ], [ %retval.0.i.ph.i.i, %do.end.i.i ], [ -517, %if.then23.i.i.cleanup_crit_edge ], [ %call12.i, %if.else.i.cleanup_crit_edge ], [ %err.0.i, %error_put_node.i ]
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
  %bus = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %3) #8
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %5) #8
  %windows1.i = getelementptr i8, ptr %1, i32 -72
  tail call void @pci_free_resource_list(ptr noundef %windows1.i) #8
  %ports.i = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %cmp.not38.i = icmp eq ptr %7, %ports.i
  br i1 %cmp.not38.i, label %entry.mtk_pcie_irq_teardown.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mtk_pcie_irq_teardown.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_irq_teardown.exit

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in39.i = phi ptr [ %.pn40.i, %if.end16.i.for.body.i_crit_edge ], [ %7, %entry.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn40.i = load ptr, ptr %.pn.in39.i, align 4
  %irq.i = getelementptr i8, ptr %.pn.in39.i, i32 48
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %10, ptr noundef null, ptr noundef null) #8
  %irq_domain.i = getelementptr i8, ptr %.pn.in39.i, i32 52
  %11 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_domain.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %12) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %msi_domain.i = getelementptr i8, ptr %.pn.in39.i, i32 60
  %13 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msi_domain.i, align 4
  %tobool9.not.i = icmp eq ptr %14, null
  br i1 %tobool9.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then10.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %14) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end.i.if.end12.i_crit_edge
  %inner_domain.i = getelementptr i8, ptr %.pn.in39.i, i32 56
  %15 = ptrtoint ptr %inner_domain.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inner_domain.i, align 4
  %tobool13.not.i = icmp eq ptr %16, null
  br i1 %tobool13.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then14.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %16) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  tail call void @irq_dispose_mapping(i32 noundef %18) #8
  %cmp.not.i = icmp eq ptr %.pn40.i, %ports.i
  br i1 %cmp.not.i, label %if.end16.i.mtk_pcie_irq_teardown.exit_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end16.i.mtk_pcie_irq_teardown.exit_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_irq_teardown.exit

mtk_pcie_irq_teardown.exit:                       ; preds = %if.end16.i.mtk_pcie_irq_teardown.exit_crit_edge, %entry.mtk_pcie_irq_teardown.exit_crit_edge
  tail call fastcc void @mtk_pcie_put_resources(ptr noundef %1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_pcie_put_resources(ptr noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.mtk_pcie, ptr %pcie, i32 0, i32 4
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %cmp.not29 = icmp eq ptr %1, %ports
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %mtk_pcie_port_free.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in30 = phi ptr [ %.pn, %mtk_pcie_port_free.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %port.0 = getelementptr i8, ptr %.pn.in30, i32 -4
  %2 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in30, align 4
  %phy = getelementptr i8, ptr %.pn.in30, i32 40
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %4) #8
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %call9 = tail call i32 @phy_exit(ptr noundef %6) #8
  %pipe_ck = getelementptr i8, ptr %.pn.in30, i32 36
  %7 = ptrtoint ptr %pipe_ck to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe_ck, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  %obff_ck = getelementptr i8, ptr %.pn.in30, i32 32
  %9 = ptrtoint ptr %obff_ck to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %obff_ck, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  %axi_ck = getelementptr i8, ptr %.pn.in30, i32 24
  %11 = ptrtoint ptr %axi_ck to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %axi_ck, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  %aux_ck = getelementptr i8, ptr %.pn.in30, i32 28
  %13 = ptrtoint ptr %aux_ck to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aux_ck, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %ahb_ck = getelementptr i8, ptr %.pn.in30, i32 20
  %15 = ptrtoint ptr %ahb_ck to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ahb_ck, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  %sys_ck = getelementptr i8, ptr %.pn.in30, i32 16
  %17 = ptrtoint ptr %sys_ck to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sys_ck, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  tail call void @clk_unprepare(ptr noundef %18) #8
  %pcie1.i = getelementptr i8, ptr %.pn.in30, i32 8
  %19 = ptrtoint ptr %pcie1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcie1.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %port.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port.0, align 4
  tail call void @devm_iounmap(ptr noundef %22, ptr noundef %24) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in30) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.mtk_pcie_port_free.exit_crit_edge

for.body.mtk_pcie_port_free.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_port_free.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr i8, ptr %.pn.in30, i32 4
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in30, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %mtk_pcie_port_free.exit

mtk_pcie_port_free.exit:                          ; preds = %if.end.i.i.i, %for.body.mtk_pcie_port_free.exit_crit_edge
  %31 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in30, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in30, i32 4
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @devm_kfree(ptr noundef %22, ptr noundef %port.0) #8
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %mtk_pcie_port_free.exit.for.end_crit_edge, label %mtk_pcie_port_free.exit.for.body_crit_edge

mtk_pcie_port_free.exit.for.body_crit_edge:       ; preds = %mtk_pcie_port_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

mtk_pcie_port_free.exit.for.end_crit_edge:        ; preds = %mtk_pcie_port_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %mtk_pcie_port_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %33 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcie, align 4
  %free_ck.i = getelementptr inbounds %struct.mtk_pcie, ptr %pcie, i32 0, i32 3
  %35 = ptrtoint ptr %free_ck.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %free_ck.i, align 4
  tail call void @clk_disable(ptr noundef %36) #8
  tail call void @clk_unprepare(ptr noundef %36) #8
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %34, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %34, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_pci_domain_nr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_devfn(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_pcie_parse_port(ptr noundef %pcie, ptr noundef %node, i32 noundef %slot) unnamed_addr #2 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #8
  %2 = call ptr @memset(ptr %name, i32 255, i32 10)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 164, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.6, i32 noundef %slot)
  %call4 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef nonnull %name) #8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %slot) #11
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.9, i32 noundef %slot)
  %call14 = call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull %name) #8
  %sys_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %sys_ck to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %sys_ck, align 4
  %cmp.i169 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %slot) #11
  %8 = ptrtoint ptr %sys_ck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sys_ck, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.13, i32 noundef %slot)
  %call27 = call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef nonnull %name) #8
  %ahb_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %ahb_ck to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call27, ptr %ahb_ck, align 4
  %cmp.i170 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.14, i32 noundef %slot)
  %call37 = call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef nonnull %name) #8
  %axi_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %axi_ck to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call37, ptr %axi_ck, align 4
  %cmp.i171 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %call45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.15, i32 noundef %slot)
  %call47 = call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef nonnull %name) #8
  %aux_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %aux_ck to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call47, ptr %aux_ck, align 4
  %cmp.i172 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end43
  %call55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.16, i32 noundef %slot)
  %call57 = call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef nonnull %name) #8
  %obff_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %obff_ck to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call57, ptr %obff_ck, align 4
  %cmp.i173 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call57 to i32
  br label %cleanup

if.end63:                                         ; preds = %if.end53
  %call65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.17, i32 noundef %slot)
  %call67 = call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef nonnull %name) #8
  %pipe_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %pipe_ck to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call67, ptr %pipe_ck, align 4
  %cmp.i174 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call67 to i32
  br label %cleanup

if.end73:                                         ; preds = %if.end63
  %call75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.18, i32 noundef %slot)
  %call.i175 = call ptr @__devm_reset_control_get(ptr noundef %1, ptr noundef nonnull %name, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %reset = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i175, ptr %reset, align 4
  %cmp = icmp eq ptr %call.i175, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.end73.cleanup_crit_edge, label %if.end83

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end83:                                         ; preds = %if.end73
  %call85 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.19, i32 noundef %slot)
  %call87 = call ptr @devm_phy_optional_get(ptr noundef %1, ptr noundef nonnull %name) #8
  %phy = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call87, ptr %phy, align 4
  %cmp.i176 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then90, label %if.end93

if.then90:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call87 to i32
  br label %cleanup

if.end93:                                         ; preds = %if.end83
  %slot94 = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %slot94 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %slot, ptr %slot94, align 4
  %pcie95 = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %pcie95 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pcie, ptr %pcie95, align 4
  %soc = getelementptr inbounds %struct.mtk_pcie, ptr %pcie, i32 0, i32 5
  %26 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %soc, align 4
  %setup_irq = getelementptr inbounds %struct.mtk_pcie_soc, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %setup_irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %setup_irq, align 4
  %tobool96.not = icmp eq ptr %29, null
  br i1 %tobool96.not, label %if.end93.if.end104_crit_edge, label %if.then97

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then97:                                        ; preds = %if.end93
  %call100 = call i32 %29(ptr noundef nonnull %call.i, ptr noundef %node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then97.if.end104_crit_edge, label %if.then97.cleanup_crit_edge

if.then97.cleanup_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then97.if.end104_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.end104:                                        ; preds = %if.then97.if.end104_crit_edge, %if.end93.if.end104_crit_edge
  %list = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mtk_pcie_port, ptr %call.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list, ptr %prev.i, align 4
  %ports = getelementptr inbounds %struct.mtk_pcie, ptr %pcie, i32 0, i32 4
  %prev.i177 = getelementptr inbounds %struct.mtk_pcie, ptr %pcie, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev.i177 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i177, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %33, ptr noundef %ports) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %prev.i177 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list, ptr %prev.i177, align 4
  %35 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ports, ptr %list, align 4
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list, ptr %33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end104.cleanup_crit_edge, %if.then97.cleanup_crit_edge, %if.then90, %if.end73.cleanup_crit_edge, %if.then70, %if.then60, %if.then50, %if.then40, %if.then30, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %10, %do.end20 ], [ %12, %if.then30 ], [ %14, %if.then40 ], [ %16, %if.then50 ], [ %18, %if.then60 ], [ %20, %if.then70 ], [ %23, %if.then90 ], [ -12, %entry.cleanup_crit_edge ], [ %call100, %if.then97.cleanup_crit_edge ], [ -517, %if.end73.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_pcie_enable_port(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie1 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %pcie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sys_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %sys_ck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_ck, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %slot = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %7) #11
  br label %err_sys_clk

if.end:                                           ; preds = %if.end.i
  %ahb_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 5
  %8 = ptrtoint ptr %ahb_ck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ahb_ck, align 4
  %call.i128 = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i129, label %if.end.i132, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.end.i132:                                      ; preds = %if.end
  %call1.i130 = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130)
  %tobool2.not.i131 = icmp eq i32 %call1.i130, 0
  br i1 %tobool2.not.i131, label %if.end10, label %if.then3.i133

if.then3.i133:                                    ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i133, %if.end.do.end8_crit_edge
  %slot9 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %10 = ptrtoint ptr %slot9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slot9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28, i32 noundef %11) #11
  br label %err_ahb_clk

if.end10:                                         ; preds = %if.end.i132
  %aux_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 7
  %12 = ptrtoint ptr %aux_ck to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aux_ck, align 4
  %call.i136 = tail call i32 @clk_prepare(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i137 = icmp eq i32 %call.i136, 0
  br i1 %tobool.not.i137, label %if.end.i140, label %if.end10.do.end16_crit_edge

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end.i140:                                      ; preds = %if.end10
  %call1.i138 = tail call i32 @clk_enable(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i138)
  %tobool2.not.i139 = icmp eq i32 %call1.i138, 0
  br i1 %tobool2.not.i139, label %if.end18, label %if.then3.i141

if.then3.i141:                                    ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i141, %if.end10.do.end16_crit_edge
  %slot17 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %14 = ptrtoint ptr %slot17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slot17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %15) #11
  br label %err_aux_clk

if.end18:                                         ; preds = %if.end.i140
  %axi_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 6
  %16 = ptrtoint ptr %axi_ck to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %axi_ck, align 4
  %call.i144 = tail call i32 @clk_prepare(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i145 = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i145, label %if.end.i148, label %if.end18.do.end24_crit_edge

if.end18.do.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.end.i148:                                      ; preds = %if.end18
  %call1.i146 = tail call i32 @clk_enable(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i146)
  %tobool2.not.i147 = icmp eq i32 %call1.i146, 0
  br i1 %tobool2.not.i147, label %if.end26, label %if.then3.i149

if.then3.i149:                                    ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %17) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then3.i149, %if.end18.do.end24_crit_edge
  %slot25 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %18 = ptrtoint ptr %slot25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slot25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %19) #11
  br label %err_axi_clk

if.end26:                                         ; preds = %if.end.i148
  %obff_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 8
  %20 = ptrtoint ptr %obff_ck to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %obff_ck, align 4
  %call.i152 = tail call i32 @clk_prepare(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %if.end.i156, label %if.end26.do.end32_crit_edge

if.end26.do.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

if.end.i156:                                      ; preds = %if.end26
  %call1.i154 = tail call i32 @clk_enable(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool2.not.i155 = icmp eq i32 %call1.i154, 0
  br i1 %tobool2.not.i155, label %if.end34, label %if.then3.i157

if.then3.i157:                                    ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %21) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then3.i157, %if.end26.do.end32_crit_edge
  %slot33 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %22 = ptrtoint ptr %slot33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slot33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %23) #11
  br label %err_obff_clk

if.end34:                                         ; preds = %if.end.i156
  %pipe_ck = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 9
  %24 = ptrtoint ptr %pipe_ck to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe_ck, align 4
  %call.i160 = tail call i32 @clk_prepare(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool.not.i161 = icmp eq i32 %call.i160, 0
  br i1 %tobool.not.i161, label %if.end.i164, label %if.end34.do.end40_crit_edge

if.end34.do.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40

if.end.i164:                                      ; preds = %if.end34
  %call1.i162 = tail call i32 @clk_enable(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i162)
  %tobool2.not.i163 = icmp eq i32 %call1.i162, 0
  br i1 %tobool2.not.i163, label %if.end42, label %if.then3.i165

if.then3.i165:                                    ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %25) #8
  br label %do.end40

do.end40:                                         ; preds = %if.then3.i165, %if.end34.do.end40_crit_edge
  %slot41 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %26 = ptrtoint ptr %slot41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slot41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %27) #11
  br label %err_pipe_clk

if.end42:                                         ; preds = %if.end.i164
  %reset = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 3
  %28 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset, align 4
  %call43 = tail call i32 @reset_control_assert(ptr noundef %29) #8
  %30 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reset, align 4
  %call45 = tail call i32 @reset_control_deassert(ptr noundef %31) #8
  %phy = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 10
  %32 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy, align 4
  %call46 = tail call i32 @phy_init(ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %slot52 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %34 = ptrtoint ptr %slot52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slot52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef %35) #11
  br label %err_phy_init

if.end53:                                         ; preds = %if.end42
  %36 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy, align 4
  %call55 = tail call i32 @phy_power_on(ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %slot61 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %38 = ptrtoint ptr %slot61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slot61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46, i32 noundef %39) #11
  br label %err_phy_on

if.end62:                                         ; preds = %if.end53
  %soc = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %soc, align 4
  %startup = getelementptr inbounds %struct.mtk_pcie_soc, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %startup to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %startup, align 4
  %call63 = tail call i32 %43(ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end62.cleanup_crit_edge, label %do.end69

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %slot70 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %44 = ptrtoint ptr %slot70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %slot70, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.49, i32 noundef %45) #11
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy, align 4
  %call72 = tail call i32 @phy_power_off(ptr noundef %47) #8
  br label %err_phy_on

err_phy_on:                                       ; preds = %do.end69, %do.end60
  %48 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy, align 4
  %call74 = tail call i32 @phy_exit(ptr noundef %49) #8
  br label %err_phy_init

err_phy_init:                                     ; preds = %err_phy_on, %do.end51
  %50 = ptrtoint ptr %pipe_ck to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pipe_ck, align 4
  tail call void @clk_disable(ptr noundef %51) #8
  tail call void @clk_unprepare(ptr noundef %51) #8
  br label %err_pipe_clk

err_pipe_clk:                                     ; preds = %err_phy_init, %do.end40
  %52 = ptrtoint ptr %obff_ck to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %obff_ck, align 4
  tail call void @clk_disable(ptr noundef %53) #8
  tail call void @clk_unprepare(ptr noundef %53) #8
  br label %err_obff_clk

err_obff_clk:                                     ; preds = %err_pipe_clk, %do.end32
  %54 = ptrtoint ptr %axi_ck to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %axi_ck, align 4
  tail call void @clk_disable(ptr noundef %55) #8
  tail call void @clk_unprepare(ptr noundef %55) #8
  br label %err_axi_clk

err_axi_clk:                                      ; preds = %err_obff_clk, %do.end24
  %56 = ptrtoint ptr %aux_ck to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %aux_ck, align 4
  tail call void @clk_disable(ptr noundef %57) #8
  tail call void @clk_unprepare(ptr noundef %57) #8
  br label %err_aux_clk

err_aux_clk:                                      ; preds = %err_axi_clk, %do.end16
  %58 = ptrtoint ptr %ahb_ck to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ahb_ck, align 4
  tail call void @clk_disable(ptr noundef %59) #8
  tail call void @clk_unprepare(ptr noundef %59) #8
  br label %err_ahb_clk

err_ahb_clk:                                      ; preds = %err_aux_clk, %do.end8
  %60 = ptrtoint ptr %sys_ck to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sys_ck, align 4
  tail call void @clk_disable(ptr noundef %61) #8
  tail call void @clk_unprepare(ptr noundef %61) #8
  br label %err_sys_clk

err_sys_clk:                                      ; preds = %err_ahb_clk, %do.end
  %62 = ptrtoint ptr %pcie1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcie1, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %port, align 4
  tail call void @devm_iounmap(ptr noundef %65, ptr noundef %67) #8
  %list.i = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %err_sys_clk.mtk_pcie_port_free.exit_crit_edge

err_sys_clk.mtk_pcie_port_free.exit_crit_edge:    ; preds = %err_sys_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_pcie_port_free.exit

if.end.i.i.i:                                     ; preds = %err_sys_clk
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i, align 4
  %70 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %mtk_pcie_port_free.exit

mtk_pcie_port_free.exit:                          ; preds = %if.end.i.i.i, %err_sys_clk.mtk_pcie_port_free.exit_crit_edge
  %74 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @devm_kfree(ptr noundef %65, ptr noundef %port) #8
  br label %cleanup

cleanup:                                          ; preds = %mtk_pcie_port_free.exit, %if.end62.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_resource_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_startup_port(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie1 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %pcie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie1, align 4
  %slot = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot, align 4
  %base = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !174
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot, align 4
  %add = add i32 %9, 1
  %shl7 = shl nuw i32 1, %add
  %or = or i32 %shl7, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !177
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !174
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %17 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slot, align 4
  %add18 = add i32 %18, 1
  %shl19 = shl nuw i32 1, %add18
  %neg = xor i32 %shl19, -1
  %and20 = and i32 %16, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %and20)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !177
  %call26 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call26, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 791) #8
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 4
  %add.ptr40224 = getelementptr i8, ptr %23, i32 80
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40224) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not226 = icmp eq i32 %25, 0
  br i1 %tobool.not226, label %entry.land.lhs.true_crit_edge, label %entry.if.end71_crit_edge

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then61.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call48 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call48, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call48, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then61

if.then61:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 4
  %add.ptr40 = getelementptr i8, ptr %27, i32 80
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %29 = and i32 %28, 16777216
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %if.then61.land.lhs.true_crit_edge, label %if.then61.if.end71_crit_edge

if.then61.if.end71_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then61.land.lhs.true_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 4
  %add.ptr55 = getelementptr i8, ptr %31, i32 80
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool67.not = icmp eq i32 %33, 0
  br i1 %tobool67.not, label %for.end.cleanup_crit_edge, label %for.end.if.end71_crit_edge

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %for.end.if.end71_crit_edge, %if.then61.if.end71_crit_edge, %entry.if.end71_crit_edge
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr75 = getelementptr i8, ptr %35, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #8, !srcloc !174
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %38 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slot, align 4
  %add80 = add i32 %39, 20
  %shl81 = shl nuw i32 1, %add80
  %or82 = or i32 %shl81, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %or82)
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr87 = getelementptr i8, ptr %42, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %40) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port, align 4
  %add.ptr92 = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 16842751) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port, align 4
  %add.ptr97 = getelementptr i8, ptr %46, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 16778246) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  tail call void @arm_heavy_mb() #8
  %and = shl i32 %3, 8
  %shl101 = and i32 %and, 1792
  %and4 = shl i32 %3, 11
  %shl104 = and i32 %and4, 63488
  %or103 = or i32 %shl101, %shl104
  %or106 = or i32 %or103, 117440572
  %47 = tail call i32 @llvm.bswap.i32(i32 %or106)
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr109 = getelementptr i8, ptr %49, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %47) #8, !srcloc !177
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr113 = getelementptr i8, ptr %51, i32 36
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %53 = and i32 %52, -65440
  %54 = or i32 %53, 27776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr130 = getelementptr i8, ptr %56, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %47) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr135 = getelementptr i8, ptr %58, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %54) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %or144 = or i32 %or103, 117440524
  %59 = tail call i32 @llvm.bswap.i32(i32 %or144)
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr147 = getelementptr i8, ptr %61, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %59) #8, !srcloc !177
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %add.ptr151 = getelementptr i8, ptr %63, i32 36
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %65 = and i32 %64, -16711681
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr168 = getelementptr i8, ptr %67, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 %59) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr173 = getelementptr i8, ptr %69, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173, i32 %65) #8, !srcloc !177
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_pcie_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %and = and i32 %where, 252
  %2 = shl i32 %where, 16
  %shl = and i32 %2, 251658240
  %and2 = shl i32 %devfn, 8
  %shl3 = and i32 %and2, 1792
  %shl8 = and i32 %and2, 63488
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %number, align 4
  %conv = zext i8 %4 to i32
  %shl11 = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl3, %and
  %or5 = or i32 %or, %shl8
  %or10 = or i32 %or5, %shl
  %or13 = or i32 %or10, %shl11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %base = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !177
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 36
  %and16 = and i32 %where, 3
  %add.ptr17 = getelementptr i8, ptr %add.ptr15, i32 %and16
  ret ptr %add.ptr17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_startup_port_v2(ptr noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie1 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %pcie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie1, align 4
  %soc4 = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %soc4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc4, align 4
  %windows = getelementptr i8, ptr %1, i32 -72
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %entry1.0.in.i = phi ptr [ %windows, %entry ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %windows
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 7936
  %cmp2.i = icmp eq i32 %and.i.i, 512
  br i1 %cmp2.i, label %resource_list_first_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

resource_list_first_type.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not, label %resource_list_first_type.exit.cleanup_crit_edge, label %if.end

resource_list_first_type.exit.cleanup_crit_edge:  ; preds = %resource_list_first_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %resource_list_first_type.exit
  %res.i.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %res.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res.i.le, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #8, !srcloc !174
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %slot = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %15 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot, align 4
  %mul = shl i32 %16, 3
  %shl = shl nuw i32 1, %mul
  %add16 = or i32 %mul, 1
  %shl17 = shl nuw i32 1, %add16
  %or = or i32 %shl, %14
  %or18 = or i32 %or, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !177
  br label %do.body36

if.else:                                          ; preds = %if.end8
  %cfg = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 4
  %tobool21.not = icmp eq ptr %21, null
  br i1 %tobool21.not, label %if.else.do.body36_crit_edge, label %if.then22

if.else.do.body36_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %slot23 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %22 = ptrtoint ptr %slot23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slot23, align 4
  %mul24 = shl i32 %23, 3
  %shl26 = shl nuw i32 1, %mul24
  %add29 = or i32 %mul24, 1
  %shl30 = shl nuw i32 1, %add29
  %or31 = or i32 %shl30, %shl26
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %21, i32 noundef 0, i32 noundef %or31, i32 noundef %or31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %do.body36

do.body36:                                        ; preds = %if.then22, %if.else.do.body36_crit_edge, %if.then10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port, align 4
  %add.ptr40 = getelementptr i8, ptr %25, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 4
  %add.ptr45 = getelementptr i8, ptr %27, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 14680064) #8, !srcloc !177
  tail call void @msleep(i32 noundef 100) #8
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port, align 4
  %add.ptr49 = getelementptr i8, ptr %29, i32 1296
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  %31 = or i32 %30, 251723776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port, align 4
  %add.ptr58 = getelementptr i8, ptr %33, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %31) #8, !srcloc !177
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool59.not = icmp eq i8 %35, 0
  br i1 %tobool59.not, label %do.body36.if.end72_crit_edge, label %if.then60

do.body36.if.end72_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then60:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port, align 4
  %add.ptr65 = getelementptr i8, ptr %37, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr65, i16 -15596) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port, align 4
  %add.ptr71 = getelementptr i8, ptr %39, i32 262
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr71, i16 1030) #8, !srcloc !202
  br label %if.end72

if.end72:                                         ; preds = %if.then60, %do.body36.if.end72_crit_edge
  %need_fix_device_id = getelementptr inbounds %struct.mtk_pcie_soc, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %need_fix_device_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %need_fix_device_id, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool73.not = icmp eq i8 %41, 0
  br i1 %tobool73.not, label %if.end72.if.end81_crit_edge, label %do.body75

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

do.body75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %device_id = getelementptr inbounds %struct.mtk_pcie_soc, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %device_id, align 4
  %conv78 = trunc i32 %43 to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv78)
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port, align 4
  %add.ptr80 = getelementptr i8, ptr %46, i32 258
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr80, i16 %44) #8, !srcloc !202
  br label %if.end81

if.end81:                                         ; preds = %do.body75, %if.end72.if.end81_crit_edge
  %call82 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call82, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 726) #8
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port, align 4
  %add.ptr99233 = getelementptr i8, ptr %48, i32 2052
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99233) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  %50 = and i32 %49, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool103.not235 = icmp eq i32 %50, 0
  br i1 %tobool103.not235, label %if.end81.land.lhs.true_crit_edge, label %if.end81.if.end130_crit_edge

if.end81.if.end130_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.end81.land.lhs.true_crit_edge:                 ; preds = %if.end81
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then121.land.lhs.true_crit_edge, %if.end81.land.lhs.true_crit_edge
  %call107 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call107, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call107, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then121

if.then121:                                       ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port, align 4
  %add.ptr99 = getelementptr i8, ptr %52, i32 2052
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  %54 = and i32 %53, 262144
  %tobool103.not = icmp eq i32 %54, 0
  br i1 %tobool103.not, label %if.then121.land.lhs.true_crit_edge, label %if.then121.if.end130_crit_edge

if.then121.if.end130_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then121.land.lhs.true_crit_edge:               ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port, align 4
  %add.ptr115 = getelementptr i8, ptr %56, i32 2052
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  %58 = and i32 %57, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool126.not = icmp eq i32 %58, 0
  br i1 %tobool126.not, label %for.end.cleanup_crit_edge, label %for.end.if.end130_crit_edge

for.end.if.end130_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end130:                                        ; preds = %for.end.if.end130_crit_edge, %if.then121.if.end130_crit_edge, %if.end81.if.end130_crit_edge
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port, align 4
  %add.ptr134 = getelementptr i8, ptr %60, i32 1056
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  %62 = and i32 %61, -3841
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port, align 4
  %add.ptr143 = getelementptr i8, ptr %64, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %62) #8, !srcloc !177
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %port, align 4
  %add.ptr.i224 = getelementptr i8, ptr %66, i32 192
  %67 = ptrtoint ptr %add.ptr.i224 to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %67) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %68 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #8
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %port, align 4
  %add.ptr2.i = getelementptr i8, ptr %70, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %68) #8, !srcloc !177
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %port, align 4
  %add.ptr4.i = getelementptr i8, ptr %72, i32 1056
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  %74 = and i32 %73, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %port, align 4
  %add.ptr12.i = getelementptr i8, ptr %76, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %74) #8, !srcloc !177
  %77 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %10, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %79 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %end.i, align 4
  %sub.i225 = add i32 %80, 1
  %add.i226 = sub i32 %sub.i225, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i225, i32 %78)
  %tobool.not.i = icmp eq i32 %sub.i225, %78
  %81 = tail call i32 @llvm.ctlz.i32(i32 %add.i226, i1 true) #8, !range !212
  %sub.i = sub nsw i32 0, %81
  %sub.i.op = and i32 %sub.i, 31
  %and147 = select i1 %tobool.not.i, i32 0, i32 %sub.i.op
  %or148 = or i32 %and147, %78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @arm_heavy_mb() #8
  %82 = tail call i32 @llvm.bswap.i32(i32 %or148)
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %port, align 4
  %add.ptr153 = getelementptr i8, ptr %84, i32 1080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %82) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %port, align 4
  %add.ptr161 = getelementptr i8, ptr %86, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 0) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %port, align 4
  %add.ptr166 = getelementptr i8, ptr %88, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 -1593835520) #8, !srcloc !177
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %resource_list_first_type.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end130 ], [ -22, %if.end.cleanup_crit_edge ], [ -110, %for.end.cleanup_crit_edge ], [ -22, %resource_list_first_type.exit.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_setup_irq(ptr noundef %port, ptr noundef %node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie1 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %pcie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %call.i = tail call ptr @of_get_next_child(ptr noundef %node, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.56) #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 3
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef %port) #8
  %irq_domain.i = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 13
  %4 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i.i, ptr %irq_domain.i, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i) #8
  %5 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_domain.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end9.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.59) #11
  br label %do.end

if.end9.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %pcie1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcie1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i.i24.i = icmp eq ptr %12, null
  %fwnode.i.i25.i = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 3
  %spec.select.i.i26.i = select i1 %tobool.not.i.i24.i, ptr null, ptr %fwnode.i.i25.i
  %lock.i.i = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @mtk_pcie_allocate_msi_domains.__key) #8
  %call.i.i.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i26.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @msi_domain_ops, ptr noundef %port) #8
  %inner_domain.i.i = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 14
  %13 = ptrtoint ptr %inner_domain.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i, ptr %inner_domain.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end5.i.i, label %if.end.i.i

do.end5.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %pcie1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcie1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.62) #11
  br label %do.end

if.end.i.i:                                       ; preds = %if.end9.i
  %call9.i.i = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i26.i, ptr noundef nonnull @mtk_msi_domain_info, ptr noundef nonnull %call.i.i.i) #8
  %msi_domain.i.i = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 15
  %18 = ptrtoint ptr %msi_domain.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %msi_domain.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not.i.i, label %do.end15.i.i, label %if.end

do.end15.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %pcie1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcie1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.65) #11
  %23 = ptrtoint ptr %inner_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inner_domain.i.i, align 4
  tail call void @irq_domain_remove(ptr noundef %24) #8
  br label %do.end

do.end:                                           ; preds = %do.end15.i.i, %do.end5.i.i, %do.end8.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %do.end5.i.i ], [ -12, %do.end15.i.i ], [ -19, %do.end.i ], [ -19, %do.end8.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.52) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_find_property(ptr noundef %26, ptr noundef nonnull @.str.54, ptr noundef null) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.55) #8
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %slot = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 11
  %27 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slot, align 4
  %call7 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef %28) #8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %call6.sink = phi i32 [ %call7, %if.else ], [ %call6, %if.then5 ]
  %29 = getelementptr inbounds %struct.mtk_pcie_port, ptr %port, i32 0, i32 12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call6.sink, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.sink)
  %cmp = icmp slt i32 %call6.sink, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call6.sink, ptr noundef nonnull @mtk_pcie_intr_handler, ptr noundef %port) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end13 ], [ %call6.sink, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_config_read(ptr noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %number, align 4
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %2 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysdata.i, align 4
  %tobool.not23.i = icmp eq ptr %bus, null
  br i1 %tobool.not23.i, label %entry.while.end.i_crit_edge, label %land.rhs.i.preheader

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

land.rhs.i.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i13 = icmp eq i8 %5, 0
  br i1 %tobool1.not.i13, label %land.rhs.i.preheader.while.end.i_crit_edge, label %land.rhs.i.preheader.while.body.i_crit_edge

land.rhs.i.preheader.while.body.i_crit_edge:      ; preds = %land.rhs.i.preheader
  br label %while.body.i

land.rhs.i.preheader.while.end.i_crit_edge:       ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.body.i
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 12
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number.i, align 4
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %land.rhs.i.while.end.i.loopexit_crit_edge, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

land.rhs.i.while.end.i.loopexit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.loopexit

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.i.preheader.while.body.i_crit_edge
  %bus.addr.025.i14 = phi ptr [ %11, %land.rhs.i.while.body.i_crit_edge ], [ %bus, %land.rhs.i.preheader.while.body.i_crit_edge ]
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.025.i14, i32 0, i32 4
  %8 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %self.i, align 4
  %bus2.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus2.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %while.body.i.while.end.i.loopexit_crit_edge, label %land.rhs.i

while.body.i.while.end.i.loopexit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.loopexit

while.end.i.loopexit:                             ; preds = %while.body.i.while.end.i.loopexit_crit_edge, %land.rhs.i.while.end.i.loopexit_crit_edge
  %devfn3.i.le = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %devfn3.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn3.i.le, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %land.rhs.i.preheader.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %devfn.addr.0.lcssa.i = phi i32 [ %devfn, %entry.while.end.i_crit_edge ], [ %devfn, %land.rhs.i.preheader.while.end.i_crit_edge ], [ %13, %while.end.i.loopexit ]
  %ports.i = getelementptr inbounds %struct.mtk_pcie, ptr %3, i32 0, i32 4
  %shr.i = lshr i32 %devfn.addr.0.lcssa.i, 3
  %and.i = and i32 %shr.i, 31
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.end.i
  %.pn.in.i = phi ptr [ %ports.i, %while.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %slot.i = getelementptr i8, ptr %.pn.i, i32 44
  %15 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot.i, align 4
  %cmp6.i = icmp eq i32 %16, %and.i
  br i1 %cmp6.i, label %mtk_pcie_find_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

mtk_pcie_find_port.exit:                          ; preds = %for.body.i
  %port.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %port.0.le.i, null
  br i1 %tobool.not, label %mtk_pcie_find_port.exit.cleanup_crit_edge, label %if.end

mtk_pcie_find_port.exit.cleanup_crit_edge:        ; preds = %mtk_pcie_find_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mtk_pcie_find_port.exit
  %conv = zext i8 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777220) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @arm_heavy_mb() #8
  %sub4.i = sub i32 32, %size
  %shr.i6 = lshr i32 -1, %sub4.i
  %and5.i = and i32 %where, 3
  %shl.i = shl i32 %shr.i6, %and5.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %20 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %21, i32 1124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %19) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %and11.i = and i32 %where, 4092
  %and12.i = shl i32 %devfn, 16
  %shl13.i = and i32 %and12.i, 458752
  %shl17.i = and i32 %and12.i, 16252928
  %shl20.i = shl nuw i32 %conv, 24
  %or19.i = or i32 %shl20.i, %shl13.i
  %or.i = or i32 %or19.i, %and11.i
  %or22.i = or i32 %or.i, %shl17.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #8
  %23 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %24, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %22) #8, !srcloc !177
  %25 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %26, i32 1160
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  %28 = or i32 %27, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %30, i32 1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %28) #8, !srcloc !177
  %call35.i = tail call fastcc i32 @mtk_pcie_check_cfg_cpld(ptr noundef nonnull %port.0.le.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool.not.i7 = icmp eq i32 %call35.i, 0
  br i1 %tobool.not.i7, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %31 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %32, i32 1164
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #8, !srcloc !174
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val, align 4
  %36 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %if.end.i.cleanup_crit_edge [
    i32 1, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 2, label %if.then48.i
  ]

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then48.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 65535, %if.then48.i ], [ 255, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %and5.i, 3
  %shr45.i = lshr i32 %34, %mul.i
  %and46.i = and i32 %.sink.i, %shr45.i
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and46.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mtk_pcie_find_port.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 134, %mtk_pcie_find_port.exit.cleanup_crit_edge ], [ 136, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ 134, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_config_write(ptr noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %number, align 4
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %2 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysdata.i, align 4
  %tobool.not23.i = icmp eq ptr %bus, null
  br i1 %tobool.not23.i, label %entry.while.end.i_crit_edge, label %land.rhs.i.preheader

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

land.rhs.i.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i11 = icmp eq i8 %5, 0
  br i1 %tobool1.not.i11, label %land.rhs.i.preheader.while.end.i_crit_edge, label %land.rhs.i.preheader.while.body.i_crit_edge

land.rhs.i.preheader.while.body.i_crit_edge:      ; preds = %land.rhs.i.preheader
  br label %while.body.i

land.rhs.i.preheader.while.end.i_crit_edge:       ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.body.i
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 12
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number.i, align 4
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %land.rhs.i.while.end.i.loopexit_crit_edge, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

land.rhs.i.while.end.i.loopexit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.loopexit

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.i.preheader.while.body.i_crit_edge
  %bus.addr.025.i12 = phi ptr [ %11, %land.rhs.i.while.body.i_crit_edge ], [ %bus, %land.rhs.i.preheader.while.body.i_crit_edge ]
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %bus.addr.025.i12, i32 0, i32 4
  %8 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %self.i, align 4
  %bus2.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus2.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %while.body.i.while.end.i.loopexit_crit_edge, label %land.rhs.i

while.body.i.while.end.i.loopexit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.loopexit

while.end.i.loopexit:                             ; preds = %while.body.i.while.end.i.loopexit_crit_edge, %land.rhs.i.while.end.i.loopexit_crit_edge
  %devfn3.i.le = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %devfn3.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn3.i.le, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %land.rhs.i.preheader.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %devfn.addr.0.lcssa.i = phi i32 [ %devfn, %entry.while.end.i_crit_edge ], [ %devfn, %land.rhs.i.preheader.while.end.i_crit_edge ], [ %13, %while.end.i.loopexit ]
  %ports.i = getelementptr inbounds %struct.mtk_pcie, ptr %3, i32 0, i32 4
  %shr.i = lshr i32 %devfn.addr.0.lcssa.i, 3
  %and.i = and i32 %shr.i, 31
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.end.i
  %.pn.in.i = phi ptr [ %ports.i, %while.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %slot.i = getelementptr i8, ptr %.pn.i, i32 44
  %15 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot.i, align 4
  %cmp6.i = icmp eq i32 %16, %and.i
  br i1 %cmp6.i, label %mtk_pcie_find_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

mtk_pcie_find_port.exit:                          ; preds = %for.body.i
  %port.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %port.0.le.i, null
  br i1 %tobool.not, label %mtk_pcie_find_port.exit.cleanup_crit_edge, label %if.end

mtk_pcie_find_port.exit.cleanup_crit_edge:        ; preds = %mtk_pcie_find_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mtk_pcie_find_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777284) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %sub3.i = sub i32 32, %size
  %shr.i6 = lshr i32 -1, %sub3.i
  %and4.i = and i32 %where, 3
  %shl.i = shl i32 %shr.i6, %and4.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %20 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %21, i32 1124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %19) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %and9.i = and i32 %where, 4092
  %and10.i = shl i32 %devfn, 16
  %shl11.i = and i32 %and10.i, 458752
  %shl15.i = and i32 %and10.i, 16252928
  %shl18.i = shl nuw i32 %conv, 24
  %or17.i = or i32 %shl18.i, %shl11.i
  %or.i = or i32 %or17.i, %and9.i
  %or20.i = or i32 %or.i, %shl15.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #8
  %23 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %24, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %22) #8, !srcloc !177
  %mul.i = shl nuw nsw i32 %and4.i, 3
  %shl24.i = shl i32 %val, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %shl24.i) #8
  %26 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %27, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %25) #8, !srcloc !177
  %28 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %29, i32 1160
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  %31 = or i32 %30, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port.0.le.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %33, i32 1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %31) #8, !srcloc !177
  %call37.i = tail call fastcc i32 @mtk_pcie_check_cfg_cpld(ptr noundef nonnull %port.0.le.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mtk_pcie_find_port.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37.i, %if.end ], [ 134, %mtk_pcie_find_port.exit.cleanup_crit_edge ], [ 134, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_pcie_check_cfg_cpld(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 100000000
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %add.ptr50 = getelementptr i8, ptr %1, i32 1160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #8, !srcloc !174
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %and51 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool.not52 = icmp eq i32 %and51, 0
  br i1 %tobool.not52, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call5 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call5, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call5, %add.i
  br i1 %cmp3.i, label %if.then7, label %cond.false

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %add.ptr11 = getelementptr i8, ptr %5, i32 1160
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !174
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #8
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 1160
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !174
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %and = and i32 %12, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then7, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %7, %if.then7 ], [ %3, %entry.for.end_crit_edge ], [ %12, %cond.false.for.end_crit_edge ]
  %and24 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end28, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 4
  %add.ptr32 = getelementptr i8, ptr %14, i32 1160
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %15)
  %tobool37.not = icmp ult i32 %15, 536870912
  %. = select i1 %tobool37.not, i32 0, i32 136
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 136, %for.end.cleanup_crit_edge ], [ %., %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_pcie_intr_handler(ptr noundef %desc) #2 align 64 {
entry:
  %status = alloca i32, align 4
  %imsi_status = alloca i32, align 4
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
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 1060
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !174
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %status, align 4
  %and = and i32 %15, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %chained_irq_enter.exit.if.end_crit_edge, label %if.then

chained_irq_enter.exit.if.end_crit_edge:          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %chained_irq_enter.exit
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 20, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call4)
  %cmp55 = icmp ult i32 %call4, 20
  br i1 %cmp55, label %do.body.lr.ph, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.lr.ph:                                    ; preds = %if.then
  %irq_domain = getelementptr inbounds %struct.mtk_pcie_port, ptr %1, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %bit.056 = phi i32 [ %call4, %do.body.lr.ph ], [ %call8, %do.body.do.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  call void @arm_heavy_mb() #8
  %shl = shl nuw nsw i32 1, %bit.056
  %17 = call i32 @llvm.bswap.i32(i32 %shl)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %19, i32 1060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %17) #8, !srcloc !177
  %20 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_domain, align 4
  %sub = add nsw i32 %bit.056, -16
  %call7 = call i32 @generic_handle_domain_irq(ptr noundef %21, i32 noundef %sub) #8
  %add = add nuw nsw i32 %bit.056, 1
  %call8 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 20, i32 noundef %add) #8
  %cmp = icmp ult i32 %call8, 20
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end:                                           ; preds = %do.body.if.end_crit_edge, %if.then.if.end_crit_edge, %chained_irq_enter.exit.if.end_crit_edge
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %and9 = and i32 %23, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end34_crit_edge, label %if.then11

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imsi_status) #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr1559 = getelementptr i8, ptr %25, i32 1068
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1559) #8, !srcloc !174
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  %28 = ptrtoint ptr %imsi_status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %imsi_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not60 = icmp eq i32 %26, 0
  br i1 %tobool19.not60, label %if.then11.do.body29_crit_edge, label %while.body.lr.ph

if.then11.do.body29_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

while.body.lr.ph:                                 ; preds = %if.then11
  %inner_domain = getelementptr inbounds %struct.mtk_pcie_port, ptr %1, i32 0, i32 14
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body23.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr15 = getelementptr i8, ptr %30, i32 1068
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !174
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  %33 = ptrtoint ptr %imsi_status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %imsi_status, align 4
  %tobool19.not = icmp eq i32 %31, 0
  br i1 %tobool19.not, label %while.cond.loopexit.do.body29_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.loopexit.do.body29_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %call20 = call i32 @_find_next_bit_be(ptr noundef nonnull %imsi_status, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call20)
  %cmp2257 = icmp ult i32 %call20, 32
  br i1 %cmp2257, label %while.body.for.body23_crit_edge, label %while.body.while.cond.loopexit_crit_edge

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

while.body.for.body23_crit_edge:                  ; preds = %while.body
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %while.body.for.body23_crit_edge
  %bit.158 = phi i32 [ %call27, %for.body23.for.body23_crit_edge ], [ %call20, %while.body.for.body23_crit_edge ]
  %34 = ptrtoint ptr %inner_domain to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %inner_domain, align 4
  %call24 = call i32 @generic_handle_domain_irq(ptr noundef %35, i32 noundef %bit.158) #8
  %add26 = add nuw nsw i32 %bit.158, 1
  %call27 = call i32 @_find_next_bit_be(ptr noundef nonnull %imsi_status, i32 noundef 32, i32 noundef %add26) #8
  %cmp22 = icmp ult i32 %call27, 32
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.while.cond.loopexit_crit_edge

for.body23.while.cond.loopexit_crit_edge:         ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

do.body29:                                        ; preds = %while.cond.loopexit.do.body29_crit_edge, %if.then11.do.body29_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr33 = getelementptr i8, ptr %37, i32 1060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 32768) #8, !srcloc !177
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imsi_status) #8
  br label %if.end34

if.end34:                                         ; preds = %do.body29, %if.end.if.end34_crit_edge
  %38 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i52 = icmp eq ptr %39, null
  br i1 %tobool.not.i52, label %if.else.i53, label %if.end34.chained_irq_exit.exit_crit_edge

if.end34.chained_irq_exit.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i53:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %40 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i53, %if.end34.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %41, %if.else.i53 ], [ %39, %if.end34.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !235

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 437, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.mtk_pcie_port, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %msi_irq_in_use = getelementptr inbounds %struct.mtk_pcie_port, ptr %1, i32 0, i32 17
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %msi_irq_in_use, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call)
  %cmp19 = icmp ugt i32 %call, 31
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 1, %call
  %2 = ptrtoint ptr %msi_irq_in_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msi_irq_in_use, align 4
  %or.i = or i32 %3, %shl.i
  store i32 %or.i, ptr %msi_irq_in_use, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %virq, i32 noundef %call, ptr noundef nonnull @mtk_msi_bottom_irq_chip, ptr noundef %5, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20
  %retval.0 = phi i32 [ -28, %if.then20 ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_pcie_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #8
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.mtk_pcie_port, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %msi_irq_in_use = getelementptr inbounds %struct.mtk_pcie_port, ptr %1, i32 0, i32 17
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %msi_irq_in_use, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pcie = getelementptr inbounds %struct.mtk_pcie_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.71, i32 noundef %3) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %6, -1
  %and.i17 = and i32 %5, %neg.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i17, ptr %arrayidx.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  tail call void @mutex_unlock(ptr noundef %lock) #8
  tail call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_msi_ack_irq(ptr nocapture noundef readonly %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !236
  tail call void @arm_heavy_mb() #8
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !177
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_msi_set_affinity(ptr nocapture noundef readnone %irq_data, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
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
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 192
  %4 = ptrtoint ptr %add.ptr to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %4) #8
  %5 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %msg, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %10 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_compose_msi_msg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_compose_msi_msg, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pcie = getelementptr inbounds %struct.mtk_pcie_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_compose_msi_msg.__UNIQUE_ID_ddebug293, ptr noundef %15, ptr noundef nonnull @.str.70, i32 noundef %17, i32 noundef %19, i32 noundef %21) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcie_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ports = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ports, align 4
  %cmp.i.not = icmp eq ptr %3, %ports
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn25 = load ptr, ptr %ports, align 4
  %cmp.not26 = icmp eq ptr %.pn25, %ports
  br i1 %cmp.not26, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn25, %for.cond.preheader.for.body_crit_edge ]
  %pipe_ck = getelementptr i8, ptr %.pn27, i32 36
  %5 = ptrtoint ptr %pipe_ck to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipe_ck, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  tail call void @clk_unprepare(ptr noundef %6) #8
  %obff_ck = getelementptr i8, ptr %.pn27, i32 32
  %7 = ptrtoint ptr %obff_ck to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %obff_ck, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  %axi_ck = getelementptr i8, ptr %.pn27, i32 24
  %9 = ptrtoint ptr %axi_ck to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %axi_ck, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  %aux_ck = getelementptr i8, ptr %.pn27, i32 28
  %11 = ptrtoint ptr %aux_ck to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aux_ck, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  %ahb_ck = getelementptr i8, ptr %.pn27, i32 20
  %13 = ptrtoint ptr %ahb_ck to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ahb_ck, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %sys_ck = getelementptr i8, ptr %.pn27, i32 16
  %15 = ptrtoint ptr %sys_ck to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sys_ck, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  %phy = getelementptr i8, ptr %.pn27, i32 40
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 4
  %call4 = tail call i32 @phy_power_off(ptr noundef %18) #8
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %call6 = tail call i32 @phy_exit(ptr noundef %20) #8
  %21 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %free_ck = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %free_ck to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %free_ck, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
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
  %ports = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ports, align 4
  %cmp.i.not = icmp eq ptr %3, %ports
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_ck = getelementptr inbounds %struct.mtk_pcie, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %free_ck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free_ck, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %cmp.not35 = icmp eq ptr %7, %ports
  br i1 %cmp.not35, label %clk_prepare_enable.exit.for.end_crit_edge, label %clk_prepare_enable.exit.for.body_crit_edge

clk_prepare_enable.exit.for.body_crit_edge:       ; preds = %clk_prepare_enable.exit
  br label %for.body

clk_prepare_enable.exit.for.end_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %clk_prepare_enable.exit.for.body_crit_edge
  %.pn.in36 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %7, %clk_prepare_enable.exit.for.body_crit_edge ]
  %port.0 = getelementptr i8, ptr %.pn.in36, i32 -4
  %8 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in36, align 4
  tail call fastcc void @mtk_pcie_enable_port(ptr noundef %port.0)
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %clk_prepare_enable.exit.for.end_crit_edge
  %9 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %ports, align 4
  %cmp.i33.not = icmp eq ptr %10, %ports
  br i1 %cmp.i33.not, label %if.then19, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %free_ck to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %free_ck, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !156, !158, !160, !162}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__initcall__kmod_pcie_mediatek__294_1249_mtk_pcie_driver_init6, !1, !"__initcall__kmod_pcie_mediatek__294_1249_mtk_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1249, i32 1}
!2 = !{ptr @__exitcall_mtk_pcie_driver_exit, !1, !"__exitcall_mtk_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file295, !4, !"__UNIQUE_ID_file295", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1250, i32 1}
!5 = !{ptr @__UNIQUE_ID_license296, !4, !"__UNIQUE_ID_license296", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1243, i32 11}
!8 = !{ptr @mtk_pcie_driver, !9, !"mtk_pcie_driver", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1239, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1054, i32 5}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mtk_pcie_setup._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtk_pcie_setup._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 925, i32 31}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 928, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mtk_pcie_parse_port._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mtk_pcie_parse_port._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 932, i32 31}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 935, i32 3}
!29 = !{ptr @mtk_pcie_parse_port._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mtk_pcie_parse_port._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 940, i32 31}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 945, i32 31}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 950, i32 31}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 955, i32 31}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 960, i32 31}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 965, i32 31}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 971, i32 31}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1000, i32 60}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1008, i32 9}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1015, i32 36}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1029, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mtk_pcie_subsys_powerup._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtk_pcie_subsys_powerup._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 838, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mtk_pcie_enable_port._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mtk_pcie_enable_port._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 844, i32 3}
!63 = !{ptr @mtk_pcie_enable_port._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mtk_pcie_enable_port._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 850, i32 3}
!67 = !{ptr @mtk_pcie_enable_port._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mtk_pcie_enable_port._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 856, i32 3}
!71 = !{ptr @mtk_pcie_enable_port._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtk_pcie_enable_port._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 862, i32 3}
!75 = !{ptr @mtk_pcie_enable_port._entry.36, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mtk_pcie_enable_port._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 868, i32 3}
!79 = !{ptr @mtk_pcie_enable_port._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mtk_pcie_enable_port._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 877, i32 3}
!83 = !{ptr @mtk_pcie_enable_port._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mtk_pcie_enable_port._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 883, i32 3}
!87 = !{ptr @mtk_pcie_enable_port._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mtk_pcie_enable_port._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 890, i32 2}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mtk_pcie_enable_port._entry.48, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @mtk_pcie_enable_port._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @mtk_pcie_ids, !95, !"mtk_pcie_ids", i1 false, i1 false}
!95 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1229, i32 34}
!96 = !{ptr @mtk_pcie_soc_v1, !97, !"mtk_pcie_soc_v1", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1201, i32 34}
!98 = !{ptr @mtk_pcie_ops, !99, !"mtk_pcie_ops", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 764, i32 23}
!100 = !{ptr @mtk_pcie_soc_mt2712, !101, !"mtk_pcie_soc_mt2712", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1207, i32 34}
!102 = !{ptr @mtk_pcie_ops_v2, !103, !"mtk_pcie_ops_v2", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 389, i32 23}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 642, i32 3}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @mtk_pcie_setup_irq._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @mtk_pcie_setup_irq._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 646, i32 37}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 647, i32 45}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 576, i32 3}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @mtk_pcie_init_irq_domain._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @mtk_pcie_init_irq_domain._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 584, i32 3}
!120 = !{ptr @mtk_pcie_init_irq_domain._entry.58, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mtk_pcie_init_irq_domain._entry_ptr.60, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @intx_domain_ops, !123, !"intx_domain_ops", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 562, i32 36}
!124 = !{ptr @mtk_pcie_allocate_msi_domains.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 498, i32 2}
!126 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 503, i32 3}
!129 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mtk_pcie_allocate_msi_domains._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @mtk_pcie_allocate_msi_domains._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 510, i32 3}
!134 = !{ptr @mtk_pcie_allocate_msi_domains._entry.64, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @mtk_pcie_allocate_msi_domains._entry_ptr.66, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @msi_domain_ops, !137, !"msi_domain_ops", i1 false, i1 false}
!137 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 476, i32 36}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 425, i32 12}
!140 = !{ptr @mtk_msi_bottom_irq_chip, !141, !"mtk_msi_bottom_irq_chip", i1 false, i1 false}
!141 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 424, i32 24}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 406, i32 2}
!144 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @mtk_compose_msi_msg.__UNIQUE_ID_ddebug293, !143, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 466, i32 3}
!149 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @mtk_pcie_irq_domain_free._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @mtk_pcie_irq_domain_free._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @mtk_msi_domain_info, !153, !"mtk_msi_domain_info", i1 false, i1 false}
!153 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 488, i32 31}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 482, i32 11}
!156 = !{ptr @mtk_msi_irq_chip, !157, !"mtk_msi_irq_chip", i1 false, i1 false}
!157 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 481, i32 24}
!158 = !{ptr @mtk_pcie_soc_mt7622, !159, !"mtk_pcie_soc_mt7622", i1 false, i1 false}
!159 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1213, i32 34}
!160 = !{ptr @mtk_pcie_soc_mt7629, !161, !"mtk_pcie_soc_mt7629", i1 false, i1 false}
!161 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1220, i32 34}
!162 = !{ptr @mtk_pcie_pm_ops, !163, !"mtk_pcie_pm_ops", i1 false, i1 false}
!163 = !{!"../drivers/pci/controller/pcie-mediatek.c", i32 1196, i32 32}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{i8 0, i8 2}
!174 = !{i64 3109220}
!175 = !{i64 2155803431}
!176 = !{i64 2155803766}
!177 = !{i64 3108802}
!178 = !{i64 2155804432}
!179 = !{i64 2155804767}
!180 = !{i64 2155806728}
!181 = !{i64 2155807214}
!182 = !{i64 2155807713}
!183 = !{i64 2155808050}
!184 = !{i64 2155809535}
!185 = !{i64 2155811018}
!186 = !{i64 2155816750}
!187 = !{i64 2155822105}
!188 = !{i64 2155828946}
!189 = !{i64 2155834029}
!190 = !{i64 2155839638}
!191 = !{i64 2155844993}
!192 = !{i64 2155851133}
!193 = !{i64 2155856216}
!194 = !{i64 2155797868}
!195 = !{i64 2155779700}
!196 = !{i64 2155780165}
!197 = !{i64 2155780810}
!198 = !{i64 2155782180}
!199 = !{i64 2155783713}
!200 = !{i64 2155784344}
!201 = !{i64 2155784748}
!202 = !{i64 3108182}
!203 = !{i64 2155785152}
!204 = !{i64 2155785560}
!205 = !{i64 2155787570}
!206 = !{i64 2155788060}
!207 = !{i64 2155788564}
!208 = !{i64 2155789477}
!209 = !{i64 2155762007}
!210 = !{i64 2155762679}
!211 = !{i64 2155762984}
!212 = !{i32 0, i32 33}
!213 = !{i64 2155791157}
!214 = !{i64 2155791592}
!215 = !{i64 2155792076}
!216 = !{i64 2155710933}
!217 = !{i64 2155715255}
!218 = !{i64 2155721034}
!219 = !{i64 2155725552}
!220 = !{i64 2155725855}
!221 = !{i64 2155726532}
!222 = !{i64 2155729860}
!223 = !{i64 2155734182}
!224 = !{i64 2155739961}
!225 = !{i64 2155744204}
!226 = !{i64 2155744876}
!227 = !{i64 2155745179}
!228 = !{i64 2155705341}
!229 = !{i64 2155705831}
!230 = !{i64 2155706926}
!231 = !{i64 2155772798}
!232 = !{i64 2155774037}
!233 = !{i64 2155775351}
!234 = !{i64 2155775987}
!235 = !{!"branch_weights", i32 2000, i32 1}
!236 = !{i64 2155751568}
!237 = !{i64 2148753450, i64 2148753455, i64 2148753468, i64 2148753512, i64 2148753546, i64 2148753567}
