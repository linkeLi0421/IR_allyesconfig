; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-uniphier.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-uniphier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.uniphier_pcie = type { %struct.dw_pcie, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pcie_uniphier__302_409_uniphier_pcie_driver_init6 = internal global ptr @uniphier_pcie_driver_init, section ".initcall6.init", align 4
@uniphier_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uniphier-pcie\00", [18 x i8] zeroinitializer }, align 32
@uniphier_pcie_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @uniphier_pcie_link_up, ptr @uniphier_pcie_start_link, ptr @uniphier_pcie_stop_link }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-phy\00", [23 x i8] zeroinitializer }, align 32
@uniphier_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @uniphier_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/pci/controller/dwc/pcie-uniphier.c\00", [53 x i8] zeroinitializer }, align 32
@uniphier_pcie_wait_rc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 131, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to initialize controller in RC mode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uniphier_pcie_wait_rc\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_pcie_wait_rc._entry_ptr = internal global ptr @uniphier_pcie_wait_rc._entry, section ".printk_index", align 4
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"legacy-interrupt-controller\00", [36 x i8] zeroinitializer }, align 32
@uniphier_pcie_config_legacy_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 271, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to get legacy-interrupt-controller node\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"uniphier_pcie_config_legacy_irq\00", [32 x i8] zeroinitializer }, align 32
@uniphier_pcie_config_legacy_irq._entry_ptr = internal global ptr @uniphier_pcie_config_legacy_irq._entry, section ".printk_index", align 4
@uniphier_pcie_config_legacy_irq._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 277, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to get an IRQ entry in legacy-interrupt-controller\0A\00", [37 x i8] zeroinitializer }, align 32
@uniphier_pcie_config_legacy_irq._entry_ptr.13 = internal global ptr @uniphier_pcie_config_legacy_irq._entry.11, section ".printk_index", align 4
@uniphier_intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @uniphier_pcie_intx_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@uniphier_pcie_config_legacy_irq._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 285, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get INTx domain\0A\00", [37 x i8] zeroinitializer }, align 32
@uniphier_pcie_config_legacy_irq._entry_ptr.16 = internal global ptr @uniphier_pcie_config_legacy_irq._entry.14, section ".printk_index", align 4
@uniphier_pcie_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_pcie_irq_mask, ptr null, ptr @uniphier_pcie_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_uniphier\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uniphier_pcie_irq_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Link Bandwidth Management Event\0A\00", [63 x i8] zeroinitializer }, align 32
@uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Link Autonomous Bandwidth Event\0A\00", [63 x i8] zeroinitializer }, align 32
@uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.22, i8 0, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Root Error\0A\00", [20 x i8] zeroinitializer }, align 32
@uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.23, i8 0, i8 61, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PME Interrupt\0A\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"uniphier_pcie_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 402, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 405, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"uniphier_pcie_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 397, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 351, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 370, i32 59 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 382, i32 41 }
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"uniphier_pcie_host_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 313, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 127, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 130, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 269, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 271, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 277, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"uniphier_intx_domain_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 222, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 285, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"uniphier_pcie_irq_chip\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 206, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 207, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 239, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 241, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 243, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [46 x i8] c"../drivers/pci/controller/dwc/pcie-uniphier.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 245, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__initcall__kmod_pcie_uniphier__302_409_uniphier_pcie_driver_init6, ptr @uniphier_pcie_config_legacy_irq._entry, ptr @uniphier_pcie_config_legacy_irq._entry.11, ptr @uniphier_pcie_config_legacy_irq._entry.14, ptr @uniphier_pcie_config_legacy_irq._entry_ptr, ptr @uniphier_pcie_config_legacy_irq._entry_ptr.13, ptr @uniphier_pcie_config_legacy_irq._entry_ptr.16, ptr @uniphier_pcie_wait_rc._entry, ptr @uniphier_pcie_wait_rc._entry_ptr, ptr @uniphier_pcie_driver, ptr @.str, ptr @uniphier_pcie_match, ptr @dw_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @uniphier_pcie_host_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @uniphier_intx_domain_ops, ptr @.str.15, ptr @uniphier_pcie_irq_chip, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_wait_rc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_config_legacy_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_config_legacy_irq._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_config_legacy_irq._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pcie_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_pcie_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 344, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %call4 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #6
  %base = getelementptr inbounds %struct.uniphier_pcie, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.uniphier_pcie, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %clk, align 4
  %cmp.i68 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call.i69 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %rst = getelementptr inbounds %struct.uniphier_pcie, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i69, ptr %rst, align 8
  %cmp.i70 = icmp ugt ptr %call.i69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call.i69 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call25 = tail call ptr @devm_phy_optional_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %phy = getelementptr inbounds %struct.uniphier_pcie, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %phy, align 4
  %cmp.i71 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end31
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %13 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rst, align 8
  %call1.i = tail call i32 @reset_control_deassert(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.out_clk_disable.i_crit_edge

if.end.i.out_clk_disable.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_disable.i

if.end4.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 32768
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %18 = and i32 %17, -16842753
  %19 = or i32 %18, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %21, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %19) #6, !srcloc !72
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %23, i32 32888
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %25 = or i32 %24, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr16.i.i = getelementptr i8, ptr %27, i32 32888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %25) #6, !srcloc !72
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 8
  %add.ptr20.i.i = getelementptr i8, ptr %29, i32 44
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %31 = and i32 %30, -421068801
  %32 = or i32 %31, 1638400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 8
  %add.ptr30.i.i = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %32) #6, !srcloc !72
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 32776
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %38 = and i32 %37, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 8
  %add.ptr3.i.i.i = getelementptr i8, ptr %40, i32 32776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %38) #6, !srcloc !72
  tail call void @usleep_range_state(i32 noundef 100000, i32 noundef 200000, i32 noundef 2) #6
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %42, i32 44
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %44 = or i32 %43, 16842752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 8
  %add.ptr43.i.i = getelementptr i8, ptr %46, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i.i, i32 %44) #6, !srcloc !72
  %47 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy, align 4
  %call5.i = tail call i32 @phy_init(ptr noundef %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.out_rst_assert.i_crit_edge

if.end4.i.out_rst_assert.i_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rst_assert.i

if.end8.i:                                        ; preds = %if.end4.i
  %call.i30.i = tail call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call.i30.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 128) #6
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 8
  %add.ptr48.i.i = getelementptr i8, ptr %50, i32 68
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i.i) #6, !srcloc !69
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %and49.i.i = and i32 %52, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i)
  %tobool.not50.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool.not50.i.i, label %if.end8.i.land.lhs.true.i.i_crit_edge, label %if.end8.i.for.end.i.i_crit_edge

if.end8.i.for.end.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end8.i.land.lhs.true.i.i_crit_edge:            ; preds = %if.end8.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then26.i.i.land.lhs.true.i.i_crit_edge, %if.end8.i.land.lhs.true.i.i_crit_edge
  %call13.i.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call13.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then16.i.i, label %if.then26.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 8
  %add.ptr20.i32.i = getelementptr i8, ptr %54, i32 68
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i32.i) #6, !srcloc !69
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  br label %for.end.i.i

if.then26.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 25001, i32 noundef 100000, i32 noundef 2) #6
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 8
  %add.ptr.i33.i = getelementptr i8, ptr %58, i32 68
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #6, !srcloc !69
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %and.i.i = and i32 %60, 32768
  %tobool.not.i34.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i34.i, label %if.then26.i.i.land.lhs.true.i.i_crit_edge, label %if.then26.i.i.for.end.i.i_crit_edge

if.then26.i.i.for.end.i.i_crit_edge:              ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.then26.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %if.then26.i.i.for.end.i.i_crit_edge, %if.then16.i.i, %if.end8.i.for.end.i.i_crit_edge
  %status.0.i.i = phi i32 [ %56, %if.then16.i.i ], [ %52, %if.end8.i.for.end.i.i_crit_edge ], [ %60, %if.then26.i.i.for.end.i.i_crit_edge ]
  %and29.i.i = and i32 %status.0.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %out_phy_exit.i, label %if.end35

out_phy_exit.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.4) #9
  %63 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy, align 4
  %call14.i = tail call i32 @phy_exit(ptr noundef %64) #6
  br label %out_rst_assert.i

out_rst_assert.i:                                 ; preds = %out_phy_exit.i, %if.end4.i.out_rst_assert.i_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %if.end4.i.out_rst_assert.i_crit_edge ], [ -110, %out_phy_exit.i ]
  %65 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rst, align 8
  %call16.i = tail call i32 @reset_control_assert(ptr noundef %66) #6
  br label %out_clk_disable.i

out_clk_disable.i:                                ; preds = %out_rst_assert.i, %if.end.i.out_clk_disable.i_crit_edge
  %ret.1.i = phi i32 [ %call1.i, %if.end.i.out_clk_disable.i_crit_edge ], [ %ret.0.i, %out_rst_assert.i ]
  %67 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %68) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %out_clk_disable.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %68, %out_clk_disable.i ], [ %12, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %ret.1.i, %out_clk_disable.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #6
  br label %cleanup

if.end35:                                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7
  %ops37 = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7, i32 8
  %69 = ptrtoint ptr %ops37 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @uniphier_pcie_host_ops, ptr %ops37, align 8
  %call40 = tail call i32 @dw_pcie_host_init(ptr noundef %pp) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %cleanup.sink.split.i, %if.end31.cleanup_crit_edge, %if.then28, %if.then21, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %5, %if.then14 ], [ %7, %if.then21 ], [ %9, %if.then28 ], [ %call40, %if.end35 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_link_up(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.uniphier_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 33088
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %7 = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %7)
  %cmp = icmp eq i32 %7, 50331648
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_start_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.uniphier_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 32776
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %9, i32 32776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #6, !srcloc !72
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pcie_stop_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.uniphier_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 32776
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %9, i32 32776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #6, !srcloc !72
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_host_init(ptr noundef %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.8) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %uniphier_pcie_config_legacy_irq.exit.thread, label %if.end.i

uniphier_pcie_config_legacy_irq.exit.thread:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call4.i = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %call2.i, i32 noundef 0) #6
  %irq.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 7
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool6.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool6.not.i, label %if.end.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge, label %if.end12.i

if.end.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_pcie_config_legacy_irq.exit.thread9

if.end12.i:                                       ; preds = %if.end.i
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call2.i, i32 0, i32 3
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @uniphier_intx_domain_ops, ptr noundef %pp) #6
  %legacy_irq_domain.i = getelementptr inbounds %struct.uniphier_pcie, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %legacy_irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i.i, ptr %legacy_irq_domain.i, align 8
  %tobool15.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool15.not.i, label %if.end12.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge, label %if.end

if.end12.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_pcie_config_legacy_irq.exit.thread9

uniphier_pcie_config_legacy_irq.exit.thread9:     ; preds = %if.end12.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge, %if.end.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge
  %.str.15.sink = phi ptr [ @.str.12, %if.end.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge ], [ @.str.15, %if.end12.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge ]
  %ret.0.i.ph = phi i32 [ -22, %if.end.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge ], [ -19, %if.end12.i.uniphier_pcie_config_legacy_irq.exit.thread9_crit_edge ]
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull %.str.15.sink) #9
  tail call void @of_node_put(ptr noundef nonnull %call2.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %13, ptr noundef nonnull @uniphier_pcie_irq_handler, ptr noundef %pp) #6
  tail call void @of_node_put(ptr noundef nonnull %call2.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.uniphier_pcie, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %15, i32 33032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 7680) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %17, i32 33036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 3840) #6, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %if.end, %uniphier_pcie_config_legacy_irq.exit.thread9, %uniphier_pcie_config_legacy_irq.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %uniphier_pcie_config_legacy_irq.exit.thread ], [ %ret.0.i.ph, %uniphier_pcie_config_legacy_irq.exit.thread9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pcie_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg, align 4, !annotation !86
  %base = getelementptr inbounds %struct.uniphier_pcie, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %10, i32 33032
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !69
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uniphier_pcie_irq_handler, %if.end15)) #6
          to label %if.then13 [label %if.end15], !srcloc !88

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug293, ptr noundef %14, ptr noundef nonnull @.str.20) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.body, %entry.if.end15_crit_edge
  %and16 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end38_crit_edge, label %do.body19

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.body19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uniphier_pcie_irq_handler, %if.end38)) #6
          to label %if.then33 [label %if.end38], !srcloc !88

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug294, ptr noundef %16, ptr noundef nonnull @.str.21) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %do.body19, %if.end15.if.end38_crit_edge
  %and39 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end61_crit_edge, label %do.body42

if.end38.if.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

do.body42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uniphier_pcie_irq_handler, %if.end61)) #6
          to label %if.then56 [label %if.end61], !srcloc !88

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug295, ptr noundef %18, ptr noundef nonnull @.str.22) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %do.body42, %if.end38.if.end61_crit_edge
  %and62 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.do.body85_crit_edge, label %do.body65

if.end61.do.body85_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body85

do.body65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uniphier_pcie_irq_handler, %do.body85)) #6
          to label %if.then79 [label %do.body85], !srcloc !88

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug296, ptr noundef %20, ptr noundef nonnull @.str.23) #6
  br label %do.body85

do.body85:                                        ; preds = %if.then79, %do.body65, %if.end61.do.body85_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 8
  %add.ptr89 = getelementptr i8, ptr %22, i32 33032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %11) #6, !srcloc !72
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 10
  %23 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body85.chained_irq_enter.exit_crit_edge

do.body85.chained_irq_enter.exit_crit_edge:       ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %do.body85
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 8
  %25 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %26(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %27 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %28(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %29 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %30, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %30(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %do.body85.chained_irq_enter.exit_crit_edge
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 8
  %add.ptr93 = getelementptr i8, ptr %32, i32 33036
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #6, !srcloc !69
  %34 = lshr i32 %33, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %and113 = and i32 %34, 15
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and113, ptr %reg, align 4
  %call114 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call114)
  %cmp152 = icmp ult i32 %call114, 4
  br i1 %cmp152, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %legacy_irq_domain = getelementptr inbounds %struct.uniphier_pcie, ptr %5, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.0153 = phi i32 [ %call114, %for.body.lr.ph ], [ %call116, %for.body.for.body_crit_edge ]
  %36 = ptrtoint ptr %legacy_irq_domain to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %legacy_irq_domain, align 8
  %call115 = call i32 @generic_handle_domain_irq(ptr noundef %37, i32 noundef %bit.0153) #6
  %add = add nuw nsw i32 %bit.0153, 1
  %call116 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 4, i32 noundef %add) #6
  %cmp = icmp ult i32 %call116, 4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %38 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i145 = icmp eq ptr %39, null
  br i1 %tobool.not.i145, label %if.else.i146, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i146:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %40 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i146, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %41, %if.else.i146 ], [ %39, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @uniphier_pcie_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pcie_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 18
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base = getelementptr inbounds %struct.uniphier_pcie, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 33036
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !69
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq.i, align 4
  %add = add i32 %11, 8
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr13 = getelementptr i8, ptr %14, i32 33036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %12) #6, !srcloc !72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pcie_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 18
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base = getelementptr inbounds %struct.uniphier_pcie, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 33036
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !69
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq.i, align 4
  %add = add i32 %11, 8
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr13 = getelementptr i8, ptr %14, i32 33036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %12) #6, !srcloc !72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_pcie_uniphier__302_409_uniphier_pcie_driver_init6, !1, !"__initcall__kmod_pcie_uniphier__302_409_uniphier_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 409, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 405, i32 11}
!4 = !{ptr @uniphier_pcie_driver, !5, !"uniphier_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 402, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 370, i32 59}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 382, i32 41}
!10 = !{ptr @dw_pcie_ops, !11, !"dw_pcie_ops", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 351, i32 33}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 127, i32 8}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 130, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @uniphier_pcie_wait_rc._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @uniphier_pcie_wait_rc._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @uniphier_pcie_host_ops, !22, !"uniphier_pcie_host_ops", i1 false, i1 false}
!22 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 313, i32 38}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 269, i32 37}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 271, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @uniphier_pcie_config_legacy_irq._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @uniphier_pcie_config_legacy_irq._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 277, i32 3}
!32 = !{ptr @uniphier_pcie_config_legacy_irq._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @uniphier_pcie_config_legacy_irq._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 285, i32 3}
!36 = !{ptr @uniphier_pcie_config_legacy_irq._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @uniphier_pcie_config_legacy_irq._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @uniphier_intx_domain_ops, !39, !"uniphier_intx_domain_ops", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 222, i32 36}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 207, i32 10}
!42 = !{ptr @uniphier_pcie_irq_chip, !43, !"uniphier_pcie_irq_chip", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 206, i32 24}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 239, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug293, !45, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 241, i32 3}
!51 = !{ptr @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug294, !50, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 243, i32 3}
!54 = !{ptr @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug295, !53, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 245, i32 3}
!57 = !{ptr @uniphier_pcie_irq_handler.__UNIQUE_ID_ddebug296, !56, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!58 = !{ptr @uniphier_pcie_match, !59, !"uniphier_pcie_match", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pcie-uniphier.c", i32 397, i32 34}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 4277227}
!70 = !{i64 2155605332}
!71 = !{i64 2155605719}
!72 = !{i64 4276809}
!73 = !{i64 2155606397}
!74 = !{i64 2155606702}
!75 = !{i64 2155607380}
!76 = !{i64 2155608099}
!77 = !{i64 2155604267}
!78 = !{i64 2155604654}
!79 = !{i64 2155608777}
!80 = !{i64 2155609164}
!81 = !{i64 2155611153}
!82 = !{i64 2155611647}
!83 = !{i64 2155613978}
!84 = !{i64 2155615404}
!85 = !{i64 2155617644}
!86 = !{!"auto-init"}
!87 = !{i64 2155625739}
!88 = !{i64 2148761348, i64 2148761353, i64 2148761366, i64 2148761410, i64 2148761444, i64 2148761465}
!89 = !{i64 2155639444}
!90 = !{i64 2155640122}
!91 = !{i64 2155620622}
!92 = !{i64 2155620941}
!93 = !{i64 2155623297}
!94 = !{i64 2155623616}
