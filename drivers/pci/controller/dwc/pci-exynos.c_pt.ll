; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pci-exynos.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pci-exynos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.exynos_pcie = type { %struct.dw_pcie, ptr, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_pci_exynos__293_442_exynos_pcie_driver_init6 = internal global ptr @exynos_pcie_driver_init, section ".initcall6.init", align 4
@exynos_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_pcie_driver_exit = internal global ptr @exynos_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file294 = internal constant [54 x i8] c"pci_exynos.file=drivers/pci/controller/dwc/pci-exynos\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"pci_exynos.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos-pcie\00", [20 x i8] zeroinitializer }, align 32
@exynos_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@exynos_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_pcie_suspend_noirq, ptr @exynos_pcie_resume_noirq, ptr @exynos_pcie_suspend_noirq, ptr @exynos_pcie_resume_noirq, ptr @exynos_pcie_suspend_noirq, ptr @exynos_pcie_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr @exynos_pcie_read_dbi, ptr @exynos_pcie_write_dbi, ptr null, ptr @exynos_pcie_link_up, ptr @exynos_pcie_start_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"elbi\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@exynos_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 338, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get pcie rc clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_pcie_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pci/controller/dwc/pci-exynos.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_pcie_probe._entry_ptr = internal global ptr @exynos_pcie_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_bus\00", [23 x i8] zeroinitializer }, align 32
@exynos_pcie_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 344, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get pcie bus clock\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_pcie_probe._entry_ptr.11 = internal global ptr @exynos_pcie_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd18\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd10\00", [26 x i8] zeroinitializer }, align 32
@exynos_pcie_init_clk_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 70, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot enable pcie rc clock\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"exynos_pcie_init_clk_resources\00", [33 x i8] zeroinitializer }, align 32
@exynos_pcie_init_clk_resources._entry_ptr = internal global ptr @exynos_pcie_init_clk_resources._entry, section ".printk_index", align 4
@exynos_pcie_init_clk_resources._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.5, i32 76, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot enable pcie bus clock\00", [35 x i8] zeroinitializer }, align 32
@exynos_pcie_init_clk_resources._entry_ptr.18 = internal global ptr @exynos_pcie_init_clk_resources._entry.16, section ".printk_index", align 4
@exynos_add_pcie_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 290, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exynos_add_pcie_port\00", [43 x i8] zeroinitializer }, align 32
@exynos_add_pcie_port._entry_ptr = internal global ptr @exynos_add_pcie_port._entry, section ".printk_index", align 4
@exynos_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @exynos_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@exynos_add_pcie_port._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.5, i32 299, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize host\0A\00", [37 x i8] zeroinitializer }, align 32
@exynos_add_pcie_port._entry_ptr.23 = internal global ptr @exynos_add_pcie_port._entry.21, section ".printk_index", align 4
@exynos_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @exynos_pcie_rd_own_conf, ptr @exynos_pcie_wr_own_conf }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"exynos_pcie_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 433, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 437, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"exynos_pcie_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 428, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"exynos_pcie_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 423, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 306, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 332, i32 62 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 336, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 338, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 342, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 344, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 348, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 349, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 70, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 76, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 290, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"exynos_pcie_host_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 271, i32 38 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 299, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"exynos_pci_ops\00", align 1
@___asan_gen_.112 = private constant [43 x i8] c"../drivers/pci/controller/dwc/pci-exynos.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 239, i32 23 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_exynos_pcie_driver_exit, ptr @__initcall__kmod_pci_exynos__293_442_exynos_pcie_driver_init6, ptr @exynos_add_pcie_port._entry, ptr @exynos_add_pcie_port._entry.21, ptr @exynos_add_pcie_port._entry_ptr, ptr @exynos_add_pcie_port._entry_ptr.23, ptr @exynos_pcie_driver_exit, ptr @exynos_pcie_init_clk_resources._entry, ptr @exynos_pcie_init_clk_resources._entry.16, ptr @exynos_pcie_init_clk_resources._entry_ptr, ptr @exynos_pcie_init_clk_resources._entry_ptr.18, ptr @exynos_pcie_probe._entry, ptr @exynos_pcie_probe._entry.9, ptr @exynos_pcie_probe._entry_ptr, ptr @exynos_pcie_probe._entry_ptr.11, ptr @exynos_pcie_remove, ptr @exynos_pcie_driver, ptr @.str, ptr @exynos_pcie_of_match, ptr @exynos_pcie_pm_ops, ptr @dw_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @exynos_pcie_host_ops, ptr @.str.22, ptr @exynos_pci_ops], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pcie_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pcie_init_clk_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pcie_init_clk_resources._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_add_pcie_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_add_pcie_port._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7
  tail call void @dw_pcie_host_deinit(ptr noundef %pp) #5
  tail call fastcc void @exynos_pcie_assert_core_reset(ptr noundef %1)
  %phy = getelementptr inbounds %struct.exynos_pcie, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %call1 = tail call i32 @phy_power_off(ptr noundef %3) #5
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %5) #5
  tail call fastcc void @exynos_pcie_deinit_clk_resources(ptr noundef %1)
  %supplies = getelementptr inbounds %struct.exynos_pcie, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_host_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_pcie_assert_core_reset(ptr nocapture noundef readonly %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %elbi_base = getelementptr inbounds %struct.exynos_pcie, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %elbi_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elbi_base, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %elbi_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elbi_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i8 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %3) #5, !srcloc !72
  %6 = ptrtoint ptr %elbi_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elbi_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i9 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #5, !srcloc !72
  %8 = ptrtoint ptr %elbi_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elbi_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #5, !srcloc !72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_pcie_deinit_clk_resources(ptr nocapture noundef readonly %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_clk = getelementptr inbounds %struct.exynos_pcie, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_clk, align 8
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.exynos_pcie, ptr %ep, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_pcie_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_pcie_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 360, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %call4 = tail call ptr @devm_of_phy_get(ptr noundef %dev1, ptr noundef %1, ptr noundef null) #5
  %phy = getelementptr inbounds %struct.exynos_pcie, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  %elbi_base = getelementptr inbounds %struct.exynos_pcie, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %elbi_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %elbi_base, align 8
  %cmp.i106 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %clk = getelementptr inbounds %struct.exynos_pcie, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18, ptr %clk, align 4
  %cmp.i107 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #5
  %bus_clk = getelementptr inbounds %struct.exynos_pcie, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call25, ptr %bus_clk, align 8
  %cmp.i108 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %13 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_clk, align 8
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %supplies = getelementptr inbounds %struct.exynos_pcie, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.12, ptr %supplies, align 8
  %arrayidx36 = getelementptr %struct.exynos_pcie, ptr %call.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.13, ptr %arrayidx36, align 4
  %call39 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end42.do.end.i_crit_edge

if.end42.do.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end42
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end42.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end42.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  %22 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_clk, align 8
  %call.i18.i = tail call i32 @clk_prepare(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool.not.i19.i, label %if.end.i22.i, label %if.end.i.do.end7.i_crit_edge

if.end.i.do.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

if.end.i22.i:                                     ; preds = %if.end.i
  %call1.i20.i = tail call i32 @clk_enable(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i)
  %tobool2.not.i21.i = icmp eq i32 %call1.i20.i, 0
  br i1 %tobool2.not.i21.i, label %if.end46, label %if.then3.i23.i

if.then3.i23.i:                                   ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %23) #5
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then3.i23.i, %if.end.i.do.end7.i_crit_edge
  %retval.0.i24.ph.i = phi i32 [ %call1.i20.i, %if.then3.i23.i ], [ %call.i18.i, %if.end.i.do.end7.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.17) #8
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %25) #5
  tail call void @clk_unprepare(ptr noundef %25) #5
  br label %cleanup

if.end46:                                         ; preds = %if.end.i22.i
  %call49 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call53 = tail call fastcc i32 @exynos_add_pcie_port(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp = icmp slt i32 %call53, 0
  br i1 %cmp, label %fail_probe, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail_probe:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 4
  %call57 = tail call i32 @phy_exit(ptr noundef %28) #5
  tail call fastcc void @exynos_pcie_deinit_clk_resources(ptr noundef nonnull %call.i)
  %call60 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_probe, %if.end52.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end7.i, %do.end.i, %if.end34.cleanup_crit_edge, %do.end31, %do.end, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then7 ], [ %7, %if.then14 ], [ %11, %do.end ], [ %15, %do.end31 ], [ %call53, %fail_probe ], [ -12, %entry.cleanup_crit_edge ], [ %call39, %if.end34.cleanup_crit_edge ], [ %call49, %if.end46.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ %retval.0.i24.ph.i, %do.end7.i ], [ %retval.0.i.ph.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_add_pcie_port(ptr noundef %ep, ptr noundef %pdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pp2 = getelementptr inbounds %struct.dw_pcie, ptr %ep, i32 0, i32 7
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.dw_pcie, ptr %ep, i32 0, i32 7, i32 7
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev3, i32 noundef %call, ptr noundef nonnull @exynos_pcie_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %ep) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %ep, i32 0, i32 7, i32 8
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @exynos_pcie_host_ops, ptr %ops, align 8
  %msi_irq = getelementptr inbounds %struct.dw_pcie, ptr %ep, i32 0, i32 7, i32 9
  %2 = ptrtoint ptr %msi_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -19, ptr %msi_irq, align 4
  %call10 = tail call i32 @dw_pcie_host_init(ptr noundef %pp2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.19, %if.end.cleanup.sink.split_crit_edge ], [ @.str.22, %if.end9.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.end.cleanup.sink.split_crit_edge ], [ %call10, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull %.str.22.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_read_dbi(ptr nocapture noundef readonly %pci, ptr noundef %base, i32 noundef %reg, i32 noundef %size) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !73
  %elbi_base.i = getelementptr inbounds %struct.exynos_pcie, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elbi_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 288
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %8 = or i32 %7, 8192
  %9 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i5.i = getelementptr i8, ptr %10, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %8) #5, !srcloc !72
  %add.ptr = getelementptr i8, ptr %base, i32 %reg
  %call1 = call i32 @dw_pcie_read(ptr noundef %add.ptr, i32 noundef %size, ptr noundef nonnull %val) #5
  %11 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %elbi_base.i, align 8
  %add.ptr.i.i4 = getelementptr i8, ptr %12, i32 288
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4) #5, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %14 = and i32 %13, -8193
  %15 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %elbi_base.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  call void @arm_heavy_mb() #5
  %add.ptr.i5.i5 = getelementptr i8, ptr %16, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i5, i32 %14) #5, !srcloc !72
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_pcie_write_dbi(ptr nocapture noundef readonly %pci, ptr noundef %base, i32 noundef %reg, i32 noundef %size, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %elbi_base.i = getelementptr inbounds %struct.exynos_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elbi_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 284
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %7 = or i32 %6, 8192
  %8 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i5.i = getelementptr i8, ptr %9, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %7) #5, !srcloc !72
  %add.ptr = getelementptr i8, ptr %base, i32 %reg
  %call1 = tail call i32 @dw_pcie_write(ptr noundef %add.ptr, i32 noundef %size, i32 noundef %val) #5
  %10 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %elbi_base.i, align 8
  %add.ptr.i.i4 = getelementptr i8, ptr %11, i32 284
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %13 = and i32 %12, -8193
  %14 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i5.i5 = getelementptr i8, ptr %15, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i5, i32 %13) #5, !srcloc !72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_link_up(ptr nocapture noundef readonly %pci) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %elbi_base = getelementptr inbounds %struct.exynos_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elbi_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elbi_base, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 116
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !69
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %and = and i32 %7, 16
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_start_link(ptr nocapture noundef readonly %pci) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %elbi_base = getelementptr inbounds %struct.exynos_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elbi_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elbi_base, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %7 = and i32 %6, -33554433
  %8 = ptrtoint ptr %elbi_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elbi_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i7 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %7) #5, !srcloc !72
  %10 = ptrtoint ptr %elbi_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %elbi_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i8 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 16777216) #5, !srcloc !72
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %elbi_base.i = getelementptr inbounds %struct.exynos_pcie, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elbi_base.i, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %3 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #5, !srcloc !72
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_host_init(ptr nocapture noundef readonly %pp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %bridge = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 17
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 8
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @exynos_pci_ops, ptr %ops, align 4
  %elbi_base.i = getelementptr inbounds %struct.exynos_pcie, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %elbi_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %10 = and i32 %9, -16777217
  %11 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i8.i = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %10) #5, !srcloc !72
  %13 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i9.i = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #5, !srcloc !72
  %15 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i10.i = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 0) #5, !srcloc !72
  %phy = getelementptr inbounds %struct.exynos_pcie, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 4
  %call1 = tail call i32 @phy_reset(ptr noundef %18) #5
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_power_on(ptr noundef %20) #5
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy, align 4
  %call5 = tail call i32 @phy_init(ptr noundef %22) #5
  %23 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %elbi_base.i, align 8
  %add.ptr.i.i13 = getelementptr i8, ptr %24, i32 28
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %26 = or i32 %25, 16777216
  %27 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i12.i = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %26) #5, !srcloc !72
  %29 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i13.i = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 16777216) #5, !srcloc !72
  %31 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i14.i = getelementptr i8, ptr %32, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 16777216) #5, !srcloc !72
  %33 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i15.i = getelementptr i8, ptr %34, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 16777216) #5, !srcloc !72
  %35 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i16.i = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #5, !srcloc !72
  %37 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i15 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 1426063360) #5, !srcloc !72
  %39 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i5.i = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #5, !srcloc !72
  %41 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i6.i = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #5, !srcloc !72
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_rd_own_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %1 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -32
  %call = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef %where, i32 noundef %size) #5
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 134, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_wr_own_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %1 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -32
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %where, i32 noundef %size, i32 noundef %val) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 134, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_suspend_noirq(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %elbi_base.i = getelementptr inbounds %struct.exynos_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elbi_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i8.i = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %5) #5, !srcloc !72
  %8 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i9.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #5, !srcloc !72
  %10 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i10.i = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 0) #5, !srcloc !72
  %phy = getelementptr inbounds %struct.exynos_pcie, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %call1 = tail call i32 @phy_power_off(ptr noundef %13) #5
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %15) #5
  %supplies = getelementptr inbounds %struct.exynos_pcie, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pcie_resume_noirq(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplies = getelementptr inbounds %struct.exynos_pcie, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pp2 = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7
  %call4 = tail call i32 @exynos_pcie_host_init(ptr noundef %pp2)
  tail call void @dw_pcie_setup_rc(ptr noundef %pp2) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %elbi_base.i = getelementptr inbounds %struct.exynos_pcie, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elbi_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %9 = and i32 %8, -33554433
  %10 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %9) #5, !srcloc !72
  %12 = ptrtoint ptr %elbi_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %elbi_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 16777216) #5, !srcloc !72
  %call6 = tail call i32 @dw_pcie_wait_for_link(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_setup_rc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_wait_for_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_pci_exynos__293_442_exynos_pcie_driver_init6, !1, !"__initcall__kmod_pci_exynos__293_442_exynos_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 442, i32 1}
!2 = !{ptr @__exitcall_exynos_pcie_driver_exit, !1, !"__exitcall_exynos_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file294, !4, !"__UNIQUE_ID_file294", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 443, i32 1}
!5 = !{ptr @__UNIQUE_ID_license295, !4, !"__UNIQUE_ID_license295", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 437, i32 11}
!8 = !{ptr @exynos_pcie_driver, !9, !"exynos_pcie_driver", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 433, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 332, i32 62}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 336, i32 30}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 338, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @exynos_pcie_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @exynos_pcie_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 342, i32 34}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 344, i32 3}
!26 = !{ptr @exynos_pcie_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @exynos_pcie_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 348, i32 27}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 349, i32 27}
!32 = !{ptr @dw_pcie_ops, !33, !"dw_pcie_ops", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 306, i32 33}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 70, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @exynos_pcie_init_clk_resources._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @exynos_pcie_init_clk_resources._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 76, i32 3}
!41 = !{ptr @exynos_pcie_init_clk_resources._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @exynos_pcie_init_clk_resources._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 290, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @exynos_add_pcie_port._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @exynos_add_pcie_port._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 299, i32 3}
!50 = !{ptr @exynos_add_pcie_port._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @exynos_add_pcie_port._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @exynos_pcie_host_ops, !53, !"exynos_pcie_host_ops", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 271, i32 38}
!54 = !{ptr @exynos_pci_ops, !55, !"exynos_pci_ops", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 239, i32 23}
!56 = !{ptr @exynos_pcie_of_match, !57, !"exynos_pcie_of_match", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 428, i32 34}
!58 = !{ptr @exynos_pcie_pm_ops, !59, !"exynos_pcie_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pci-exynos.c", i32 423, i32 32}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 4246833}
!70 = !{i64 2155572499}
!71 = !{i64 2155571873}
!72 = !{i64 4246415}
!73 = !{!"auto-init"}
