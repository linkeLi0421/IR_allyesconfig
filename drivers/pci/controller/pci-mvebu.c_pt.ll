; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-mvebu.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-mvebu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_bridge_emul_ops = type { ptr, ptr, ptr, ptr }
%struct.mvebu_pcie_window = type { i32, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.mvebu_pcie_port = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.pci_bridge_emul, ptr, ptr, %struct.mvebu_pcie_window, %struct.mvebu_pcie_window, i32, %struct.resource }
%struct.pci_bridge_emul = type { %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_pcie_conf, ptr, ptr, ptr, ptr, i8 }
%struct.pci_bridge_emul_conf = type { i16, i16, i16, i16, i32, i8, i8, i8, i8, [2 x i32], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i16, i16, i8, [3 x i8], i32, i8, i8, i16 }
%struct.pci_bridge_emul_pcie_conf = type { i8, i8, i16, i32, i16, i16, i32, i16, i16, i32, i16, i16, i16, i16, i32, i32, i16, i16, i32, i16, i16, i32, i16, i16 }
%struct.mvebu_pcie = type { ptr, ptr, %struct.resource, %struct.resource, %struct.resource, %struct.resource, i32 }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pci_mvebu__242_1413_mvebu_pcie_driver_init6 = internal global ptr @mvebu_pcie_driver_init, section ".initcall6.init", align 4
@mvebu_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvebu_pcie_probe, ptr @mvebu_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_pcie_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mvebu_pcie_driver_exit = internal global ptr @mvebu_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [65 x i8] c"pci_mvebu.author=Thomas Petazzoni <thomas.petazzoni@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [47 x i8] c"pci_mvebu.author=Pali Roh\C3\A1r <pali@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [50 x i8] c"pci_mvebu.description=Marvell EBU PCIe controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [48 x i8] c"pci_mvebu.file=drivers/pci/controller/pci-mvebu\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [25 x i8] c"pci_mvebu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mvebu-pcie\00", [21 x i8] zeroinitializer }, align 32
@mvebu_pcie_of_match_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@mvebu_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_pcie_suspend, ptr @mvebu_pcie_resume, ptr @mvebu_pcie_suspend, ptr @mvebu_pcie_resume, ptr @mvebu_pcie_suspend, ptr @mvebu_pcie_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mvebu_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: cannot map registers\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvebu_pcie_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/pci/controller/pci-mvebu.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvebu_pcie_probe._entry_ptr = internal global ptr @mvebu_pcie_probe._entry, section ".printk_index", align 4
@mvebu_pcie_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: cannot init emulated bridge\0A\00", [63 x i8] zeroinitializer }, align 32
@mvebu_pcie_probe._entry_ptr.8 = internal global ptr @mvebu_pcie_probe._entry.6, section ".printk_index", align 4
@mvebu_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @mvebu_pcie_rd_conf, ptr @mvebu_pcie_wr_conf }, [44 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid memory aperture size\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mvebu_pcie_parse_request_resources\00", [61 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_request_resources._entry_ptr = internal global ptr @mvebu_pcie_parse_request_resources._entry, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCI MEM\00", [24 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@pcibios_min_io = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCI I/O\00", [24 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,pcie-port\00", [46 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 994, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ignoring %pOF, missing pcie-port property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mvebu_pcie_parse_port\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_port._entry_ptr = internal global ptr @mvebu_pcie_parse_port._entry, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,pcie-lane\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcie%d.%d\00", [22 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_port._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 1013, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: invalid function number, must be zero\0A\00", [53 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_port._entry_ptr.21 = internal global ptr @mvebu_pcie_parse_port._entry.19, section ".printk_index", align 4
@mvebu_pcie_parse_port._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.3, i32 1021, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: cannot get tgt/attr for mem window\0A\00", [56 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_port._entry_ptr.24 = internal global ptr @mvebu_pcie_parse_port._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-reset\00", [23 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_port._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str.3, i32 1051, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%pOF: reset gpio is active low\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_port._entry_ptr.30 = internal global ptr @mvebu_pcie_parse_port._entry.27, section ".printk_index", align 4
@mvebu_pcie_parse_port._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.3, i32 1071, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: cannot get clock\0A\00", [42 x i8] zeroinitializer }, align 32
@mvebu_pcie_parse_port._entry_ptr.33 = internal global ptr @mvebu_pcie_parse_port._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ranges\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset-delay-us\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mvebu_pci_bridge_emul_ops = internal global { %struct.pci_bridge_emul_ops, [16 x i8] } { %struct.pci_bridge_emul_ops { ptr @mvebu_pci_bridge_emul_base_conf_read, ptr @mvebu_pci_bridge_emul_pcie_conf_read, ptr @mvebu_pci_bridge_emul_base_conf_write, ptr @mvebu_pci_bridge_emul_pcie_conf_write }, [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s: Attempt to set IO when IO is disabled\0A\00", [50 x i8] zeroinitializer }, align 32
@mvebu_pcie_add_windows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Could not create MBus window at [mem %pa-%pa]: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mvebu_pcie_add_windows\00", [41 x i8] zeroinitializer }, align 32
@mvebu_pcie_add_windows._entry_ptr = internal global ptr @mvebu_pcie_add_windows._entry, section ".printk_index", align 4
@__const.mvebu_pcie_handle_membase_change.desired = private unnamed_addr constant %struct.mvebu_pcie_window { i32 0, i32 -1, i32 0 }, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 24, i64 60]
@__sancov_gen_cov_switch_values.41 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 8, i64 9, i64 11]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 5, i64 6, i64 7, i64 11, i64 14]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"mvebu_pcie_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1404, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1406, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"mvebu_pcie_of_match_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1392, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"mvebu_pcie_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1400, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1240, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1248, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"mvebu_pcie_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 835, i32 23 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1149, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1153, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1168, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 992, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 993, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 998, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1001, i32 47 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1012, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1020, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1033, i32 46 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1042, i32 54 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1050, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1071, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 910, i32 30 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1112, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [26 x i8] c"mvebu_pci_bridge_emul_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 712, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 442, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [38 x i8] c"../drivers/pci/controller/pci-mvebu.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 374, i32 4 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_mvebu_pcie_driver_exit, ptr @__initcall__kmod_pci_mvebu__242_1413_mvebu_pcie_driver_init6, ptr @mvebu_pcie_add_windows._entry, ptr @mvebu_pcie_add_windows._entry_ptr, ptr @mvebu_pcie_driver_exit, ptr @mvebu_pcie_parse_port._entry, ptr @mvebu_pcie_parse_port._entry.19, ptr @mvebu_pcie_parse_port._entry.22, ptr @mvebu_pcie_parse_port._entry.27, ptr @mvebu_pcie_parse_port._entry.31, ptr @mvebu_pcie_parse_port._entry_ptr, ptr @mvebu_pcie_parse_port._entry_ptr.21, ptr @mvebu_pcie_parse_port._entry_ptr.24, ptr @mvebu_pcie_parse_port._entry_ptr.30, ptr @mvebu_pcie_parse_port._entry_ptr.33, ptr @mvebu_pcie_parse_request_resources._entry, ptr @mvebu_pcie_parse_request_resources._entry_ptr, ptr @mvebu_pcie_probe._entry, ptr @mvebu_pcie_probe._entry.6, ptr @mvebu_pcie_probe._entry_ptr, ptr @mvebu_pcie_probe._entry_ptr.8, ptr @mvebu_pcie_driver, ptr @.str, ptr @mvebu_pcie_of_match_table, ptr @mvebu_pcie_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @mvebu_pcie_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @mvebu_pci_bridge_emul_ops, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_of_match_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_parse_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_parse_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_parse_port._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_parse_port._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_parse_port._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_parse_port._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pci_bridge_emul_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pcie_add_windows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_pcie_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvebu_pcie_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reset_udelay.i = alloca i32, align 4
  %flags.i132 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 140) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %4 = load ptr, ptr %private.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %mem.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 7
  tail call void @mvebu_mbus_get_pcie_mem_aperture(ptr noundef %mem.i) #7
  %end.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i.i, align 4
  %7 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem.i, align 4
  %sub.i.i = add i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %8)
  %cmp.i = icmp eq i32 %sub.i.i, %8
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.9) #10
  br label %cleanup63

if.end.i:                                         ; preds = %if.end
  %name.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.11, ptr %name.i, align 4
  %windows.i = getelementptr %struct.pci_host_bridge, ptr %call, i32 0, i32 7
  tail call void @pci_add_resource(ptr noundef %windows.i, ptr noundef %mem.i) #7
  %call7.i = tail call i32 @devm_request_resource(ptr noundef %dev1.i, ptr noundef nonnull @iomem_resource, ptr noundef %mem.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.end.i.cleanup63_crit_edge

if.end.i.cleanup63_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end9.i:                                        ; preds = %if.end.i
  %io.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  tail call void @mvebu_mbus_get_pcie_io_aperture(ptr noundef %io.i) #7
  %end.i69.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %end.i69.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i69.i, align 4
  %12 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io.i, align 4
  %sub.i70.i = add i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i70.i, i32 %13)
  %cmp12.not.i = icmp eq i32 %sub.i70.i, %13
  br i1 %cmp12.not.i, label %if.end9.i.if.end7_crit_edge, label %if.then13.i

if.end9.i.if.end7_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then13.i:                                      ; preds = %if.end9.i
  %flags.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %realio.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1, i32 1
  %flags15.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %flags15.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags15.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcibios_min_io to i32))
  %17 = load i32, ptr @pcibios_min_io, align 4
  %18 = ptrtoint ptr %realio.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %realio.i, align 4
  %sub.i = sub i32 %11, %13
  %19 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 983039) #7
  %end.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 2
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %end.i, align 4
  %name22.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3
  %21 = ptrtoint ptr %name22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.12, ptr %name22.i, align 4
  %call26.i = tail call i32 @devm_pci_remap_iospace(ptr noundef %dev1.i, ptr noundef %realio.i, i32 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.then13.i.cleanup63_crit_edge

if.then13.i.cleanup63_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end29.i:                                       ; preds = %if.then13.i
  tail call void @pci_add_resource(ptr noundef %windows.i, ptr noundef %realio.i) #7
  %call33.i = tail call i32 @devm_request_resource(ptr noundef %dev1.i, ptr noundef nonnull @ioport_resource, ptr noundef %realio.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end29.i.if.end7_crit_edge, label %if.end29.i.cleanup63_crit_edge

if.end29.i.cleanup63_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end29.i.if.end7_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.end29.i.if.end7_crit_edge, %if.end9.i.if.end7_crit_edge
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end7.of_get_available_child_count.exit_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.of_get_available_child_count.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_available_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end7.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_available_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.of_get_available_child_count.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_available_child_count.exit

of_get_available_child_count.exit:                ; preds = %for.body.i.of_get_available_child_count.exit_crit_edge, %if.end7.of_get_available_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end7.of_get_available_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_available_child_count.exit_crit_edge ]
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i, i32 260) #7
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !98

devm_kcalloc.exit.thread:                         ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ports168 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %ports168 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ports168, align 4
  br label %cleanup63

devm_kcalloc.exit:                                ; preds = %of_get_available_child_count.exit
  %25 = extractvalue { i32, i1 } %22, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %25, i32 noundef 3520) #7
  %ports = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i, ptr %ports, align 4
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.cleanup63_crit_edge, label %if.end13

devm_kcalloc.exit.cleanup63_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end13:                                         ; preds = %devm_kcalloc.exit
  %call14 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not187 = icmp eq ptr %call14, null
  br i1 %cmp.not187, label %for.end.thread, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

for.end.thread:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %nports203 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 1
  br label %for.end60

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.0191 = phi i32 [ %i.1.ph, %for.inc.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %child.0188 = phi ptr [ %call23, %for.inc.for.body_crit_edge ], [ %call14, %if.end13.for.body_crit_edge ]
  %27 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i, align 4
  %dev1.i133 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i132) #7
  %31 = ptrtoint ptr %flags.i132 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %flags.i132, align 4, !annotation !99
  %pcie2.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 14
  %32 = ptrtoint ptr %pcie2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %private.i, ptr %pcie2.i, align 4
  %port3.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 2
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0188, ptr noundef nonnull @.str.13, ptr noundef %port3.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i134 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i134, label %if.end.i136, label %do.end.i135

do.end.i135:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i133, ptr noundef nonnull @.str.14, ptr noundef nonnull %child.0188) #10
  br label %if.else.thread

if.end.i136:                                      ; preds = %for.body
  %lane.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 3
  %call.i.i161.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0188, ptr noundef nonnull @.str.17, ptr noundef %lane.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i161.i)
  %tobool5.not.i = icmp sgt i32 %call.i.i161.i, -1
  br i1 %tobool5.not.i, label %if.end.i136.if.end8.i_crit_edge, label %if.then6.i

if.end.i136.if.end8.i_crit_edge:                  ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %lane.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %lane.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i136.if.end8.i_crit_edge
  %34 = ptrtoint ptr %port3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port3.i, align 4
  %36 = ptrtoint ptr %lane.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lane.i, align 4
  %call11.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1.i133, i32 noundef 3264, ptr noundef nonnull @.str.18, i32 noundef %35, i32 noundef %37) #7
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call11.i, ptr %arrayidx, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.end8.i.cleanup_crit_edge, label %if.end15.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.i:                                       ; preds = %if.end8.i
  %call16.i = call i32 @of_pci_get_devfn(ptr noundef nonnull %child.0188) #7
  %devfn.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 4
  %39 = ptrtoint ptr %devfn.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call16.i, ptr %devfn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i137 = icmp slt i32 %call16.i, 0
  br i1 %cmp.i137, label %if.end15.i.if.else.thread_crit_edge, label %if.end19.i

if.end15.i.if.else.thread_crit_edge:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.thread

if.end19.i:                                       ; preds = %if.end15.i
  %and.i = and i32 %call16.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp21.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp21.not.i, label %if.end27.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i133, ptr noundef nonnull @.str.20, ptr noundef %41) #10
  br label %if.else.thread

if.end27.i:                                       ; preds = %if.end19.i
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3, i32 27
  %42 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node.i, align 8
  %mem_target.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 5
  %mem_attr.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 6
  %call29.i = call fastcc i32 @mvebu_get_tgt_attr(ptr noundef %43, i32 noundef %call16.i, i32 noundef 512, ptr noundef %mem_target.i, ptr noundef %mem_attr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %do.end34.i, label %if.end36.i

do.end34.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i133, ptr noundef nonnull @.str.23, ptr noundef %45) #10
  br label %if.else.thread

if.end36.i:                                       ; preds = %if.end27.i
  %46 = ptrtoint ptr %end.i69.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end.i69.i, align 4
  %48 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io.i, align 4
  %sub.i.i140 = add i32 %47, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i140, i32 %49)
  %cmp38.not.i = icmp eq i32 %sub.i.i140, %49
  br i1 %cmp38.not.i, label %if.else.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node.i, align 8
  %52 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %devfn.i, align 4
  %io_target.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 7
  %io_attr.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 8
  %call42.i = call fastcc i32 @mvebu_get_tgt_attr(ptr noundef %51, i32 noundef %53, i32 noundef 256, ptr noundef %io_target.i, ptr noundef %io_attr.i) #7
  br label %if.end45.i

if.else.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_target43.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 7
  %54 = ptrtoint ptr %io_target43.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %io_target43.i, align 4
  %io_attr44.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 8
  %55 = ptrtoint ptr %io_attr44.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %io_attr44.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %if.then39.i
  %call46.i = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %child.0188, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull %flags.i132) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call46.i)
  %cmp47.i = icmp eq i32 %call46.i, -517
  br i1 %cmp47.i, label %if.end45.i.cleanup_crit_edge, label %if.end49.i

if.end45.i.cleanup_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call46.i)
  %56 = icmp ult i32 %call46.i, 2048
  br i1 %56, label %if.then51.i, label %if.end49.i.if.end76.i_crit_edge

if.end49.i.if.end76.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.then51.i:                                      ; preds = %if.end49.i
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %call53.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1.i133, i32 noundef 3264, ptr noundef nonnull @.str.26, ptr noundef %58) #7
  %reset_name.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 11
  %59 = ptrtoint ptr %reset_name.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call53.i, ptr %reset_name.i, align 4
  %tobool55.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool55.not.i, label %if.then51.i.cleanup_crit_edge, label %if.end57.i

if.then51.i.cleanup_crit_edge:                    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57.i:                                       ; preds = %if.then51.i
  %60 = ptrtoint ptr %flags.i132 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i132, align 4
  %and58.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end57.i.if.end65.i_crit_edge, label %do.end63.i

if.end57.i.if.end65.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

do.end63.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i133, ptr noundef nonnull @.str.28, ptr noundef nonnull %child.0188) #10
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end63.i, %if.end57.i.if.end65.i_crit_edge
  %gpio_flags.0.i = phi i32 [ 4, %do.end63.i ], [ 2, %if.end57.i.if.end65.i_crit_edge ]
  %62 = ptrtoint ptr %reset_name.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reset_name.i, align 4
  %call67.i = call i32 @devm_gpio_request_one(ptr noundef %dev1.i133, i32 noundef %call46.i, i32 noundef %gpio_flags.0.i, ptr noundef %63) #7
  %64 = zext i32 %call67.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call67.i, label %if.end65.i.if.else.thread_crit_edge [
    i32 0, label %cleanup.thread164.i
    i32 -517, label %if.end65.i.cleanup_crit_edge
  ]

if.end65.i.cleanup_crit_edge:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65.i.if.else.thread_crit_edge:              ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.thread

cleanup.thread164.i:                              ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %call74.i = call ptr @gpio_to_desc(i32 noundef %call46.i) #7
  %reset_gpio75.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 10
  %65 = ptrtoint ptr %reset_gpio75.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call74.i, ptr %reset_gpio75.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %cleanup.thread164.i, %if.end49.i.if.end76.i_crit_edge
  %call77.i = call ptr @of_clk_get_by_name(ptr noundef nonnull %child.0188, ptr noundef null) #7
  %clk.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 9
  %66 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call77.i, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call77.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end83.i, label %if.end85.i

do.end83.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i133, ptr noundef nonnull @.str.32, ptr noundef %68) #10
  br label %if.else.thread

if.end85.i:                                       ; preds = %if.end76.i
  %call86.i = call i32 @devm_add_action(ptr noundef %dev1.i133, ptr noundef nonnull @mvebu_pcie_port_clk_put, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %cmp87.i = icmp slt i32 %call86.i, 0
  br i1 %cmp87.i, label %if.then88.i, label %if.end22

if.then88.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk.i, align 4
  call void @clk_put(ptr noundef %70) #7
  br label %cleanup

if.else.thread:                                   ; preds = %do.end83.i, %if.end65.i.if.else.thread_crit_edge, %do.end34.i, %do.end25.i, %if.end15.i.if.else.thread_crit_edge, %do.end.i135
  %reset_name91.i = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 11
  %71 = ptrtoint ptr %reset_name91.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reset_name91.i, align 4
  call void @devm_kfree(ptr noundef %dev1.i133, ptr noundef %72) #7
  %73 = ptrtoint ptr %reset_name91.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %reset_name91.i, align 4
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  call void @devm_kfree(ptr noundef %dev1.i133, ptr noundef %75) #7
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i132) #7
  br label %for.inc

if.end22:                                         ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i132) #7
  %dn = getelementptr %struct.mvebu_pcie_port, ptr %28, i32 %i.0191, i32 13
  %77 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %child.0188, ptr %dn, align 4
  %inc = add i32 %i.0191, 1
  br label %for.inc

cleanup:                                          ; preds = %if.then88.i, %if.end65.i.cleanup_crit_edge, %if.then51.i.cleanup_crit_edge, %if.end45.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge
  %retval.0.i141.ph = phi i32 [ %call86.i, %if.then88.i ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -517, %if.end45.i.cleanup_crit_edge ], [ %call67.i, %if.end65.i.cleanup_crit_edge ], [ -12, %if.then51.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i132) #7
  call void @of_node_put(ptr noundef nonnull %child.0188) #7
  br label %cleanup63

for.inc:                                          ; preds = %if.end22, %if.else.thread
  %i.1.ph = phi i32 [ %i.0191, %if.else.thread ], [ %inc, %if.end22 ]
  %call23 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0188) #7
  %cmp.not = icmp eq ptr %call23, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %nports = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 1
  %78 = ptrtoint ptr %nports to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %i.1.ph, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.ph)
  %cmp26195 = icmp sgt i32 %i.1.ph, 0
  br i1 %cmp26195, label %for.end.for.body27_crit_edge, label %for.end.for.end60_crit_edge

for.end.for.end60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.body27:                                       ; preds = %cleanup55.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %i.2196 = phi i32 [ %inc59, %cleanup55.for.body27_crit_edge ], [ 0, %for.end.for.body27_crit_edge ]
  %79 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ports, align 4
  %arrayidx30 = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196
  %dn31 = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 13
  %81 = ptrtoint ptr %dn31 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dn31, align 4
  %tobool32.not = icmp eq ptr %82, null
  br i1 %tobool32.not, label %for.body27.cleanup55_crit_edge, label %if.end34

for.body27.cleanup55_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

if.end34:                                         ; preds = %for.body27
  %clk.i142 = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 9
  %83 = ptrtoint ptr %clk.i142 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clk.i142, align 4
  %call.i.i = call i32 @clk_prepare(ptr noundef %84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i143, label %if.end34.clk_prepare_enable.exit.i_crit_edge

if.end34.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i.i143:                                    ; preds = %if.end34
  %call1.i.i = call i32 @clk_enable(ptr noundef %84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i143.if.end.i147_crit_edge, label %if.then3.i.i

if.end.i.i143.if.end.i147_crit_edge:              ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i147

if.then3.i.i:                                     ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %84) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end34.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i144 = phi i32 [ %call.i.i, %if.end34.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i144)
  %cmp.i145 = icmp slt i32 %retval.0.i.i144, 0
  br i1 %cmp.i145, label %clk_prepare_enable.exit.i.cleanup55_crit_edge, label %clk_prepare_enable.exit.i.if.end.i147_crit_edge

clk_prepare_enable.exit.i.if.end.i147_crit_edge:  ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i147

clk_prepare_enable.exit.i.cleanup55_crit_edge:    ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

if.end.i147:                                      ; preds = %clk_prepare_enable.exit.i.if.end.i147_crit_edge, %if.end.i.i143.if.end.i147_crit_edge
  %reset_gpio.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 10
  %85 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i146 = icmp eq ptr %86, null
  br i1 %tobool.not.i146, label %if.end.i147.if.end38_crit_edge, label %if.then1.i

if.end.i147.if.end38_crit_edge:                   ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then1.i:                                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_udelay.i) #7
  %87 = ptrtoint ptr %reset_udelay.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 100000, ptr %reset_udelay.i, align 4
  %88 = ptrtoint ptr %dn31 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dn31, align 4
  %call.i.i.i148 = call i32 @of_property_read_variable_u32_array(ptr noundef %89, ptr noundef nonnull @.str.35, ptr noundef nonnull %reset_udelay.i, i32 noundef 1, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 21474800) #7
  %91 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %92, i32 noundef 0) #7
  %93 = ptrtoint ptr %reset_udelay.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reset_udelay.i, align 4
  %div.i = udiv i32 %94, 1000
  call void @msleep(i32 noundef %div.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_udelay.i) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then1.i, %if.end.i147.if.end38_crit_edge
  %regs.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 18
  %call.i150 = call i32 @of_address_to_resource(ptr noundef nonnull %82, i32 noundef 0, ptr noundef %regs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %if.end.i152, label %if.then.i

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %95 = inttoptr i32 %call.i150 to ptr
  br label %mvebu_pcie_map_registers.exit

if.end.i152:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %regs.i) #7
  br label %mvebu_pcie_map_registers.exit

mvebu_pcie_map_registers.exit:                    ; preds = %if.end.i152, %if.then.i
  %retval.0.i153 = phi ptr [ %95, %if.then.i ], [ %call3.i, %if.end.i152 ]
  %base = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 1
  %96 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %retval.0.i153, ptr %base, align 4
  %cmp.i154 = icmp ugt ptr %retval.0.i153, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %do.end, label %if.end44

do.end:                                           ; preds = %mvebu_pcie_map_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %98) #10
  %99 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %base, align 4
  %100 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %101, i32 noundef 1) #7
  %102 = ptrtoint ptr %clk.i142 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk.i142, align 4
  call void @clk_disable(ptr noundef %103) #7
  call void @clk_unprepare(ptr noundef %103) #7
  br label %cleanup55

if.end44:                                         ; preds = %mvebu_pcie_map_registers.exit
  %bridge1.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 12
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %105, i32 96
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %107 = ptrtoint ptr %bridge1.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 4523, ptr %bridge1.i, align 4
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #7, !srcloc !100
  %111 = call i32 @llvm.bswap.i32(i32 %110) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %shr3.i = lshr i32 %111, 16
  %conv4.i = trunc i32 %shr3.i to i16
  %device.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 12, i32 0, i32 1
  %112 = ptrtoint ptr %device.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv4.i, ptr %device.i, align 2
  %113 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %114, i32 8
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #7, !srcloc !100
  %116 = lshr i32 %115, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %class_revision.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 12, i32 0, i32 4
  %117 = ptrtoint ptr %class_revision.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %class_revision.i, align 4
  %io_target.i.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 7
  %118 = ptrtoint ptr %io_target.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %io_target.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %119)
  %cmp.not.i.i = icmp eq i32 %119, -1
  br i1 %cmp.not.i.i, label %if.end44.mvebu_pci_bridge_emul_init.exit_crit_edge, label %mvebu_has_ioport.exit.i

if.end44.mvebu_pci_bridge_emul_init.exit_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pci_bridge_emul_init.exit

mvebu_has_ioport.exit.i:                          ; preds = %if.end44
  %io_attr.i.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 8
  %120 = ptrtoint ptr %io_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %io_attr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %121)
  %cmp1.i.not.i = icmp eq i32 %121, -1
  br i1 %cmp1.i.not.i, label %mvebu_has_ioport.exit.i.mvebu_pci_bridge_emul_init.exit_crit_edge, label %if.then.i157

mvebu_has_ioport.exit.i.mvebu_pci_bridge_emul_init.exit_crit_edge: ; preds = %mvebu_has_ioport.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pci_bridge_emul_init.exit

if.then.i157:                                     ; preds = %mvebu_has_ioport.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 12, i32 0, i32 14
  %122 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %iobase.i, align 4
  %iolimit.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 12, i32 0, i32 15
  %123 = ptrtoint ptr %iolimit.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %iolimit.i, align 1
  br label %mvebu_pci_bridge_emul_init.exit

mvebu_pci_bridge_emul_init.exit:                  ; preds = %if.then.i157, %mvebu_has_ioport.exit.i.mvebu_pci_bridge_emul_init.exit_crit_edge, %if.end44.mvebu_pci_bridge_emul_init.exit_crit_edge
  %124 = lshr i32 %106, 8
  %125 = trunc i32 %124 to i8
  %conv.i = and i8 %125, 15
  %conv12.i = zext i8 %conv.i to i16
  %126 = shl nuw nsw i16 %conv12.i, 8
  %cap.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 12, i32 1, i32 2
  %127 = ptrtoint ptr %cap.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %cap.i, align 2
  %has_pcie.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 12, i32 6
  %128 = ptrtoint ptr %has_pcie.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %has_pcie.i, align 4
  %data.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 12, i32 5
  %129 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %arrayidx30, ptr %data.i, align 4
  %ops.i = getelementptr %struct.mvebu_pcie_port, ptr %80, i32 %i.2196, i32 12, i32 2
  %130 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @mvebu_pci_bridge_emul_ops, ptr %ops.i, align 4
  %call13.i = call i32 @pci_bridge_emul_init(ptr noundef %bridge1.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp46 = icmp slt i32 %call13.i, 0
  br i1 %cmp46, label %do.end50, label %if.end54

do.end50:                                         ; preds = %mvebu_pci_bridge_emul_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %132) #10
  %133 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base, align 4
  call void @devm_iounmap(ptr noundef %dev1, ptr noundef %134) #7
  %135 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %base, align 4
  %136 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %137, i32 noundef 1) #7
  %138 = ptrtoint ptr %clk.i142 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %clk.i142, align 4
  call void @clk_disable(ptr noundef %139) #7
  call void @clk_unprepare(ptr noundef %139) #7
  br label %cleanup55

if.end54:                                         ; preds = %mvebu_pci_bridge_emul_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mvebu_pcie_setup_hw(ptr noundef %arrayidx30)
  %140 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base, align 4
  %add.ptr.i.i162 = getelementptr i8, ptr %141, i32 6660
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i162) #7, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %143 = and i32 %142, -7937
  %144 = or i32 %143, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @arm_heavy_mb() #7
  %145 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %146, i32 6660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %144) #7, !srcloc !103
  %147 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base, align 4
  %add.ptr.i.i164 = getelementptr i8, ptr %148, i32 6660
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i164) #7, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %150 = and i32 %149, -16711681
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @arm_heavy_mb() #7
  %151 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %152, i32 6660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %150) #7, !srcloc !103
  br label %cleanup55

cleanup55:                                        ; preds = %if.end54, %do.end50, %do.end, %clk_prepare_enable.exit.i.cleanup55_crit_edge, %for.body27.cleanup55_crit_edge
  %inc59 = add nuw nsw i32 %i.2196, 1
  %153 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nports, align 4
  %cmp26 = icmp slt i32 %inc59, %154
  br i1 %cmp26, label %cleanup55.for.body27_crit_edge, label %cleanup55.for.end60_crit_edge

cleanup55.for.end60_crit_edge:                    ; preds = %cleanup55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

cleanup55.for.body27_crit_edge:                   ; preds = %cleanup55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

for.end60:                                        ; preds = %cleanup55.for.end60_crit_edge, %for.end.for.end60_crit_edge, %for.end.thread
  %nports205 = phi ptr [ %nports, %for.end.for.end60_crit_edge ], [ %nports203, %for.end.thread ], [ %nports, %cleanup55.for.end60_crit_edge ]
  %i.2.lcssa = phi i32 [ 0, %for.end.for.end60_crit_edge ], [ 0, %for.end.thread ], [ %inc59, %cleanup55.for.end60_crit_edge ]
  %155 = ptrtoint ptr %nports205 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %i.2.lcssa, ptr %nports205, align 4
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %156 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %private.i, ptr %sysdata, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %157 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @mvebu_pcie_ops, ptr %ops, align 4
  %align_resource = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 14
  %158 = ptrtoint ptr %align_resource to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @mvebu_pcie_align_resource, ptr %align_resource, align 4
  %map_irq = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 10
  %159 = ptrtoint ptr %map_irq to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @mvebu_pcie_map_irq, ptr %map_irq, align 4
  %call62 = call i32 @pci_host_probe(ptr noundef nonnull %call) #7
  br label %cleanup63

cleanup63:                                        ; preds = %for.end60, %cleanup, %devm_kcalloc.exit.cleanup63_crit_edge, %devm_kcalloc.exit.thread, %if.end29.i.cleanup63_crit_edge, %if.then13.i.cleanup63_crit_edge, %if.end.i.cleanup63_crit_edge, %do.end.i, %entry.cleanup63_crit_edge
  %retval.2 = phi i32 [ %retval.0.i141.ph, %cleanup ], [ %call62, %for.end60 ], [ -12, %entry.cleanup63_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup63_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call33.i, %if.end29.i.cleanup63_crit_edge ], [ %call26.i, %if.then13.i.cleanup63_crit_edge ], [ %call7.i, %if.end.i.cleanup63_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pci_lock_rescan_remove() #7
  %bus = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %3) #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %5) #7
  tail call void @pci_unlock_rescan_remove() #7
  %nports = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp61 = icmp sgt i32 %7, 0
  br i1 %cmp61, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 4
  %base = getelementptr %struct.mvebu_pcie_port, ptr %9, i32 %i.062, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.mvebu_pcie_port, ptr %9, i32 %i.062
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr.i45 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %15 = and i32 %14, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i47 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %15) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr.i49 = getelementptr i8, ptr %19, i32 6416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 0) #7, !srcloc !103
  %bridge4 = getelementptr %struct.mvebu_pcie_port, ptr %9, i32 %i.062, i32 12
  tail call void @pci_bridge_emul_cleanup(ptr noundef %bridge4) #7
  tail call fastcc void @mvebu_pcie_disable_wins(ptr noundef %arrayidx)
  %size = getelementptr %struct.mvebu_pcie_port, ptr %9, i32 %i.062, i32 16, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not = icmp eq i32 %21, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %iowin = getelementptr %struct.mvebu_pcie_port, ptr %9, i32 %i.062, i32 16
  %22 = ptrtoint ptr %iowin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iowin, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then6
  %base.addr.03.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ %23, %if.then6 ]
  %size.addr.02.i = phi i32 [ %sub2.i, %while.body.i.while.body.i_crit_edge ], [ %21, %if.then6 ]
  %24 = tail call i32 @llvm.ctlz.i32(i32 %size.addr.02.i, i1 true) #7, !range !104
  %sub.i = xor i32 %24, 31
  %shl.i = shl nuw i32 1, %sub.i
  %call1.i = tail call i32 @mvebu_mbus_del_window(i32 noundef %base.addr.03.i, i32 noundef %shl.i) #7
  %add.i = add i32 %shl.i, %base.addr.03.i
  %sub2.i = sub i32 %size.addr.02.i, %shl.i
  %tobool.not.i = icmp eq i32 %sub2.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end11_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.if.end11_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %while.body.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %size12 = getelementptr %struct.mvebu_pcie_port, ptr %9, i32 %i.062, i32 15, i32 2
  %25 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool13.not = icmp eq i32 %26, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  %memwin = getelementptr %struct.mvebu_pcie_port, ptr %9, i32 %i.062, i32 15
  %27 = ptrtoint ptr %memwin to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %memwin, align 4
  br label %while.body.i59

while.body.i59:                                   ; preds = %while.body.i59.while.body.i59_crit_edge, %if.then14
  %base.addr.03.i51 = phi i32 [ %add.i56, %while.body.i59.while.body.i59_crit_edge ], [ %28, %if.then14 ]
  %size.addr.02.i52 = phi i32 [ %sub2.i57, %while.body.i59.while.body.i59_crit_edge ], [ %26, %if.then14 ]
  %29 = tail call i32 @llvm.ctlz.i32(i32 %size.addr.02.i52, i1 true) #7, !range !104
  %sub.i53 = xor i32 %29, 31
  %shl.i54 = shl nuw i32 1, %sub.i53
  %call1.i55 = tail call i32 @mvebu_mbus_del_window(i32 noundef %base.addr.03.i51, i32 noundef %shl.i54) #7
  %add.i56 = add i32 %shl.i54, %base.addr.03.i51
  %sub2.i57 = sub i32 %size.addr.02.i52, %shl.i54
  %tobool.not.i58 = icmp eq i32 %sub2.i57, 0
  br i1 %tobool.not.i58, label %while.body.i59.if.end19_crit_edge, label %while.body.i59.while.body.i59_crit_edge

while.body.i59.while.body.i59_crit_edge:          ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i59

while.body.i59.if.end19_crit_edge:                ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %while.body.i59.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %reset_gpio.i = getelementptr %struct.mvebu_pcie_port, ptr %9, i32 %i.062, i32 10
  %30 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %31, i32 noundef 1) #7
  %clk.i = getelementptr %struct.mvebu_pcie_port, ptr %9, i32 %i.062, i32 9
  %32 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %33) #7
  tail call void @clk_unprepare(ptr noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %34 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nports, align 4
  %cmp = icmp slt i32 %inc, %35
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvebu_pcie_setup_hw(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 6656
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %5, i32 6656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %3) #7, !srcloc !103
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %9 = and i32 %8, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %9) #7, !srcloc !103
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #7, !srcloc !100
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %or4 = or i32 %15, 100925440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or4) #7
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %16) #7, !srcloc !103
  %call.i = tail call ptr @mv_mbus_dram_info() #7
  tail call fastcc void @mvebu_pcie_disable_wins(ptr noundef %port) #7
  %num_cs.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp72.i = icmp sgt i32 %20, 0
  br i1 %cmp72.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %cs1.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %size.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv20.i, %for.body.i.for.body.i_crit_edge ]
  %base.i30 = getelementptr %struct.mbus_dram_window, ptr %cs1.i, i32 %i.074.i, i32 2
  %21 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %base.i30, align 8
  %23 = trunc i64 %22 to i32
  %conv.i = and i32 %23, -65536
  %shl.i = shl i32 %i.074.i, 4
  %add.i = add i32 %shl.i, 6180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #7
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #7, !srcloc !103
  %add3.i = add i32 %shl.i, 6188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %28, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 0) #7, !srcloc !103
  %size4.i = getelementptr %struct.mbus_dram_window, ptr %cs1.i, i32 %i.074.i, i32 3
  %29 = ptrtoint ptr %size4.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %size4.i, align 8
  %mbus_attr.i = getelementptr %struct.mbus_dram_window, ptr %cs1.i, i32 %i.074.i, i32 1
  %31 = ptrtoint ptr %mbus_attr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mbus_attr.i, align 1
  %conv6.i = zext i8 %32 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %call.i, align 8
  %conv9.i = zext i8 %34 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 4
  %35 = trunc i64 %30 to i32
  %36 = add i32 %35, -1
  %37 = and i32 %36, -65536
  %38 = or i32 %37, %shl7.i
  %39 = or i32 %38, %shl10.i
  %conv14.i = or i32 %39, 1
  %add16.i = add i32 %shl.i, 6176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv14.i) #7
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %42, i32 %add16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %40) #7, !srcloc !103
  %43 = ptrtoint ptr %size4.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size4.i, align 8
  %45 = trunc i64 %44 to i32
  %conv20.i = add i32 %size.073.i, %45
  %inc.i = add nuw nsw i32 %i.074.i, 1
  %46 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_cs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %47
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %conv20.i, %for.body.i.for.end.i_crit_edge ]
  %48 = tail call i32 @llvm.ctpop.i32(i32 %size.0.lcssa.i) #7, !range !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp23.not.i = icmp ult i32 %48, 2
  br i1 %cmp23.not.i, label %for.end.i.mvebu_pcie_setup_wins.exit_crit_edge, label %if.then.i

for.end.i.mvebu_pcie_setup_wins.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pcie_setup_wins.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.lcssa.i)
  %tobool.not.i.i = icmp eq i32 %size.0.lcssa.i, 0
  %49 = tail call i32 @llvm.ctlz.i32(i32 %size.0.lcssa.i, i1 true) #7, !range !104
  %sub.i.i = sub nuw nsw i32 32, %49
  %sub.i.op.i = shl nuw i32 1, %sub.i.i
  %shl26.i = select i1 %tobool.not.i.i, i32 1, i32 %sub.i.op.i
  br label %mvebu_pcie_setup_wins.exit

mvebu_pcie_setup_wins.exit:                       ; preds = %if.then.i, %for.end.i.mvebu_pcie_setup_wins.exit_crit_edge
  %size.1.i = phi i32 [ %shl26.i, %if.then.i ], [ %size.0.lcssa.i, %for.end.i.mvebu_pcie_setup_wins.exit_crit_edge ]
  %base28.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %50 = ptrtoint ptr %base28.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %base28.i, align 8
  %conv29.i = trunc i64 %51 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv29.i) #7
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %54, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %52) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %56, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 0) #7, !srcloc !103
  %sub30.i = add i32 %size.1.i, -1
  %and31.i = and i32 %sub30.i, -65536
  %or32.i = or i32 %and31.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #7
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %59, i32 6148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %57) #7, !srcloc !103
  %regs.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 18
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %regs.i, align 4
  %and33.i = and i32 %61, -1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %and33.i) #7
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %64, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %62) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %66, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 0) #7, !srcloc !103
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %68, i32 6416
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %70 = or i32 %69, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %72, i32 6416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %70) #7, !srcloc !103
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvebu_pcie_align_resource(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %res, i32 noundef %start, i32 noundef %size, i32 noundef %align) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %start, -1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %size, i1 true) #7, !range !104
  %sub.i.i.op.i = xor i32 %6, 31
  %cond15 = shl nuw i32 1, %sub.i.i.op.i
  %7 = tail call i32 @llvm.umax.i32(i32 %cond15, i32 65536)
  %sub22 = add i32 %7, -1
  %or = or i32 %sub22, %sub
  %add = add i32 %or, 1
  br label %return

if.else:                                          ; preds = %if.end
  %and24 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else.return_crit_edge, label %if.then26

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub27 = add i32 %start, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %size, i1 true) #7, !range !104
  %sub.i.i.op.i78 = xor i32 %8, 31
  %cond47 = shl nuw i32 1, %sub.i.i.op.i78
  %9 = tail call i32 @llvm.umax.i32(i32 %cond47, i32 1048576)
  %sub55 = add i32 %9, -1
  %or56 = or i32 %sub55, %sub27
  %add57 = add i32 %or56, 1
  br label %return

return:                                           ; preds = %if.then26, %if.else.return_crit_edge, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add, %if.then2 ], [ %add57, %if.then26 ], [ %start, %entry.return_crit_edge ], [ %start, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_map_irq(ptr noundef %dev, i8 noundef zeroext %slot, i8 noundef zeroext %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @of_irq_parse_and_map_pci(ptr noundef %dev, i8 noundef zeroext %slot, i8 noundef zeroext %pin) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_mbus_get_pcie_mem_aperture(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_mbus_get_pcie_io_aperture(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pci_remap_iospace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_devfn(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_get_tgt_attr(ptr noundef %np, i32 noundef %devfn, i32 noundef %type, ptr nocapture noundef writeonly %tgt, ptr nocapture noundef writeonly %attr) unnamed_addr #2 align 64 {
entry:
  %rlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlen) #7
  %0 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rlen, align 4, !annotation !99
  %1 = ptrtoint ptr %tgt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tgt, align 4
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %attr, align 4
  %call = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef nonnull %rlen) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup38_crit_edge, label %if.end

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_n_addr_cells(ptr noundef %np) #7
  %add2 = add i32 %call1, 5
  %3 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rlen, align 4
  %div58 = lshr i32 %4, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %div58)
  %cmp86.not = icmp ugt i32 %add2, %div58
  br i1 %cmp86.not, label %if.end.cleanup38_crit_edge, label %for.body.i.preheader.lr.ph

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

for.body.i.preheader.lr.ph:                       ; preds = %if.end
  %div3 = udiv i32 %div58, %add2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not3.i = icmp eq i32 %call1, 0
  %5 = lshr i32 %devfn, 3
  %and21 = and i32 %5, 31
  %smax = call i32 @llvm.smax.i32(i32 %div3, i32 1)
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.inc.for.body.i.preheader_crit_edge, %for.body.i.preheader.lr.ph
  %i.088 = phi i32 [ 0, %for.body.i.preheader.lr.ph ], [ %inc, %for.inc.for.body.i.preheader_crit_edge ]
  %range.087 = phi ptr [ %call, %for.body.i.preheader.lr.ph ], [ %add.ptr37, %for.inc.for.body.i.preheader_crit_edge ]
  %6 = ptrtoint ptr %range.087 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range.087, align 4
  %cell.addr.04.i61 = getelementptr i32, ptr %range.087, i32 1
  %8 = ptrtoint ptr %cell.addr.04.i61 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cell.addr.04.i61, align 4
  br i1 %tobool.not3.i, label %for.body.i.preheader.of_read_number.exit80_crit_edge, label %for.body.i79.preheader

for.body.i.preheader.of_read_number.exit80_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_read_number.exit80

for.body.i79.preheader:                           ; preds = %for.body.i.preheader
  %add.ptr7 = getelementptr i32, ptr %range.087, i32 3
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.body.i79.for.body.i79_crit_edge, %for.body.i79.preheader
  %r.06.i70 = phi i64 [ %or.i76, %for.body.i79.for.body.i79_crit_edge ], [ 0, %for.body.i79.preheader ]
  %size.addr.05.i71 = phi i32 [ %dec.i73, %for.body.i79.for.body.i79_crit_edge ], [ %call1, %for.body.i79.preheader ]
  %cell.addr.04.i72 = phi ptr [ %incdec.ptr.i77, %for.body.i79.for.body.i79_crit_edge ], [ %add.ptr7, %for.body.i79.preheader ]
  %dec.i73 = add i32 %size.addr.05.i71, -1
  %shl.i74 = shl i64 %r.06.i70, 32
  %10 = ptrtoint ptr %cell.addr.04.i72 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cell.addr.04.i72, align 4
  %conv.i75 = zext i32 %11 to i64
  %or.i76 = or i64 %shl.i74, %conv.i75
  %incdec.ptr.i77 = getelementptr i32, ptr %cell.addr.04.i72, i32 1
  %tobool.not.i78 = icmp eq i32 %dec.i73, 0
  br i1 %tobool.not.i78, label %of_read_number.exit80.loopexit, label %for.body.i79.for.body.i79_crit_edge

for.body.i79.for.body.i79_crit_edge:              ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i79

of_read_number.exit80.loopexit:                   ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #9
  %extract.le = lshr i64 %shl.i74, 48
  %extract.t.le = trunc i64 %extract.le to i32
  %extract82.le = lshr i64 %shl.i74, 56
  %extract.t83.le = trunc i64 %extract82.le to i32
  %phi.bo = and i32 %extract.t.le, 255
  br label %of_read_number.exit80

of_read_number.exit80:                            ; preds = %of_read_number.exit80.loopexit, %for.body.i.preheader.of_read_number.exit80_crit_edge
  %r.0.lcssa.i.off48 = phi i32 [ 0, %for.body.i.preheader.of_read_number.exit80_crit_edge ], [ %phi.bo, %of_read_number.exit80.loopexit ]
  %r.0.lcssa.i.off56 = phi i32 [ 0, %for.body.i.preheader.of_read_number.exit80_crit_edge ], [ %extract.t83.le, %of_read_number.exit80.loopexit ]
  %shr = lshr i32 %7, 24
  %and = and i32 %shr, 3
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and, label %of_read_number.exit80.for.inc_crit_edge [
    i32 1, label %of_read_number.exit80.if.end19_crit_edge
    i32 2, label %if.then16
  ]

of_read_number.exit80.if.end19_crit_edge:         ; preds = %of_read_number.exit80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

of_read_number.exit80.for.inc_crit_edge:          ; preds = %of_read_number.exit80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then16:                                        ; preds = %of_read_number.exit80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %of_read_number.exit80.if.end19_crit_edge
  %rtype.0 = phi i32 [ 512, %if.then16 ], [ 256, %of_read_number.exit80.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %9)
  %cmp22 = icmp eq i32 %and21, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %rtype.0, i32 %type)
  %cmp24 = icmp eq i32 %rtype.0, %type
  %or.cond = and i1 %cmp22, %cmp24
  br i1 %or.cond, label %cleanup, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %tgt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %r.0.lcssa.i.off56, ptr %tgt, align 4
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %r.0.lcssa.i.off48, ptr %attr, align 4
  br label %cleanup38

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %of_read_number.exit80.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.088, 1
  %add.ptr37 = getelementptr i32, ptr %range.087, i32 %add2
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc.cleanup38_crit_edge, label %for.inc.for.body.i.preheader_crit_edge

for.inc.for.body.i.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

for.inc.cleanup38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

cleanup38:                                        ; preds = %for.inc.cleanup38_crit_edge, %cleanup, %if.end.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup ], [ -22, %entry.cleanup38_crit_edge ], [ -2, %if.end.cleanup38_crit_edge ], [ -2, %for.inc.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlen) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_pcie_port_clk_put(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.mvebu_pcie_port, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_emul_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pci_bridge_emul_base_conf_read(ptr nocapture noundef readonly %bridge, i32 noundef %reg, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %reg, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 24, label %sw.bb1
    i32 60, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !100
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i32, ptr %bridge, i32 6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = and i32 %8, -16711681
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %base.i.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 6660
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %14 = lshr i32 %13, 8
  %shl = and i32 %14, 65280
  %or = or i32 %shl, %10
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7 = getelementptr i32, ptr %bridge, i32 15
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  %base.i22 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %18, i32 6656
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %20 = and i32 %16, -16385
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = shl i32 %19, 22
  %23 = and i32 %22, 4194304
  %val6.0 = or i32 %23, %21
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %sw.bb1, %sw.bb
  %.sink = phi i32 [ %6, %sw.bb ], [ %or, %sw.bb1 ], [ %val6.0, %sw.bb3 ]
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pci_bridge_emul_pcie_conf_read(ptr nocapture noundef readonly %bridge, i32 noundef %reg, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = add i32 %reg, -4
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 30)
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 5, label %entry.cleanup.sink.split_crit_edge
    i32 7, label %sw.bb8
    i32 8, label %sw.bb10
    i32 9, label %sw.bb12
    i32 11, label %sw.bb14
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 100
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !100
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i31 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %10, i32 104
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #7, !srcloc !100
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i33 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %base.i33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %14, i32 108
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %16 = and i32 %15, -1025
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i35 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %base.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %19, i32 112
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #7, !srcloc !100
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i37 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %23, i32 6676
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !100
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i39 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %base.i39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i39, align 4
  %add.ptr.i40 = getelementptr i8, ptr %27, i32 132
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #7, !srcloc !100
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i41 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %base.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %31, i32 136
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #7, !srcloc !100
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i43 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %base.i43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %35, i32 144
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #7, !srcloc !100
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %8, %sw.bb ], [ %12, %sw.bb1 ], [ %17, %sw.bb3 ], [ %21, %sw.bb5 ], [ %25, %sw.bb8 ], [ %29, %sw.bb10 ], [ %33, %sw.bb12 ], [ %37, %sw.bb14 ], [ 4194304, %entry.cleanup.sink.split_crit_edge ]
  %38 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_pci_bridge_emul_base_conf_write(ptr nocapture noundef %bridge, i32 noundef %reg, i32 noundef %old, i32 noundef %new, i32 noundef %mask) #2 align 64 {
entry:
  %desired.i = alloca %struct.mvebu_pcie_window, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = add i32 %reg, -4
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 30)
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 6, label %sw.bb5
    i32 7, label %sw.bb23
    i32 11, label %sw.bb41
    i32 5, label %sw.bb63
    i32 14, label %sw.bb69
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %io_target.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %io_target.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, -1
  br i1 %cmp.not.i, label %sw.bb.if.then_crit_edge, label %mvebu_has_ioport.exit

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

mvebu_has_ioport.exit:                            ; preds = %sw.bb
  %io_attr.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %io_attr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_attr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp1.i.not = icmp eq i32 %8, -1
  br i1 %cmp1.i.not, label %mvebu_has_ioport.exit.if.then_crit_edge, label %mvebu_has_ioport.exit.if.end_crit_edge

mvebu_has_ioport.exit.if.end_crit_edge:           ; preds = %mvebu_has_ioport.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

mvebu_has_ioport.exit.if.then_crit_edge:          ; preds = %mvebu_has_ioport.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %mvebu_has_ioport.exit.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %command = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 2
  %9 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %command, align 4
  %11 = and i16 %10, -257
  store i16 %11, ptr %command, align 4
  %and4 = and i32 %new, -2
  br label %if.end

if.end:                                           ; preds = %if.then, %mvebu_has_ioport.exit.if.end_crit_edge
  %new.addr.0 = phi i32 [ %new, %mvebu_has_ioport.exit.if.end_crit_edge ], [ %and4, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %new.addr.0) #7
  %base.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !103
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %and6 = and i32 %mask, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %sw.bb5.sw.epilog_crit_edge, label %land.lhs.true

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb5
  %call7 = tail call fastcc i32 @mvebu_pcie_handle_iobase_change(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then9

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then9:                                         ; preds = %land.lhs.true
  %iobase = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 14
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iobase, align 4
  %17 = and i8 %16, 15
  store i8 %17, ptr %iobase, align 4
  %iolimit = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 15
  %18 = ptrtoint ptr %iolimit to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iolimit, align 1
  %20 = and i8 %19, 15
  store i8 %20, ptr %iolimit, align 1
  %iobaseupper = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 23
  %21 = ptrtoint ptr %iobaseupper to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %iobaseupper, align 4
  %iolimitupper = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 24
  %22 = ptrtoint ptr %iolimitupper to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %iolimitupper, align 2
  %io_target.i115 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %io_target.i115 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_target.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.not.i116 = icmp eq i32 %24, -1
  br i1 %cmp.not.i116, label %if.then9.sw.epilog_crit_edge, label %mvebu_has_ioport.exit120

if.then9.sw.epilog_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

mvebu_has_ioport.exit120:                         ; preds = %if.then9
  %io_attr.i117 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %io_attr.i117 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_attr.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp1.i118.not = icmp eq i32 %26, -1
  br i1 %cmp1.i118.not, label %mvebu_has_ioport.exit120.sw.epilog_crit_edge, label %if.then17

mvebu_has_ioport.exit120.sw.epilog_crit_edge:     ; preds = %mvebu_has_ioport.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then17:                                        ; preds = %mvebu_has_ioport.exit120
  call void @__sanitizer_cov_trace_pc() #9
  %27 = or i8 %16, -16
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %iobase, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %desired.i) #7
  %29 = call ptr @memcpy(ptr %desired.i, ptr @__const.mvebu_pcie_handle_membase_change.desired, i32 12)
  %memlimit.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 12, i32 0, i32 18
  %30 = ptrtoint ptr %memlimit.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %memlimit.i, align 2
  %membase.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 12, i32 0, i32 17
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %membase.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp.i = icmp ult i16 %31, %33
  br i1 %cmp.i, label %sw.bb23.mvebu_pcie_handle_membase_change.exit_crit_edge, label %if.end.i

sw.bb23.mvebu_pcie_handle_membase_change.exit_crit_edge: ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pcie_handle_membase_change.exit

if.end.i:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %34 = and i16 %33, -16
  %and.i = zext i16 %34 to i32
  %shl.i = shl nuw i32 %and.i, 16
  %35 = ptrtoint ptr %desired.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl.i, ptr %desired.i, align 4
  %and8.i = zext i16 %31 to i32
  %shl9.i = shl nuw i32 %and8.i, 16
  %or.i = or i32 %shl9.i, 1048575
  %sub.i = add i32 %or.i, 1
  %add.i = sub i32 %sub.i, %shl.i
  %size.i = getelementptr inbounds %struct.mvebu_pcie_window, ptr %desired.i, i32 0, i32 2
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %size.i, align 4
  br label %mvebu_pcie_handle_membase_change.exit

mvebu_pcie_handle_membase_change.exit:            ; preds = %if.end.i, %sw.bb23.mvebu_pcie_handle_membase_change.exit_crit_edge
  %mem_target11.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %mem_target11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mem_target11.i, align 4
  %mem_attr12.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %mem_attr12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mem_attr12.i, align 4
  %memwin13.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 15
  %call14.i = call fastcc i32 @mvebu_pcie_set_window(ptr noundef %1, i32 noundef %38, i32 noundef %40, ptr noundef nonnull %desired.i, ptr noundef %memwin13.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desired.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool25.not = icmp eq i32 %call14.i, 0
  br i1 %tobool25.not, label %mvebu_pcie_handle_membase_change.exit.sw.epilog_crit_edge, label %if.then26

mvebu_pcie_handle_membase_change.exit.sw.epilog_crit_edge: ; preds = %mvebu_pcie_handle_membase_change.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then26:                                        ; preds = %mvebu_pcie_handle_membase_change.exit
  call void @__sanitizer_cov_trace_pc() #9
  %membase = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 17
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %membase, align 4
  %memlimit = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 18
  %43 = ptrtoint ptr %memlimit to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %memlimit, align 2
  %45 = and i16 %44, 3840
  store i16 %45, ptr %memlimit, align 2
  %46 = lshr i16 %42, 8
  %47 = or i16 %46, -16
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %49 = ptrtoint ptr %membase to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %membase, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  %call42 = tail call fastcc i32 @mvebu_pcie_handle_iobase_change(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %sw.bb41.sw.epilog_crit_edge, label %if.then44

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then44:                                        ; preds = %sw.bb41
  %iobase45 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 14
  %50 = ptrtoint ptr %iobase45 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %iobase45, align 4
  %52 = and i8 %51, 15
  store i8 %52, ptr %iobase45, align 4
  %iolimit49 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 15
  %53 = ptrtoint ptr %iolimit49 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %iolimit49, align 1
  %55 = and i8 %54, 15
  store i8 %55, ptr %iolimit49, align 1
  %iobaseupper53 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 23
  %56 = ptrtoint ptr %iobaseupper53 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %iobaseupper53, align 4
  %iolimitupper54 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 24
  %57 = ptrtoint ptr %iolimitupper54 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %iolimitupper54, align 2
  %io_target.i121 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 7
  %58 = ptrtoint ptr %io_target.i121 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_target.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp.not.i122 = icmp eq i32 %59, -1
  br i1 %cmp.not.i122, label %if.then44.sw.epilog_crit_edge, label %mvebu_has_ioport.exit126

if.then44.sw.epilog_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

mvebu_has_ioport.exit126:                         ; preds = %if.then44
  %io_attr.i123 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 8
  %60 = ptrtoint ptr %io_attr.i123 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %io_attr.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp1.i124.not = icmp eq i32 %61, -1
  br i1 %cmp1.i124.not, label %mvebu_has_ioport.exit126.sw.epilog_crit_edge, label %if.then56

mvebu_has_ioport.exit126.sw.epilog_crit_edge:     ; preds = %mvebu_has_ioport.exit126
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then56:                                        ; preds = %mvebu_has_ioport.exit126
  call void @__sanitizer_cov_trace_pc() #9
  %62 = or i8 %51, -16
  %63 = ptrtoint ptr %iobase45 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %iobase45, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  %and64 = and i32 %mask, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %sw.bb63.sw.epilog_crit_edge, label %if.then66

sw.bb63.sw.epilog_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then66:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #9
  %secondary_bus = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 11
  %64 = ptrtoint ptr %secondary_bus to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %secondary_bus, align 1
  %conv67 = zext i8 %65 to i32
  %base.i.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 6660
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %69 = and i32 %68, -16711681
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  %shl.i127 = shl nuw nsw i32 %conv67, 8
  %or.i128 = or i32 %70, %shl.i127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i128) #7
  %72 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %73, i32 6660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %71) #7, !srcloc !103
  br label %sw.epilog

sw.bb69:                                          ; preds = %entry
  %and70 = and i32 %mask, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %sw.bb69.sw.epilog_crit_edge, label %if.then72

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then72:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  %base.i129 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %base.i129 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i129, align 4
  %add.ptr.i130 = getelementptr i8, ptr %75, i32 6656
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %77 = and i32 %76, -2
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %and74 = shl i32 %new, 2
  %79 = and i32 %and74, 16777216
  %ctrl.0 = or i32 %78, %79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #7
  %81 = ptrtoint ptr %base.i129 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i129, align 4
  %add.ptr.i132 = getelementptr i8, ptr %82, i32 6656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %80) #7, !srcloc !103
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then72, %sw.bb69.sw.epilog_crit_edge, %if.then66, %sw.bb63.sw.epilog_crit_edge, %if.then56, %mvebu_has_ioport.exit126.sw.epilog_crit_edge, %if.then44.sw.epilog_crit_edge, %sw.bb41.sw.epilog_crit_edge, %if.then26, %mvebu_pcie_handle_membase_change.exit.sw.epilog_crit_edge, %if.then17, %mvebu_has_ioport.exit120.sw.epilog_crit_edge, %if.then9.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %if.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_pci_bridge_emul_pcie_conf_write(ptr nocapture noundef readonly %bridge, i32 noundef %reg, i32 noundef %old, i32 noundef %new, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = add i32 %reg, -8
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 29)
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %new) #7
  %base.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !103
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %new, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %base.i15 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base.i15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %10, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %8) #7, !srcloc !103
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %and3 = and i32 %new, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %base.i17 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %base.i17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %12, i32 6400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 -17) #7, !srcloc !103
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %new) #7
  %base.i19 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %15, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %13) #7, !srcloc !103
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %new) #7
  %base.i21 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %base.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i21, align 4
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %16) #7, !srcloc !103
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %if.then, %sw.bb2.sw.epilog_crit_edge, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_pcie_handle_iobase_change(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  %desired = alloca %struct.mvebu_pcie_window, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %desired) #7
  %0 = call ptr @memset(ptr %desired, i32 0, i32 12)
  %iolimit = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 12, i32 0, i32 15
  %1 = ptrtoint ptr %iolimit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %iolimit, align 1
  %iobase = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 12, i32 0, i32 14
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp = icmp ult i8 %2, %4
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %iolimitupper = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 12, i32 0, i32 24
  %5 = ptrtoint ptr %iolimitupper to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %iolimitupper, align 2
  %iobaseupper = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 12, i32 0, i32 23
  %7 = ptrtoint ptr %iobaseupper to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %iobaseupper, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp6 = icmp ult i16 %6, %8
  br i1 %cmp6, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %io_target = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 7
  %9 = ptrtoint ptr %io_target to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_target, align 4
  %io_attr = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 8
  %11 = ptrtoint ptr %io_attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_attr, align 4
  %iowin = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 16
  %call = call fastcc i32 @mvebu_pcie_set_window(ptr noundef %port, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %desired, ptr noundef %iowin)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %io_target.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 7
  %13 = ptrtoint ptr %io_target.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not.i = icmp eq i32 %14, -1
  br i1 %cmp.not.i, label %if.end.do.end_crit_edge, label %mvebu_has_ioport.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

mvebu_has_ioport.exit:                            ; preds = %if.end
  %io_attr.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 8
  %15 = ptrtoint ptr %io_attr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_attr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp1.i.not = icmp eq i32 %16, -1
  br i1 %cmp1.i.not, label %mvebu_has_ioport.exit.do.end_crit_edge, label %if.end31

mvebu_has_ioport.exit.do.end_crit_edge:           ; preds = %mvebu_has_ioport.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %mvebu_has_ioport.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %pcie = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 14
  %17 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcie, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %call14 = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %21 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcie, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %28, %if.end.i ], [ %26, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 443, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %call14, ptr noundef %retval.0.i) #7
  br label %cleanup

if.end31:                                         ; preds = %mvebu_has_ioport.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = and i8 %4, -16
  %and = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %and, 8
  %conv35 = zext i16 %8 to i32
  %shl36 = shl nuw i32 %conv35, 16
  %or = or i32 %shl36, %shl
  %remap = getelementptr inbounds %struct.mvebu_pcie_window, ptr %desired, i32 0, i32 1
  %30 = ptrtoint ptr %remap to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %remap, align 4
  %pcie37 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 14
  %31 = ptrtoint ptr %pcie37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcie37, align 4
  %io = getelementptr inbounds %struct.mvebu_pcie, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io, align 4
  %add = add i32 %34, %or
  %35 = ptrtoint ptr %desired to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %desired, align 4
  %and41 = zext i8 %2 to i32
  %shl42 = shl nuw nsw i32 %and41, 8
  %conv45 = zext i16 %6 to i32
  %shl46 = shl nuw i32 %conv45, 16
  %or43 = or i32 %shl42, 4095
  %or47 = add nuw nsw i32 %or43, 1
  %sub = add i32 %or47, %shl46
  %add49 = sub i32 %sub, %or
  %size = getelementptr inbounds %struct.mvebu_pcie_window, ptr %desired, i32 0, i32 2
  %36 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add49, ptr %size, align 4
  %37 = ptrtoint ptr %io_attr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_attr.i, align 4
  %iowin52 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 16
  %call53 = call fastcc i32 @mvebu_pcie_set_window(ptr noundef %port, i32 noundef %14, i32 noundef %38, ptr noundef nonnull %desired, ptr noundef %iowin52)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %dev_name.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call53, %if.end31 ], [ -95, %dev_name.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desired) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_pcie_set_window(ptr nocapture noundef readonly %port, i32 noundef %target, i32 noundef %attribute, ptr nocapture noundef readonly %desired, ptr nocapture noundef %cur) unnamed_addr #2 align 64 {
entry:
  %base.addr.i = alloca i32, align 4
  %end.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desired to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desired, align 4
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %remap = getelementptr inbounds %struct.mvebu_pcie_window, ptr %desired, i32 0, i32 1
  %4 = ptrtoint ptr %remap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %remap, align 4
  %remap2 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %cur, i32 0, i32 1
  %6 = ptrtoint ptr %remap2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %remap2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %size = getelementptr inbounds %struct.mvebu_pcie_window, ptr %desired, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %size5 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %cur, i32 0, i32 2
  %10 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp6 = icmp eq i32 %9, %11
  br i1 %cmp6, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %size7 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %cur, i32 0, i32 2
  %12 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8.not = icmp eq i32 %13, 0
  br i1 %cmp8.not, label %if.end.if.end14_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %base.addr.03.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ %3, %if.end.while.body.i_crit_edge ]
  %size.addr.02.i = phi i32 [ %sub2.i, %while.body.i.while.body.i_crit_edge ], [ %13, %if.end.while.body.i_crit_edge ]
  %14 = tail call i32 @llvm.ctlz.i32(i32 %size.addr.02.i, i1 true) #7, !range !104
  %sub.i = xor i32 %14, 31
  %shl.i = shl nuw i32 1, %sub.i
  %call1.i = tail call i32 @mvebu_mbus_del_window(i32 noundef %base.addr.03.i, i32 noundef %shl.i) #7
  %add.i = add i32 %shl.i, %base.addr.03.i
  %sub2.i = sub i32 %size.addr.02.i, %shl.i
  %tobool.not.i = icmp eq i32 %sub2.i, 0
  br i1 %tobool.not.i, label %mvebu_pcie_del_windows.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

mvebu_pcie_del_windows.exit:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %size7, align 4
  %16 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cur, align 4
  br label %if.end14

if.end14:                                         ; preds = %mvebu_pcie_del_windows.exit, %if.end.if.end14_crit_edge
  %size15 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %desired, i32 0, i32 2
  %17 = ptrtoint ptr %size15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp16 = icmp eq i32 %18, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %19 = ptrtoint ptr %desired to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desired, align 4
  %remap21 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %desired, i32 0, i32 1
  %21 = ptrtoint ptr %remap21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %remap21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %23 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %base.addr.i, align 4
  %pcie.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 14
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i.while.cond.i_crit_edge, %if.end18
  %retval.0.i = phi i32 [ undef, %if.end18 ], [ %retval.1.i, %cleanup.i.while.cond.i_crit_edge ]
  %size.addr.0.i = phi i32 [ %18, %if.end18 ], [ %size.addr.1.i, %cleanup.i.while.cond.i_crit_edge ]
  %remap.addr.0.i = phi i32 [ %22, %if.end18 ], [ %remap.addr.2.i, %cleanup.i.while.cond.i_crit_edge ]
  %size_mapped.0.i = phi i32 [ 0, %if.end18 ], [ %size_mapped.1.i, %cleanup.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.i)
  %tobool.not.i46 = icmp eq i32 %size.addr.0.i, 0
  br i1 %tobool.not.i46, label %mvebu_pcie_add_windows.exit.thread, label %while.body.i50

mvebu_pcie_add_windows.exit.thread:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  br label %if.end25

while.body.i50:                                   ; preds = %while.cond.i
  %24 = call i32 @llvm.ctlz.i32(i32 %size.addr.0.i, i1 true) #7, !range !104
  %sub.i47 = xor i32 %24, 31
  %shl.i48 = shl nuw i32 1, %sub.i47
  %25 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base.addr.i, align 4
  %call1.i49 = call i32 @mvebu_mbus_add_window_remap_by_id(i32 noundef %target, i32 noundef %attribute, i32 noundef %26, i32 noundef %shl.i48, i32 noundef %remap.addr.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool2.not.i = icmp eq i32 %call1.i49, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #7
  %27 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base.addr.i, align 4
  %add.i51 = add i32 %shl.i48, -1
  %sub3.i = add i32 %add.i51, %28
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub3.i, ptr %end.i, align 4
  %30 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcie.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef nonnull %base.addr.i, ptr noundef nonnull %end.i, i32 noundef %call1.i49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size_mapped.0.i)
  %tobool.not1.i.i = icmp eq i32 %size_mapped.0.i, 0
  br i1 %tobool.not1.i.i, label %if.then.i.mvebu_pcie_del_windows.exit.i_crit_edge, label %while.body.i.preheader.i

if.then.i.mvebu_pcie_del_windows.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pcie_del_windows.exit.i

while.body.i.preheader.i:                         ; preds = %if.then.i
  %34 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base.addr.i, align 4
  %sub4.i = sub i32 %35, %size_mapped.0.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %base.addr.03.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub4.i, %while.body.i.preheader.i ]
  %size.addr.02.i.i = phi i32 [ %sub2.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %size_mapped.0.i, %while.body.i.preheader.i ]
  %36 = call i32 @llvm.ctlz.i32(i32 %size.addr.02.i.i, i1 true) #7, !range !104
  %sub.i27.i = xor i32 %36, 31
  %shl.i.i = shl nuw i32 1, %sub.i27.i
  %call1.i.i = call i32 @mvebu_mbus_del_window(i32 noundef %base.addr.03.i.i, i32 noundef %shl.i.i) #7
  %add.i.i = add i32 %shl.i.i, %base.addr.03.i.i
  %sub2.i.i = sub i32 %size.addr.02.i.i, %shl.i.i
  %tobool.not.i28.i = icmp eq i32 %sub2.i.i, 0
  br i1 %tobool.not.i28.i, label %while.body.i.i.mvebu_pcie_del_windows.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.mvebu_pcie_del_windows.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pcie_del_windows.exit.i

mvebu_pcie_del_windows.exit.i:                    ; preds = %while.body.i.i.mvebu_pcie_del_windows.exit.i_crit_edge, %if.then.i.mvebu_pcie_del_windows.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #7
  br label %cleanup.i

if.end.i:                                         ; preds = %while.body.i50
  call void @__sanitizer_cov_trace_pc() #9
  %sub5.i = sub i32 %size.addr.0.i, %shl.i48
  %add6.i = add i32 %shl.i48, %size_mapped.0.i
  %37 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base.addr.i, align 4
  %add7.i = add i32 %38, %shl.i48
  store i32 %add7.i, ptr %base.addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %remap.addr.0.i)
  %cmp.not.i = icmp eq i32 %remap.addr.0.i, -1
  %add9.i = add i32 %shl.i48, %remap.addr.0.i
  %spec.select.i = select i1 %cmp.not.i, i32 -1, i32 %add9.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %mvebu_pcie_del_windows.exit.i
  %retval.1.i = phi i32 [ %call1.i49, %mvebu_pcie_del_windows.exit.i ], [ %retval.0.i, %if.end.i ]
  %size.addr.1.i = phi i32 [ %size.addr.0.i, %mvebu_pcie_del_windows.exit.i ], [ %sub5.i, %if.end.i ]
  %remap.addr.2.i = phi i32 [ %remap.addr.0.i, %mvebu_pcie_del_windows.exit.i ], [ %spec.select.i, %if.end.i ]
  %size_mapped.1.i = phi i32 [ %size_mapped.0.i, %mvebu_pcie_del_windows.exit.i ], [ %add6.i, %if.end.i ]
  br i1 %tobool2.not.i, label %cleanup.i.while.cond.i_crit_edge, label %mvebu_pcie_add_windows.exit

cleanup.i.while.cond.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

mvebu_pcie_add_windows.exit:                      ; preds = %cleanup.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool.not, label %mvebu_pcie_add_windows.exit.if.end25_crit_edge, label %if.then22

mvebu_pcie_add_windows.exit.if.end25_crit_edge:   ; preds = %mvebu_pcie_add_windows.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %mvebu_pcie_add_windows.exit
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %size7, align 4
  %40 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cur, align 4
  br label %cleanup

if.end25:                                         ; preds = %mvebu_pcie_add_windows.exit.if.end25_crit_edge, %mvebu_pcie_add_windows.exit.thread
  %41 = call ptr @memcpy(ptr %cur, ptr %desired, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then22, %if.end14.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %if.then22 ], [ 0, %if.end25 ], [ 0, %land.lhs.true4.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_del_window(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_add_window_remap_by_id(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvebu_pcie_disable_wins(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.mvebu_pcie_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %5, i32 6148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i38.1 = getelementptr i8, ptr %11, i32 6152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.1, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i40.1 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.1, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i42.1 = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.1, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %17, i32 6176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %19, i32 6180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %21, i32 6188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i44.1 = getelementptr i8, ptr %23, i32 6192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.1, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i46.1 = getelementptr i8, ptr %25, i32 6196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.1, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i48.1 = getelementptr i8, ptr %27, i32 6204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.1, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i44.2 = getelementptr i8, ptr %29, i32 6208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.2, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i46.2 = getelementptr i8, ptr %31, i32 6212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.2, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i48.2 = getelementptr i8, ptr %33, i32 6220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.2, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i44.3 = getelementptr i8, ptr %35, i32 6224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.3, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i46.3 = getelementptr i8, ptr %37, i32 6228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.3, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i48.3 = getelementptr i8, ptr %39, i32 6236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.3, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i44.4 = getelementptr i8, ptr %41, i32 6240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.4, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i46.4 = getelementptr i8, ptr %43, i32 6244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.4, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i48.4 = getelementptr i8, ptr %45, i32 6252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.4, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %47, i32 6272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %49, i32 6276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %51, i32 6284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #7, !srcloc !103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_rd_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %nports.i = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp49.i = icmp sgt i32 %3, 0
  br i1 %cmp49.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %base.i = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1.i = icmp eq i8 %9, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %land.lhs.true12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %devfn3.i = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i, i32 4
  %10 = ptrtoint ptr %devfn3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %devfn)
  %cmp4.i = icmp eq i32 %11, %devfn
  br i1 %cmp4.i, label %land.lhs.true.i.mvebu_pcie_find_port.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.mvebu_pcie_find_port.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pcie_find_port.exit

land.lhs.true12.i:                                ; preds = %if.end.i
  %bridge.i = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i, i32 12
  %secondary_bus.i = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge.i, i32 0, i32 11
  %12 = ptrtoint ptr %secondary_bus.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %secondary_bus.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %13)
  %cmp16.not.i = icmp ult i8 %9, %13
  br i1 %cmp16.not.i, label %land.lhs.true12.i.for.inc.i_crit_edge, label %land.lhs.true18.i

land.lhs.true12.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %land.lhs.true12.i
  %subordinate_bus.i = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge.i, i32 0, i32 12
  %14 = ptrtoint ptr %subordinate_bus.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %subordinate_bus.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %15)
  %cmp24.not.i = icmp ugt i8 %9, %15
  br i1 %cmp24.not.i, label %land.lhs.true18.i.for.inc.i_crit_edge, label %land.lhs.true18.i.mvebu_pcie_find_port.exit_crit_edge

land.lhs.true18.i.mvebu_pcie_find_port.exit_crit_edge: ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pcie_find_port.exit

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true18.i.for.inc.i_crit_edge, %land.lhs.true12.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mvebu_pcie_find_port.exit:                        ; preds = %land.lhs.true18.i.mvebu_pcie_find_port.exit_crit_edge, %land.lhs.true.i.mvebu_pcie_find_port.exit_crit_edge
  %retval.2.i = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i
  %tobool.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool.not, label %mvebu_pcie_find_port.exit.cleanup_crit_edge, label %if.end

mvebu_pcie_find_port.exit.cleanup_crit_edge:      ; preds = %mvebu_pcie_find_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mvebu_pcie_find_port.exit
  %16 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp eq i8 %17, 0
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bridge = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i, i32 12
  %call3 = tail call i32 @pci_bridge_emul_conf_read(ptr noundef %bridge, i32 noundef %where, i32 noundef %size, ptr noundef %val) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 6660
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i21 = icmp eq i32 %21, 0
  br i1 %tobool.not.i21, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 6396
  %24 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %26 = shl i32 %devfn, 8
  %shl3.i = and i32 %26, 63488
  %or.i = or i32 %shl.i, %shl3.i
  %shl6.i = and i32 %26, 1792
  %or7.i = or i32 %or.i, %shl6.i
  %and8.i = shl i32 %where, 16
  %shl9.i = and i32 %and8.i, 251658240
  %and10.i = and i32 %where, 252
  %or11.i = or i32 %and10.i, %shl9.i
  %or12.i = or i32 %or7.i, %or11.i
  %or13.i = or i32 %or12.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #7
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %29, i32 6392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 %27) #7, !srcloc !103
  %30 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %size, label %if.end7.mvebu_pcie_hw_rd_conf.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb17.i
    i32 4, label %sw.bb24.i
  ]

if.end7.mvebu_pcie_hw_rd_conf.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pcie_hw_rd_conf.exit

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %and14.i = and i32 %where, 3
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %and14.i
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15.i) #7, !srcloc !105
  %conv16.i = zext i8 %31 to i32
  br label %mvebu_pcie_hw_rd_conf.exit

sw.bb17.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %and19.i = and i32 %where, 2
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i, i32 %and19.i
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20.i) #7, !srcloc !106
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #7
  %conv23.i = zext i16 %33 to i32
  br label %mvebu_pcie_hw_rd_conf.exit

sw.bb24.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !100
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  br label %mvebu_pcie_hw_rd_conf.exit

mvebu_pcie_hw_rd_conf.exit:                       ; preds = %sw.bb24.i, %sw.bb17.i, %sw.bb.i, %if.end7.mvebu_pcie_hw_rd_conf.exit_crit_edge
  %conv16.sink.i = phi i32 [ %conv16.i, %sw.bb.i ], [ %conv23.i, %sw.bb17.i ], [ %35, %sw.bb24.i ], [ -1, %if.end7.mvebu_pcie_hw_rd_conf.exit_crit_edge ]
  %retval.0.i = phi i32 [ 0, %sw.bb.i ], [ 0, %sw.bb17.i ], [ 0, %sw.bb24.i ], [ 135, %if.end7.mvebu_pcie_hw_rd_conf.exit_crit_edge ]
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv16.sink.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %mvebu_pcie_hw_rd_conf.exit, %if.end4.cleanup_crit_edge, %if.then2, %mvebu_pcie_find_port.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ %retval.0.i, %mvebu_pcie_hw_rd_conf.exit ], [ 134, %mvebu_pcie_find_port.exit.cleanup_crit_edge ], [ 134, %if.end4.cleanup_crit_edge ], [ 134, %entry.cleanup_crit_edge ], [ 134, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_wr_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %nports.i = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp49.i = icmp sgt i32 %3, 0
  br i1 %cmp49.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %base.i = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1.i = icmp eq i8 %9, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %land.lhs.true12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %devfn3.i = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i, i32 4
  %10 = ptrtoint ptr %devfn3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %devfn)
  %cmp4.i = icmp eq i32 %11, %devfn
  br i1 %cmp4.i, label %land.lhs.true.i.mvebu_pcie_find_port.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.mvebu_pcie_find_port.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pcie_find_port.exit

land.lhs.true12.i:                                ; preds = %if.end.i
  %bridge.i = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i, i32 12
  %secondary_bus.i = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge.i, i32 0, i32 11
  %12 = ptrtoint ptr %secondary_bus.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %secondary_bus.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %13)
  %cmp16.not.i = icmp ult i8 %9, %13
  br i1 %cmp16.not.i, label %land.lhs.true12.i.for.inc.i_crit_edge, label %land.lhs.true18.i

land.lhs.true12.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %land.lhs.true12.i
  %subordinate_bus.i = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge.i, i32 0, i32 12
  %14 = ptrtoint ptr %subordinate_bus.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %subordinate_bus.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %15)
  %cmp24.not.i = icmp ugt i8 %9, %15
  br i1 %cmp24.not.i, label %land.lhs.true18.i.for.inc.i_crit_edge, label %land.lhs.true18.i.mvebu_pcie_find_port.exit_crit_edge

land.lhs.true18.i.mvebu_pcie_find_port.exit_crit_edge: ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_pcie_find_port.exit

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true18.i.for.inc.i_crit_edge, %land.lhs.true12.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mvebu_pcie_find_port.exit:                        ; preds = %land.lhs.true18.i.mvebu_pcie_find_port.exit_crit_edge, %land.lhs.true.i.mvebu_pcie_find_port.exit_crit_edge
  %retval.2.i = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i
  %tobool.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool.not, label %mvebu_pcie_find_port.exit.cleanup_crit_edge, label %if.end

mvebu_pcie_find_port.exit.cleanup_crit_edge:      ; preds = %mvebu_pcie_find_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mvebu_pcie_find_port.exit
  %16 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp eq i8 %17, 0
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bridge = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.050.i, i32 12
  %call3 = tail call i32 @pci_bridge_emul_conf_write(ptr noundef %bridge, i32 noundef %where, i32 noundef %size, i32 noundef %val) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 6660
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i21 = icmp eq i32 %21, 0
  br i1 %tobool.not.i21, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 6396
  %24 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %26 = shl i32 %devfn, 8
  %shl3.i = and i32 %26, 63488
  %or.i = or i32 %shl.i, %shl3.i
  %shl6.i = and i32 %26, 1792
  %or7.i = or i32 %or.i, %shl6.i
  %and8.i = shl i32 %where, 16
  %shl9.i = and i32 %and8.i, 251658240
  %and10.i = and i32 %where, 252
  %or11.i = or i32 %and10.i, %shl9.i
  %or12.i = or i32 %or7.i, %or11.i
  %or13.i = or i32 %or12.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #7
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %29, i32 6392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 %27) #7, !srcloc !103
  %30 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %size, label %if.end7.cleanup_crit_edge [
    i32 1, label %do.body.i
    i32 2, label %do.body18.i
    i32 4, label %do.body25.i
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %conv14.i = trunc i32 %val to i8
  %and15.i = and i32 %where, 3
  %add.ptr16.i = getelementptr i8, ptr %add.ptr.i, i32 %and15.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i, i8 %conv14.i) #7, !srcloc !108
  br label %cleanup

do.body18.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %conv21.i = trunc i32 %val to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv21.i) #7
  %and22.i = and i32 %where, 2
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i, i32 %and22.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.i, i16 %31) #7, !srcloc !110
  br label %cleanup

do.body25.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #7, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %do.body25.i, %do.body18.i, %do.body.i, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then2, %mvebu_pcie_find_port.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 134, %mvebu_pcie_find_port.exit.cleanup_crit_edge ], [ 134, %if.end4.cleanup_crit_edge ], [ 135, %if.end7.cleanup_crit_edge ], [ 0, %do.body25.i ], [ 0, %do.body18.i ], [ 0, %do.body.i ], [ 134, %entry.cleanup_crit_edge ], [ 134, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_emul_conf_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_emul_conf_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_and_map_pci(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nports = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9 = icmp sgt i32 %3, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %base = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.010, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 6660
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !100
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %saved_pcie_stat = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.010, i32 17
  %12 = ptrtoint ptr %saved_pcie_stat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %saved_pcie_stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %13 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nports, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nports = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9 = icmp sgt i32 %3, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.mvebu_pcie, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %base = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.010, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.010
  %saved_pcie_stat = getelementptr %struct.mvebu_pcie_port, ptr %5, i32 %i.010, i32 17
  %8 = ptrtoint ptr %saved_pcie_stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saved_pcie_stat, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 6660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !103
  tail call fastcc void @mvebu_pcie_setup_hw(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %13 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nports, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_pci_mvebu__242_1413_mvebu_pcie_driver_init6, !1, !"__initcall__kmod_pci_mvebu__242_1413_mvebu_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1413, i32 1}
!2 = !{ptr @__exitcall_mvebu_pcie_driver_exit, !1, !"__exitcall_mvebu_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1415, i32 1}
!5 = !{ptr @__UNIQUE_ID_author244, !6, !"__UNIQUE_ID_author244", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1416, i32 1}
!7 = !{ptr @__UNIQUE_ID_description245, !8, !"__UNIQUE_ID_description245", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1417, i32 1}
!9 = !{ptr @__UNIQUE_ID_file246, !10, !"__UNIQUE_ID_file246", i1 false, i1 false}
!10 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1418, i32 1}
!11 = !{ptr @__UNIQUE_ID_license247, !10, !"__UNIQUE_ID_license247", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1406, i32 11}
!14 = !{ptr @mvebu_pcie_driver, !15, !"mvebu_pcie_driver", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1404, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1240, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mvebu_pcie_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mvebu_pcie_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1248, i32 4}
!26 = !{ptr @mvebu_pcie_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mvebu_pcie_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1149, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mvebu_pcie_parse_request_resources._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mvebu_pcie_parse_request_resources._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1153, i32 19}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1168, i32 23}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 992, i32 34}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 993, i32 3}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mvebu_pcie_parse_port._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @mvebu_pcie_parse_port._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 998, i32 34}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1001, i32 47}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1012, i32 3}
!51 = !{ptr @mvebu_pcie_parse_port._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mvebu_pcie_parse_port._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1020, i32 3}
!55 = !{ptr @mvebu_pcie_parse_port._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mvebu_pcie_parse_port._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1033, i32 46}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1042, i32 54}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1050, i32 4}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mvebu_pcie_parse_port._entry.27, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mvebu_pcie_parse_port._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1071, i32 3}
!68 = !{ptr @mvebu_pcie_parse_port._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mvebu_pcie_parse_port._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 910, i32 30}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1112, i32 34}
!74 = !{ptr @mvebu_pci_bridge_emul_ops, !75, !"mvebu_pci_bridge_emul_ops", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 712, i32 35}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 442, i32 3}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 374, i32 4}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mvebu_pcie_add_windows._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mvebu_pcie_add_windows._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @mvebu_pcie_ops, !84, !"mvebu_pcie_ops", i1 false, i1 false}
!84 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 835, i32 23}
!85 = !{ptr @mvebu_pcie_of_match_table, !86, !"mvebu_pcie_of_match_table", i1 false, i1 false}
!86 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1392, i32 34}
!87 = !{ptr @mvebu_pcie_pm_ops, !88, !"mvebu_pcie_pm_ops", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/pci-mvebu.c", i32 1400, i32 32}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{!"auto-init"}
!100 = !{i64 5017518}
!101 = !{i64 2154838411}
!102 = !{i64 2154837586}
!103 = !{i64 5017100}
!104 = !{i32 0, i32 33}
!105 = !{i64 5017298}
!106 = !{i64 5016680}
!107 = !{i64 2154841224}
!108 = !{i64 5016903}
!109 = !{i64 2154841503}
!110 = !{i64 5016480}
!111 = !{i64 2154841890}
