; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-al.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-al.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.al_pcie = type { ptr, ptr, ptr, i32, i32, %struct.al_pcie_reg_offsets, %struct.al_pcie_target_bus_cfg }
%struct.al_pcie_reg_offsets = type { i32 }
%struct.al_pcie_target_bus_cfg = type { i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pcie_al__264_378_al_pcie_driver_init6 = internal global ptr @al_pcie_driver_init, section ".initcall6.init", align 4
@al_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @al_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @al_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"al-pcie\00", [24 x i8] zeroinitializer }, align 32
@al_pcie_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amazon,al-alpine-v2-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amazon,al-alpine-v3-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@al_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @al_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@al_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 341, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't find 'config' reg in DT\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"al_pcie_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/pci/controller/dwc/pcie-al.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@al_pcie_probe._entry_ptr = internal global ptr @al_pcie_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"controller\00", [21 x i8] zeroinitializer }, align 32
@al_pcie_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't remap controller base %pR\0A\00", [60 x i8] zeroinitializer }, align 32
@al_pcie_probe._entry_ptr.10 = internal global ptr @al_pcie_probe._entry.8, section ".printk_index", align 4
@al_pcie_probe.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcie_al\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"From DT: controller_base: %pR\0A\00", [33 x i8] zeroinitializer }, align 32
@al_child_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @al_pcie_conf_addr_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@al_pcie_conf_addr_map_bus.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"al_pcie_conf_addr_map_bus\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Changing target bus busnum val from 0x%x to 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@al_pcie_rev_id_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported dev_id_val (0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"al_pcie_rev_id_get\00", [45 x i8] zeroinitializer }, align 32
@al_pcie_rev_id_get._entry_ptr = internal global ptr @al_pcie_rev_id_get._entry, section ".printk_index", align 4
@al_pcie_rev_id_get.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dev_id_val: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@al_pcie_reg_offsets_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported controller rev_id: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"al_pcie_reg_offsets_set\00", [40 x i8] zeroinitializer }, align 32
@al_pcie_reg_offsets_set._entry_ptr = internal global ptr @al_pcie_reg_offsets_set._entry, section ".printk_index", align 4
@al_pcie_config_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 261, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ECAM window size is larger than 256MB. Cutting off at 256\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"al_pcie_config_prepare\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@al_pcie_config_prepare._entry_ptr = internal global ptr @al_pcie_config_prepare._entry, section ".printk_index", align 4
@switch.table.al_pcie_host_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 48, i32 48], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 4]
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"al_pcie_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 370, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 372, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"al_pcie_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 362, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"al_pcie_host_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 313, i32 38 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 339, i32 64 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 341, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 347, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 350, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 355, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"al_child_pci_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 239, i32 23 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 228, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 174, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 179, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 195, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [40 x i8] c"../drivers/pci/controller/dwc/pcie-al.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 261, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [31 x i8] c"switch.table.al_pcie_host_init\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__initcall__kmod_pcie_al__264_378_al_pcie_driver_init6, ptr @al_pcie_config_prepare._entry, ptr @al_pcie_config_prepare._entry_ptr, ptr @al_pcie_probe._entry, ptr @al_pcie_probe._entry.8, ptr @al_pcie_probe._entry_ptr, ptr @al_pcie_probe._entry_ptr.10, ptr @al_pcie_reg_offsets_set._entry, ptr @al_pcie_reg_offsets_set._entry_ptr, ptr @al_pcie_rev_id_get._entry, ptr @al_pcie_rev_id_get._entry_ptr, ptr @al_pcie_driver, ptr @.str, ptr @al_pcie_of_match, ptr @al_pcie_host_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @al_child_pci_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @switch.table.al_pcie_host_init], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_pcie_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_pcie_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_child_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_pcie_rev_id_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_pcie_reg_offsets_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_pcie_config_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.al_pcie_host_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @al_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @al_pcie_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @al_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i65 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i65, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i65 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i65, align 8
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %call.i65, i32 0, i32 7
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i65, i32 0, i32 7, i32 8
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @al_pcie_host_ops, ptr %ops, align 8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i65, ptr %call.i, align 4
  %dev8 = getelementptr inbounds %struct.al_pcie, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev8, align 4
  %call9 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %end.i = getelementptr inbounds %struct.resource, ptr %call9, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call9, align 4
  %sub.i = add i32 %5, 1
  %add.i = sub i32 %sub.i, %7
  %ecam_size = getelementptr inbounds %struct.al_pcie, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %ecam_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %ecam_size, align 4
  %call14 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #5
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call14) #5
  %controller_base = getelementptr inbounds %struct.al_pcie, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %controller_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15, ptr %controller_base, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %do.body25

do.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef %call14) #8
  %10 = ptrtoint ptr %controller_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller_base, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

do.body25:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @al_pcie_probe.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@al_pcie_probe, %do.end34)) #5
          to label %if.then31 [label %do.end34], !srcloc !64

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @al_pcie_probe.__UNIQUE_ID_ddebug263, ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef %call14) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body25
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call36 = tail call i32 @dw_pcie_host_init(ptr noundef %pp) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.end21, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %do.end21 ], [ %call36, %do.end34 ], [ -2, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @al_pcie_host_init(ptr nocapture noundef readonly %pp) #2 align 64 {
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
  %child_ops = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %child_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @al_child_pci_ops, ptr %child_ops, align 8
  %controller_rev_id = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 4
  %controller_base.i.i = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %controller_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %controller_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 364
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !65
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %shr.i = lshr i32 %10, 16
  %trunc.i = trunc i32 %shr.i to i16
  %11 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %al_pcie_rev_id_get.exit.thread23 [
    i16 0, label %entry.do.body18.i_crit_edge
    i16 2, label %sw.bb13.i
    i16 4, label %sw.bb14.i
  ]

entry.do.body18.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18.i

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18.i

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18.i

al_pcie_rev_id_get.exit.thread23:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef %shr.i) #8
  br label %cleanup

do.body18.i:                                      ; preds = %sw.bb14.i, %sw.bb13.i, %entry.do.body18.i_crit_edge
  %.sink.i = phi i32 [ 3, %sw.bb13.i ], [ 4, %sw.bb14.i ], [ 2, %entry.do.body18.i_crit_edge ]
  %14 = ptrtoint ptr %controller_rev_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink.i, ptr %controller_rev_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @al_pcie_rev_id_get.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@al_pcie_host_init, %if.end)) #5
          to label %al_pcie_rev_id_get.exit.thread [label %if.end], !srcloc !64

al_pcie_rev_id_get.exit.thread:                   ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev24.i = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev24.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @al_pcie_rev_id_get.__UNIQUE_ID_ddebug241, ptr noundef %16, ptr noundef nonnull @.str.17, i32 noundef %shr.i) #5
  br label %if.end

if.end:                                           ; preds = %al_pcie_rev_id_get.exit.thread, %do.body18.i
  %17 = ptrtoint ptr %controller_rev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %controller_rev_id, align 4
  %switch.tableidx = add i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 3
  br i1 %19, label %switch.lookup, label %al_pcie_reg_offsets_set.exit

al_pcie_reg_offsets_set.exit:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i15 = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.18, i32 noundef %18) #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.al_pcie_host_init, i32 0, i32 %switch.tableidx
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %reg_offsets2.i = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %reg_offsets2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.load, ptr %reg_offsets2.i, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %bridge.i = getelementptr inbounds %struct.dw_pcie, ptr %25, i32 0, i32 7, i32 17
  %26 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bridge.i, align 8
  %windows.i = getelementptr inbounds %struct.pci_host_bridge, ptr %27, i32 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %switch.lookup
  %entry1.0.in.i.i = phi ptr [ %windows.i, %switch.lookup ], [ %entry1.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %28 = ptrtoint ptr %entry1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %entry1.0.i.i = load ptr, ptr %entry1.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %windows.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.resource_list_first_type.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.resource_list_first_type.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %resource_list_first_type.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %res.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %res.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %32, 7936
  %cmp2.i.i = icmp eq i32 %and.i.i.i, 4096
  br i1 %cmp2.i.i, label %for.body.i.i.resource_list_first_type.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.body.i.i.resource_list_first_type.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %resource_list_first_type.exit.i

resource_list_first_type.exit.i:                  ; preds = %for.body.i.i.resource_list_first_type.exit.i_crit_edge, %for.cond.i.i.resource_list_first_type.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %entry1.0.i.i, %for.body.i.i.resource_list_first_type.exit.i_crit_edge ], [ null, %for.cond.i.i.resource_list_first_type.exit.i_crit_edge ]
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %retval.0.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %res.i, align 4
  %ecam_size.i = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %ecam_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ecam_size.i, align 4
  %shr.i17 = lshr i32 %36, 20
  %sub.i = add nsw i32 %shr.i17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 255
  br i1 %cmp.i, label %do.end.i19, label %resource_list_first_type.exit.i.al_pcie_config_prepare.exit_crit_edge

resource_list_first_type.exit.i.al_pcie_config_prepare.exit_crit_edge: ; preds = %resource_list_first_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %al_pcie_config_prepare.exit

do.end.i19:                                       ; preds = %resource_list_first_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i18 = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.20) #8
  br label %al_pcie_config_prepare.exit

al_pcie_config_prepare.exit:                      ; preds = %do.end.i19, %resource_list_first_type.exit.i.al_pcie_config_prepare.exit_crit_edge
  %ecam_bus_mask.0.i = phi i32 [ 255, %do.end.i19 ], [ %sub.i, %resource_list_first_type.exit.i.al_pcie_config_prepare.exit_crit_edge ]
  %target_bus_cfg2.i = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 6
  %conv.i = trunc i32 %ecam_bus_mask.0.i to i8
  %ecam_mask.i = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %ecam_mask.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %ecam_mask.i, align 1
  %conv5.i = xor i8 %conv.i, -1
  %reg_mask.i = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %reg_mask.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv5.i, ptr %reg_mask.i, align 1
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %34, align 4
  %43 = trunc i32 %42 to i8
  %conv8.i = and i8 %43, %conv5.i
  %44 = ptrtoint ptr %target_bus_cfg2.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv8.i, ptr %target_bus_cfg2.i, align 1
  %conv13.i.i = zext i8 %conv5.i to i32
  %conv38.i.i = zext i8 %conv8.i to i32
  %shl39.i.i = shl nuw nsw i32 %conv38.i.i, 8
  %or.i.i = or i32 %shl39.i.i, %conv13.i.i
  %reg_offsets.i.i = getelementptr inbounds %struct.al_pcie, ptr %3, i32 0, i32 5
  %45 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg_offsets.i.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %48 = ptrtoint ptr %controller_base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %controller_base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %47) #5, !srcloc !66
  %50 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %34, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 1
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i, align 4
  %54 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg_offsets.i.i, align 4
  %add15.i = add i32 %55, 4
  %56 = ptrtoint ptr %controller_base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %controller_base.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %57, i32 %add15.i
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #5, !srcloc !65
  %conv37.i = shl i32 %53, 8
  %shl.i = and i32 %conv37.i, 65280
  %59 = and i32 %58, -16776961
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  %conv12.i = shl i32 %51, 16
  %conv62.i = add i32 %conv12.i, 65536
  %shl63.i = and i32 %conv62.i, 16711680
  %or.i = or i32 %shl.i, %shl63.i
  %or65.i = or i32 %or.i, %60
  %61 = tail call i32 @llvm.bswap.i32(i32 %or65.i) #5
  %62 = ptrtoint ptr %controller_base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %controller_base.i.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %63, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %61) #5, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %al_pcie_config_prepare.exit, %al_pcie_reg_offsets_set.exit, %al_pcie_rev_id_get.exit.thread23
  %retval.0 = phi i32 [ 0, %al_pcie_config_prepare.exit ], [ -22, %al_pcie_reg_offsets_set.exit ], [ -22, %al_pcie_rev_id_get.exit.thread23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @al_pcie_conf_addr_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number, align 4
  %target_bus_cfg1 = getelementptr inbounds %struct.al_pcie, ptr %5, i32 0, i32 6
  %ecam_mask = getelementptr inbounds %struct.al_pcie, ptr %5, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %ecam_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ecam_mask, align 1
  %reg_mask = getelementptr inbounds %struct.al_pcie, ptr %5, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_mask, align 1
  %and441 = and i8 %11, %7
  %and4 = zext i8 %and441 to i32
  %12 = ptrtoint ptr %target_bus_cfg1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %target_bus_cfg1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %and441, i8 %13)
  %cmp.not = icmp eq i8 %and441, %13
  br i1 %cmp.not, label %entry.if.end20_crit_edge, label %do.body

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @al_pcie_conf_addr_map_bus.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@al_pcie_conf_addr_map_bus, %do.end)) #5
          to label %if.then12 [label %do.end], !srcloc !64

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = ptrtoint ptr %target_bus_cfg1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %target_bus_cfg1, align 1
  %conv15 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @al_pcie_conf_addr_map_bus.__UNIQUE_ID_ddebug252, ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %conv15, i32 noundef %and4) #5
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %20 = ptrtoint ptr %target_bus_cfg1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %and441, ptr %target_bus_cfg1, align 1
  %21 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg_mask, align 1
  %conv13.i = zext i8 %22 to i32
  %shl39.i = shl nuw nsw i32 %and4, 8
  %or.i = or i32 %shl39.i, %conv13.i
  %reg_offsets.i = getelementptr inbounds %struct.al_pcie, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_offsets.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %controller_base.i.i = getelementptr inbounds %struct.al_pcie, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %controller_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %controller_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #5, !srcloc !66
  br label %if.end20

if.end20:                                         ; preds = %do.end, %entry.if.end20_crit_edge
  %and40 = and i8 %9, %7
  %and = zext i8 %and40 to i32
  %va_cfg0_base = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %va_cfg0_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %va_cfg0_base, align 8
  %shl = shl nuw nsw i32 %and, 20
  %and22 = shl i32 %devfn, 12
  %shl23 = and i32 %and22, 1044480
  %or = or i32 %shl, %shl23
  %and24 = and i32 %where, 4095
  %or25 = or i32 %or, %and24
  %add.ptr26 = getelementptr i8, ptr %29, i32 %or25
  ret ptr %add.ptr26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_pcie_al__264_378_al_pcie_driver_init6, !1, !"__initcall__kmod_pcie_al__264_378_al_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 378, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 372, i32 11}
!4 = !{ptr @al_pcie_driver, !5, !"al_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 370, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 339, i32 64}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 341, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @al_pcie_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @al_pcie_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 347, i32 13}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 350, i32 3}
!20 = !{ptr @al_pcie_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @al_pcie_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 355, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @al_pcie_probe.__UNIQUE_ID_ddebug263, !23, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!26 = !{ptr @al_pcie_host_ops, !27, !"al_pcie_host_ops", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 313, i32 38}
!28 = !{ptr @al_child_pci_ops, !29, !"al_child_pci_ops", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 239, i32 23}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 228, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @al_pcie_conf_addr_map_bus.__UNIQUE_ID_ddebug252, !31, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 174, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @al_pcie_rev_id_get._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @al_pcie_rev_id_get._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 179, i32 2}
!41 = !{ptr @al_pcie_rev_id_get.__UNIQUE_ID_ddebug241, !40, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 195, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @al_pcie_reg_offsets_set._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @al_pcie_reg_offsets_set._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 261, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @al_pcie_config_prepare._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @al_pcie_config_prepare._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @al_pcie_of_match, !54, !"al_pcie_of_match", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/dwc/pcie-al.c", i32 362, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148493013, i64 2148493018, i64 2148493031, i64 2148493075, i64 2148493109, i64 2148493130}
!65 = !{i64 4988028}
!66 = !{i64 4987610}
