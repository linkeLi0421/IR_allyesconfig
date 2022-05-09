; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-armada8k.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-armada8k.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
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
%struct.armada8k_pcie = type { ptr, ptr, ptr, [4 x ptr], i32 }

@__initcall__kmod_pcie_armada8k__294_350_armada8k_pcie_driver_init6 = internal global ptr @armada8k_pcie_driver_init, section ".initcall6.init", align 4
@armada8k_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @armada8k_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @armada8k_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"armada8k-pcie\00", [18 x i8] zeroinitializer }, align 32
@armada8k_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada8k-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @armada8k_pcie_link_up, ptr @armada8k_pcie_start_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@armada8k_pcie_link_up.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_armada8k\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"armada8k_pcie_link_up\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/pci/controller/dwc/pcie-armada8k.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No link detected (Global-Status: 0x%08x).\0A\00", [53 x i8] zeroinitializer }, align 32
@armada8k_pcie_setup_phys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 134, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No available PHY\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"armada8k_pcie_setup_phys\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@armada8k_pcie_setup_phys._entry_ptr = internal global ptr @armada8k_pcie_setup_phys._entry, section ".printk_index", align 4
@armada8k_pcie_setup_phys._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.5, i32 138, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize PHY(s) (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@armada8k_pcie_setup_phys._entry_ptr.14 = internal global ptr @armada8k_pcie_setup_phys._entry.11, section ".printk_index", align 4
@armada8k_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @armada8k_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@armada8k_add_pcie_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 249, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"armada8k_add_pcie_port\00", [41 x i8] zeroinitializer }, align 32
@armada8k_add_pcie_port._entry_ptr = internal global ptr @armada8k_add_pcie_port._entry, section ".printk_index", align 4
@armada8k_add_pcie_port._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 255, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to initialize host: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@armada8k_add_pcie_port._entry_ptr.19 = internal global ptr @armada8k_add_pcie_port._entry.17, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"armada8k_pcie_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 342, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 345, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"armada8k_pcie_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 337, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 262, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 296, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 308, i32 60 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 153, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 134, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 138, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"armada8k_pcie_host_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 228, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 249, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [46 x i8] c"../drivers/pci/controller/dwc/pcie-armada8k.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 255, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_pcie_armada8k__294_350_armada8k_pcie_driver_init6, ptr @armada8k_add_pcie_port._entry, ptr @armada8k_add_pcie_port._entry.17, ptr @armada8k_add_pcie_port._entry_ptr, ptr @armada8k_add_pcie_port._entry_ptr.19, ptr @armada8k_pcie_setup_phys._entry, ptr @armada8k_pcie_setup_phys._entry.11, ptr @armada8k_pcie_setup_phys._entry_ptr, ptr @armada8k_pcie_setup_phys._entry_ptr.14, ptr @armada8k_pcie_driver, ptr @.str, ptr @armada8k_pcie_of_match, ptr @dw_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @armada8k_pcie_host_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada8k_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada8k_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada8k_pcie_setup_phys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada8k_pcie_setup_phys._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada8k_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada8k_add_pcie_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada8k_add_pcie_port._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada8k_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @armada8k_pcie_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada8k_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i90 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i90, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i90 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i90, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i90, i32 0, i32 9
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i90, ptr %call.i, align 4
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #4
  %clk = getelementptr inbounds %struct.armada8k_pcie, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %call.i91 = tail call i32 @clk_prepare(ptr noundef %call8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  %call1.i = tail call i32 @clk_enable(ptr noundef %call8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end19, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call8) #4
  br label %cleanup

if.end19:                                         ; preds = %if.end.i
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #4
  %clk_reg = getelementptr inbounds %struct.armada8k_pcie, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %clk_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %clk_reg, align 4
  %cmp = icmp eq ptr %call20, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.end19.fail_crit_edge, label %if.end24

if.end19.fail_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end24:                                         ; preds = %if.end19
  %cmp.i92 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.end24.if.end33_crit_edge, label %if.then27

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then27:                                        ; preds = %if.end24
  %call.i93 = tail call i32 @clk_prepare(ptr noundef %call20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end.i97, label %if.then27.fail_clkreg_crit_edge

if.then27.fail_clkreg_crit_edge:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_clkreg

if.end.i97:                                       ; preds = %if.then27
  %call1.i95 = tail call i32 @clk_enable(ptr noundef %call20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool2.not.i96 = icmp eq i32 %call1.i95, 0
  br i1 %tobool2.not.i96, label %if.end.i97.if.end33_crit_edge, label %if.then3.i98

if.end.i97.if.end33_crit_edge:                    ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then3.i98:                                     ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call20) #4
  br label %fail_clkreg

if.end33:                                         ; preds = %if.end.i97.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  %call34 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #4
  %call35 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev1, ptr noundef %call34) #4
  %dbi_base = getelementptr inbounds %struct.dw_pcie, ptr %call.i90, i32 0, i32 1
  %6 = ptrtoint ptr %dbi_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call35, ptr %dbi_base, align 4
  %cmp.i101 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call35 to i32
  br label %fail_clkreg

if.end41:                                         ; preds = %if.end33
  %call42 = tail call fastcc i32 @armada8k_pcie_setup_phys(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.fail_clkreg_crit_edge

if.end41.fail_clkreg_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_clkreg

if.end45:                                         ; preds = %if.end41
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call46 = tail call fastcc i32 @armada8k_add_pcie_port(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %disable_phy

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

disable_phy:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @armada8k_pcie_disable_phys(ptr noundef nonnull %call.i)
  br label %fail_clkreg

fail_clkreg:                                      ; preds = %disable_phy, %if.end41.fail_clkreg_crit_edge, %if.then38, %if.then3.i98, %if.then27.fail_clkreg_crit_edge
  %ret.0 = phi i32 [ %7, %if.then38 ], [ %call42, %if.end41.fail_clkreg_crit_edge ], [ %call46, %disable_phy ], [ %call1.i95, %if.then3.i98 ], [ %call.i93, %if.then27.fail_clkreg_crit_edge ]
  %9 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_reg, align 4
  tail call void @clk_disable(ptr noundef %10) #4
  tail call void @clk_unprepare(ptr noundef %10) #4
  br label %fail

fail:                                             ; preds = %fail_clkreg, %if.end19.fail_crit_edge
  %ret.1 = phi i32 [ %ret.0, %fail_clkreg ], [ -517, %if.end19.fail_crit_edge ]
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #4
  tail call void @clk_unprepare(ptr noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end45.cleanup_crit_edge, %if.then3.i, %if.end14.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then11 ], [ %ret.1, %fail ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i91, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @armada8k_pcie_setup_phys(ptr nocapture noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %phy_count = getelementptr inbounds %struct.armada8k_pcie, ptr %pcie, i32 0, i32 4
  %call = tail call ptr @devm_of_phy_get_by_index(ptr noundef %3, ptr noundef %5, i32 noundef 0) #4
  %arrayidx = getelementptr %struct.armada8k_pcie, ptr %pcie, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %cmp9.not = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  br i1 %cmp9.not, label %if.end, label %if.then.cleanup.loopexit_crit_edge

if.then.cleanup.loopexit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %phy_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %if.end
  %call.1 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %3, ptr noundef %5, i32 noundef 1) #4
  %arrayidx.1 = getelementptr %struct.armada8k_pcie, ptr %pcie, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.1, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.then.1, label %if.end16.1

if.end16.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_count, align 4
  %inc.1 = add i32 %12, 1
  store i32 %inc.1, ptr %phy_count, align 4
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %cmp9.not.1 = icmp eq ptr %call.1, inttoptr (i32 -19 to ptr)
  br i1 %cmp9.not.1, label %if.end.1, label %if.then.1.cleanup.loopexit_crit_edge

if.then.1.cleanup.loopexit_crit_edge:             ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit

if.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %if.end16.1
  %call.2 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %3, ptr noundef %5, i32 noundef 2) #4
  %arrayidx.2 = getelementptr %struct.armada8k_pcie, ptr %pcie, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.2, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %call.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.then.2, label %if.end16.2

if.end16.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_count, align 4
  %inc.2 = add i32 %16, 1
  store i32 %inc.2, ptr %phy_count, align 4
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %cmp9.not.2 = icmp eq ptr %call.2, inttoptr (i32 -19 to ptr)
  br i1 %cmp9.not.2, label %if.end.2, label %if.then.2.cleanup.loopexit_crit_edge

if.then.2.cleanup.loopexit_crit_edge:             ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit

if.end.2:                                         ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %if.end16.2
  %call.3 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %3, ptr noundef %5, i32 noundef 3) #4
  %arrayidx.3 = getelementptr %struct.armada8k_pcie, ptr %pcie, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.3, ptr %arrayidx.3, align 4
  %cmp.i.3 = icmp ugt ptr %call.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.then.3, label %if.end16.3

if.end16.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_count, align 4
  %inc.3 = add i32 %20, 1
  store i32 %inc.3, ptr %phy_count, align 4
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %cmp9.not.3 = icmp eq ptr %call.3, inttoptr (i32 -19 to ptr)
  br i1 %cmp9.not.3, label %if.end.3, label %if.then.3.cleanup.loopexit_crit_edge

if.then.3.cleanup.loopexit_crit_edge:             ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit

if.end.3:                                         ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.3, align 4
  %22 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %phy_count, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %if.end16.3
  %23 = phi i32 [ %.pr, %if.end.3 ], [ %inc.3, %if.end16.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %do.end, label %for.inc.3.if.end20_crit_edge

for.inc.3.if.end20_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

do.end:                                           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  br label %if.end20

if.end20:                                         ; preds = %do.end, %for.inc.3.if.end20_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @phy_init(ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.do.end26_crit_edge

if.end20.do.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end26

for.cond.i:                                       ; preds = %if.end9.i
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.1, align 4
  %call.1.i = tail call i32 @phy_init(ptr noundef %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %for.cond.i.do.end26_crit_edge

for.cond.i.do.end26_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end26

if.end.1.i:                                       ; preds = %for.cond.i
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.1, align 4
  %30 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phy_count, align 4
  %call3.1.i = tail call i32 @phy_set_mode_ext(ptr noundef %29, i32 noundef 14, i32 noundef %31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %tobool4.not.1.i = icmp eq i32 %call3.1.i, 0
  br i1 %tobool4.not.1.i, label %if.end9.1.i, label %if.end.1.i.cleanup.sink.split.i_crit_edge

if.end.1.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end9.1.i:                                      ; preds = %if.end.1.i
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.1, align 4
  %call12.1.i = tail call i32 @phy_power_on(ptr noundef %33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1.i)
  %tobool13.not.1.i = icmp eq i32 %call12.1.i, 0
  br i1 %tobool13.not.1.i, label %for.cond.1.i, label %if.end9.1.i.cleanup.sink.split.i_crit_edge

if.end9.1.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

for.cond.1.i:                                     ; preds = %if.end9.1.i
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.2, align 4
  %call.2.i = tail call i32 @phy_init(ptr noundef %35) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %for.cond.1.i.do.end26_crit_edge

for.cond.1.i.do.end26_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end26

if.end.2.i:                                       ; preds = %for.cond.1.i
  %36 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.2, align 4
  %38 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phy_count, align 4
  %call3.2.i = tail call i32 @phy_set_mode_ext(ptr noundef %37, i32 noundef 14, i32 noundef %39) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %tobool4.not.2.i = icmp eq i32 %call3.2.i, 0
  br i1 %tobool4.not.2.i, label %if.end9.2.i, label %if.end.2.i.cleanup.sink.split.i_crit_edge

if.end.2.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end9.2.i:                                      ; preds = %if.end.2.i
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.2, align 4
  %call12.2.i = tail call i32 @phy_power_on(ptr noundef %41) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2.i)
  %tobool13.not.2.i = icmp eq i32 %call12.2.i, 0
  br i1 %tobool13.not.2.i, label %for.cond.2.i, label %if.end9.2.i.cleanup.sink.split.i_crit_edge

if.end9.2.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end9.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

for.cond.2.i:                                     ; preds = %if.end9.2.i
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.3, align 4
  %call.3.i = tail call i32 @phy_init(ptr noundef %43) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %for.cond.2.i.do.end26_crit_edge

for.cond.2.i.do.end26_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end26

if.end.3.i:                                       ; preds = %for.cond.2.i
  %44 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.3, align 4
  %46 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %phy_count, align 4
  %call3.3.i = tail call i32 @phy_set_mode_ext(ptr noundef %45, i32 noundef 14, i32 noundef %47) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %tobool4.not.3.i = icmp eq i32 %call3.3.i, 0
  br i1 %tobool4.not.3.i, label %if.end9.3.i, label %if.end.3.i.cleanup.sink.split.i_crit_edge

if.end.3.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end9.3.i:                                      ; preds = %if.end.3.i
  %48 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.3, align 4
  %call12.3.i = tail call i32 @phy_power_on(ptr noundef %49) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3.i)
  %tobool13.not.3.i = icmp eq i32 %call12.3.i, 0
  br i1 %tobool13.not.3.i, label %if.end9.3.i.cleanup_crit_edge, label %if.end9.3.i.cleanup.sink.split.i_crit_edge

if.end9.3.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end9.3.i.cleanup_crit_edge:                    ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %phy_count, align 4
  %call3.i = tail call i32 @phy_set_mode_ext(ptr noundef %51, i32 noundef 14, i32 noundef %53) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end.i
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %call12.i = tail call i32 @phy_power_on(ptr noundef %55) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %for.cond.i, label %if.end9.i.cleanup.sink.split.i_crit_edge

if.end9.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end9.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge, %if.end9.3.i.cleanup.sink.split.i_crit_edge, %if.end.3.i.cleanup.sink.split.i_crit_edge, %if.end9.2.i.cleanup.sink.split.i_crit_edge, %if.end.2.i.cleanup.sink.split.i_crit_edge, %if.end9.1.i.cleanup.sink.split.i_crit_edge, %if.end.1.i.cleanup.sink.split.i_crit_edge
  %arrayidx.lcssa41.sink.i = phi ptr [ %arrayidx, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx.1, %if.end.1.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx.2, %if.end.2.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx.3, %if.end.3.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx, %if.end9.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx.1, %if.end9.1.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx.2, %if.end9.2.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx.3, %if.end9.3.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call3.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %call3.1.i, %if.end.1.i.cleanup.sink.split.i_crit_edge ], [ %call3.2.i, %if.end.2.i.cleanup.sink.split.i_crit_edge ], [ %call3.3.i, %if.end.3.i.cleanup.sink.split.i_crit_edge ], [ %call12.i, %if.end9.i.cleanup.sink.split.i_crit_edge ], [ %call12.1.i, %if.end9.1.i.cleanup.sink.split.i_crit_edge ], [ %call12.2.i, %if.end9.2.i.cleanup.sink.split.i_crit_edge ], [ %call12.3.i, %if.end9.3.i.cleanup.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %arrayidx.lcssa41.sink.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.lcssa41.sink.i, align 4
  %call17.i = tail call i32 @phy_exit(ptr noundef %57) #4
  br label %do.end26

do.end26:                                         ; preds = %cleanup.sink.split.i, %for.cond.2.i.do.end26_crit_edge, %for.cond.1.i.do.end26_crit_edge, %for.cond.i.do.end26_crit_edge, %if.end20.do.end26_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.3.i, %for.cond.2.i.do.end26_crit_edge ], [ %call.2.i, %for.cond.1.i.do.end26_crit_edge ], [ %call.1.i, %for.cond.i.do.end26_crit_edge ], [ %call.i, %if.end20.do.end26_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i.ph) #7
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.then.3.cleanup.loopexit_crit_edge, %if.then.2.cleanup.loopexit_crit_edge, %if.then.1.cleanup.loopexit_crit_edge, %if.then.cleanup.loopexit_crit_edge
  %call.lcssa = phi ptr [ %call, %if.then.cleanup.loopexit_crit_edge ], [ %call.1, %if.then.1.cleanup.loopexit_crit_edge ], [ %call.2, %if.then.2.cleanup.loopexit_crit_edge ], [ %call.3, %if.then.3.cleanup.loopexit_crit_edge ]
  %58 = ptrtoint ptr %call.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end26, %if.end9.3.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end26 ], [ 0, %if.end9.3.i.cleanup_crit_edge ], [ %58, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @armada8k_add_pcie_port(ptr noundef %pcie, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %pp2 = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armada8k_pcie_host_ops, ptr %ops, align 8
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  %irq = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7, i32 7
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev3, i32 noundef %call, ptr noundef nonnull @armada8k_pcie_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %pcie) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.15, i32 noundef %5) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @dw_pcie_host_init(ptr noundef %pp2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %do.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.18, i32 noundef %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call11, %do.end16 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada8k_pcie_disable_phys(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.armada8k_pcie, ptr %pcie, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %1) #4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %3) #4
  %arrayidx.1 = getelementptr %struct.armada8k_pcie, ptr %pcie, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = tail call i32 @phy_power_off(ptr noundef %5) #4
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %call3.1 = tail call i32 @phy_exit(ptr noundef %7) #4
  %arrayidx.2 = getelementptr %struct.armada8k_pcie, ptr %pcie, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %call.2 = tail call i32 @phy_power_off(ptr noundef %9) #4
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %call3.2 = tail call i32 @phy_exit(ptr noundef %11) #4
  %arrayidx.3 = getelementptr %struct.armada8k_pcie, ptr %pcie, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %call.3 = tail call i32 @phy_power_off(ptr noundef %13) #4
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  %call3.3 = tail call i32 @phy_exit(ptr noundef %15) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada8k_pcie_link_up(ptr noundef %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef 32776, i32 noundef 4) #4
  %and = and i32 %call.i, 514
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %and)
  %cmp = icmp eq i32 %and, 514
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @armada8k_pcie_link_up.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@armada8k_pcie_link_up, %cleanup)) #4
          to label %if.then5 [label %cleanup], !srcloc !52

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @armada8k_pcie_link_up.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada8k_pcie_start_link(ptr noundef %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef 32768, i32 noundef 4) #4
  %or = or i32 %call.i, 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci, i32 noundef 32768, i32 noundef 4, i32 noundef %or) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada8k_pcie_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 32796, i32 noundef 4) #4
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 32796, i32 noundef 4, i32 noundef %call.i) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada8k_pcie_host_init(ptr noundef %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %call = tail call i32 @dw_pcie_link_up(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 32768, i32 noundef 4) #4
  %and = and i32 %call.i, -5
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 32768, i32 noundef 4, i32 noundef %and) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i36 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 32768, i32 noundef 4) #4
  %and3 = and i32 %call.i36, -241
  %or = or i32 %and3, 64
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 32768, i32 noundef 4, i32 noundef %or) #4
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 32848, i32 noundef 4, i32 noundef 13585) #4
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 32852, i32 noundef 4, i32 noundef 21265) #4
  %call.i37 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 32860, i32 noundef 4) #4
  %and5 = and i32 %call.i37, -49
  %or6 = or i32 %and5, 32
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 32860, i32 noundef 4, i32 noundef %or6) #4
  %call.i38 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 32864, i32 noundef 4) #4
  %and8 = and i32 %call.i38, -49
  %or9 = or i32 %and8, 32
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 32864, i32 noundef 4, i32 noundef %or9) #4
  %call.i39 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 32800, i32 noundef 4) #4
  %or11 = or i32 %call.i39, 7680
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 32800, i32 noundef 4, i32 noundef %or11) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_link_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_pcie_armada8k__294_350_armada8k_pcie_driver_init6, !1, !"__initcall__kmod_pcie_armada8k__294_350_armada8k_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 350, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 345, i32 11}
!4 = !{ptr @armada8k_pcie_driver, !5, !"armada8k_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 342, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 296, i32 36}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 308, i32 60}
!10 = !{ptr @dw_pcie_ops, !11, !"dw_pcie_ops", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 262, i32 33}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 153, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @armada8k_pcie_link_up.__UNIQUE_ID_ddebug293, !13, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 134, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @armada8k_pcie_setup_phys._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @armada8k_pcie_setup_phys._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 138, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @armada8k_pcie_setup_phys._entry.11, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @armada8k_pcie_setup_phys._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 249, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @armada8k_add_pcie_port._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @armada8k_add_pcie_port._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 255, i32 3}
!37 = !{ptr @armada8k_add_pcie_port._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @armada8k_add_pcie_port._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @armada8k_pcie_host_ops, !40, !"armada8k_pcie_host_ops", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 228, i32 38}
!41 = !{ptr @armada8k_pcie_of_match, !42, !"armada8k_pcie_of_match", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/dwc/pcie-armada8k.c", i32 337, i32 34}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148728717, i64 2148728722, i64 2148728735, i64 2148728779, i64 2148728813, i64 2148728834}
