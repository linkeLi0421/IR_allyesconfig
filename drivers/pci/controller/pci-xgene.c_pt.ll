; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-xgene.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-xgene.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.xgene_pcie = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pci_xgene__237_639_xgene_pcie_driver_init6 = internal global ptr @xgene_pcie_driver_init, section ".initcall6.init", align 4
@xgene_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgene_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @xgene_pcie_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene-pcie\00", [21 x i8] zeroinitializer }, align 32
@xgene_pcie_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apm,xgene-pcie\00", [17 x i8] zeroinitializer }, align 32
@xgene_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @xgene_pcie_map_bus, ptr @xgene_pcie_config_read32, ptr @pci_generic_config_write32 }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csr\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@xgene_pcie_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 332, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clock not available\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgene_pcie_init_port\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/pci/controller/pci-xgene.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgene_pcie_init_port._entry_ptr = internal global ptr @xgene_pcie_init_port._entry, section ".printk_index", align 4
@xgene_pcie_init_port._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 338, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clock enable failed\0A\00", [43 x i8] zeroinitializer }, align 32
@xgene_pcie_init_port._entry_ptr.11 = internal global ptr @xgene_pcie_init_port._entry.9, section ".printk_index", align 4
@xgene_pcie_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 575, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(rc) link down\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgene_pcie_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xgene_pcie_setup._entry_ptr = internal global ptr @xgene_pcie_setup._entry, section ".printk_index", align 4
@xgene_pcie_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.6, i32 577, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(rc) x%d gen-%d link up\0A\00", [39 x i8] zeroinitializer }, align 32
@xgene_pcie_setup._entry_ptr.17 = internal global ptr @xgene_pcie_setup._entry.15, section ".printk_index", align 4
@xgene_pcie_map_ranges.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.6, ptr @.str.20, i8 0, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_xgene\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgene_pcie_map_ranges\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pR\0A\00", [27 x i8] zeroinitializer }, align 32
@xgene_pcie_map_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.6, i32 439, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid resource %pR\0A\00", [42 x i8] zeroinitializer }, align 32
@xgene_pcie_map_ranges._entry_ptr = internal global ptr @xgene_pcie_map_ranges._entry, section ".printk_index", align 4
@xgene_pcie_setup_ob_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 387, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"res size 0x%llx less than minimum 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgene_pcie_setup_ob_reg\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xgene_pcie_setup_ob_reg._entry_ptr = internal global ptr @xgene_pcie_setup_ob_reg._entry, section ".printk_index", align 4
@xgene_pcie_setup_ib_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 499, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid pcie dma-range config\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgene_pcie_setup_ib_reg\00", [40 x i8] zeroinitializer }, align 32
@xgene_pcie_setup_ib_reg._entry_ptr = internal global ptr @xgene_pcie_setup_ib_reg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 4096]
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"xgene_pcie_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 631, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 633, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"xgene_pcie_match_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 626, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 605, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"xgene_pcie_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 581, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 351, i32 59 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 356, i32 59 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 332, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 338, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 575, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 577, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 416, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 439, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 386, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [38 x i8] c"../drivers/pci/controller/pci-xgene.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 499, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__initcall__kmod_pci_xgene__237_639_xgene_pcie_driver_init6, ptr @xgene_pcie_init_port._entry, ptr @xgene_pcie_init_port._entry.9, ptr @xgene_pcie_init_port._entry_ptr, ptr @xgene_pcie_init_port._entry_ptr.11, ptr @xgene_pcie_map_ranges._entry, ptr @xgene_pcie_map_ranges._entry_ptr, ptr @xgene_pcie_setup._entry, ptr @xgene_pcie_setup._entry.15, ptr @xgene_pcie_setup._entry_ptr, ptr @xgene_pcie_setup._entry_ptr.17, ptr @xgene_pcie_setup_ib_reg._entry, ptr @xgene_pcie_setup_ib_reg._entry_ptr, ptr @xgene_pcie_setup_ob_reg._entry, ptr @xgene_pcie_setup_ob_reg._entry_ptr, ptr @xgene_pcie_driver, ptr @.str, ptr @xgene_pcie_match_table, ptr @.str.1, ptr @xgene_pcie_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_init_port._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_map_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_setup_ob_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_pcie_setup_ib_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgene_pcie_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %call3 = tail call ptr @of_node_get(ptr noundef %1) #5
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %private.i, align 4
  %dev4 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev4, align 4
  %version = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 6
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %version, align 4
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef %call3, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %version, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %call.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #5
  %call2.i = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %7, ptr noundef %call.i) #5
  %csr_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2.i, ptr %csr_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end10.xgene_pcie_map_reg.exit_crit_edge, label %if.end.i

if.end10.xgene_pcie_map_reg.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_pcie_map_reg.exit

if.end.i:                                         ; preds = %if.end10
  %call7.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.3) #5
  %call8.i = tail call ptr @devm_ioremap_resource(ptr noundef %7, ptr noundef %call7.i) #5
  %cfg_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %9 = ptrtoint ptr %cfg_base.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i, ptr %cfg_base.i, align 4
  %cmp.i27.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27.i, label %if.end.i.xgene_pcie_map_reg.exit_crit_edge, label %xgene_pcie_map_reg.exit.thread

if.end.i.xgene_pcie_map_reg.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_pcie_map_reg.exit

xgene_pcie_map_reg.exit.thread:                   ; preds = %if.end.i
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7.i, align 4
  %cfg_addr.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %cfg_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cfg_addr.i, align 4
  %13 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev4, align 4
  %call.i49 = tail call ptr @clk_get(ptr noundef %14, ptr noundef null) #5
  %clk.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i49, ptr %clk.i, align 4
  %cmp.i.i50 = icmp ugt ptr %call.i49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i50, label %xgene_pcie_map_reg.exit.thread.xgene_pcie_init_port.exit_crit_edge, label %if.end.i51

xgene_pcie_map_reg.exit.thread.xgene_pcie_init_port.exit_crit_edge: ; preds = %xgene_pcie_map_reg.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_pcie_init_port.exit

xgene_pcie_map_reg.exit:                          ; preds = %if.end.i.xgene_pcie_map_reg.exit_crit_edge, %if.end10.xgene_pcie_map_reg.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call2.i, %if.end10.xgene_pcie_map_reg.exit_crit_edge ], [ %call8.i, %if.end.i.xgene_pcie_map_reg.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

if.end.i51:                                       ; preds = %xgene_pcie_map_reg.exit.thread
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call.i49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i51.xgene_pcie_init_port.exit_crit_edge

if.end.i51.xgene_pcie_init_port.exit_crit_edge:   ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_pcie_init_port.exit

if.end.i.i:                                       ; preds = %if.end.i51
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end18, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call.i49) #5
  br label %xgene_pcie_init_port.exit

xgene_pcie_init_port.exit:                        ; preds = %if.then3.i.i, %if.end.i51.xgene_pcie_init_port.exit_crit_edge, %xgene_pcie_map_reg.exit.thread.xgene_pcie_init_port.exit_crit_edge
  %.str.10.sink.i = phi ptr [ @.str.4, %xgene_pcie_map_reg.exit.thread.xgene_pcie_init_port.exit_crit_edge ], [ @.str.10, %if.end.i51.xgene_pcie_init_port.exit_crit_edge ], [ @.str.10, %if.then3.i.i ]
  %retval.0.ph.i = phi i32 [ -19, %xgene_pcie_map_reg.exit.thread.xgene_pcie_init_port.exit_crit_edge ], [ %call.i.i, %if.end.i51.xgene_pcie_init_port.exit_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull %.str.10.sink.i) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end.i.i
  %16 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end18
  %i.03.i.i = phi i32 [ 128, %if.end18 ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %i.03.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #5, !srcloc !68
  %add.i.i = add nuw nsw i32 %i.03.i.i, 4
  %cmp.i.i54 = icmp ult i32 %i.03.i.i, 345
  br i1 %cmp.i.i54, label %for.body.i.i.for.body.i.i_crit_edge, label %xgene_pcie_clear_config.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

xgene_pcie_clear_config.exit.i:                   ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -401603360) #5, !srcloc !68
  %call.i55 = tail call fastcc i32 @xgene_pcie_map_ranges(ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i, label %if.end.i56, label %xgene_pcie_clear_config.exit.i.cleanup_crit_edge

xgene_pcie_clear_config.exit.i.cleanup_crit_edge: ; preds = %xgene_pcie_clear_config.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i56:                                       ; preds = %xgene_pcie_clear_config.exit.i
  %dma_ranges.i.i = getelementptr %struct.pci_host_bridge, ptr %call, i32 0, i32 8
  %22 = ptrtoint ptr %dma_ranges.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %entry1.03.i.i = load ptr, ptr %dma_ranges.i.i, align 4
  %cmp.not4.i.i = icmp eq ptr %entry1.03.i.i, %dma_ranges.i.i
  br i1 %cmp.not4.i.i, label %if.end.i56.xgene_pcie_parse_map_dma_ranges.exit.i_crit_edge, label %if.end.i56.for.body.i26.i_crit_edge

if.end.i56.for.body.i26.i_crit_edge:              ; preds = %if.end.i56
  br label %for.body.i26.i

if.end.i56.xgene_pcie_parse_map_dma_ranges.exit.i_crit_edge: ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_pcie_parse_map_dma_ranges.exit.i

for.body.i26.i:                                   ; preds = %xgene_pcie_setup_ib_reg.exit.i.i.for.body.i26.i_crit_edge, %if.end.i56.for.body.i26.i_crit_edge
  %entry1.06.i.i = phi ptr [ %entry1.0.i.i, %xgene_pcie_setup_ib_reg.exit.i.i.for.body.i26.i_crit_edge ], [ %entry1.03.i.i, %if.end.i56.for.body.i26.i_crit_edge ]
  %ib_reg_mask.05.i.i = phi i8 [ %ib_reg_mask.2.i.i, %xgene_pcie_setup_ib_reg.exit.i.i.for.body.i26.i_crit_edge ], [ 0, %if.end.i56.for.body.i26.i_crit_edge ]
  %23 = ptrtoint ptr %cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg_base.i, align 4
  %25 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev4, align 4
  %res.i.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.06.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %res.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %res.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %conv.i.i.i = zext i32 %30 to i64
  %offset.i.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.06.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset.i.i.i, align 4
  %conv4.i.i.i = zext i32 %32 to i64
  %sub.i.i.i = sub nsw i64 %conv.i.i.i, %conv4.i.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 1, %30
  %add.i.i.i.i = add i32 %34, %sub.i.i.i.i
  %conv6.i.i.i = zext i32 %add.i.i.i.i to i64
  %neg.i.i.i = sub nsw i64 0, %conv6.i.i.i
  %or.i.i.i = or i64 %neg.i.i.i, 1
  %35 = add nsw i64 %conv6.i.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777211, i64 %35)
  %36 = icmp ult i64 %35, 16777211
  %37 = and i8 %ib_reg_mask.05.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i.i.i = icmp eq i8 %37, 0
  %or.cond.i.i = select i1 %36, i1 %tobool.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %sw.bb27.i.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i.i)
  %cmp5.i.i.i.i = icmp ugt i32 %add.i.i.i.i, 1024
  br i1 %cmp5.i.i.i.i, label %land.lhs.true10.i.i.i.i, label %if.end.i.i.i.i.do.end.i.i.i_crit_edge

if.end.i.i.i.i.do.end.i.i.i_crit_edge:            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

land.lhs.true10.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %38 = and i8 %ib_reg_mask.05.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool13.not.i.i.i.i = icmp eq i8 %38, 0
  br i1 %tobool13.not.i.i.i.i, label %sw.bb.i.i.i, label %if.end18.i.i.i.i

if.end18.i.i.i.i:                                 ; preds = %land.lhs.true10.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %add.i.i.i.i)
  %cmp19.i.i.i.i = icmp ugt i32 %add.i.i.i.i, 1048576
  %39 = and i8 %ib_reg_mask.05.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool27.not.i.i.i.i = icmp eq i8 %39, 0
  %or.cond.i.i.i = select i1 %cmp19.i.i.i.i, i1 %tobool27.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %sw.bb30.i.i.i, label %if.end18.i.i.i.i.do.end.i.i.i_crit_edge

if.end18.i.i.i.i.do.end.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end18.i.i.i.i.do.end.i.i.i_crit_edge, %if.end.i.i.i.i.do.end.i.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.25) #8
  br label %xgene_pcie_setup_ib_reg.exit.i.i

sw.bb.i.i.i:                                      ; preds = %land.lhs.true10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or16.i.i.i.i = or i8 %ib_reg_mask.05.i.i, 1
  %flags1197.i.i.i = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 3
  %40 = ptrtoint ptr %flags1197.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags1197.i.i.i, align 4
  %and98.i.i.i = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i.i.i)
  %tobool.not99.i.i.i = icmp eq i32 %and98.i.i.i, 0
  %spec.select100.i.i.i = select i1 %tobool.not99.i.i.i, i32 4, i32 12
  %and.i101.i.i.i = and i32 %30, -16
  %or.i77102.i.i.i = or i32 %spec.select100.i.i.i, %and.i101.i.i.i
  %42 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %43, i32 8208
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %45 = and i32 %44, -65536
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  %47 = sub i32 0, %add.i.i.i.i
  %48 = and i32 %47, 65520
  %conv3.i.i.i.i = or i32 %spec.select100.i.i.i, %48
  %shl.i.i.i.i = shl nuw i32 %conv3.i.i.i.i, 16
  %or4.i.i.i.i = or i32 %shl.i.i.i.i, %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %49 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i.i.i) #5
  %50 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i2.i.i.i.i = getelementptr i8, ptr %51, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i.i, i32 %49) #5, !srcloc !68
  %52 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %53, i32 8212
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %55 = and i32 %54, 65535
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  %shr.i.i.i.i = lshr i32 %47, 16
  %or9.i.i.i.i = or i32 %56, %shr.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %or9.i.i.i.i) #5
  %58 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i6.i.i.i.i = getelementptr i8, ptr %59, i32 8212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i.i, i32 %57) #5, !srcloc !68
  %60 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i8.i.i.i.i = getelementptr i8, ptr %61, i32 8212
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %63 = and i32 %62, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i10.i.i.i.i = getelementptr i8, ptr %65, i32 8212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i.i.i, i32 %63) #5, !srcloc !68
  %66 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i12.i.i.i.i = getelementptr i8, ptr %67, i32 8216
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %69 = and i32 %68, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i14.i.i.i.i = getelementptr i8, ptr %71, i32 8216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i.i.i, i32 %69) #5, !srcloc !68
  %add.ptr.i1.i.i = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i77102.i.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %72) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %add.ptr26.i.i.i = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i.i, i32 0) #5, !srcloc !68
  br label %sw.epilog.i.i.i

sw.bb27.i.i.i:                                    ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i.i.i = or i8 %ib_reg_mask.05.i.i, 2
  %flags11108.i.i.i = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 3
  %73 = ptrtoint ptr %flags11108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags11108.i.i.i, align 4
  %and109.i.i.i = and i32 %74, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i.i.i)
  %tobool.not110.i.i.i = icmp eq i32 %and109.i.i.i, 0
  %spec.select111.i.i.i = select i1 %tobool.not110.i.i.i, i32 4, i32 12
  %and.i112.i.i.i = and i32 %30, -16
  %or.i77113.i.i.i = or i32 %spec.select111.i.i.i, %and.i112.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %75 = tail call i32 @llvm.bswap.i32(i32 %or.i77113.i.i.i) #5
  %76 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %77, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %75) #5, !srcloc !68
  %conv29.i.i.i = trunc i64 %or.i.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %78 = tail call i32 @llvm.bswap.i32(i32 %conv29.i.i.i) #5
  %79 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i79.i.i.i = getelementptr i8, ptr %80, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i.i.i, i32 %78) #5, !srcloc !68
  br label %sw.epilog.i.i.i

sw.bb30.i.i.i:                                    ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or30.i.i.i.i = or i8 %ib_reg_mask.05.i.i, 4
  %flags11.i.i.i = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 3
  %81 = ptrtoint ptr %flags11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags11.i.i.i, align 4
  %and.i.i.i = and i32 %82, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 4, i32 12
  %and.i.i.i.i = and i32 %30, -16
  %or.i77.i.i.i = or i32 %spec.select.i.i.i, %and.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %83 = tail call i32 @llvm.bswap.i32(i32 %or.i77.i.i.i) #5
  %84 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i81.i.i.i = getelementptr i8, ptr %85, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i.i.i, i32 %83) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i83.i.i.i = getelementptr i8, ptr %87, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i.i.i, i32 0) #5, !srcloc !68
  %conv35.i.i.i = trunc i64 %or.i.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %88 = tail call i32 @llvm.bswap.i32(i32 %conv35.i.i.i) #5
  %89 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i85.i.i.i = getelementptr i8, ptr %90, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i.i.i, i32 %88) #5, !srcloc !68
  %shr36.i.i.i = lshr i64 %neg.i.i.i, 32
  %conv38.i.i.i = trunc i64 %shr36.i.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %91 = tail call i32 @llvm.bswap.i32(i32 %conv38.i.i.i) #5
  %92 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i87.i.i.i = getelementptr i8, ptr %93, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i.i.i, i32 %91) #5, !srcloc !68
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb30.i.i.i, %sw.bb27.i.i.i, %sw.bb.i.i.i
  %ib_reg_mask.1.i.i = phi i8 [ %or.i.i.i.i, %sw.bb27.i.i.i ], [ %or16.i.i.i.i, %sw.bb.i.i.i ], [ %or30.i.i.i.i, %sw.bb30.i.i.i ]
  %pim_reg.0.i.i.i = phi i32 [ 160, %sw.bb27.i.i.i ], [ 128, %sw.bb.i.i.i ], [ 196, %sw.bb30.i.i.i ]
  %conv.i.i.i.i = trunc i64 %sub.i.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %94 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i.i.i) #5
  %95 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i.i89.i.i.i = getelementptr i8, ptr %96, i32 %pim_reg.0.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i89.i.i.i, i32 %94) #5, !srcloc !68
  %add.i90.i.i.i = add nuw nsw i32 %pim_reg.0.i.i.i, 4
  %shr.i91.i.i.i = lshr i64 %sub.i.i.i, 32
  %conv2.i.i.i.i = trunc i64 %shr.i91.i.i.i to i32
  %or.i92.i.i.i = or i32 %conv2.i.i.i.i, -268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %97 = tail call i32 @llvm.bswap.i32(i32 %or.i92.i.i.i) #5
  %98 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i19.i.i.i.i = getelementptr i8, ptr %99, i32 %add.i90.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i.i.i, i32 %97) #5, !srcloc !68
  %add3.i.i.i.i = or i32 %pim_reg.0.i.i.i, 16
  %conv5.i.i.i.i = trunc i64 %neg.i.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %100 = tail call i32 @llvm.bswap.i32(i32 %conv5.i.i.i.i) #5
  %101 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i21.i.i.i.i = getelementptr i8, ptr %102, i32 %add3.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i.i.i, i32 %100) #5, !srcloc !68
  %add6.i.i.i.i = add nuw nsw i32 %pim_reg.0.i.i.i, 20
  %shr7.i.i.i.i = lshr i64 %neg.i.i.i, 32
  %conv9.i.i.i.i = trunc i64 %shr7.i.i.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %103 = tail call i32 @llvm.bswap.i32(i32 %conv9.i.i.i.i) #5
  %104 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i23.i.i.i.i = getelementptr i8, ptr %105, i32 %add6.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i.i.i, i32 %103) #5, !srcloc !68
  br label %xgene_pcie_setup_ib_reg.exit.i.i

xgene_pcie_setup_ib_reg.exit.i.i:                 ; preds = %sw.epilog.i.i.i, %do.end.i.i.i
  %ib_reg_mask.2.i.i = phi i8 [ %ib_reg_mask.1.i.i, %sw.epilog.i.i.i ], [ %ib_reg_mask.05.i.i, %do.end.i.i.i ]
  %106 = ptrtoint ptr %entry1.06.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %entry1.0.i.i = load ptr, ptr %entry1.06.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %dma_ranges.i.i
  br i1 %cmp.not.i.i, label %xgene_pcie_setup_ib_reg.exit.i.i.xgene_pcie_parse_map_dma_ranges.exit.i_crit_edge, label %xgene_pcie_setup_ib_reg.exit.i.i.for.body.i26.i_crit_edge

xgene_pcie_setup_ib_reg.exit.i.i.for.body.i26.i_crit_edge: ; preds = %xgene_pcie_setup_ib_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i26.i

xgene_pcie_setup_ib_reg.exit.i.i.xgene_pcie_parse_map_dma_ranges.exit.i_crit_edge: ; preds = %xgene_pcie_setup_ib_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_pcie_parse_map_dma_ranges.exit.i

xgene_pcie_parse_map_dma_ranges.exit.i:           ; preds = %xgene_pcie_setup_ib_reg.exit.i.i.xgene_pcie_parse_map_dma_ranges.exit.i_crit_edge, %if.end.i56.xgene_pcie_parse_map_dma_ranges.exit.i_crit_edge
  %link_up.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  %107 = ptrtoint ptr %link_up.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %link_up.i.i, align 4
  %108 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %109, i32 80
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28.i) #5, !srcloc !69
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %and.i.i = and i32 %111, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i57 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i57, label %xgene_pcie_parse_map_dma_ranges.exit.i.xgene_pcie_linkup.exit.i_crit_edge, label %if.then.i.i

xgene_pcie_parse_map_dma_ranges.exit.i.xgene_pcie_linkup.exit.i_crit_edge: ; preds = %xgene_pcie_parse_map_dma_ranges.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_pcie_linkup.exit.i

if.then.i.i:                                      ; preds = %xgene_pcie_parse_map_dma_ranges.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %link_up.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %link_up.i.i, align 4
  %and2.i.i = lshr i32 %111, 14
  %shr.i.i = and i32 %and2.i.i, 3
  %113 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %114, i32 9728
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %116 = lshr i32 %115, 2
  %shr4.i.i = and i32 %116, 63
  %phi.bo.i = add nuw nsw i32 %shr.i.i, 1
  br label %xgene_pcie_linkup.exit.i

xgene_pcie_linkup.exit.i:                         ; preds = %if.then.i.i, %xgene_pcie_parse_map_dma_ranges.exit.i.xgene_pcie_linkup.exit.i_crit_edge
  %lanes.0.i = phi i32 [ 0, %xgene_pcie_parse_map_dma_ranges.exit.i.xgene_pcie_linkup.exit.i_crit_edge ], [ %shr4.i.i, %if.then.i.i ]
  %speed.0.i = phi i32 [ 1, %xgene_pcie_parse_map_dma_ranges.exit.i.xgene_pcie_linkup.exit.i_crit_edge ], [ %phi.bo.i, %if.then.i.i ]
  %117 = ptrtoint ptr %link_up.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %link_up.i.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool6.not.i = icmp eq i8 %118, 0
  br i1 %tobool6.not.i, label %do.end.i, label %do.end10.i

do.end.i:                                         ; preds = %xgene_pcie_linkup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.12) #8
  br label %if.end22

do.end10.i:                                       ; preds = %xgene_pcie_linkup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.16, i32 noundef %lanes.0.i, i32 noundef %speed.0.i) #8
  br label %if.end22

if.end22:                                         ; preds = %do.end10.i, %do.end.i
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %119 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %private.i, ptr %sysdata, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %120 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @xgene_pcie_ops, ptr %ops, align 4
  %call23 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %xgene_pcie_clear_config.exit.i.cleanup_crit_edge, %xgene_pcie_init_port.exit, %xgene_pcie_map_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %xgene_pcie_map_reg.exit ], [ %retval.0.ph.i, %xgene_pcie_init_port.exit ], [ %call.i55, %xgene_pcie_clear_config.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_pcie_map_ranges(ptr noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.xgene_pcie, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %windows = getelementptr i8, ptr %port, i32 -72
  %2 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %2)
  %window.068 = load ptr, ptr %windows, align 4
  %cmp.not69 = icmp eq ptr %window.068, %windows
  br i1 %cmp.not69, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %window.070 = phi ptr [ %window.0, %for.inc.for.body_crit_edge ], [ %window.068, %entry.for.body_crit_edge ]
  %res3 = getelementptr inbounds %struct.resource_entry, ptr %window.070, i32 0, i32 1
  %3 = ptrtoint ptr %res3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res3, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 7936
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_pcie_map_ranges.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_pcie_map_ranges, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !74

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_pcie_map_ranges.__UNIQUE_ID_ddebug236, ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef %4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %7 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end33 [
    i32 256, label %sw.bb
    i32 512, label %sw.bb15
    i32 4096, label %do.end.for.inc_crit_edge
  ]

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  %call11 = tail call i32 @pci_pio_to_address(i32 noundef %9) #5
  %conv12 = zext i32 %call11 to i64
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %4, align 4
  %offset = getelementptr inbounds %struct.resource_entry, ptr %window.070, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %sub = sub i32 %11, %13
  %conv14 = zext i32 %sub to i64
  tail call fastcc void @xgene_pcie_setup_ob_reg(ptr noundef %port, ptr noundef %4, i32 noundef 304, i64 noundef %conv12, i64 noundef %conv14)
  br label %for.inc

sw.bb15:                                          ; preds = %do.end
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  %conv25 = zext i32 %17 to i64
  %offset27 = getelementptr inbounds %struct.resource_entry, ptr %window.070, i32 0, i32 2
  %18 = ptrtoint ptr %offset27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset27, align 4
  %sub28 = sub i32 %17, %19
  %conv29 = zext i32 %sub28 to i64
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xgene_pcie_setup_ob_reg(ptr noundef %port, ptr noundef %4, i32 noundef 280, i64 noundef %conv25, i64 noundef %conv29)
  br label %for.inc

if.else:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xgene_pcie_setup_ob_reg(ptr noundef %port, ptr noundef %4, i32 noundef 256, i64 noundef %conv25, i64 noundef %conv29)
  br label %for.inc

do.end33:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %4) #8
  br label %cleanup40

for.inc:                                          ; preds = %if.else, %if.then17, %sw.bb, %do.end.for.inc_crit_edge
  %20 = ptrtoint ptr %window.070 to i32
  call void @__asan_load4_noabort(i32 %20)
  %window.0 = load ptr, ptr %window.070, align 4
  %cmp.not = icmp eq ptr %window.0, %windows
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %cfg_addr.i = getelementptr inbounds %struct.xgene_pcie, ptr %port, i32 0, i32 5
  %21 = ptrtoint ptr %cfg_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %csr_base.i.i = getelementptr inbounds %struct.xgene_pcie, ptr %port, i32 0, i32 3
  %24 = ptrtoint ptr %csr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %csr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csr_base.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %27, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %csr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr_base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %29, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 16777216) #5, !srcloc !68
  br label %cleanup40

cleanup40:                                        ; preds = %for.end, %do.end33
  %retval.2 = phi i32 [ 0, %for.end ], [ -22, %do.end33 ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_pcie_setup_ob_reg(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %res, i32 noundef %offset, i64 noundef %cpu_addr, i64 noundef %pci_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %sub.i = add i32 %1, 1
  %add.i = sub i32 %sub.i, %3
  %flags.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 512
  %. = select i1 %cmp, i32 134217728, i32 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %.)
  %cmp4.not = icmp ult i32 %add.i, %.
  br i1 %cmp4.not, label %do.end, label %if.then6

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.48 = select i1 %cmp, i32 1, i32 3
  %neg = sub i32 0, %add.i
  %or7 = or i32 %.48, %neg
  br label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.xgene_pcie, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %conv10 = zext i32 %add.i to i64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.22, i64 noundef %conv10, i32 noundef %.) #8
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then6
  %mask.0.off0 = phi i32 [ %or7, %if.then6 ], [ 0, %do.end ]
  %conv12 = trunc i64 %cpu_addr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv12) #5
  %csr_base.i = getelementptr inbounds %struct.xgene_pcie, ptr %port, i32 0, i32 3
  %9 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !68
  %add = add i32 %offset, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #5, !srcloc !68
  %add15 = add i32 %offset, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %mask.0.off0) #5
  %14 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %15, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %13) #5, !srcloc !68
  %add18 = add i32 %offset, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %17, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #5, !srcloc !68
  %add22 = add i32 %offset, 16
  %conv24 = trunc i64 %pci_addr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv24) #5
  %19 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %20, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %18) #5, !srcloc !68
  %add25 = add i32 %offset, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %csr_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr_base.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %22, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 0) #5, !srcloc !68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xgene_pcie_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp.not = icmp ne i32 %devfn, 0
  %2 = and i1 %cmp.not, %tobool.not.i
  br i1 %2, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %3 = add i32 %offset, -16
  %switch.and.i = and i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %retval.0.i = and i1 %switch.selectcmp.i, %tobool.not.i
  br i1 %retval.0.i, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %sysdata.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %4 = ptrtoint ptr %sysdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysdata.i.i, align 4
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number.i, align 4
  %and1.i = and i32 %devfn, 7
  %and.i = and i32 %devfn, 248
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %shl.i, %and.i
  %or4.i = or i32 %or.i, %and1.i
  %rtdid_val.0.i = select i1 %tobool.not.i, i32 0, i32 %or4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %rtdid_val.0.i) #5
  %csr_base.i.i = getelementptr inbounds %struct.xgene_pcie, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %csr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #5, !srcloc !68
  %11 = ptrtoint ptr %csr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr_base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %12, i32 352
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %14 = ptrtoint ptr %sysdata.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sysdata.i.i, align 4
  %16 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %number.i, align 4
  %primary.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 13
  %18 = ptrtoint ptr %primary.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %primary.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp.not.not.i = icmp ult i8 %19, %17
  %cfg_base.i = getelementptr inbounds %struct.xgene_pcie, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg_base.i, align 4
  %retval.0.idx.i = select i1 %cmp.not.not.i, i32 65536, i32 0
  %retval.0.i12 = getelementptr i8, ptr %21, i32 %retval.0.idx.i
  %add.ptr = getelementptr i8, ptr %retval.0.i12, i32 %offset
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %entry.return_crit_edge ], [ null, %lor.lhs.false.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_pcie_config_read32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata.i, align 4
  %and = and i32 %where, -4
  %call1 = tail call i32 @pci_generic_config_read32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %and, i32 noundef 4, ptr noundef %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %version = getelementptr inbounds %struct.xgene_pcie, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp eq i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %and)
  %cmp6 = icmp eq i32 %and, 92
  %or.cond = and i1 %cmp6, %cmp3
  br i1 %or.cond, label %if.then7, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and8 = and i32 %7, -65537
  store i32 %and8, ptr %val, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp10 = icmp slt i32 %size, 3
  br i1 %cmp10, label %if.then11, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and12 = shl i32 %where, 3
  %mul = and i32 %and12, 24
  %shr = lshr i32 %9, %mul
  %mul13 = shl i32 %size, 3
  %notmask = shl nsw i32 -1, %mul13
  %sub = xor i32 %notmask, -1
  %and14 = and i32 %shr, %sub
  store i32 %and14, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 134, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_pci_xgene__237_639_xgene_pcie_driver_init6, !1, !"__initcall__kmod_pci_xgene__237_639_xgene_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-xgene.c", i32 639, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-xgene.c", i32 633, i32 11}
!4 = !{ptr @xgene_pcie_driver, !5, !"xgene_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pci-xgene.c", i32 631, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pci-xgene.c", i32 605, i32 42}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pci-xgene.c", i32 351, i32 59}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pci-xgene.c", i32 356, i32 59}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/pci-xgene.c", i32 332, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @xgene_pcie_init_port._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @xgene_pcie_init_port._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/pci-xgene.c", i32 338, i32 3}
!22 = !{ptr @xgene_pcie_init_port._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @xgene_pcie_init_port._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pci-xgene.c", i32 575, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @xgene_pcie_setup._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @xgene_pcie_setup._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pci-xgene.c", i32 577, i32 3}
!32 = !{ptr @xgene_pcie_setup._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @xgene_pcie_setup._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/pci-xgene.c", i32 416, i32 3}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @xgene_pcie_map_ranges.__UNIQUE_ID_ddebug236, !35, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/pci-xgene.c", i32 439, i32 4}
!41 = !{ptr @xgene_pcie_map_ranges._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @xgene_pcie_map_ranges._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/pci-xgene.c", i32 386, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @xgene_pcie_setup_ob_reg._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @xgene_pcie_setup_ob_reg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pci-xgene.c", i32 499, i32 3}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @xgene_pcie_setup_ib_reg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @xgene_pcie_setup_ib_reg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @xgene_pcie_ops, !55, !"xgene_pcie_ops", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/pci-xgene.c", i32 581, i32 23}
!56 = !{ptr @xgene_pcie_match_table, !57, !"xgene_pcie_match_table", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/pci-xgene.c", i32 626, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2155136878}
!68 = !{i64 3084000}
!69 = !{i64 3084418}
!70 = !{i64 2155136661}
!71 = !{i64 2155152602}
!72 = !{i64 2155153059}
!73 = !{i8 0, i8 2}
!74 = !{i64 2148736410, i64 2148736415, i64 2148736428, i64 2148736472, i64 2148736506, i64 2148736527}
