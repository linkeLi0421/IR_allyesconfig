; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c_pt.bc'
source_filename = "../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mobiveil_pab_ops = type { ptr }
%struct.mobiveil_rp_ops = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.mobiveil_pcie = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, %struct.mobiveil_root_port }
%struct.mobiveil_root_port = type { ptr, ptr, ptr, i32, %struct.raw_spinlock, ptr, %struct.mobiveil_msi, ptr }
%struct.mobiveil_msi = type { %struct.mutex, ptr, ptr, i32, i32, [1 x i32] }
%struct.ls_g4_pcie = type { %struct.mobiveil_pcie, %struct.delayed_work, i32 }

@__initcall__kmod_pcie_layerscape_gen4__236_255_ls_g4_pcie_driver_init6 = internal global ptr @ls_g4_pcie_driver_init, section ".initcall6.init", align 4
@ls_g4_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @ls_g4_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"layerscape-pcie-gen4\00", [43 x i8] zeroinitializer }, align 32
@ls_g4_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msi-parent\00", [21 x i8] zeroinitializer }, align 32
@ls_g4_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to find msi-parent\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ls_g4_pcie_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ls_g4_pcie_probe._entry_ptr = internal global ptr @ls_g4_pcie_probe._entry, section ".printk_index", align 4
@ls_g4_pcie_pab_ops = internal constant { %struct.mobiveil_pab_ops, [28 x i8] } { %struct.mobiveil_pab_ops { ptr @ls_g4_pcie_link_up }, [28 x i8] zeroinitializer }, align 32
@ls_g4_pcie_rp_ops = internal global { %struct.mobiveil_rp_ops, [28 x i8] } { %struct.mobiveil_rp_ops { ptr @ls_g4_pcie_interrupt_init }, [28 x i8] zeroinitializer }, align 32
@ls_g4_pcie_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&pcie->dwork)->work)\00", [55 x i8] zeroinitializer }, align 32
@ls_g4_pcie_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&pcie->dwork)->timer\00", [41 x i8] zeroinitializer }, align 32
@ls_g4_pcie_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fail to probe\0A\00", [17 x i8] zeroinitializer }, align 32
@ls_g4_pcie_probe._entry_ptr.12 = internal global ptr @ls_g4_pcie_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@ls_g4_pcie_interrupt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 168, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't register PCIe IRQ, errno = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ls_g4_pcie_interrupt_init\00", [38 x i8] zeroinitializer }, align 32
@ls_g4_pcie_interrupt_init._entry_ptr = internal global ptr @ls_g4_pcie_interrupt_init._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ls_g4_pcie_reinit_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Poll PABRST&PABACT timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ls_g4_pcie_reinit_hw\00", [43 x i8] zeroinitializer }, align 32
@ls_g4_pcie_reinit_hw._entry_ptr = internal global ptr @ls_g4_pcie_reinit_hw._entry, section ".printk_index", align 4
@ls_g4_pcie_reinit_hw._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCIe link training timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@ls_g4_pcie_reinit_hw._entry_ptr.20 = internal global ptr @ls_g4_pcie_reinit_hw._entry.18, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"ls_g4_pcie_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 247, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 249, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"ls_g4_pcie_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 242, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 210, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 211, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"ls_g4_pcie_pab_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 197, i32 38 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"ls_g4_pcie_rp_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 193, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 229, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 233, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 161, i32 44 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 168, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 104, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [58 x i8] c"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 127, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__initcall__kmod_pcie_layerscape_gen4__236_255_ls_g4_pcie_driver_init6, ptr @ls_g4_pcie_interrupt_init._entry, ptr @ls_g4_pcie_interrupt_init._entry_ptr, ptr @ls_g4_pcie_probe._entry, ptr @ls_g4_pcie_probe._entry.10, ptr @ls_g4_pcie_probe._entry_ptr, ptr @ls_g4_pcie_probe._entry_ptr.12, ptr @ls_g4_pcie_reinit_hw._entry, ptr @ls_g4_pcie_reinit_hw._entry.18, ptr @ls_g4_pcie_reinit_hw._entry_ptr, ptr @ls_g4_pcie_reinit_hw._entry_ptr.20, ptr @ls_g4_pcie_driver, ptr @.str, ptr @ls_g4_pcie_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ls_g4_pcie_pab_ops, ptr @ls_g4_pcie_rp_ops, ptr @ls_g4_pcie_probe.__key, ptr @.str.7, ptr @ls_g4_pcie_probe.__key.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_pab_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_rp_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_interrupt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_reinit_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_g4_pcie_reinit_hw._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_g4_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ls_g4_pcie_driver, ptr noundef nonnull @ls_g4_pcie_probe, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_g4_pcie_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call2 = call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 320) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 0, i32 16
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %private.i, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ls_g4_pcie_pab_ops, ptr %ops, align 4
  %ops8 = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 0, i32 7, i32 0, i32 2
  %7 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ls_g4_pcie_rp_ops, ptr %ops8, align 4
  %bridge10 = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %8 = ptrtoint ptr %bridge10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %bridge10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %dwork = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 9, i32 2
  call void @__init_work(ptr noundef %dwork, i32 noundef 0) #5
  %10 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 9, i32 5
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @ls_g4_pcie_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry19 = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 9, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 9, i32 4
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ls_g4_pcie_reset, ptr %func, align 4
  %timer = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 10
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @ls_g4_pcie_probe.__key.8) #5
  %call30 = call i32 @mobiveil_pcie_host_probe(ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @mobiveil_csr_write(ptr noundef %private.i, i32 noundef -1, i32 noundef 2844, i32 noundef 4) #5
  call void @mobiveil_csr_write(ptr noundef %private.i, i32 noundef 1610613738, i32 noundef 2828, i32 noundef 4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end35, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call30, %do.end35 ], [ 0, %if.end36 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ls_g4_pcie_reset(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -216
  %call.i = tail call i32 @mobiveil_csr_read(ptr noundef %add.ptr3, i32 noundef 62, i32 noundef 2) #5
  %0 = and i32 %call.i, 65471
  tail call void @mobiveil_csr_write(ptr noundef %add.ptr3, i32 noundef %0, i32 noundef 62, i32 noundef 2) #5
  %1 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr3, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %csr_axi_slave_base.i.i = getelementptr i8, ptr %work, i32 -212
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %entry
  %to.0.i = phi i32 [ 100, %entry ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #5
  %3 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %4, i32 786456
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %call.i.i = tail call i32 @mobiveil_csr_read(ptr noundef %add.ptr3, i32 noundef 2076, i32 noundef 4) #5
  %.mask.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp.i = icmp ne i32 %.mask.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %do.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %to.0.i, -1
  %tobool3.not.i = icmp eq i32 %to.0.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i.if.end_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i)
  %cmp4.i = icmp slt i32 %to.0.i, 0
  br i1 %cmp4.i, label %do.end.i.if.end_crit_edge, label %if.end.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %do.end.i
  %6 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr1.i52.i = getelementptr i8, ptr %7, i32 788476
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i52.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %9 = or i32 %8, 128
  %10 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr1.i54.i = getelementptr i8, ptr %11, i32 788476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i54.i, i32 %9) #5, !srcloc !59
  %12 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr1.i57.i = getelementptr i8, ptr %13, i32 788476
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i57.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %15 = or i32 %14, 8
  %16 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr1.i59.i = getelementptr i8, ptr %17, i32 788476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i59.i, i32 %15) #5, !srcloc !59
  %18 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr1.i62.i = getelementptr i8, ptr %19, i32 788476
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i62.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %21 = and i32 %20, -129
  %22 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr1.i64.i = getelementptr i8, ptr %23, i32 788476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i64.i, i32 %21) #5, !srcloc !59
  %call13.i = tail call i32 @mobiveil_host_init(ptr noundef %add.ptr3, i1 noundef zeroext true) #5
  %24 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr3, align 4
  %driver_data.i.i.i72.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i72.i, align 4
  %csr_axi_slave_base.i.i73.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %csr_axi_slave_base.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr_axi_slave_base.i.i73.i, align 4
  %add.ptr1.i.i74.i = getelementptr i8, ptr %29, i32 788476
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i74.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %31 = and i32 %30, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 754974720, i32 %31)
  %cmp.i.not75.i = icmp eq i32 %31, 754974720
  br i1 %cmp.i.not75.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.land.rhs16.i_crit_edge

if.end.i.land.rhs16.i_crit_edge:                  ; preds = %if.end.i
  br label %land.rhs16.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs16.i:                                     ; preds = %while.body.i.land.rhs16.i_crit_edge, %if.end.i.land.rhs16.i_crit_edge
  %to.276.i = phi i32 [ %dec17.i, %while.body.i.land.rhs16.i_crit_edge ], [ 100, %if.end.i.land.rhs16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.276.i)
  %tobool18.not.i = icmp eq i32 %to.276.i, 0
  br i1 %tobool18.not.i, label %land.rhs16.i.if.end_crit_edge, label %while.body.i

land.rhs16.i.if.end_crit_edge:                    ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.body.i:                                     ; preds = %land.rhs16.i
  %dec17.i = add nsw i32 %to.276.i, -1
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #5
  %32 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr3, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %csr_axi_slave_base.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %csr_axi_slave_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %csr_axi_slave_base.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %37, i32 788476
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %39 = and i32 %38, 1056964608
  %cmp.i.not.i = icmp eq i32 %39, 754974720
  br i1 %cmp.i.not.i, label %while.end.i, label %while.body.i.land.rhs16.i_crit_edge

while.body.i.land.rhs16.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs16.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %to.276.i)
  %phi.cmp.i = icmp slt i32 %to.276.i, 1
  br i1 %phi.cmp.i, label %while.end.i.if.end_crit_edge, label %while.end.i.cleanup_crit_edge

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %while.end.i.if.end_crit_edge, %land.rhs16.i.if.end_crit_edge, %do.end.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  %.str.19.sink.i = phi ptr [ @.str.16, %do.end.i.if.end_crit_edge ], [ @.str.19, %while.end.i.if.end_crit_edge ], [ @.str.19, %land.rhs16.i.if.end_crit_edge ], [ @.str.16, %land.rhs.i.if.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull %.str.19.sink.i) #8
  tail call void @mobiveil_csr_write(ptr noundef %add.ptr3, i32 noundef -1, i32 noundef 2844, i32 noundef 4) #5
  tail call void @mobiveil_csr_write(ptr noundef %add.ptr3, i32 noundef 1610613738, i32 noundef 2828, i32 noundef 4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mobiveil_pcie_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_g4_pcie_link_up(ptr nocapture noundef readonly %pci) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %csr_axi_slave_base.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %csr_axi_slave_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_axi_slave_base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 788476
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %7 = and i32 %6, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 754974720, i32 %7)
  %cmp = icmp eq i32 %7, 754974720
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_g4_pcie_interrupt_init(ptr nocapture noundef readonly %mv_pci) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mv_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mv_pci, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @platform_get_irq_byname(ptr noundef %1, ptr noundef nonnull @.str.13) #5
  %irq = getelementptr inbounds %struct.ls_g4_pcie, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev3, i32 noundef %call4, ptr noundef nonnull @ls_g4_pcie_isr, ptr noundef null, i32 noundef 128, ptr noundef %6, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.14, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_g4_pcie_isr(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mobiveil_csr_read(ptr noundef %dev_id, i32 noundef 2844, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mobiveil_csr_write(ptr noundef %dev_id, i32 noundef 0, i32 noundef 2828, i32 noundef 4) #5
  %dwork = getelementptr inbounds %struct.ls_g4_pcie, ptr %dev_id, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %dwork, i32 noundef 1) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  tail call void @mobiveil_csr_write(ptr noundef %dev_id, i32 noundef %call.i, i32 noundef 2844, i32 noundef 4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mobiveil_csr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mobiveil_csr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mobiveil_host_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_pcie_layerscape_gen4__236_255_ls_g4_pcie_driver_init6, !1, !"__initcall__kmod_pcie_layerscape_gen4__236_255_ls_g4_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 255, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 249, i32 11}
!4 = !{ptr @ls_g4_pcie_driver, !5, !"ls_g4_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 247, i32 31}
!6 = !{ptr @ls_g4_pcie_of_match, !7, !"ls_g4_pcie_of_match", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 242, i32 34}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 210, i32 28}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 211, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ls_g4_pcie_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @ls_g4_pcie_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @ls_g4_pcie_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 229, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ls_g4_pcie_probe.__key.8, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 233, i32 3}
!25 = !{ptr @ls_g4_pcie_probe._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ls_g4_pcie_probe._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ls_g4_pcie_pab_ops, !28, !"ls_g4_pcie_pab_ops", i1 false, i1 false}
!28 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 197, i32 38}
!29 = !{ptr @ls_g4_pcie_rp_ops, !30, !"ls_g4_pcie_rp_ops", i1 false, i1 false}
!30 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 193, i32 31}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 161, i32 44}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 168, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ls_g4_pcie_interrupt_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ls_g4_pcie_interrupt_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 104, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ls_g4_pcie_reinit_hw._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ls_g4_pcie_reinit_hw._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c", i32 127, i32 3}
!45 = !{ptr @ls_g4_pcie_reinit_hw._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ls_g4_pcie_reinit_hw._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 4202830}
!57 = !{i64 2151743179}
!58 = !{i64 2151744534}
!59 = !{i64 4202412}
