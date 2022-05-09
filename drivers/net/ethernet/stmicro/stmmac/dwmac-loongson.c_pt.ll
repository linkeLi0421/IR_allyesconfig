; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_mdio_bus_data = type { i32, i32, i32, ptr, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwmac-loongson-pci\00", [45 x i8] zeroinitializer }, align 32
@loongson_dwmac_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 20, i32 31235, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@loongson_dwmac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @loongson_dwmac_suspend, ptr @loongson_dwmac_resume, ptr @loongson_dwmac_suspend, ptr @loongson_dwmac_resume, ptr @loongson_dwmac_suspend, ptr @loongson_dwmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@loongson_dwmac_driver = dso_local global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @loongson_dwmac_id_table, ptr @loongson_dwmac_probe, ptr @loongson_dwmac_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @loongson_dwmac_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_dwmac_loongson__353_218_loongson_dwmac_driver_init6 = internal global ptr @loongson_dwmac_driver_init, section ".initcall6.init", align 4
@__exitcall_loongson_dwmac_driver_exit = internal global ptr @loongson_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description354 = internal constant [53 x i8] c"dwmac_loongson.description=Loongson DWMAC PCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [57 x i8] c"dwmac_loongson.author=Qing Zhang <zhangqing@loongson.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [71 x i8] c"dwmac_loongson.file=drivers/net/ethernet/stmicro/stmmac/dwmac-loongson\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [30 x i8] c"dwmac_loongson.license=GPL v2\00", section ".modinfo", align 1
@loongson_dwmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016dwmac_loongson_pci: No OF node\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"loongson_dwmac_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c\00", [43 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry_ptr = internal global ptr @loongson_dwmac_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"loongson, pci-gmac\00", [45 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016dwmac_loongson_pci: Incompatible OF node\0A\00", [52 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry_ptr.7 = internal global ptr @loongson_dwmac_probe._entry.5, section ".printk_index", align 4
@loongson_dwmac_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 73, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Found MDIO subnode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry_ptr.12 = internal global ptr @loongson_dwmac_probe._entry.8, section ".printk_index", align 4
@loongson_dwmac_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 93, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ERROR: failed to enable device\0A\00", [60 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry_ptr.15 = internal global ptr @loongson_dwmac_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethernet\00", [23 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 113, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy_mode not found\0A\00", [44 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry_ptr.19 = internal global ptr @loongson_dwmac_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"macirq\00", [25 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 129, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQ macirq not found\0A\00", [42 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry_ptr.23 = internal global ptr @loongson_dwmac_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eth_wake_irq\00", [19 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 135, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"IRQ eth_wake_irq not found, using macirq\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry_ptr.28 = internal global ptr @loongson_dwmac_probe._entry.25, section ".printk_index", align 4
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth_lpi\00", [24 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 141, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ eth_lpi not found\0A\00", [41 x i8] zeroinitializer }, align 32
@loongson_dwmac_probe._entry_ptr.32 = internal global ptr @loongson_dwmac_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwmac_loongson\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 209, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"loongson_dwmac_id_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 202, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"loongson_dwmac_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 199, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"loongson_dwmac_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 208, i32 19 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 59, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 63, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 64, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 73, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 93, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 107, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 113, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 127, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 129, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 133, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 135, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 139, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 141, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [56 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 218, i32 1 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__exitcall_loongson_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_loongson__353_218_loongson_dwmac_driver_init6, ptr @loongson_dwmac_driver_exit, ptr @loongson_dwmac_probe._entry, ptr @loongson_dwmac_probe._entry.13, ptr @loongson_dwmac_probe._entry.17, ptr @loongson_dwmac_probe._entry.21, ptr @loongson_dwmac_probe._entry.25, ptr @loongson_dwmac_probe._entry.30, ptr @loongson_dwmac_probe._entry.5, ptr @loongson_dwmac_probe._entry.8, ptr @loongson_dwmac_probe._entry_ptr, ptr @loongson_dwmac_probe._entry_ptr.12, ptr @loongson_dwmac_probe._entry_ptr.15, ptr @loongson_dwmac_probe._entry_ptr.19, ptr @loongson_dwmac_probe._entry_ptr.23, ptr @loongson_dwmac_probe._entry_ptr.28, ptr @loongson_dwmac_probe._entry_ptr.32, ptr @loongson_dwmac_probe._entry_ptr.7, ptr @.str, ptr @loongson_dwmac_id_table, ptr @loongson_dwmac_pm_ops, ptr @loongson_dwmac_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loongson_dwmac_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loongson_dwmac_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %res) #5
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %dev_of_node.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

dev_of_node.exit:                                 ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %dev_of_node.exit.do.end_crit_edge, label %if.end

dev_of_node.exit.do.end_crit_edge:                ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %dev_of_node.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 720, i32 noundef 3520) #5
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %mdio_node = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %mdio_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_node, align 4
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %if.end15.if.end32_crit_edge, label %do.end20

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.end20:                                         ; preds = %if.end15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.9) #8
  %call.i170 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 24, i32 noundef 3520) #5
  %mdio_bus_data = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %mdio_bus_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i170, ptr %mdio_bus_data, align 4
  %tobool28.not = icmp eq ptr %call.i170, null
  br i1 %tobool28.not, label %do.end20.cleanup_crit_edge, label %if.end30

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  %needs_reset = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %call.i170, i32 0, i32 5
  %5 = ptrtoint ptr %needs_reset to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %needs_reset, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end15.if.end32_crit_edge
  %call.i171 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 28, i32 noundef 3520) #5
  %dma_cfg = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i171, ptr %dma_cfg, align 4
  %tobool36.not = icmp eq ptr %call.i171, null
  br i1 %tobool36.not, label %if.end32.cleanup_crit_edge, label %if.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %call39 = tail call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.body.preheader, label %do.end44

for.body.preheader:                               ; preds = %if.end38
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp47 = icmp eq i32 %8, 0
  br i1 %cmp47, label %for.body.preheader.for.inc_crit_edge, label %cond.end

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2) #8
  br label %cleanup

cond.end:                                         ; preds = %for.body.preheader
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp53 = icmp eq i32 %sub, -1
  br i1 %cmp53, label %cond.end.for.inc_crit_edge, label %cond.end.if.end55_crit_edge

cond.end.if.end55_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end55:                                         ; preds = %cond.end.5.if.end55_crit_edge, %cond.end.4.if.end55_crit_edge, %cond.end.3.if.end55_crit_edge, %cond.end.2.if.end55_crit_edge, %cond.end.1.if.end55_crit_edge, %cond.end.if.end55_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end55.pci_name.exit_crit_edge

if.end55.pci_name.exit_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end55.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.end55.pci_name.exit_crit_edge ]
  %call57 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef %retval.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %pci_name.exit.for.end_crit_edge, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pci_name.exit.for.end_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %cond.end.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %end.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %15 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp47.1 = icmp eq i32 %16, 0
  br i1 %cmp47.1, label %for.inc.for.inc.1_crit_edge, label %cond.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

cond.end.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 8
  %sub.1 = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.1)
  %cmp53.1 = icmp eq i32 %sub.1, -1
  br i1 %cmp53.1, label %cond.end.1.for.inc.1_crit_edge, label %cond.end.1.if.end55_crit_edge

cond.end.1.if.end55_crit_edge:                    ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

cond.end.1.for.inc.1_crit_edge:                   ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %cond.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %end.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %19 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp47.2 = icmp eq i32 %20, 0
  br i1 %cmp47.2, label %for.inc.1.for.inc.2_crit_edge, label %cond.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

cond.end.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.2, align 8
  %sub.2 = sub i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.2)
  %cmp53.2 = icmp eq i32 %sub.2, -1
  br i1 %cmp53.2, label %cond.end.2.for.inc.2_crit_edge, label %cond.end.2.if.end55_crit_edge

cond.end.2.if.end55_crit_edge:                    ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

cond.end.2.for.inc.2_crit_edge:                   ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %cond.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %end.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %23 = ptrtoint ptr %end.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp47.3 = icmp eq i32 %24, 0
  br i1 %cmp47.3, label %for.inc.2.for.inc.3_crit_edge, label %cond.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

cond.end.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.3, align 8
  %sub.3 = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.3)
  %cmp53.3 = icmp eq i32 %sub.3, -1
  br i1 %cmp53.3, label %cond.end.3.for.inc.3_crit_edge, label %cond.end.3.if.end55_crit_edge

cond.end.3.if.end55_crit_edge:                    ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

cond.end.3.for.inc.3_crit_edge:                   ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %cond.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %end.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %27 = ptrtoint ptr %end.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp47.4 = icmp eq i32 %28, 0
  br i1 %cmp47.4, label %for.inc.3.for.inc.4_crit_edge, label %cond.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

cond.end.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.4, align 8
  %sub.4 = sub i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.4)
  %cmp53.4 = icmp eq i32 %sub.4, -1
  br i1 %cmp53.4, label %cond.end.4.for.inc.4_crit_edge, label %cond.end.4.if.end55_crit_edge

cond.end.4.if.end55_crit_edge:                    ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

cond.end.4.for.inc.4_crit_edge:                   ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %cond.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %end.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %31 = ptrtoint ptr %end.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp47.5 = icmp eq i32 %32, 0
  br i1 %cmp47.5, label %for.inc.4.for.end_crit_edge, label %cond.end.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cond.end.5:                                       ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %33 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.5, align 8
  %sub.5 = sub i32 %32, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.5)
  %cmp53.5 = icmp eq i32 %sub.5, -1
  br i1 %cmp53.5, label %cond.end.5.for.end_crit_edge, label %cond.end.5.if.end55_crit_edge

cond.end.5.if.end55_crit_edge:                    ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

cond.end.5.for.end_crit_edge:                     ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cond.end.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %pci_name.exit.for.end_crit_edge
  %call61 = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.16) #5
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call61, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp63 = icmp slt i32 %call61, 0
  br i1 %cmp63, label %if.then64, label %for.end.if.end67_crit_edge

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %number.i, align 4
  %conv1.i = zext i8 %39 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %40 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %devfn.i, align 4
  %.masked = and i32 %41, 65535
  %conv = or i32 %shl.i, %.masked
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %call.i, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %for.end.if.end67_crit_edge
  %call69 = tail call i32 @device_get_phy_mode(ptr noundef nonnull %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %do.end75, label %if.end77

do.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end77:                                         ; preds = %if.end67
  %phy_interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %phy_interface to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call69, ptr %phy_interface, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %interface, align 4
  tail call void @pci_set_master(ptr noundef %pdev) #5
  %clk_csr.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 12
  %45 = ptrtoint ptr %clk_csr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %clk_csr.i, align 4
  %has_gmac.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 13
  %46 = ptrtoint ptr %has_gmac.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %has_gmac.i, align 4
  %force_sf_dma_mode.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 19
  %47 = ptrtoint ptr %force_sf_dma_mode.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %force_sf_dma_mode.i, align 4
  %multicast_filter_bins.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 24
  %unicast_filter_entries.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 25
  %48 = ptrtoint ptr %unicast_filter_entries.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %unicast_filter_entries.i, align 4
  %maxmtu.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 23
  %49 = ptrtoint ptr %maxmtu.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 9000, ptr %maxmtu.i, align 4
  %tx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 30
  %50 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %tx_queues_to_use.i, align 4
  %rx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 29
  %51 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %rx_queues_to_use.i, align 4
  %use_prio.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 0, i32 6
  %52 = ptrtoint ptr %use_prio.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %use_prio.i, align 4
  %use_prio2.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 0, i32 3
  %53 = ptrtoint ptr %use_prio2.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %use_prio2.i, align 1
  %pkt_route.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 0, i32 2
  %54 = ptrtoint ptr %pkt_route.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %pkt_route.i, align 4
  %phy_addr.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %phy_addr.i, align 4
  %56 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_cfg, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32, ptr %57, align 4
  %59 = load ptr, ptr %dma_cfg, align 4
  %pblx8.i = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %pblx8.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %pblx8.i, align 4
  %61 = ptrtoint ptr %multicast_filter_bins.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 256, ptr %multicast_filter_bins.i, align 4
  %call79 = tail call i32 @pci_enable_msi(ptr noundef %pdev) #5
  %62 = getelementptr inbounds i8, ptr %res, i32 4
  %63 = call ptr @memset(ptr %62, i32 0, i32 92)
  %call80 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #5
  %64 = ptrtoint ptr %call80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call80, align 4
  %66 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %res, align 4
  %call82 = tail call i32 @of_irq_get_byname(ptr noundef nonnull %1, ptr noundef nonnull @.str.20) #5
  %irq = getelementptr inbounds %struct.stmmac_resources, ptr %res, i32 0, i32 4
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call82, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp84 = icmp slt i32 %call82, 0
  br i1 %cmp84, label %do.end89, label %if.end77.if.end91_crit_edge

if.end77.if.end91_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

do.end89:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.22) #8
  br label %if.end91

if.end91:                                         ; preds = %do.end89, %if.end77.if.end91_crit_edge
  %call92 = tail call i32 @of_irq_get_byname(ptr noundef nonnull %1, ptr noundef nonnull @.str.24) #5
  %wol_irq = getelementptr inbounds %struct.stmmac_resources, ptr %res, i32 0, i32 2
  %68 = ptrtoint ptr %wol_irq to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call92, ptr %wol_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp94 = icmp slt i32 %call92, 0
  br i1 %cmp94, label %do.end99, label %if.end91.if.end103_crit_edge

if.end91.if.end103_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

do.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %dev, ptr noundef nonnull @.str.26) #8
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq, align 4
  %71 = ptrtoint ptr %wol_irq to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %wol_irq, align 4
  br label %if.end103

if.end103:                                        ; preds = %do.end99, %if.end91.if.end103_crit_edge
  %call104 = tail call i32 @of_irq_get_byname(ptr noundef nonnull %1, ptr noundef nonnull @.str.29) #5
  %lpi_irq = getelementptr inbounds %struct.stmmac_resources, ptr %res, i32 0, i32 3
  %72 = ptrtoint ptr %lpi_irq to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call104, ptr %lpi_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp106 = icmp slt i32 %call104, 0
  br i1 %cmp106, label %do.end111, label %if.end103.if.end113_crit_edge

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

do.end111:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.31) #8
  br label %if.end113

if.end113:                                        ; preds = %do.end111, %if.end103.if.end113_crit_edge
  %call115 = call i32 @stmmac_dvr_probe(ptr noundef nonnull %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %res) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %do.end75, %pci_name.exit.cleanup_crit_edge, %do.end44, %if.end32.cleanup_crit_edge, %do.end20.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call39, %do.end44 ], [ %call69, %do.end75 ], [ %call115, %if.end113 ], [ -19, %do.end7 ], [ -19, %do.end ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %do.end20.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ], [ %call57, %pci_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loongson_dwmac_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @stmmac_dvr_remove(ptr noundef %dev) #5
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %cond.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.end:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp7 = icmp eq i32 %sub, -1
  br i1 %cmp7, label %cond.end.for.inc_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %cond.end.5.if.end_crit_edge, %cond.end.4.if.end_crit_edge, %cond.end.3.if.end_crit_edge, %cond.end.2.if.end_crit_edge, %cond.end.1.if.end_crit_edge, %cond.end.if.end_crit_edge
  %i.021.lcssa = phi i32 [ 0, %cond.end.if.end_crit_edge ], [ 1, %cond.end.1.if.end_crit_edge ], [ 2, %cond.end.2.if.end_crit_edge ], [ 3, %cond.end.3.if.end_crit_edge ], [ 4, %cond.end.4.if.end_crit_edge ], [ 5, %cond.end.5.if.end_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.021.lcssa
  tail call void @pcim_iounmap_regions(ptr noundef %pdev, i32 noundef %shl) #5
  br label %for.end

for.inc:                                          ; preds = %cond.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %end.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %4 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.1 = icmp eq i32 %5, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %cond.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

cond.end.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 8
  %sub.1 = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.1)
  %cmp7.1 = icmp eq i32 %sub.1, -1
  br i1 %cmp7.1, label %cond.end.1.for.inc.1_crit_edge, label %cond.end.1.if.end_crit_edge

cond.end.1.if.end_crit_edge:                      ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end.1.for.inc.1_crit_edge:                   ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %cond.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %end.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %8 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.2 = icmp eq i32 %9, 0
  br i1 %cmp1.2, label %for.inc.1.for.inc.2_crit_edge, label %cond.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

cond.end.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 8
  %sub.2 = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.2)
  %cmp7.2 = icmp eq i32 %sub.2, -1
  br i1 %cmp7.2, label %cond.end.2.for.inc.2_crit_edge, label %cond.end.2.if.end_crit_edge

cond.end.2.if.end_crit_edge:                      ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end.2.for.inc.2_crit_edge:                   ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %cond.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %end.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %12 = ptrtoint ptr %end.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.3 = icmp eq i32 %13, 0
  br i1 %cmp1.3, label %for.inc.2.for.inc.3_crit_edge, label %cond.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

cond.end.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.3, align 8
  %sub.3 = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.3)
  %cmp7.3 = icmp eq i32 %sub.3, -1
  br i1 %cmp7.3, label %cond.end.3.for.inc.3_crit_edge, label %cond.end.3.if.end_crit_edge

cond.end.3.if.end_crit_edge:                      ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end.3.for.inc.3_crit_edge:                   ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %cond.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %end.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %16 = ptrtoint ptr %end.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.4 = icmp eq i32 %17, 0
  br i1 %cmp1.4, label %for.inc.3.for.inc.4_crit_edge, label %cond.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

cond.end.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.4, align 8
  %sub.4 = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.4)
  %cmp7.4 = icmp eq i32 %sub.4, -1
  br i1 %cmp7.4, label %cond.end.4.for.inc.4_crit_edge, label %cond.end.4.if.end_crit_edge

cond.end.4.if.end_crit_edge:                      ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end.4.for.inc.4_crit_edge:                   ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %cond.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %end.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %20 = ptrtoint ptr %end.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.5 = icmp eq i32 %21, 0
  br i1 %cmp1.5, label %for.inc.4.for.end_crit_edge, label %cond.end.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cond.end.5:                                       ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.5, align 8
  %sub.5 = sub i32 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.5)
  %cmp7.5 = icmp eq i32 %sub.5, -1
  br i1 %cmp7.5, label %cond.end.5.for.end_crit_edge, label %cond.end.5.if.end_crit_edge

cond.end.5.if.end_crit_edge:                      ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end.5.for.end_crit_edge:                     ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cond.end.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %if.end
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @loongson_dwmac_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @loongson_dwmac_driver, ptr noundef null, ptr noundef nonnull @.str.33) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @loongson_dwmac_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @loongson_dwmac_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_iounmap_regions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loongson_dwmac_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i32 @stmmac_suspend(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_disable_device(ptr noundef %add.ptr) #5
  %call5 = tail call i32 @pci_wake_from_d3(ptr noundef %add.ptr, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loongson_dwmac_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_restore_state(ptr noundef %add.ptr) #5
  %call = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #5
  %call1 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_set_master(ptr noundef %add.ptr) #5
  %call2 = tail call i32 @stmmac_resume(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 209, i32 10}
!2 = !{ptr @loongson_dwmac_driver, !3, !"loongson_dwmac_driver", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 208, i32 19}
!4 = !{ptr @__initcall__kmod_dwmac_loongson__353_218_loongson_dwmac_driver_init6, !5, !"__initcall__kmod_dwmac_loongson__353_218_loongson_dwmac_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 218, i32 1}
!6 = !{ptr @__exitcall_loongson_dwmac_driver_exit, !5, !"__exitcall_loongson_dwmac_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description354, !8, !"__UNIQUE_ID_description354", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 220, i32 1}
!9 = !{ptr @__UNIQUE_ID_author355, !10, !"__UNIQUE_ID_author355", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 221, i32 1}
!11 = !{ptr @__UNIQUE_ID_file356, !12, !"__UNIQUE_ID_file356", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 222, i32 1}
!13 = !{ptr @__UNIQUE_ID_license357, !12, !"__UNIQUE_ID_license357", i1 false, i1 false}
!14 = !{ptr @loongson_dwmac_id_table, !15, !"loongson_dwmac_id_table", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 202, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 59, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @loongson_dwmac_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @loongson_dwmac_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 63, i32 35}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 64, i32 3}
!26 = !{ptr @loongson_dwmac_probe._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @loongson_dwmac_probe._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 73, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @loongson_dwmac_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @loongson_dwmac_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 93, i32 3}
!36 = !{ptr @loongson_dwmac_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @loongson_dwmac_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 107, i32 37}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 113, i32 3}
!42 = !{ptr @loongson_dwmac_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @loongson_dwmac_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 127, i32 34}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 129, i32 3}
!48 = !{ptr @loongson_dwmac_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @loongson_dwmac_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 133, i32 38}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 135, i32 3}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @loongson_dwmac_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @loongson_dwmac_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 139, i32 38}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 141, i32 3}
!61 = !{ptr @loongson_dwmac_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @loongson_dwmac_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @loongson_dwmac_pm_ops, !64, !"loongson_dwmac_pm_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c", i32 199, i32 8}
!65 = !{ptr @.str.33, !5, !"<string literal>", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
