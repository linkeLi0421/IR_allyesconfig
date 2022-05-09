; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-intel-gw.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-intel-gw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.intel_pcie_soc = type { i32 }
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
%struct.intel_pcie = type { %struct.dw_pcie, ptr, ptr, i32, ptr, ptr, ptr }

@__initcall__kmod_pcie_intel_gw__293_463_intel_pcie_driver_init6 = internal global ptr @intel_pcie_driver_init, section ".initcall6.init", align 4
@intel_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @intel_pcie_probe, ptr @intel_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_intel_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intel-gw-pcie\00", [18 x i8] zeroinitializer }, align 32
@of_intel_pcie_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pcie_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@intel_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel_pcie_suspend_noirq, ptr @intel_pcie_resume_noirq, ptr @intel_pcie_suspend_noirq, ptr @intel_pcie_resume_noirq, ptr @intel_pcie_suspend_noirq, ptr @intel_pcie_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@intel_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr @intel_pcie_cpu_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@intel_pcie_dw_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @intel_pcie_rc_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@intel_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot initialize host\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intel_pcie_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/pci/controller/dwc/pcie-intel-gw.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@intel_pcie_probe._entry_ptr = internal global ptr @intel_pcie_probe._entry, section ".printk_index", align 4
@intel_pcie_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get clks: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"intel_pcie_get_resources\00", [39 x i8] zeroinitializer }, align 32
@intel_pcie_get_resources._entry_ptr = internal global ptr @intel_pcie_get_resources._entry, section ".printk_index", align 4
@intel_pcie_get_resources._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get resets: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@intel_pcie_get_resources._entry_ptr.10 = internal global ptr @intel_pcie_get_resources._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset-assert-ms\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"app\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@intel_pcie_get_resources._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't get pcie-phy: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@intel_pcie_get_resources._entry_ptr.16 = internal global ptr @intel_pcie_get_resources._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@intel_pcie_ep_rst_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request PCIe GPIO: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"intel_pcie_ep_rst_init\00", [41 x i8] zeroinitializer }, align 32
@intel_pcie_ep_rst_init._entry_ptr = internal global ptr @intel_pcie_ep_rst_init._entry, section ".printk_index", align 4
@intel_pcie_host_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Core clock enable failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"intel_pcie_host_setup\00", [42 x i8] zeroinitializer }, align 32
@intel_pcie_host_setup._entry_ptr = internal global ptr @intel_pcie_host_setup._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@intel_pcie_wait_l2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PCIe link enter L2 timeout!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel_pcie_wait_l2\00", [45 x i8] zeroinitializer }, align 32
@intel_pcie_wait_l2._entry_ptr = internal global ptr @intel_pcie_wait_l2._entry, section ".printk_index", align 4
@pcie_data = internal constant { %struct.intel_pcie_soc, [28 x i8] } { %struct.intel_pcie_soc { i32 21002 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"intel_pcie_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 454, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 458, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"of_intel_pcie_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 449, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"intel_pcie_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 444, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"intel_pcie_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 389, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"intel_pcie_dw_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 393, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 437, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 219, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 227, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 231, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 236, i32 63 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 240, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 244, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 156, i32 41 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 160, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 300, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 269, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [10 x i8] c"pcie_data\00", align 1
@___asan_gen_.121 = private constant [46 x i8] c"../drivers/pci/controller/dwc/pcie-intel-gw.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 397, i32 36 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__initcall__kmod_pcie_intel_gw__293_463_intel_pcie_driver_init6, ptr @intel_pcie_ep_rst_init._entry, ptr @intel_pcie_ep_rst_init._entry_ptr, ptr @intel_pcie_get_resources._entry, ptr @intel_pcie_get_resources._entry.14, ptr @intel_pcie_get_resources._entry.8, ptr @intel_pcie_get_resources._entry_ptr, ptr @intel_pcie_get_resources._entry_ptr.10, ptr @intel_pcie_get_resources._entry_ptr.16, ptr @intel_pcie_host_setup._entry, ptr @intel_pcie_host_setup._entry_ptr, ptr @intel_pcie_probe._entry, ptr @intel_pcie_probe._entry_ptr, ptr @intel_pcie_wait_l2._entry, ptr @intel_pcie_wait_l2._entry_ptr, ptr @intel_pcie_driver, ptr @.str, ptr @of_intel_pcie_match, ptr @intel_pcie_pm_ops, ptr @intel_pcie_ops, ptr @intel_pcie_dw_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pcie_data], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_intel_pcie_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_dw_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_get_resources._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_get_resources._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_ep_rst_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_host_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcie_wait_l2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @intel_pcie_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_pcie_probe(ptr noundef %pdev) #2 align 64 {
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
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 8
  %pp4 = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7
  %call3.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %core_clk.i = getelementptr inbounds %struct.intel_pcie, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3.i, ptr %core_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %if.end
  %cmp.not.i = icmp eq ptr %call3.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call3.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %3) #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %core_rst.i = getelementptr inbounds %struct.intel_pcie, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i.i, ptr %core_rst.i, align 8
  %cmp.i80.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80.i, label %if.then13.i, label %if.end22.i

if.then13.i:                                      ; preds = %if.end9.i
  %cmp16.not.i = icmp eq ptr %call.i.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp16.not.i, label %if.then13.i.cleanup_crit_edge, label %do.end20.i

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call.i.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %5) #9
  br label %cleanup

if.end22.i:                                       ; preds = %if.end9.i
  %rst_intrvl.i = getelementptr inbounds %struct.intel_pcie, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef %rst_intrvl.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end22.i.if.end26.i_crit_edge, label %if.then24.i

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rst_intrvl.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %rst_intrvl.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end26.i_crit_edge
  %call27.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.12) #6
  %app_base.i = getelementptr inbounds %struct.intel_pcie, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %app_base.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27.i, ptr %app_base.i, align 8
  %cmp.i81.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81.i, label %if.then30.i, label %if.end33.i

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call27.i to i32
  br label %cleanup

if.end33.i:                                       ; preds = %if.end26.i
  %call34.i = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #6
  %phy.i = getelementptr inbounds %struct.intel_pcie, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call34.i, ptr %phy.i, align 4
  %cmp.i82.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.i, label %if.then37.i, label %if.end8

if.then37.i:                                      ; preds = %if.end33.i
  %cmp40.not.i = icmp eq ptr %call34.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp40.not.i, label %if.then37.i.cleanup_crit_edge, label %do.end44.i

if.then37.i.cleanup_crit_edge:                    ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end44.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call34.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %10) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end33.i
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 8
  %call.i45 = tail call ptr @devm_gpiod_get(ptr noundef %12, ptr noundef nonnull @.str.17, i32 noundef 3) #6
  %reset_gpio.i = getelementptr inbounds %struct.intel_pcie, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i45, ptr %reset_gpio.i, align 4
  %cmp.i.i46 = icmp ugt ptr %call.i45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i46, label %if.then.i48, label %intel_pcie_ep_rst_init.exit.thread

if.then.i48:                                      ; preds = %if.end8
  %cmp.not.i47 = icmp eq ptr %call.i45, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i47, label %if.then.i48.cleanup_crit_edge, label %intel_pcie_ep_rst_init.exit

if.then.i48.cleanup_crit_edge:                    ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

intel_pcie_ep_rst_init.exit.thread:               ; preds = %if.end8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call13 = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %intel_pcie_ep_rst_init.exit.thread.cleanup_crit_edge, label %if.end16

intel_pcie_ep_rst_init.exit.thread.cleanup_crit_edge: ; preds = %intel_pcie_ep_rst_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

intel_pcie_ep_rst_init.exit:                      ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %14) #9
  br label %cleanup

if.end16:                                         ; preds = %intel_pcie_ep_rst_init.exit.thread
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @intel_pcie_ops, ptr %ops, align 8
  %16 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call13, align 4
  %version = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %version, align 4
  %ops17 = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7, i32 8
  %19 = ptrtoint ptr %ops17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @intel_pcie_dw_ops, ptr %ops17, align 8
  %call18 = tail call i32 @dw_pcie_host_init(ptr noundef %pp4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %do.end

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.cleanup_crit_edge, %intel_pcie_ep_rst_init.exit, %intel_pcie_ep_rst_init.exit.thread.cleanup_crit_edge, %if.then.i48.cleanup_crit_edge, %do.end44.i, %if.then37.i.cleanup_crit_edge, %if.then30.i, %do.end20.i, %if.then13.i.cleanup_crit_edge, %do.end.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %14, %intel_pcie_ep_rst_init.exit ], [ -19, %intel_pcie_ep_rst_init.exit.thread.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ], [ -517, %if.then13.i.cleanup_crit_edge ], [ -517, %if.then37.i.cleanup_crit_edge ], [ -517, %if.then.i48.cleanup_crit_edge ], [ %8, %if.then30.i ], [ %3, %do.end.i ], [ %5, %do.end20.i ], [ %10, %do.end44.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pp1 = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7
  tail call void @dw_pcie_host_deinit(ptr noundef %pp1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %app_base.i.i.i = getelementptr inbounds %struct.intel_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app_base.i.i.i, align 8
  %add.ptr.i3.i.i = getelementptr i8, ptr %5, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 368706848) #6, !srcloc !70
  %call.i.i = tail call i32 @dw_pcie_link_up(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = tail call fastcc i32 @intel_pcie_wait_l2(ptr noundef %1) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %reset_gpio.i.i.i = getelementptr inbounds %struct.intel_pcie, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %reset_gpio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #6
  %dbi_base.i.i.i = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dbi_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbi_base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !71
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and.i.i.i.i = and i32 %11, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i.i, i32 %11)
  %cmp.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.__intel_pcie_remove.exit_crit_edge, label %do.body.i.i.i.i

if.end.i.i.__intel_pcie_remove.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__intel_pcie_remove.exit

do.body.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %12) #6, !srcloc !70
  br label %__intel_pcie_remove.exit

__intel_pcie_remove.exit:                         ; preds = %do.body.i.i.i.i, %if.end.i.i.__intel_pcie_remove.exit_crit_edge
  %core_clk.i = getelementptr inbounds %struct.intel_pcie, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core_clk.i, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  %core_rst.i.i = getelementptr inbounds %struct.intel_pcie, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %core_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core_rst.i.i, align 8
  %call.i5.i = tail call i32 @reset_control_assert(ptr noundef %16) #6
  %phy.i = getelementptr inbounds %struct.intel_pcie, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy.i, align 4
  %call.i = tail call i32 @phy_exit(ptr noundef %18) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @intel_pcie_cpu_addr(ptr nocapture noundef readnone %pcie, i64 noundef %cpu_addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %cpu_addr, 268435456
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_pcie_rc_init(ptr nocapture noundef readonly %pp) #2 align 64 {
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
  %call1 = tail call fastcc i32 @intel_pcie_host_setup(ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @intel_pcie_host_setup(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %core_rst.i = getelementptr inbounds %struct.intel_pcie, ptr %pcie, i32 0, i32 5
  %0 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_rst.i, align 8
  %call.i = tail call i32 @reset_control_assert(ptr noundef %1) #6
  %reset_gpio.i = getelementptr inbounds %struct.intel_pcie, ptr %pcie, i32 0, i32 2
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #6
  %phy = getelementptr inbounds %struct.intel_pcie, ptr %pcie, i32 0, i32 6
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call = tail call i32 @phy_init(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #6
  %7 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core_rst.i, align 8
  %call.i40 = tail call i32 @reset_control_deassert(ptr noundef %8) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %core_clk = getelementptr inbounds %struct.intel_pcie, ptr %pcie, i32 0, i32 4
  %9 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core_clk, align 4
  %call.i41 = tail call i32 @clk_prepare(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i41, %if.end.do.end_crit_edge ]
  %11 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i.ph) #9
  br label %clk_err

if.end6:                                          ; preds = %if.end.i
  %dbi_base = getelementptr inbounds %struct.dw_pcie, ptr %pcie, i32 0, i32 1
  %13 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dbi_base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 786432
  %atu_base = getelementptr inbounds %struct.dw_pcie, ptr %pcie, i32 0, i32 3
  %15 = ptrtoint ptr %atu_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %atu_base, align 4
  %app_base.i.i = getelementptr inbounds %struct.intel_pcie, ptr %pcie, i32 0, i32 1
  %16 = ptrtoint ptr %app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %app_base.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !71
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and.i.i.i = and i32 %19, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %19)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, %19
  br i1 %cmp.not.i.i.i, label %if.end6.intel_pcie_ltssm_disable.exit_crit_edge, label %do.body.i.i.i

if.end6.intel_pcie_ltssm_disable.exit_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_pcie_ltssm_disable.exit

do.body.i.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %20) #6, !srcloc !70
  br label %intel_pcie_ltssm_disable.exit

intel_pcie_ltssm_disable.exit:                    ; preds = %do.body.i.i.i, %if.end6.intel_pcie_ltssm_disable.exit_crit_edge
  %call.i42 = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %pcie, i8 noundef zeroext 16) #6
  %conv.i = zext i8 %call.i42 to i32
  %add.i = add nuw nsw i32 %conv.i, 16
  %call.i.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pcie, i32 noundef %add.i, i32 noundef 4) #6
  %and.i = and i32 %call.i.i.i, -20
  tail call void @dw_pcie_write_dbi(ptr noundef %pcie, i32 noundef %add.i, i32 noundef 4, i32 noundef %and.i) #6
  %link_gen.i = getelementptr inbounds %struct.dw_pcie, ptr %pcie, i32 0, i32 12
  %21 = ptrtoint ptr %link_gen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link_gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %switch.selectcmp.i = icmp eq i32 %22, 4
  %switch.select.i = select i1 %switch.selectcmp.i, i8 -60, i8 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %switch.selectcmp12.i = icmp eq i32 %22, 3
  %switch.select13.i = select i1 %switch.selectcmp12.i, i8 -76, i8 %switch.select.i
  %arrayidx5.i = getelementptr %struct.dw_pcie, ptr %pcie, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %switch.select13.i, ptr %arrayidx5.i, align 1
  %n_fts6.i = getelementptr inbounds %struct.dw_pcie, ptr %pcie, i32 0, i32 13
  %24 = ptrtoint ptr %n_fts6.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 127, ptr %n_fts6.i, align 8
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %pcie, i32 0, i32 7
  tail call void @dw_pcie_setup_rc(ptr noundef %pp) #6
  tail call void @dw_pcie_upconfig_setup(ptr noundef %pcie) #6
  %rst_intrvl.i = getelementptr inbounds %struct.intel_pcie, ptr %pcie, i32 0, i32 3
  %25 = ptrtoint ptr %rst_intrvl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rst_intrvl.i, align 8
  tail call void @msleep(i32 noundef %26) #6
  %27 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %28, i32 noundef 0) #6
  %29 = ptrtoint ptr %app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %app_base.i.i, align 8
  %add.ptr.i.i.i45 = getelementptr i8, ptr %30, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i45) #6, !srcloc !71
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %or.i.i.i = or i32 %32, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %32)
  %cmp.not.i.i.i46 = icmp eq i32 %or.i.i.i, %32
  br i1 %cmp.not.i.i.i46, label %intel_pcie_ltssm_disable.exit.intel_pcie_ltssm_enable.exit_crit_edge, label %do.body.i.i.i47

intel_pcie_ltssm_disable.exit.intel_pcie_ltssm_enable.exit_crit_edge: ; preds = %intel_pcie_ltssm_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_pcie_ltssm_enable.exit

do.body.i.i.i47:                                  ; preds = %intel_pcie_ltssm_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i45, i32 %33) #6, !srcloc !70
  br label %intel_pcie_ltssm_enable.exit

intel_pcie_ltssm_enable.exit:                     ; preds = %do.body.i.i.i47, %intel_pcie_ltssm_disable.exit.intel_pcie_ltssm_enable.exit_crit_edge
  %call7 = tail call i32 @dw_pcie_wait_for_link(ptr noundef %pcie) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %app_init_err

if.end10:                                         ; preds = %intel_pcie_ltssm_enable.exit
  %34 = ptrtoint ptr %app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %app_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 244
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !71
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %or.i.i = or i32 %37, 537262613
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %37)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %37
  br i1 %cmp.not.i.i, label %if.end10.cleanup_crit_edge, label %do.body.i.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %38) #6, !srcloc !70
  br label %cleanup

app_init_err:                                     ; preds = %intel_pcie_ltssm_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %40) #6
  tail call void @clk_unprepare(ptr noundef %40) #6
  br label %clk_err

clk_err:                                          ; preds = %app_init_err, %do.end
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call7, %app_init_err ]
  %41 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core_rst.i, align 8
  %call.i49 = tail call i32 @reset_control_assert(ptr noundef %42) #6
  %43 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy, align 4
  %call13 = tail call i32 @phy_exit(ptr noundef %44) #6
  br label %cleanup

cleanup:                                          ; preds = %clk_err, %do.body.i.i, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %clk_err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %do.body.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_setup_rc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_upconfig_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_wait_for_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dw_pcie_find_capability(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_host_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_link_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @intel_pcie_wait_l2(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %link_gen = getelementptr inbounds %struct.dw_pcie, ptr %pcie, i32 0, i32 12
  %0 = ptrtoint ptr %link_gen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %app_base.i = getelementptr inbounds %struct.intel_pcie, ptr %pcie, i32 0, i32 1
  %2 = ptrtoint ptr %app_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %or.i.i = or i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %5)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %5
  br i1 %cmp.not.i.i, label %if.end.pcie_app_wr_mask.exit_crit_edge, label %do.body.i.i

if.end.pcie_app_wr_mask.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcie_app_wr_mask.exit

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #6, !srcloc !70
  br label %pcie_app_wr_mask.exit

pcie_app_wr_mask.exit:                            ; preds = %do.body.i.i, %if.end.pcie_app_wr_mask.exit_crit_edge
  %call = tail call i32 @jiffies_to_usecs(i32 noundef 500) #6
  %conv = zext i32 %call to i64
  %call2 = tail call i64 @ktime_get() #6
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call2
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 267) #6
  %7 = ptrtoint ptr %app_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %app_base.i, align 8
  %add.ptr58 = getelementptr i8, ptr %8, i32 68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #6, !srcloc !71
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %and59 = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool.not60 = icmp eq i32 %and59, 0
  br i1 %tobool.not60, label %if.end17.lr.ph, label %pcie_app_wr_mask.exit.for.end_crit_edge

pcie_app_wr_mask.exit.for.end_crit_edge:          ; preds = %pcie_app_wr_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.lr.ph:                                   ; preds = %pcie_app_wr_mask.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br label %if.end17

if.end17:                                         ; preds = %if.then33.if.end17_crit_edge, %if.end17.lr.ph
  br i1 %tobool18.not, label %if.end17.if.then33_crit_edge, label %land.lhs.true

if.end17.if.then33_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

land.lhs.true:                                    ; preds = %if.end17
  %call19 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %if.then23, label %land.lhs.true.if.then33_crit_edge

land.lhs.true.if.then33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %app_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %app_base.i, align 8
  %add.ptr27 = getelementptr i8, ptr %12, i32 68
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !71
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %for.end

if.then33:                                        ; preds = %land.lhs.true.if.then33_crit_edge, %if.end17.if.then33_crit_edge
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #6
  %15 = ptrtoint ptr %app_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %app_base.i, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %and = and i32 %18, 1048576
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then33.if.end17_crit_edge, label %if.then33.for.end_crit_edge

if.then33.for.end_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then33.if.end17_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.end:                                          ; preds = %if.then33.for.end_crit_edge, %if.then23, %pcie_app_wr_mask.exit.for.end_crit_edge
  %value.0 = phi i32 [ %14, %if.then23 ], [ %10, %pcie_app_wr_mask.exit.for.end_crit_edge ], [ %18, %if.then33.for.end_crit_edge ]
  %and36 = and i32 %value.0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.end42, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -110, %do.end42 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_pcie_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %app_base.i.i = getelementptr inbounds %struct.intel_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app_base.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 368706848) #6, !srcloc !70
  %call1 = tail call fastcc i32 @intel_pcie_wait_l2(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %phy = getelementptr inbounds %struct.intel_pcie, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call2 = tail call i32 @phy_exit(ptr noundef %7) #6
  %core_clk = getelementptr inbounds %struct.intel_pcie, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_pcie_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @intel_pcie_host_setup(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_pcie_intel_gw__293_463_intel_pcie_driver_init6, !1, !"__initcall__kmod_pcie_intel_gw__293_463_intel_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 463, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 458, i32 11}
!4 = !{ptr @intel_pcie_driver, !5, !"intel_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 454, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 437, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @intel_pcie_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @intel_pcie_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 219, i32 4}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @intel_pcie_get_resources._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @intel_pcie_get_resources._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 227, i32 4}
!21 = !{ptr @intel_pcie_get_resources._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @intel_pcie_get_resources._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 231, i32 38}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 236, i32 63}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 240, i32 32}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 244, i32 4}
!31 = !{ptr @intel_pcie_get_resources._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @intel_pcie_get_resources._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 156, i32 41}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 160, i32 4}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @intel_pcie_ep_rst_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @intel_pcie_ep_rst_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @intel_pcie_ops, !41, !"intel_pcie_ops", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 389, i32 33}
!42 = !{ptr @intel_pcie_dw_ops, !43, !"intel_pcie_dw_ops", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 393, i32 38}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 300, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @intel_pcie_host_setup._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @intel_pcie_host_setup._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 269, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @intel_pcie_wait_l2._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @intel_pcie_wait_l2._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @of_intel_pcie_match, !55, !"of_intel_pcie_match", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 449, i32 34}
!56 = !{ptr @pcie_data, !57, !"pcie_data", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 397, i32 36}
!58 = !{ptr @intel_pcie_pm_ops, !59, !"intel_pcie_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pcie-intel-gw.c", i32 444, i32 32}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2155635242}
!70 = !{i64 3143757}
!71 = !{i64 3144175}
!72 = !{i64 2155634481}
!73 = !{i64 2155634688}
!74 = !{i64 2155646572}
!75 = !{i64 2155647074}
