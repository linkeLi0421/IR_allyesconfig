; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/cadence/pcie-cadence-ep.c_pt.bc'
source_filename = "../drivers/pci/controller/cadence/pcie-cadence-ep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_epc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.cdns_pcie = type { ptr, ptr, ptr, i8, i32, ptr, ptr, ptr }
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
%struct.cdns_pcie_ep = type { %struct.cdns_pcie, i32, i32, ptr, i32, ptr, i64, i8, i8, %struct.spinlock, ptr, i8 }
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.cdns_pcie_epf = type { ptr, [6 x ptr] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_epf_header = type { i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.pci_epf_msix_tbl = type { i64, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 641, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"missing \22reg\22\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_pcie_ep_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/pci/controller/cadence/pcie-cadence-ep.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_setup._entry_ptr = internal global ptr @cdns_pcie_ep_setup._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"missing \22mem\22\0A\00", [17 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_setup._entry_ptr.9 = internal global ptr @cdns_pcie_ep_setup._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns,max-outbound-regions\00", [38 x i8] zeroinitializer }, align 32
@cdns_pcie_epc_ops = internal constant { %struct.pci_epc_ops, [36 x i8] } { %struct.pci_epc_ops { ptr @cdns_pcie_ep_write_header, ptr @cdns_pcie_ep_set_bar, ptr @cdns_pcie_ep_clear_bar, ptr @cdns_pcie_ep_map_addr, ptr @cdns_pcie_ep_unmap_addr, ptr @cdns_pcie_ep_set_msi, ptr @cdns_pcie_ep_get_msi, ptr @cdns_pcie_ep_set_msix, ptr @cdns_pcie_ep_get_msix, ptr @cdns_pcie_ep_raise_irq, ptr @cdns_pcie_ep_map_msi_irq, ptr @cdns_pcie_ep_start, ptr null, ptr @cdns_pcie_ep_get_features, ptr null }, [36 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create epc device\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_setup._entry_ptr.13 = internal global ptr @cdns_pcie_ep_setup._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max-functions\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max-virtual-functions\00", [42 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_setup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 702, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize the memory space\0A\00", [57 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_setup._entry_ptr.18 = internal global ptr @cdns_pcie_ep_setup._entry.16, section ".printk_index", align 4
@cdns_pcie_ep_setup._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to reserve memory space for MSI\0A\00", [56 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_setup._entry_ptr.21 = internal global ptr @cdns_pcie_ep_setup._entry.19, section ".printk_index", align 4
@cdns_pcie_ep_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ep->lock\00", [22 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_write_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 43, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Only Virtual Function #1 has deviceID\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_pcie_ep_write_header\00", [38 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_write_header._entry_ptr = internal global ptr @cdns_pcie_ep_write_header._entry, section ".printk_index", align 4
@cdns_pcie_write_sz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Address %p and size %d are not aligned\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_pcie_write_sz\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/pci/controller/cadence/pcie-cadence.h\00", [50 x i8] zeroinitializer }, align 32
@cdns_pcie_write_sz._entry_ptr = internal global ptr @cdns_pcie_write_sz._entry, section ".printk_index", align 4
@cdns_pcie_read_sz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.28, ptr @.str.27, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cdns_pcie_read_sz\00", [46 x i8] zeroinitializer }, align 32
@cdns_pcie_read_sz._entry_ptr = internal global ptr @cdns_pcie_read_sz._entry, section ".printk_index", align 4
@cdns_pcie_ep_map_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no free outbound region\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdns_pcie_ep_map_addr\00", [42 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_map_addr._entry_ptr = internal global ptr @cdns_pcie_ep_map_addr._entry, section ".printk_index", align 4
@cdns_pcie_ep_raise_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot raise legacy interrupts for VF\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_pcie_ep_raise_irq\00", [41 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_raise_irq._entry_ptr = internal global ptr @cdns_pcie_ep_raise_irq._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cdns_pcie_ep_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to start link\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_pcie_ep_start\00", [45 x i8] zeroinitializer }, align 32
@cdns_pcie_ep_start._entry_ptr = internal global ptr @cdns_pcie_ep_start._entry, section ".printk_index", align 4
@cdns_pcie_epc_features = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 48, i8 0, i8 0, [6 x i64] zeroinitializer, i32 256 }, [32 x i8] zeroinitializer }, align 32
@cdns_pcie_epc_vf_features = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 48, i8 0, i8 0, [6 x i64] zeroinitializer, i32 65536 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 639, i32 63 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 641, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 645, i32 59 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 647, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 653, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"cdns_pcie_epc_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 608, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 666, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 672, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 685, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 702, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 709, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 720, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 43, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 414, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [49 x i8] c"../drivers/pci/controller/cadence/pcie-cadence.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 396, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 193, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 545, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 578, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [23 x i8] c"cdns_pcie_epc_features\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 592, i32 38 }
@___asan_gen_.158 = private unnamed_addr constant [26 x i8] c"cdns_pcie_epc_vf_features\00", align 1
@___asan_gen_.159 = private constant [52 x i8] c"../drivers/pci/controller/cadence/pcie-cadence-ep.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 585, i32 38 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @cdns_pcie_ep_map_addr._entry, ptr @cdns_pcie_ep_map_addr._entry_ptr, ptr @cdns_pcie_ep_raise_irq._entry, ptr @cdns_pcie_ep_raise_irq._entry_ptr, ptr @cdns_pcie_ep_setup._entry, ptr @cdns_pcie_ep_setup._entry.11, ptr @cdns_pcie_ep_setup._entry.16, ptr @cdns_pcie_ep_setup._entry.19, ptr @cdns_pcie_ep_setup._entry.7, ptr @cdns_pcie_ep_setup._entry_ptr, ptr @cdns_pcie_ep_setup._entry_ptr.13, ptr @cdns_pcie_ep_setup._entry_ptr.18, ptr @cdns_pcie_ep_setup._entry_ptr.21, ptr @cdns_pcie_ep_setup._entry_ptr.9, ptr @cdns_pcie_ep_start._entry, ptr @cdns_pcie_ep_start._entry_ptr, ptr @cdns_pcie_ep_write_header._entry, ptr @cdns_pcie_ep_write_header._entry_ptr, ptr @cdns_pcie_read_sz._entry, ptr @cdns_pcie_read_sz._entry_ptr, ptr @cdns_pcie_write_sz._entry, ptr @cdns_pcie_write_sz._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @cdns_pcie_epc_ops, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @cdns_pcie_ep_setup.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @cdns_pcie_epc_features, ptr @cdns_pcie_epc_vf_features], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_epc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_setup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_setup._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_write_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_write_sz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_read_sz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_map_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_raise_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_ep_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_epc_features to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_epc_vf_features to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_pcie_ep_setup(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cdns_pcie, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %is_rc = getelementptr inbounds %struct.cdns_pcie, ptr %ep, i32 0, i32 3
  %4 = ptrtoint ptr %is_rc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_rc, align 4
  %call = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str) #5
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %ep, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  %6 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.6) #5
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %mem_res = getelementptr inbounds %struct.cdns_pcie, ptr %ep, i32 0, i32 1
  %9 = ptrtoint ptr %mem_res to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %mem_res, align 4
  %max_regions = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 1
  %10 = ptrtoint ptr %max_regions to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %max_regions, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %max_regions, i32 noundef 1, i32 noundef 0) #5
  %11 = ptrtoint ptr %max_regions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_regions, align 8
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4) #5
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !82

devm_kcalloc.exit.thread:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %ob_addr191 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 3
  %15 = ptrtoint ptr %ob_addr191 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ob_addr191, align 8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end13
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %16, i32 noundef 3520) #5
  %ob_addr = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 3
  %17 = ptrtoint ptr %ob_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %ob_addr, align 8
  %tobool19.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool19.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end21

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %devm_kcalloc.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 1049280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !84
  %call22 = tail call ptr @__devm_pci_epc_create(ptr noundef %1, ptr noundef nonnull @cdns_pcie_epc_ops, ptr noundef null) #5
  %cmp.i176 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12) #8
  %20 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call22, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ep, ptr %driver_data.i.i, align 4
  %max_functions = getelementptr inbounds %struct.pci_epc, ptr %call22, i32 0, i32 6
  %call.i.i177 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef %max_functions, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i177)
  %cmp = icmp slt i32 %call.i.i177, 0
  br i1 %cmp, label %if.then31, label %if.end29.devm_kcalloc.exit181_crit_edge

if.end29.devm_kcalloc.exit181_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %devm_kcalloc.exit181

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %max_functions to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %max_functions, align 8
  br label %devm_kcalloc.exit181

devm_kcalloc.exit181:                             ; preds = %if.then31, %if.end29.devm_kcalloc.exit181_crit_edge
  %23 = ptrtoint ptr %max_functions to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_functions, align 8
  %conv = zext i8 %24 to i32
  %25 = mul nuw nsw i32 %conv, 28
  %call5.i.i178 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %25, i32 noundef 3520) #5
  %epf36 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 10
  %26 = ptrtoint ptr %epf36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i178, ptr %epf36, align 8
  %tobool38.not = icmp eq ptr %call5.i.i178, null
  br i1 %tobool38.not, label %devm_kcalloc.exit181.cleanup_crit_edge, label %devm_kcalloc.exit185

devm_kcalloc.exit181.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit181
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

devm_kcalloc.exit185:                             ; preds = %devm_kcalloc.exit181
  %27 = ptrtoint ptr %max_functions to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_functions, align 8
  %conv42 = zext i8 %28 to i32
  %call5.i.i182 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %conv42, i32 noundef 3520) #5
  %max_vfs = getelementptr inbounds %struct.pci_epc, ptr %call22, i32 0, i32 7
  %29 = ptrtoint ptr %max_vfs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i.i182, ptr %max_vfs, align 4
  %tobool45.not = icmp eq ptr %call5.i.i182, null
  br i1 %tobool45.not, label %devm_kcalloc.exit185.cleanup_crit_edge, label %if.end47

devm_kcalloc.exit185.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit185
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %devm_kcalloc.exit185
  %30 = ptrtoint ptr %max_functions to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_functions, align 8
  %conv50 = zext i8 %31 to i32
  %call.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull %call5.i.i182, i32 noundef %conv50, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp52 = icmp sgt i32 %call.i, -1
  br i1 %cmp52, label %for.cond.preheader, label %if.end47.if.end76_crit_edge

if.end47.if.end76_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

for.cond.preheader:                               ; preds = %if.end47
  %32 = ptrtoint ptr %max_functions to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %max_functions, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp57202.not = icmp eq i8 %33, 0
  br i1 %cmp57202.not, label %for.cond.preheader.if.end76_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end76_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0203 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %34 = ptrtoint ptr %max_vfs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %max_vfs, align 4
  %arrayidx61 = getelementptr i8, ptr %35, i32 %i.0203
  %36 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp63 = icmp eq i8 %37, 0
  br i1 %cmp63, label %for.body.for.inc_crit_edge, label %devm_kcalloc.exit189

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

devm_kcalloc.exit189:                             ; preds = %for.body
  %38 = ptrtoint ptr %epf36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %epf36, align 8
  %arrayidx = getelementptr %struct.cdns_pcie_epf, ptr %39, i32 %i.0203
  %conv62 = zext i8 %37 to i32
  %40 = mul nuw nsw i32 %conv62, 28
  %call5.i.i186 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %40, i32 noundef 3520) #5
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call5.i.i186, ptr %arrayidx, align 4
  %tobool73.not = icmp eq ptr %call5.i.i186, null
  br i1 %tobool73.not, label %devm_kcalloc.exit189.cleanup_crit_edge, label %devm_kcalloc.exit189.for.inc_crit_edge

devm_kcalloc.exit189.for.inc_crit_edge:           ; preds = %devm_kcalloc.exit189
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

devm_kcalloc.exit189.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit189
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %devm_kcalloc.exit189.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0203, 1
  %42 = ptrtoint ptr %max_functions to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %max_functions, align 8
  %conv56 = zext i8 %43 to i32
  %cmp57 = icmp ult i32 %inc, %conv56
  br i1 %cmp57, label %for.inc.for.body_crit_edge, label %for.inc.if.end76_crit_edge

for.inc.if.end76_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end76:                                         ; preds = %for.inc.if.end76_crit_edge, %for.cond.preheader.if.end76_crit_edge, %if.end47.if.end76_crit_edge
  %44 = ptrtoint ptr %mem_res to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem_res, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %47
  %add.i = add i32 %sub.i, %49
  %call80 = tail call i32 @pci_epc_mem_init(ptr noundef %call22, i32 noundef %47, i32 noundef %add.i, i32 noundef 4096) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %do.end86, label %if.end87

do.end86:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end87:                                         ; preds = %if.end76
  %irq_phys_addr = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 4
  %call88 = tail call ptr @pci_epc_mem_alloc_addr(ptr noundef %call22, ptr noundef %irq_phys_addr, i32 noundef 131072) #5
  %irq_cpu_addr = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 5
  %50 = ptrtoint ptr %irq_cpu_addr to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call88, ptr %irq_cpu_addr, align 8
  %tobool90.not = icmp eq ptr %call88, null
  br i1 %tobool90.not, label %do.end94, label %if.end95

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #8
  tail call void @pci_epc_mem_exit(ptr noundef %call22) #5
  br label %cleanup

if.end95:                                         ; preds = %if.end87
  %irq_pci_addr = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 6
  %51 = ptrtoint ptr %irq_pci_addr to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1, ptr %irq_pci_addr, align 8
  %ob_region_map = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %ob_region_map) #5
  %quirk_detect_quiet_flag = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 11
  %52 = ptrtoint ptr %quirk_detect_quiet_flag to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %quirk_detect_quiet_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool96.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool96.not, label %if.end95.do.body100_crit_edge, label %if.then97

if.end95.do.body100_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cdns_pcie_detect_quiet_min_delay_set(ptr noundef %ep) #5
  br label %do.body100

do.body100:                                       ; preds = %if.then97, %if.end95.do.body100_crit_edge
  %lock = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @cdns_pcie_ep_setup.__key, i16 noundef signext 3) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body100, %do.end94, %do.end86, %devm_kcalloc.exit189.cleanup_crit_edge, %devm_kcalloc.exit185.cleanup_crit_edge, %devm_kcalloc.exit181.cleanup_crit_edge, %do.end27, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end12, %do.end
  %retval.0 = phi i32 [ %8, %do.end ], [ %20, %do.end27 ], [ %call80, %do.end86 ], [ 0, %do.body100 ], [ -12, %do.end94 ], [ -22, %do.end12 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit181.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit185.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit189.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_pci_epc_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_mem_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_mem_alloc_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_pcie_detect_quiet_min_delay_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_mem_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_write_header(ptr noundef %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %vfn)
  %cmp = icmp ugt i8 %vfn, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epc, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %vfn)
  %cmp4 = icmp eq i8 %vfn, 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i = zext i8 %fn to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 538
  %4 = ptrtoint ptr %add.ptr1.i to i32
  %and3.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %cmp.i.i, label %if.end9.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i, i32 noundef 2) #8
  br label %cleanup

if.end9.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %deviceid = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 1
  %5 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %deviceid, align 2
  %conv2.i = zext i16 %6 to i32
  %and.i.i = and i32 %4, -4
  %7 = inttoptr i32 %and.i.i to ptr
  %and1.i.i = shl i32 %4, 3
  %mul11.i.i = and i32 %and1.i.i, 24
  %shl12.i.i = shl i32 65535, %mul11.i.i
  %neg.i.i = xor i32 %shl12.i.i, -1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !85
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i = and i32 %9, %neg.i.i
  %shl18.i.i = shl i32 %conv2.i, %mul11.i.i
  %or.i.i = or i32 %and16.i.i, %shl18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %10) #5, !srcloc !84
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %add.ptr1.i58 = getelementptr i8, ptr %add.ptr.i, i32 2
  %11 = ptrtoint ptr %add.ptr1.i58 to i32
  %and3.i.i59 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i59)
  %cmp.i.i60 = icmp eq i32 %and3.i.i59, 0
  br i1 %cmp.i.i60, label %if.end9.i.i72, label %do.end.i.i62

do.end.i.i62:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i58, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_writew.exit73

if.end9.i.i72:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %deviceid8 = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 1
  %12 = ptrtoint ptr %deviceid8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %deviceid8, align 2
  %conv2.i63 = zext i16 %13 to i32
  %and.i.i64 = and i32 %11, -4
  %14 = inttoptr i32 %and.i.i64 to ptr
  %and1.i.i65 = shl i32 %11, 3
  %mul11.i.i66 = and i32 %and1.i.i65, 24
  %shl12.i.i67 = shl i32 65535, %mul11.i.i66
  %neg.i.i68 = xor i32 %shl12.i.i67, -1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !85
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i69 = and i32 %16, %neg.i.i68
  %shl18.i.i70 = shl i32 %conv2.i63, %mul11.i.i66
  %or.i.i71 = or i32 %and16.i.i69, %shl18.i.i70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i.i71) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %17) #5, !srcloc !84
  br label %cdns_pcie_ep_fn_writew.exit73

cdns_pcie_ep_fn_writew.exit73:                    ; preds = %if.end9.i.i72, %do.end.i.i62
  %revid = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 2
  %18 = ptrtoint ptr %revid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %revid, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i76 = getelementptr i8, ptr %21, i32 %shl.i
  %add.ptr1.i77 = getelementptr i8, ptr %add.ptr.i76, i32 8
  %conv2.i78 = zext i8 %19 to i32
  %22 = ptrtoint ptr %add.ptr1.i77 to i32
  %and.i.i79 = and i32 %22, -4
  %23 = inttoptr i32 %and.i.i79 to ptr
  %and1.i.i80 = shl i32 %22, 3
  %mul11.i.i81 = and i32 %and1.i.i80, 24
  %shl12.i.i82 = shl nuw i32 255, %mul11.i.i81
  %neg.i.i83 = xor i32 %shl12.i.i82, -1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !85
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i84 = and i32 %25, %neg.i.i83
  %shl18.i.i85 = shl nuw i32 %conv2.i78, %mul11.i.i81
  %or.i.i86 = or i32 %and16.i.i84, %shl18.i.i85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i86) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %26) #5, !srcloc !84
  %progif_code = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 3
  %27 = ptrtoint ptr %progif_code to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %progif_code, align 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i89 = getelementptr i8, ptr %30, i32 %shl.i
  %add.ptr1.i90 = getelementptr i8, ptr %add.ptr.i89, i32 9
  %conv2.i91 = zext i8 %28 to i32
  %31 = ptrtoint ptr %add.ptr1.i90 to i32
  %and.i.i92 = and i32 %31, -4
  %32 = inttoptr i32 %and.i.i92 to ptr
  %and1.i.i93 = shl i32 %31, 3
  %mul11.i.i94 = and i32 %and1.i.i93, 24
  %shl12.i.i95 = shl nuw i32 255, %mul11.i.i94
  %neg.i.i96 = xor i32 %shl12.i.i95, -1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !85
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i97 = and i32 %34, %neg.i.i96
  %shl18.i.i98 = shl nuw i32 %conv2.i91, %mul11.i.i94
  %or.i.i99 = or i32 %and16.i.i97, %shl18.i.i98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i.i99) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %35) #5, !srcloc !84
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr.i102 = getelementptr i8, ptr %37, i32 %shl.i
  %add.ptr1.i103 = getelementptr i8, ptr %add.ptr.i102, i32 10
  %38 = ptrtoint ptr %add.ptr1.i103 to i32
  %and3.i.i104 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i104)
  %cmp.i.i105 = icmp eq i32 %and3.i.i104, 0
  br i1 %cmp.i.i105, label %if.end9.i.i117, label %do.end.i.i107

do.end.i.i107:                                    ; preds = %cdns_pcie_ep_fn_writew.exit73
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i103, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_writew.exit118

if.end9.i.i117:                                   ; preds = %cdns_pcie_ep_fn_writew.exit73
  call void @__sanitizer_cov_trace_pc() #7
  %baseclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 5
  %39 = ptrtoint ptr %baseclass_code to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %baseclass_code, align 1
  %conv10 = zext i8 %40 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %subclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 4
  %41 = ptrtoint ptr %subclass_code to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %subclass_code, align 2
  %conv9 = zext i8 %42 to i32
  %or = or i32 %shl, %conv9
  %and.i.i109 = and i32 %38, -4
  %43 = inttoptr i32 %and.i.i109 to ptr
  %and1.i.i110 = shl i32 %38, 3
  %mul11.i.i111 = and i32 %and1.i.i110, 24
  %shl12.i.i112 = shl i32 65535, %mul11.i.i111
  %neg.i.i113 = xor i32 %shl12.i.i112, -1
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !85
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i114 = and i32 %45, %neg.i.i113
  %shl18.i.i115 = shl i32 %or, %mul11.i.i111
  %or.i.i116 = or i32 %and16.i.i114, %shl18.i.i115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i116) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %46) #5, !srcloc !84
  br label %cdns_pcie_ep_fn_writew.exit118

cdns_pcie_ep_fn_writew.exit118:                   ; preds = %if.end9.i.i117, %do.end.i.i107
  %cache_line_size = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 6
  %47 = ptrtoint ptr %cache_line_size to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cache_line_size, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %add.ptr.i121 = getelementptr i8, ptr %50, i32 %shl.i
  %add.ptr1.i122 = getelementptr i8, ptr %add.ptr.i121, i32 12
  %conv2.i123 = zext i8 %48 to i32
  %51 = ptrtoint ptr %add.ptr1.i122 to i32
  %and.i.i124 = and i32 %51, -4
  %52 = inttoptr i32 %and.i.i124 to ptr
  %and1.i.i125 = shl i32 %51, 3
  %mul11.i.i126 = and i32 %and1.i.i125, 24
  %shl12.i.i127 = shl nuw i32 255, %mul11.i.i126
  %neg.i.i128 = xor i32 %shl12.i.i127, -1
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !85
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i129 = and i32 %54, %neg.i.i128
  %shl18.i.i130 = shl nuw i32 %conv2.i123, %mul11.i.i126
  %or.i.i131 = or i32 %and16.i.i129, %shl18.i.i130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i.i131) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %55) #5, !srcloc !84
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr.i134 = getelementptr i8, ptr %57, i32 %shl.i
  %add.ptr1.i135 = getelementptr i8, ptr %add.ptr.i134, i32 46
  %58 = ptrtoint ptr %add.ptr1.i135 to i32
  %and3.i.i136 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i136)
  %cmp.i.i137 = icmp eq i32 %and3.i.i136, 0
  br i1 %cmp.i.i137, label %if.end9.i.i149, label %do.end.i.i139

do.end.i.i139:                                    ; preds = %cdns_pcie_ep_fn_writew.exit118
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i135, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_writew.exit150

if.end9.i.i149:                                   ; preds = %cdns_pcie_ep_fn_writew.exit118
  call void @__sanitizer_cov_trace_pc() #7
  %subsys_id = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 8
  %59 = ptrtoint ptr %subsys_id to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %subsys_id, align 4
  %conv2.i140 = zext i16 %60 to i32
  %and.i.i141 = and i32 %58, -4
  %61 = inttoptr i32 %and.i.i141 to ptr
  %and1.i.i142 = shl i32 %58, 3
  %mul11.i.i143 = and i32 %and1.i.i142, 24
  %shl12.i.i144 = shl i32 65535, %mul11.i.i143
  %neg.i.i145 = xor i32 %shl12.i.i144, -1
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #5, !srcloc !85
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i146 = and i32 %63, %neg.i.i145
  %shl18.i.i147 = shl i32 %conv2.i140, %mul11.i.i143
  %or.i.i148 = or i32 %and16.i.i146, %shl18.i.i147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i.i148) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %64) #5, !srcloc !84
  br label %cdns_pcie_ep_fn_writew.exit150

cdns_pcie_ep_fn_writew.exit150:                   ; preds = %if.end9.i.i149, %do.end.i.i139
  %interrupt_pin = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 9
  %65 = ptrtoint ptr %interrupt_pin to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %interrupt_pin, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %add.ptr.i153 = getelementptr i8, ptr %68, i32 %shl.i
  %add.ptr1.i154 = getelementptr i8, ptr %add.ptr.i153, i32 61
  %conv2.i155 = and i32 %66, 255
  %69 = ptrtoint ptr %add.ptr1.i154 to i32
  %and.i.i156 = and i32 %69, -4
  %70 = inttoptr i32 %and.i.i156 to ptr
  %and1.i.i157 = shl i32 %69, 3
  %mul11.i.i158 = and i32 %and1.i.i157, 24
  %shl12.i.i159 = shl nuw i32 255, %mul11.i.i158
  %neg.i.i160 = xor i32 %shl12.i.i159, -1
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #5, !srcloc !85
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i161 = and i32 %72, %neg.i.i160
  %shl18.i.i162 = shl nuw i32 %conv2.i155, %mul11.i.i158
  %or.i.i163 = or i32 %and16.i.i161, %shl18.i.i162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %73 = tail call i32 @llvm.bswap.i32(i32 %or.i.i163) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %73) #5, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fn)
  %cmp14 = icmp eq i8 %fn, 0
  br i1 %cmp14, label %if.then16, label %cdns_pcie_ep_fn_writew.exit150.cleanup_crit_edge

cdns_pcie_ep_fn_writew.exit150.cleanup_crit_edge: ; preds = %cdns_pcie_ep_fn_writew.exit150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %cdns_pcie_ep_fn_writew.exit150
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %hdr, align 4
  %conv17 = zext i16 %75 to i32
  %subsys_vendor_id = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 7
  %76 = ptrtoint ptr %subsys_vendor_id to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %subsys_vendor_id, align 2
  %conv19 = zext i16 %77 to i32
  %shl20 = shl nuw i32 %conv19, 16
  %or22 = or i32 %shl20, %conv17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %78 = tail call i32 @llvm.bswap.i32(i32 %or22) #5
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %add.ptr.i164 = getelementptr i8, ptr %80, i32 1048644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %78) #5, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %cdns_pcie_ep_fn_writew.exit150.cleanup_crit_edge, %if.end9.i.i, %do.end.i.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then16 ], [ 0, %cdns_pcie_ep_fn_writew.exit150.cleanup_crit_edge ], [ 0, %do.end.i.i ], [ 0, %if.end9.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_set_bar(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, ptr noundef %epf_bar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %epf1 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epf1, align 8
  %idxprom = zext i8 %fn to i32
  %arrayidx = getelementptr %struct.cdns_pcie_epf, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %epf_bar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %epf_bar, align 4
  %barno = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 3
  %6 = ptrtoint ptr %barno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %barno, align 4
  %flags3 = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 4
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3, align 4
  %size = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 128)
  %sub = add i32 %12, -1
  %13 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #5, !range !88
  %sub.i6.i = sub nuw nsw i32 32, %13
  %sh_prom = zext i32 %sub.i6.i to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %shr.i.i = lshr i64 %shl, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #5, !range !88
  %add.i.i = sub nuw nsw i32 64, %14
  br label %cond.end15

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i.i = trunc i64 %shl to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #5, !range !88
  %sub.i6.i.i = sub nuw nsw i32 32, %15
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end15

cond.end15:                                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub17 = add nsw i32 %retval.0.i.i, 24
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18.not = icmp eq i32 %and, 0
  br i1 %cmp18.not, label %if.else, label %cond.end15.if.end55_crit_edge

cond.end15.if.end55_crit_edge:                    ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.else:                                          ; preds = %cond.end15
  %and20 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22 = icmp eq i32 %13, 0
  %cmp22.not = xor i1 %cmp22, true
  %and27 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond = select i1 %cmp22.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.end, label %if.else.cleanup143_crit_edge

if.else.cleanup143_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup143

if.end:                                           ; preds = %if.else
  %and33 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %or.cond213 = select i1 %cmp22, i1 %tobool34.not, i1 false
  br i1 %or.cond213, label %if.then35, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %9, 4
  %16 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %flags3, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end.if.end37_crit_edge
  %brmerge = select i1 %cmp22.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.else44, label %if.end37.if.end55_crit_edge

if.end37.if.end55_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.else44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %.215 = select i1 %cmp22, i32 6, i32 4
  %spec.select = select i1 %tobool.not, i32 %.215, i32 5
  br label %if.end55

if.end55:                                         ; preds = %if.else44, %if.end37.if.end55_crit_edge, %cond.end15.if.end55_crit_edge
  %ctrl.2 = phi i32 [ 1, %cond.end15.if.end55_crit_edge ], [ %spec.select, %if.else44 ], [ 7, %if.end37.if.end55_crit_edge ]
  %conv58 = zext i8 %vfn to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %vfn)
  %cmp59 = icmp eq i8 %vfn, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp62 = icmp slt i32 %7, 4
  %mul = shl nuw nsw i32 %idxprom, 3
  br i1 %cmp59, label %if.end85.thread, label %if.end85

if.end85.thread:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %cond71.v = select i1 %cmp62, i32 1049216, i32 1049220
  %sub90228 = add i32 %7, -4
  %cond92229 = select i1 %cmp62, i32 %7, i32 %sub90228
  br label %if.end120

if.end85:                                         ; preds = %if.end55
  %cond84.v = select i1 %cmp62, i32 1049152, i32 1049156
  %sub90 = add i32 %7, -4
  %cond92 = select i1 %cmp62, i32 %7, i32 %sub90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %switch = icmp eq i8 %vfn, 0
  br i1 %switch, label %if.end85.if.end120_crit_edge, label %if.end85.if.end.i219_crit_edge

if.end85.if.end.i219_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i219

if.end85.if.end120_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.end120:                                        ; preds = %if.end85.if.end120_crit_edge, %if.end85.thread
  %cond92232 = phi i32 [ %cond92229, %if.end85.thread ], [ %cond92, %if.end85.if.end120_crit_edge ]
  %cond71.v.pn = phi i32 [ %cond71.v, %if.end85.thread ], [ %cond84.v, %if.end85.if.end120_crit_edge ]
  %reg.0231 = add nuw nsw i32 %cond71.v.pn, %mul
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %reg.0231
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !85
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  %mul101 = shl i32 %cond92232, 3
  %shl104 = shl i32 224, %mul101
  %or105 = shl i32 255, %mul101
  %neg = xor i32 %or105, -1
  %and106 = and i32 %20, %neg
  %shl108212 = and i32 %sub17, 31
  %and111 = shl i32 %shl108212, %mul101
  %add113 = or i32 %mul101, 5
  %shl114 = shl i32 %ctrl.2, %add113
  %and117 = and i32 %shl114, %shl104
  %or118 = or i32 %and117, %and111
  %or119 = or i32 %or118, %and106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or119) #5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i217 = getelementptr i8, ptr %23, i32 %reg.0231
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 %21) #5, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.i = icmp eq i8 %vfn, 0
  br i1 %cmp.i, label %if.end120.cdns_pcie_get_fn_from_vfn.exit_crit_edge, label %if.end120.if.end.i219_crit_edge

if.end120.if.end.i219_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i219

if.end120.cdns_pcie_get_fn_from_vfn.exit_crit_edge: ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit

if.end.i219:                                      ; preds = %if.end120.if.end.i219_crit_edge, %if.end85.if.end.i219_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %shl.i.i = shl nuw nsw i32 %idxprom, 12
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %shl.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 532
  %26 = ptrtoint ptr %add.ptr1.i.i to i32
  %and.i.i.i = and i32 %26, -4
  %27 = inttoptr i32 %and.i.i.i to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end9.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i

if.end9.i.i.i:                                    ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %and1.i.i.i = shl i32 %26, 3
  %mul.i.i.i = and i32 %and1.i.i.i, 24
  %shr.i.i.i = lshr i32 %29, %mul.i.i.i
  %extract.t.i = trunc i32 %shr.i.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit.i

cdns_pcie_ep_fn_readw.exit.i:                     ; preds = %if.end9.i.i.i, %do.end.i.i.i
  %retval.0.i.i.off0.i = phi i8 [ %extract.t.i, %if.end9.i.i.i ], [ 0, %do.end.i.i.i ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %31, i32 %shl.i.i
  %add.ptr1.i23.i = getelementptr i8, ptr %add.ptr.i22.i, i32 534
  %32 = ptrtoint ptr %add.ptr1.i23.i to i32
  %and.i.i24.i = and i32 %32, -4
  %33 = inttoptr i32 %and.i.i24.i to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i)
  %cmp.i.i26.i = icmp eq i32 %and4.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %if.end9.i.i33.i, label %do.end.i.i28.i

do.end.i.i28.i:                                   ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i

if.end9.i.i33.i:                                  ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %and1.i.i29.i = shl i32 %32, 3
  %mul.i.i30.i = and i32 %and1.i.i29.i, 24
  %shr.i.i31.i = lshr i32 %35, %mul.i.i30.i
  %extract.t36.i = trunc i32 %shr.i.i31.i to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i

cdns_pcie_ep_fn_readw.exit35.i:                   ; preds = %if.end9.i.i33.i, %do.end.i.i28.i
  %retval.0.i.i34.off0.i = phi i8 [ %extract.t36.i, %if.end9.i.i33.i ], [ 0, %do.end.i.i28.i ]
  %add7.i = add i8 %retval.0.i.i.off0.i, %fn
  %sub.i220 = add i8 %vfn, -1
  %mul.i = mul i8 %retval.0.i.i34.off0.i, %sub.i220
  %add9.i = add i8 %add7.i, %mul.i
  %.pre = zext i8 %add9.i to i32
  br label %cdns_pcie_get_fn_from_vfn.exit

cdns_pcie_get_fn_from_vfn.exit:                   ; preds = %cdns_pcie_ep_fn_readw.exit35.i, %if.end120.cdns_pcie_get_fn_from_vfn.exit_crit_edge
  %conv122.pre-phi = phi i32 [ %idxprom, %if.end120.cdns_pcie_get_fn_from_vfn.exit_crit_edge ], [ %.pre, %cdns_pcie_ep_fn_readw.exit35.i ]
  %cmp.i235 = phi i1 [ true, %if.end120.cdns_pcie_get_fn_from_vfn.exit_crit_edge ], [ false, %cdns_pcie_ep_fn_readw.exit35.i ]
  %mul123 = shl nuw nsw i32 %conv122.pre-phi, 6
  %mul125 = shl i32 %7, 3
  %add124 = add i32 %mul123, %mul125
  %add126 = add i32 %add124, 4196416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i222 = getelementptr i8, ptr %38, i32 %add126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %36) #5, !srcloc !84
  %add131 = add i32 %add124, 4196420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr.i223 = getelementptr i8, ptr %40, i32 %add131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223, i32 0) #5, !srcloc !84
  br i1 %cmp.i235, label %cdns_pcie_get_fn_from_vfn.exit.if.end140_crit_edge, label %if.then135

cdns_pcie_get_fn_from_vfn.exit.if.end140_crit_edge: ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

if.then135:                                       ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %sub138 = add nsw i32 %conv58, -1
  %arrayidx139 = getelementptr %struct.cdns_pcie_epf, ptr %42, i32 %sub138
  br label %if.end140

if.end140:                                        ; preds = %if.then135, %cdns_pcie_get_fn_from_vfn.exit.if.end140_crit_edge
  %epf.0 = phi ptr [ %arrayidx139, %if.then135 ], [ %arrayidx, %cdns_pcie_get_fn_from_vfn.exit.if.end140_crit_edge ]
  %arrayidx142 = getelementptr %struct.cdns_pcie_epf, ptr %epf.0, i32 0, i32 1, i32 %7
  %43 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %epf_bar, ptr %arrayidx142, align 4
  br label %cleanup143

cleanup143:                                       ; preds = %if.end140, %if.else.cleanup143_crit_edge
  %retval.1 = phi i32 [ 0, %if.end140 ], [ -22, %if.else.cleanup143_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_pcie_ep_clear_bar(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, ptr nocapture noundef readonly %epf_bar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %epf1 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epf1, align 8
  %idxprom = zext i8 %fn to i32
  %arrayidx = getelementptr %struct.cdns_pcie_epf, ptr %3, i32 %idxprom
  %barno = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 3
  %4 = ptrtoint ptr %barno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %barno, align 4
  %conv = zext i8 %vfn to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %vfn)
  %cmp = icmp eq i8 %vfn, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp4 = icmp slt i32 %5, 4
  %mul = shl nuw nsw i32 %idxprom, 3
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cond.v = select i1 %cmp4, i32 1049216, i32 1049220
  %sub105 = add i32 %5, -4
  %cond27106 = select i1 %cmp4, i32 %5, i32 %sub105
  br label %if.end46

if.end:                                           ; preds = %entry
  %cond21.v = select i1 %cmp4, i32 1049152, i32 1049156
  %sub = add i32 %5, -4
  %cond27 = select i1 %cmp4, i32 %5, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %switch = icmp eq i8 %vfn, 0
  br i1 %switch, label %if.end.if.end46_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.end46:                                         ; preds = %if.end.if.end46_crit_edge, %if.end.thread
  %cond27109 = phi i32 [ %cond27106, %if.end.thread ], [ %cond27, %if.end.if.end46_crit_edge ]
  %cond.v.pn = phi i32 [ %cond.v, %if.end.thread ], [ %cond21.v, %if.end.if.end46_crit_edge ]
  %reg.0108 = add nuw nsw i32 %cond.v.pn, %mul
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %reg.0108
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !85
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  %mul36 = shl i32 %cond27109, 3
  %or = shl i32 255, %mul36
  %neg = xor i32 %or, -1
  %and = and i32 %9, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i100 = getelementptr i8, ptr %12, i32 %reg.0108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %10) #5, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.i = icmp eq i8 %vfn, 0
  br i1 %cmp.i, label %if.end46.cdns_pcie_get_fn_from_vfn.exit_crit_edge, label %if.end46.if.end.i_crit_edge

if.end46.if.end.i_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end46.cdns_pcie_get_fn_from_vfn.exit_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit

if.end.i:                                         ; preds = %if.end46.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %shl.i.i = shl nuw nsw i32 %idxprom, 12
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %shl.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 532
  %15 = ptrtoint ptr %add.ptr1.i.i to i32
  %and.i.i.i = and i32 %15, -4
  %16 = inttoptr i32 %and.i.i.i to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end9.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i

if.end9.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %and1.i.i.i = shl i32 %15, 3
  %mul.i.i.i = and i32 %and1.i.i.i, 24
  %shr.i.i.i = lshr i32 %18, %mul.i.i.i
  %extract.t.i = trunc i32 %shr.i.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit.i

cdns_pcie_ep_fn_readw.exit.i:                     ; preds = %if.end9.i.i.i, %do.end.i.i.i
  %retval.0.i.i.off0.i = phi i8 [ %extract.t.i, %if.end9.i.i.i ], [ 0, %do.end.i.i.i ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %20, i32 %shl.i.i
  %add.ptr1.i23.i = getelementptr i8, ptr %add.ptr.i22.i, i32 534
  %21 = ptrtoint ptr %add.ptr1.i23.i to i32
  %and.i.i24.i = and i32 %21, -4
  %22 = inttoptr i32 %and.i.i24.i to ptr
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i)
  %cmp.i.i26.i = icmp eq i32 %and4.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %if.end9.i.i33.i, label %do.end.i.i28.i

do.end.i.i28.i:                                   ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i

if.end9.i.i33.i:                                  ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %and1.i.i29.i = shl i32 %21, 3
  %mul.i.i30.i = and i32 %and1.i.i29.i, 24
  %shr.i.i31.i = lshr i32 %24, %mul.i.i30.i
  %extract.t36.i = trunc i32 %shr.i.i31.i to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i

cdns_pcie_ep_fn_readw.exit35.i:                   ; preds = %if.end9.i.i33.i, %do.end.i.i28.i
  %retval.0.i.i34.off0.i = phi i8 [ %extract.t36.i, %if.end9.i.i33.i ], [ 0, %do.end.i.i28.i ]
  %add7.i = add i8 %retval.0.i.i.off0.i, %fn
  %sub.i = add i8 %vfn, -1
  %mul.i = mul i8 %retval.0.i.i34.off0.i, %sub.i
  %add9.i = add i8 %add7.i, %mul.i
  %.pre = zext i8 %add9.i to i32
  br label %cdns_pcie_get_fn_from_vfn.exit

cdns_pcie_get_fn_from_vfn.exit:                   ; preds = %cdns_pcie_ep_fn_readw.exit35.i, %if.end46.cdns_pcie_get_fn_from_vfn.exit_crit_edge
  %conv48.pre-phi = phi i32 [ %idxprom, %if.end46.cdns_pcie_get_fn_from_vfn.exit_crit_edge ], [ %.pre, %cdns_pcie_ep_fn_readw.exit35.i ]
  %cmp.i112 = phi i1 [ true, %if.end46.cdns_pcie_get_fn_from_vfn.exit_crit_edge ], [ false, %cdns_pcie_ep_fn_readw.exit35.i ]
  %mul49 = shl nuw nsw i32 %conv48.pre-phi, 6
  %mul51 = shl i32 %5, 3
  %add50 = add i32 %mul49, %mul51
  %add52 = add i32 %add50, 4196416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i101 = getelementptr i8, ptr %26, i32 %add52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 0) #5, !srcloc !84
  %add57 = add i32 %add50, 4196420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i102 = getelementptr i8, ptr %28, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 0) #5, !srcloc !84
  br i1 %cmp.i112, label %cdns_pcie_get_fn_from_vfn.exit.if.end66_crit_edge, label %if.then61

cdns_pcie_get_fn_from_vfn.exit.if.end66_crit_edge: ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then61:                                        ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %sub64 = add nsw i32 %conv, -1
  %arrayidx65 = getelementptr %struct.cdns_pcie_epf, ptr %30, i32 %sub64
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %cdns_pcie_get_fn_from_vfn.exit.if.end66_crit_edge
  %epf.0 = phi ptr [ %arrayidx65, %if.then61 ], [ %arrayidx, %cdns_pcie_get_fn_from_vfn.exit.if.end66_crit_edge ]
  %arrayidx68 = getelementptr %struct.cdns_pcie_epf, ptr %epf.0, i32 0, i32 1, i32 %5
  %31 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx68, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_map_addr(ptr noundef %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %addr, i64 noundef %pci_addr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ob_region_map = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_find_first_zero_bit_be(ptr noundef %ob_region_map, i32 noundef 128) #5
  %max_regions = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %max_regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_regions, align 8
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %sub)
  %cmp.not = icmp ult i32 %call2, %sub
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epc, ptr noundef nonnull @.str.29) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.i = icmp eq i8 %vfn, 0
  br i1 %cmp.i, label %if.end.cdns_pcie_get_fn_from_vfn.exit_crit_edge, label %if.end.i

if.end.cdns_pcie_get_fn_from_vfn.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv.i.i = zext i8 %fn to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 12
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shl.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 532
  %6 = ptrtoint ptr %add.ptr1.i.i to i32
  %and.i.i.i = and i32 %6, -4
  %7 = inttoptr i32 %and.i.i.i to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end9.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i

if.end9.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %and1.i.i.i = shl i32 %6, 3
  %mul.i.i.i = and i32 %and1.i.i.i, 24
  %shr.i.i.i = lshr i32 %9, %mul.i.i.i
  %extract.t.i = trunc i32 %shr.i.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit.i

cdns_pcie_ep_fn_readw.exit.i:                     ; preds = %if.end9.i.i.i, %do.end.i.i.i
  %retval.0.i.i.off0.i = phi i8 [ %extract.t.i, %if.end9.i.i.i ], [ 0, %do.end.i.i.i ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 %shl.i.i
  %add.ptr1.i23.i = getelementptr i8, ptr %add.ptr.i22.i, i32 534
  %12 = ptrtoint ptr %add.ptr1.i23.i to i32
  %and.i.i24.i = and i32 %12, -4
  %13 = inttoptr i32 %and.i.i24.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i)
  %cmp.i.i26.i = icmp eq i32 %and4.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %if.end9.i.i33.i, label %do.end.i.i28.i

do.end.i.i28.i:                                   ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i

if.end9.i.i33.i:                                  ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %and1.i.i29.i = shl i32 %12, 3
  %mul.i.i30.i = and i32 %and1.i.i29.i, 24
  %shr.i.i31.i = lshr i32 %15, %mul.i.i30.i
  %extract.t36.i = trunc i32 %shr.i.i31.i to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i

cdns_pcie_ep_fn_readw.exit35.i:                   ; preds = %if.end9.i.i33.i, %do.end.i.i28.i
  %retval.0.i.i34.off0.i = phi i8 [ %extract.t36.i, %if.end9.i.i33.i ], [ 0, %do.end.i.i28.i ]
  %add7.i = add i8 %retval.0.i.i.off0.i, %fn
  %sub.i = add i8 %vfn, -1
  %mul.i = mul i8 %retval.0.i.i34.off0.i, %sub.i
  %add9.i = add i8 %add7.i, %mul.i
  br label %cdns_pcie_get_fn_from_vfn.exit

cdns_pcie_get_fn_from_vfn.exit:                   ; preds = %cdns_pcie_ep_fn_readw.exit35.i, %if.end.cdns_pcie_get_fn_from_vfn.exit_crit_edge
  %retval.0.i = phi i8 [ %add9.i, %cdns_pcie_ep_fn_readw.exit35.i ], [ %fn, %if.end.cdns_pcie_get_fn_from_vfn.exit_crit_edge ]
  %conv = zext i32 %addr to i64
  tail call void @cdns_pcie_set_outbound_region(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i, i32 noundef %call2, i1 noundef zeroext false, i64 noundef %conv, i64 noundef %pci_addr, i32 noundef %size) #5
  tail call void @_set_bit(i32 noundef %call2, ptr noundef %ob_region_map) #5
  %ob_addr = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %ob_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ob_addr, align 8
  %arrayidx = getelementptr i32, ptr %17, i32 %call2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %addr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %cdns_pcie_get_fn_from_vfn.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cdns_pcie_get_fn_from_vfn.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_pcie_ep_unmap_addr(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %max_regions = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %max_regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_regions, align 8
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp23.not = icmp eq i32 %sub, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ob_addr = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ob_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ob_addr, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %5, i32 %r.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp2 = icmp eq i32 %7, %addr
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %r.024, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %r.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %r.024, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0.lcssa, i32 %sub)
  %cmp5 = icmp eq i32 %r.0.lcssa, %sub
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cdns_pcie_reset_outbound_region(ptr noundef %1, i32 noundef %r.0.lcssa) #5
  %ob_addr8 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %ob_addr8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ob_addr8, align 8
  %arrayidx9 = getelementptr i32, ptr %9, i32 %r.0.lcssa
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx9, align 4
  %ob_region_map = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef %r.0.lcssa, ptr noundef %ob_region_map) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_set_msi(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i8 noundef zeroext %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.i = icmp eq i8 %vfn, 0
  br i1 %cmp.i, label %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge, label %if.end.i

entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i.i = zext i8 %fn to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 12
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 532
  %4 = ptrtoint ptr %add.ptr1.i.i to i32
  %and.i.i.i = and i32 %4, -4
  %5 = inttoptr i32 %and.i.i.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end9.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i

if.end9.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %and1.i.i.i = shl i32 %4, 3
  %mul.i.i.i = and i32 %and1.i.i.i, 24
  %shr.i.i.i = lshr i32 %7, %mul.i.i.i
  %extract.t.i = trunc i32 %shr.i.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit.i

cdns_pcie_ep_fn_readw.exit.i:                     ; preds = %if.end9.i.i.i, %do.end.i.i.i
  %retval.0.i.i.off0.i = phi i8 [ %extract.t.i, %if.end9.i.i.i ], [ 0, %do.end.i.i.i ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %add.ptr1.i23.i = getelementptr i8, ptr %add.ptr.i22.i, i32 534
  %10 = ptrtoint ptr %add.ptr1.i23.i to i32
  %and.i.i24.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i.i24.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i)
  %cmp.i.i26.i = icmp eq i32 %and4.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %if.end9.i.i33.i, label %do.end.i.i28.i

do.end.i.i28.i:                                   ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i

if.end9.i.i33.i:                                  ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %and1.i.i29.i = shl i32 %10, 3
  %mul.i.i30.i = and i32 %and1.i.i29.i, 24
  %shr.i.i31.i = lshr i32 %13, %mul.i.i30.i
  %extract.t36.i = trunc i32 %shr.i.i31.i to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i

cdns_pcie_ep_fn_readw.exit35.i:                   ; preds = %if.end9.i.i33.i, %do.end.i.i28.i
  %retval.0.i.i34.off0.i = phi i8 [ %extract.t36.i, %if.end9.i.i33.i ], [ 0, %do.end.i.i28.i ]
  %add7.i = add i8 %retval.0.i.i.off0.i, %fn
  %sub.i = add i8 %vfn, -1
  %mul.i = mul i8 %retval.0.i.i34.off0.i, %sub.i
  %add9.i = add i8 %add7.i, %mul.i
  br label %cdns_pcie_get_fn_from_vfn.exit

cdns_pcie_get_fn_from_vfn.exit:                   ; preds = %cdns_pcie_ep_fn_readw.exit35.i, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge
  %retval.0.i = phi i8 [ %add9.i, %cdns_pcie_ep_fn_readw.exit35.i ], [ %fn, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv.i = zext i8 %retval.0.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %add.ptr.i = getelementptr i8, ptr %15, i32 %shl.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 146
  %16 = ptrtoint ptr %add.ptr1.i to i32
  %and.i.i = and i32 %16, -4
  %17 = inttoptr i32 %and.i.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %cmp.i.i, label %if.end9.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit

if.end9.i.i:                                      ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %and1.i.i = shl i32 %16, 3
  %mul.i.i = and i32 %and1.i.i, 24
  %shr.i.i = lshr i32 %19, %mul.i.i
  %phi.bo = and i32 %shr.i.i, 65137
  br label %cdns_pcie_ep_fn_readw.exit

cdns_pcie_ep_fn_readw.exit:                       ; preds = %if.end9.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %phi.bo, %if.end9.i.i ], [ 0, %do.end.i.i ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i23 = getelementptr i8, ptr %21, i32 %shl.i
  %add.ptr1.i24 = getelementptr i8, ptr %add.ptr.i23, i32 146
  %22 = ptrtoint ptr %add.ptr1.i24 to i32
  %and3.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp.i.i25 = icmp eq i32 %and3.i.i, 0
  br i1 %cmp.i.i25, label %if.end9.i.i29, label %do.end.i.i26

do.end.i.i26:                                     ; preds = %cdns_pcie_ep_fn_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i24, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_writew.exit

if.end9.i.i29:                                    ; preds = %cdns_pcie_ep_fn_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv4 = zext i8 %mmc to i32
  %shl = shl nuw nsw i32 %conv4, 1
  %shl.masked = and i32 %shl, 126
  %23 = or i32 %shl.masked, %retval.0.i.i
  %24 = or i32 %23, 128
  %and.i.i27 = and i32 %22, -4
  %25 = inttoptr i32 %and.i.i27 to ptr
  %and1.i.i28 = shl i32 %22, 3
  %mul11.i.i = and i32 %and1.i.i28, 24
  %shl12.i.i = shl i32 65535, %mul11.i.i
  %neg.i.i = xor i32 %shl12.i.i, -1
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !85
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i = and i32 %27, %neg.i.i
  %shl18.i.i = shl i32 %24, %mul11.i.i
  %or.i.i = or i32 %and16.i.i, %shl18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %28) #5, !srcloc !84
  br label %cdns_pcie_ep_fn_writew.exit

cdns_pcie_ep_fn_writew.exit:                      ; preds = %if.end9.i.i29, %do.end.i.i26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_get_msi(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.i = icmp eq i8 %vfn, 0
  br i1 %cmp.i, label %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge, label %if.end.i

entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i.i = zext i8 %fn to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 12
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 532
  %4 = ptrtoint ptr %add.ptr1.i.i to i32
  %and.i.i.i = and i32 %4, -4
  %5 = inttoptr i32 %and.i.i.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end9.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i

if.end9.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %and1.i.i.i = shl i32 %4, 3
  %mul.i.i.i = and i32 %and1.i.i.i, 24
  %shr.i.i.i = lshr i32 %7, %mul.i.i.i
  %extract.t.i = trunc i32 %shr.i.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit.i

cdns_pcie_ep_fn_readw.exit.i:                     ; preds = %if.end9.i.i.i, %do.end.i.i.i
  %retval.0.i.i.off0.i = phi i8 [ %extract.t.i, %if.end9.i.i.i ], [ 0, %do.end.i.i.i ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %add.ptr1.i23.i = getelementptr i8, ptr %add.ptr.i22.i, i32 534
  %10 = ptrtoint ptr %add.ptr1.i23.i to i32
  %and.i.i24.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i.i24.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i)
  %cmp.i.i26.i = icmp eq i32 %and4.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %if.end9.i.i33.i, label %do.end.i.i28.i

do.end.i.i28.i:                                   ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i

if.end9.i.i33.i:                                  ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %and1.i.i29.i = shl i32 %10, 3
  %mul.i.i30.i = and i32 %and1.i.i29.i, 24
  %shr.i.i31.i = lshr i32 %13, %mul.i.i30.i
  %extract.t36.i = trunc i32 %shr.i.i31.i to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i

cdns_pcie_ep_fn_readw.exit35.i:                   ; preds = %if.end9.i.i33.i, %do.end.i.i28.i
  %retval.0.i.i34.off0.i = phi i8 [ %extract.t36.i, %if.end9.i.i33.i ], [ 0, %do.end.i.i28.i ]
  %add7.i = add i8 %retval.0.i.i.off0.i, %fn
  %sub.i = add i8 %vfn, -1
  %mul.i = mul i8 %retval.0.i.i34.off0.i, %sub.i
  %add9.i = add i8 %add7.i, %mul.i
  br label %cdns_pcie_get_fn_from_vfn.exit

cdns_pcie_get_fn_from_vfn.exit:                   ; preds = %cdns_pcie_ep_fn_readw.exit35.i, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge
  %retval.0.i = phi i8 [ %add9.i, %cdns_pcie_ep_fn_readw.exit35.i ], [ %fn, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv.i = zext i8 %retval.0.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %add.ptr.i = getelementptr i8, ptr %15, i32 %shl.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 146
  %16 = ptrtoint ptr %add.ptr1.i to i32
  %and.i.i = and i32 %16, -4
  %17 = inttoptr i32 %and.i.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %cmp.i.i, label %if.end9.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit

if.end9.i.i:                                      ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %and1.i.i = shl i32 %16, 3
  %mul.i.i = and i32 %and1.i.i, 24
  %shr.i.i = lshr i32 %19, %mul.i.i
  %phi.cast.i = trunc i32 %shr.i.i to i16
  br label %cdns_pcie_ep_fn_readw.exit

cdns_pcie_ep_fn_readw.exit:                       ; preds = %if.end9.i.i, %do.end.i.i
  %retval.0.i.i = phi i16 [ %phi.cast.i, %if.end9.i.i ], [ 0, %do.end.i.i ]
  %20 = and i16 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  %and5 = lshr i16 %retval.0.i.i, 4
  %21 = and i16 %and5, 7
  %conv7 = zext i16 %21 to i32
  %retval.0 = select i1 %tobool.not, i32 -22, i32 %conv7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_set_msix(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i16 noundef zeroext %interrupts, i32 noundef %bir, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.i = icmp eq i8 %vfn, 0
  br i1 %cmp.i, label %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge, label %if.end.i

entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i.i = zext i8 %fn to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 12
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 532
  %4 = ptrtoint ptr %add.ptr1.i.i to i32
  %and.i.i.i = and i32 %4, -4
  %5 = inttoptr i32 %and.i.i.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end9.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i

if.end9.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %and1.i.i.i = shl i32 %4, 3
  %mul.i.i.i = and i32 %and1.i.i.i, 24
  %shr.i.i.i = lshr i32 %7, %mul.i.i.i
  %extract.t.i = trunc i32 %shr.i.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit.i

cdns_pcie_ep_fn_readw.exit.i:                     ; preds = %if.end9.i.i.i, %do.end.i.i.i
  %retval.0.i.i.off0.i = phi i8 [ %extract.t.i, %if.end9.i.i.i ], [ 0, %do.end.i.i.i ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %add.ptr1.i23.i = getelementptr i8, ptr %add.ptr.i22.i, i32 534
  %10 = ptrtoint ptr %add.ptr1.i23.i to i32
  %and.i.i24.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i.i24.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i)
  %cmp.i.i26.i = icmp eq i32 %and4.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %if.end9.i.i33.i, label %do.end.i.i28.i

do.end.i.i28.i:                                   ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i

if.end9.i.i33.i:                                  ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %and1.i.i29.i = shl i32 %10, 3
  %mul.i.i30.i = and i32 %and1.i.i29.i, 24
  %shr.i.i31.i = lshr i32 %13, %mul.i.i30.i
  %extract.t36.i = trunc i32 %shr.i.i31.i to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i

cdns_pcie_ep_fn_readw.exit35.i:                   ; preds = %if.end9.i.i33.i, %do.end.i.i28.i
  %retval.0.i.i34.off0.i = phi i8 [ %extract.t36.i, %if.end9.i.i33.i ], [ 0, %do.end.i.i28.i ]
  %add7.i = add i8 %retval.0.i.i.off0.i, %fn
  %sub.i = add i8 %vfn, -1
  %mul.i = mul i8 %retval.0.i.i34.off0.i, %sub.i
  %add9.i = add i8 %add7.i, %mul.i
  br label %cdns_pcie_get_fn_from_vfn.exit

cdns_pcie_get_fn_from_vfn.exit:                   ; preds = %cdns_pcie_ep_fn_readw.exit35.i, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge
  %retval.0.i = phi i8 [ %add9.i, %cdns_pcie_ep_fn_readw.exit35.i ], [ %fn, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv.i = zext i8 %retval.0.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %add.ptr.i = getelementptr i8, ptr %15, i32 %shl.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 178
  %16 = ptrtoint ptr %add.ptr1.i to i32
  %and.i.i = and i32 %16, -4
  %17 = inttoptr i32 %and.i.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %cmp.i.i, label %if.end9.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit

if.end9.i.i:                                      ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %and1.i.i = shl i32 %16, 3
  %mul.i.i = and i32 %and1.i.i, 24
  %shr.i.i = lshr i32 %19, %mul.i.i
  %phi.cast.i = trunc i32 %shr.i.i to i16
  %phi.bo = and i16 %phi.cast.i, -2048
  br label %cdns_pcie_ep_fn_readw.exit

cdns_pcie_ep_fn_readw.exit:                       ; preds = %if.end9.i.i, %do.end.i.i
  %retval.0.i.i = phi i16 [ %phi.bo, %if.end9.i.i ], [ 0, %do.end.i.i ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i35 = getelementptr i8, ptr %21, i32 %shl.i
  %add.ptr1.i36 = getelementptr i8, ptr %add.ptr.i35, i32 178
  %22 = ptrtoint ptr %add.ptr1.i36 to i32
  %and3.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp.i.i37 = icmp eq i32 %and3.i.i, 0
  br i1 %cmp.i.i37, label %if.end9.i.i41, label %do.end.i.i38

do.end.i.i38:                                     ; preds = %cdns_pcie_ep_fn_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i36, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_writew.exit

if.end9.i.i41:                                    ; preds = %cdns_pcie_ep_fn_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or32 = or i16 %retval.0.i.i, %interrupts
  %conv2.i = zext i16 %or32 to i32
  %and.i.i39 = and i32 %22, -4
  %23 = inttoptr i32 %and.i.i39 to ptr
  %and1.i.i40 = shl i32 %22, 3
  %mul11.i.i = and i32 %and1.i.i40, 24
  %shl12.i.i = shl i32 65535, %mul11.i.i
  %neg.i.i = xor i32 %shl12.i.i, -1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !85
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i = and i32 %25, %neg.i.i
  %shl18.i.i = shl i32 %conv2.i, %mul11.i.i
  %or.i.i = or i32 %and16.i.i, %shl18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %26) #5, !srcloc !84
  br label %cdns_pcie_ep_fn_writew.exit

cdns_pcie_ep_fn_writew.exit:                      ; preds = %if.end9.i.i41, %do.end.i.i38
  %conv4 = zext i16 %interrupts to i32
  %or7 = or i32 %offset, %bir
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %or7) #5
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i44 = getelementptr i8, ptr %29, i32 %shl.i
  %add.ptr1.i45 = getelementptr i8, ptr %add.ptr.i44, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i45, i32 %27) #5, !srcloc !84
  %mul = shl nuw nsw i32 %conv4, 4
  %add10 = add i32 %mul, %offset
  %or11 = or i32 %add10, %bir
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %30 = tail call i32 @llvm.bswap.i32(i32 %or11) #5
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i48 = getelementptr i8, ptr %32, i32 %shl.i
  %add.ptr1.i49 = getelementptr i8, ptr %add.ptr.i48, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i49, i32 %30) #5, !srcloc !84
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_get_msix(ptr nocapture noundef readonly %epc, i8 noundef zeroext %func_no, i8 noundef zeroext %vfunc_no) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfunc_no)
  %cmp.i = icmp eq i8 %vfunc_no, 0
  br i1 %cmp.i, label %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge, label %if.end.i

entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i.i = zext i8 %func_no to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 12
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 532
  %4 = ptrtoint ptr %add.ptr1.i.i to i32
  %and.i.i.i = and i32 %4, -4
  %5 = inttoptr i32 %and.i.i.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end9.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i

if.end9.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %and1.i.i.i = shl i32 %4, 3
  %mul.i.i.i = and i32 %and1.i.i.i, 24
  %shr.i.i.i = lshr i32 %7, %mul.i.i.i
  %extract.t.i = trunc i32 %shr.i.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit.i

cdns_pcie_ep_fn_readw.exit.i:                     ; preds = %if.end9.i.i.i, %do.end.i.i.i
  %retval.0.i.i.off0.i = phi i8 [ %extract.t.i, %if.end9.i.i.i ], [ 0, %do.end.i.i.i ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %add.ptr1.i23.i = getelementptr i8, ptr %add.ptr.i22.i, i32 534
  %10 = ptrtoint ptr %add.ptr1.i23.i to i32
  %and.i.i24.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i.i24.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i)
  %cmp.i.i26.i = icmp eq i32 %and4.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %if.end9.i.i33.i, label %do.end.i.i28.i

do.end.i.i28.i:                                   ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i

if.end9.i.i33.i:                                  ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %and1.i.i29.i = shl i32 %10, 3
  %mul.i.i30.i = and i32 %and1.i.i29.i, 24
  %shr.i.i31.i = lshr i32 %13, %mul.i.i30.i
  %extract.t36.i = trunc i32 %shr.i.i31.i to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i

cdns_pcie_ep_fn_readw.exit35.i:                   ; preds = %if.end9.i.i33.i, %do.end.i.i28.i
  %retval.0.i.i34.off0.i = phi i8 [ %extract.t36.i, %if.end9.i.i33.i ], [ 0, %do.end.i.i28.i ]
  %add7.i = add i8 %retval.0.i.i.off0.i, %func_no
  %sub.i = add i8 %vfunc_no, -1
  %mul.i = mul i8 %retval.0.i.i34.off0.i, %sub.i
  %add9.i = add i8 %add7.i, %mul.i
  br label %cdns_pcie_get_fn_from_vfn.exit

cdns_pcie_get_fn_from_vfn.exit:                   ; preds = %cdns_pcie_ep_fn_readw.exit35.i, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge
  %retval.0.i = phi i8 [ %add9.i, %cdns_pcie_ep_fn_readw.exit35.i ], [ %func_no, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv.i = zext i8 %retval.0.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %add.ptr.i = getelementptr i8, ptr %15, i32 %shl.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 178
  %16 = ptrtoint ptr %add.ptr1.i to i32
  %and.i.i = and i32 %16, -4
  %17 = inttoptr i32 %and.i.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %cmp.i.i, label %if.end9.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit

if.end9.i.i:                                      ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %and1.i.i = shl i32 %16, 3
  %mul.i.i = and i32 %and1.i.i, 24
  %shr.i.i = lshr i32 %19, %mul.i.i
  %phi.cast = and i32 %shr.i.i, 65535
  br label %cdns_pcie_ep_fn_readw.exit

cdns_pcie_ep_fn_readw.exit:                       ; preds = %if.end9.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %phi.cast, %if.end9.i.i ], [ 0, %do.end.i.i ]
  %and = and i32 %retval.0.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %retval.0.i.i, 2047
  %retval.0 = select i1 %tobool.not, i32 -22, i32 %and4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_raise_irq(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %type, i16 noundef zeroext %interrupt_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.cdns_pcie, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.not = icmp eq i8 %vfn, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %conv.i.i = zext i8 %fn to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 12
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %shl.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %7 = ptrtoint ptr %add.ptr1.i.i to i32
  %and.i.i.i = and i32 %7, -4
  %8 = inttoptr i32 %and.i.i.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp.i.i.i, label %cdns_pcie_ep_fn_readw.exit.i, label %cdns_pcie_ep_fn_readw.exit.thread.i

cdns_pcie_ep_fn_readw.exit.thread.i:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i, i32 noundef 2) #8
  br label %if.end.i

cdns_pcie_ep_fn_readw.exit.i:                     ; preds = %if.end
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %and1.i.i.i = shl i32 %7, 3
  %mul.i.i.i = and i32 %and1.i.i.i, 24
  %11 = shl i32 1024, %mul.i.i.i
  %12 = and i32 %11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %cdns_pcie_ep_fn_readw.exit.i.if.end.i_crit_edge, label %cdns_pcie_ep_fn_readw.exit.i.cleanup_crit_edge

cdns_pcie_ep_fn_readw.exit.i.cleanup_crit_edge:   ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cdns_pcie_ep_fn_readw.exit.i.if.end.i_crit_edge:  ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %cdns_pcie_ep_fn_readw.exit.i.if.end.i_crit_edge, %cdns_pcie_ep_fn_readw.exit.thread.i
  tail call fastcc void @cdns_pcie_ep_assert_intx(ptr noundef %1, i8 noundef zeroext %fn, i1 noundef zeroext true) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  tail call fastcc void @cdns_pcie_ep_assert_intx(ptr noundef %1, i8 noundef zeroext %fn, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %conv6 = trunc i16 %interrupt_num to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.i.i = icmp eq i8 %vfn, 0
  br i1 %cmp.i.i, label %sw.bb5.cdns_pcie_get_fn_from_vfn.exit.i_crit_edge, label %if.end.i.i

sw.bb5.cdns_pcie_get_fn_from_vfn.exit.i_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit.i

if.end.i.i:                                       ; preds = %sw.bb5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv.i.i.i = zext i8 %fn to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 12
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %shl.i.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 532
  %16 = ptrtoint ptr %add.ptr1.i.i.i to i32
  %and.i.i.i.i = and i32 %16, -4
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and4.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end9.i.i.i.i, label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %and1.i.i.i.i = shl i32 %16, 3
  %mul.i.i.i.i = and i32 %and1.i.i.i.i, 24
  %shr.i.i.i.i = lshr i32 %19, %mul.i.i.i.i
  %extract.t.i.i = trunc i32 %shr.i.i.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit.i.i

cdns_pcie_ep_fn_readw.exit.i.i:                   ; preds = %if.end9.i.i.i.i, %do.end.i.i.i.i
  %retval.0.i.i.off0.i.i = phi i8 [ %extract.t.i.i, %if.end9.i.i.i.i ], [ 0, %do.end.i.i.i.i ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %21, i32 %shl.i.i.i
  %add.ptr1.i23.i.i = getelementptr i8, ptr %add.ptr.i22.i.i, i32 534
  %22 = ptrtoint ptr %add.ptr1.i23.i.i to i32
  %and.i.i24.i.i = and i32 %22, -4
  %23 = inttoptr i32 %and.i.i24.i.i to ptr
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i.i)
  %cmp.i.i26.i.i = icmp eq i32 %and4.i.i25.i.i, 0
  br i1 %cmp.i.i26.i.i, label %if.end9.i.i33.i.i, label %do.end.i.i28.i.i

do.end.i.i28.i.i:                                 ; preds = %cdns_pcie_ep_fn_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i.i

if.end9.i.i33.i.i:                                ; preds = %cdns_pcie_ep_fn_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %and1.i.i29.i.i = shl i32 %22, 3
  %mul.i.i30.i.i = and i32 %and1.i.i29.i.i, 24
  %shr.i.i31.i.i = lshr i32 %25, %mul.i.i30.i.i
  %extract.t36.i.i = trunc i32 %shr.i.i31.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i.i

cdns_pcie_ep_fn_readw.exit35.i.i:                 ; preds = %if.end9.i.i33.i.i, %do.end.i.i28.i.i
  %retval.0.i.i34.off0.i.i = phi i8 [ %extract.t36.i.i, %if.end9.i.i33.i.i ], [ 0, %do.end.i.i28.i.i ]
  %add7.i.i = add i8 %retval.0.i.i.off0.i.i, %fn
  %sub.i.i = add i8 %vfn, -1
  %mul.i.i = mul i8 %retval.0.i.i34.off0.i.i, %sub.i.i
  %add9.i.i = add i8 %add7.i.i, %mul.i.i
  br label %cdns_pcie_get_fn_from_vfn.exit.i

cdns_pcie_get_fn_from_vfn.exit.i:                 ; preds = %cdns_pcie_ep_fn_readw.exit35.i.i, %sw.bb5.cdns_pcie_get_fn_from_vfn.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %add9.i.i, %cdns_pcie_ep_fn_readw.exit35.i.i ], [ %fn, %sw.bb5.cdns_pcie_get_fn_from_vfn.exit.i_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %conv.i.i21 = zext i8 %retval.0.i.i to i32
  %shl.i.i22 = shl nuw nsw i32 %conv.i.i21, 12
  %add.ptr.i.i23 = getelementptr i8, ptr %27, i32 %shl.i.i22
  %add.ptr1.i.i24 = getelementptr i8, ptr %add.ptr.i.i23, i32 146
  %28 = ptrtoint ptr %add.ptr1.i.i24 to i32
  %and.i.i.i25 = and i32 %28, -4
  %29 = inttoptr i32 %and.i.i.i25 to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i26 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i26)
  %cmp.i.i.i27 = icmp eq i32 %and4.i.i.i26, 0
  br i1 %cmp.i.i.i27, label %cdns_pcie_ep_fn_readw.exit.i33, label %cdns_pcie_ep_fn_readw.exit.thread.i29

cdns_pcie_ep_fn_readw.exit.thread.i29:            ; preds = %cdns_pcie_get_fn_from_vfn.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i24, i32 noundef 2) #8
  br label %cleanup

cdns_pcie_ep_fn_readw.exit.i33:                   ; preds = %cdns_pcie_get_fn_from_vfn.exit.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %and1.i.i.i30 = shl i32 %28, 3
  %mul.i.i.i31 = and i32 %and1.i.i.i30, 24
  %shr.i.i.i = lshr i32 %31, %mul.i.i.i31
  %32 = and i32 %shr.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i32 = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6)
  %tobool8.not.i = icmp eq i8 %conv6, 0
  %or.cond.i = or i1 %tobool8.not.i, %tobool.not.i32
  br i1 %or.cond.i, label %cdns_pcie_ep_fn_readw.exit.i33.cleanup_crit_edge, label %lor.lhs.false.i

cdns_pcie_ep_fn_readw.exit.i33.cleanup_crit_edge: ; preds = %cdns_pcie_ep_fn_readw.exit.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %cdns_pcie_ep_fn_readw.exit.i33
  %33 = trunc i32 %shr.i.i.i to i8
  %34 = lshr i8 %33, 4
  %conv6.i = and i8 %34, 7
  %shl.i = shl nuw i8 1, %conv6.i
  call void @__sanitizer_cov_trace_cmp1(i8 %shl.i, i8 %conv6)
  %cmp.i = icmp ult i8 %shl.i, %conv6
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end13.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i:                                       ; preds = %lor.lhs.false.i
  %conv10.i = zext i8 %shl.i to i32
  %conv6.mask = and i16 %interrupt_num, 255
  %sub.i = add nuw nsw i32 %conv10.i, 65535
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %36, i32 %shl.i.i22
  %add.ptr1.i106.i = getelementptr i8, ptr %add.ptr.i105.i, i32 156
  %37 = ptrtoint ptr %add.ptr1.i106.i to i32
  %and.i.i107.i = and i32 %37, -4
  %38 = inttoptr i32 %and.i.i107.i to ptr
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i108.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i108.i)
  %cmp.i.i109.i = icmp eq i32 %and4.i.i108.i, 0
  br i1 %cmp.i.i109.i, label %if.end9.i.i116.i, label %do.end.i.i111.i

do.end.i.i111.i:                                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i106.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit118.i

if.end9.i.i116.i:                                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %and1.i.i112.i = shl i32 %37, 3
  %mul.i.i113.i = and i32 %and1.i.i112.i, 24
  %shr.i.i114.i = lshr i32 %40, %mul.i.i113.i
  %phi.cast.i = and i32 %shr.i.i114.i, 65535
  br label %cdns_pcie_ep_fn_readw.exit118.i

cdns_pcie_ep_fn_readw.exit118.i:                  ; preds = %if.end9.i.i116.i, %do.end.i.i111.i
  %retval.0.i.i117.i = phi i32 [ %phi.cast.i, %if.end9.i.i116.i ], [ 0, %do.end.i.i111.i ]
  %notlhs.i = sub nsw i32 0, %conv10.i
  %and20.i = and i32 %retval.0.i.i117.i, %notlhs.i
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %42, i32 %shl.i.i22
  %add.ptr1.i122.i = getelementptr i8, ptr %add.ptr.i121.i, i32 152
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i122.i) #5, !srcloc !85
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %conv28.i = zext i32 %44 to i64
  %shl29.i = shl nuw i64 %conv28.i, 32
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %46, i32 %shl.i.i22
  %add.ptr1.i126.i = getelementptr i8, ptr %add.ptr.i125.i, i32 148
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i126.i) #5, !srcloc !85
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %irq_pci_addr.i = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %irq_pci_addr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %irq_pci_addr.i, align 8
  %51 = and i32 %48, -256
  %conv32.masked.masked.i = zext i32 %51 to i64
  %and36.i = or i64 %shl29.i, %conv32.masked.masked.i
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %and36.i)
  %cmp37.not.i = icmp eq i64 %50, %and36.i
  br i1 %cmp37.not.i, label %lor.rhs.i, label %cdns_pcie_ep_fn_readw.exit118.i.if.then45.i_crit_edge, !prof !93

cdns_pcie_ep_fn_readw.exit118.i.if.then45.i_crit_edge: ; preds = %cdns_pcie_ep_fn_readw.exit118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45.i

lor.rhs.i:                                        ; preds = %cdns_pcie_ep_fn_readw.exit118.i
  %irq_pci_fn.i = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %irq_pci_fn.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %irq_pci_fn.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %retval.0.i.i)
  %cmp41.not.i = icmp eq i8 %53, %retval.0.i.i
  br i1 %cmp41.not.i, label %lor.rhs.i.do.body.i_crit_edge, label %lor.rhs.i.if.then45.i_crit_edge, !prof !93

lor.rhs.i.if.then45.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45.i

lor.rhs.i.do.body.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then45.i:                                      ; preds = %lor.rhs.i.if.then45.i_crit_edge, %cdns_pcie_ep_fn_readw.exit118.i.if.then45.i_crit_edge
  %irq_phys_addr.i = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %irq_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq_phys_addr.i, align 4
  %conv46.i = zext i32 %55 to i64
  tail call void @cdns_pcie_set_outbound_region(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i.i, i32 noundef 0, i1 noundef zeroext false, i64 noundef %conv46.i, i64 noundef %and36.i, i32 noundef 256) #5
  %56 = ptrtoint ptr %irq_pci_addr.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %and36.i, ptr %irq_pci_addr.i, align 8
  %irq_pci_fn54.i = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 7
  %57 = ptrtoint ptr %irq_pci_fn54.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %retval.0.i.i, ptr %irq_pci_fn54.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then45.i, %lor.rhs.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %58 = add nsw i16 %conv6.mask, -1
  %and24.i = zext i16 %58 to i32
  %and24.masked.i = and i32 %sub.i, %and24.i
  %conv56.i = or i32 %and20.i, %and24.masked.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %conv56.i) #5
  %irq_cpu_addr.i = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 5
  %60 = ptrtoint ptr %irq_cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %irq_cpu_addr.i, align 8
  %and57.i = and i32 %48, 252
  %add.ptr.i = getelementptr i8, ptr %61, i32 %and57.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %59) #5, !srcloc !84
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %epf2.i = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 10
  %62 = ptrtoint ptr %epf2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %epf2.i, align 8
  %idxprom.i = zext i8 %fn to i32
  %arrayidx.i = getelementptr %struct.cdns_pcie_epf, ptr %63, i32 %idxprom.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.not.i = icmp eq i8 %vfn, 0
  br i1 %cmp.not.i, label %sw.bb8.cdns_pcie_get_fn_from_vfn.exit.i77_crit_edge, label %if.end.i.i42

sw.bb8.cdns_pcie_get_fn_from_vfn.exit.i77_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit.i77

if.end.i.i42:                                     ; preds = %sw.bb8
  %conv.i = zext i8 %vfn to i32
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %sub.i35 = add nsw i32 %conv.i, -1
  %arrayidx6.i = getelementptr %struct.cdns_pcie_epf, ptr %65, i32 %sub.i35
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %shl.i.i.i36 = shl nuw nsw i32 %idxprom.i, 12
  %add.ptr.i.i.i37 = getelementptr i8, ptr %67, i32 %shl.i.i.i36
  %add.ptr1.i.i.i38 = getelementptr i8, ptr %add.ptr.i.i.i37, i32 532
  %68 = ptrtoint ptr %add.ptr1.i.i.i38 to i32
  %and.i.i.i.i39 = and i32 %68, -4
  %69 = inttoptr i32 %and.i.i.i.i39 to ptr
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i.i40 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i40)
  %cmp.i.i.i.i41 = icmp eq i32 %and4.i.i.i.i40, 0
  br i1 %cmp.i.i.i.i41, label %if.end9.i.i.i.i49, label %do.end.i.i.i.i44

do.end.i.i.i.i44:                                 ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i.i38, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i.i56

if.end9.i.i.i.i49:                                ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  %and1.i.i.i.i45 = shl i32 %68, 3
  %mul.i.i.i.i46 = and i32 %and1.i.i.i.i45, 24
  %shr.i.i.i.i47 = lshr i32 %71, %mul.i.i.i.i46
  %extract.t.i.i48 = trunc i32 %shr.i.i.i.i47 to i8
  br label %cdns_pcie_ep_fn_readw.exit.i.i56

cdns_pcie_ep_fn_readw.exit.i.i56:                 ; preds = %if.end9.i.i.i.i49, %do.end.i.i.i.i44
  %retval.0.i.i.off0.i.i50 = phi i8 [ %extract.t.i.i48, %if.end9.i.i.i.i49 ], [ 0, %do.end.i.i.i.i44 ]
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %add.ptr.i22.i.i51 = getelementptr i8, ptr %73, i32 %shl.i.i.i36
  %add.ptr1.i23.i.i52 = getelementptr i8, ptr %add.ptr.i22.i.i51, i32 534
  %74 = ptrtoint ptr %add.ptr1.i23.i.i52 to i32
  %and.i.i24.i.i53 = and i32 %74, -4
  %75 = inttoptr i32 %and.i.i24.i.i53 to ptr
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i.i54 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i.i54)
  %cmp.i.i26.i.i55 = icmp eq i32 %and4.i.i25.i.i54, 0
  br i1 %cmp.i.i26.i.i55, label %if.end9.i.i33.i.i63, label %do.end.i.i28.i.i58

do.end.i.i28.i.i58:                               ; preds = %cdns_pcie_ep_fn_readw.exit.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i.i52, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i.i69

if.end9.i.i33.i.i63:                              ; preds = %cdns_pcie_ep_fn_readw.exit.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %and1.i.i29.i.i59 = shl i32 %74, 3
  %mul.i.i30.i.i60 = and i32 %and1.i.i29.i.i59, 24
  %shr.i.i31.i.i61 = lshr i32 %77, %mul.i.i30.i.i60
  %extract.t36.i.i62 = trunc i32 %shr.i.i31.i.i61 to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i.i69

cdns_pcie_ep_fn_readw.exit35.i.i69:               ; preds = %if.end9.i.i33.i.i63, %do.end.i.i28.i.i58
  %retval.0.i.i34.off0.i.i64 = phi i8 [ %extract.t36.i.i62, %if.end9.i.i33.i.i63 ], [ 0, %do.end.i.i28.i.i58 ]
  %add7.i.i65 = add i8 %retval.0.i.i.off0.i.i50, %fn
  %sub.i.i66 = add i8 %vfn, -1
  %mul.i.i67 = mul i8 %retval.0.i.i34.off0.i.i64, %sub.i.i66
  %add9.i.i68 = add i8 %add7.i.i65, %mul.i.i67
  %.pre.i = zext i8 %add9.i.i68 to i32
  br label %cdns_pcie_get_fn_from_vfn.exit.i77

cdns_pcie_get_fn_from_vfn.exit.i77:               ; preds = %cdns_pcie_ep_fn_readw.exit35.i.i69, %sw.bb8.cdns_pcie_get_fn_from_vfn.exit.i77_crit_edge
  %conv.i.pre-phi.i = phi i32 [ %idxprom.i, %sw.bb8.cdns_pcie_get_fn_from_vfn.exit.i77_crit_edge ], [ %.pre.i, %cdns_pcie_ep_fn_readw.exit35.i.i69 ]
  %epf.092.i = phi ptr [ %arrayidx.i, %sw.bb8.cdns_pcie_get_fn_from_vfn.exit.i77_crit_edge ], [ %arrayidx6.i, %cdns_pcie_ep_fn_readw.exit35.i.i69 ]
  %retval.0.i.i70 = phi i8 [ %fn, %sw.bb8.cdns_pcie_get_fn_from_vfn.exit.i77_crit_edge ], [ %add9.i.i68, %cdns_pcie_ep_fn_readw.exit35.i.i69 ]
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %shl.i.i71 = shl nuw nsw i32 %conv.i.pre-phi.i, 12
  %add.ptr.i.i72 = getelementptr i8, ptr %79, i32 %shl.i.i71
  %add.ptr1.i.i73 = getelementptr i8, ptr %add.ptr.i.i72, i32 178
  %80 = ptrtoint ptr %add.ptr1.i.i73 to i32
  %and.i.i.i74 = and i32 %80, -4
  %81 = inttoptr i32 %and.i.i.i74 to ptr
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i75 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i75)
  %cmp.i.i.i76 = icmp eq i32 %and4.i.i.i75, 0
  br i1 %cmp.i.i.i76, label %cdns_pcie_ep_fn_readw.exit.i83, label %cdns_pcie_ep_fn_readw.exit.thread.i79

cdns_pcie_ep_fn_readw.exit.thread.i79:            ; preds = %cdns_pcie_get_fn_from_vfn.exit.i77
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i73, i32 noundef 2) #8
  br label %cleanup

cdns_pcie_ep_fn_readw.exit.i83:                   ; preds = %cdns_pcie_get_fn_from_vfn.exit.i77
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  %and1.i.i.i80 = shl i32 %80, 3
  %mul.i.i.i81 = and i32 %and1.i.i.i80, 24
  %84 = shl i32 32768, %mul.i.i.i81
  %85 = and i32 %84, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i82 = icmp eq i32 %85, 0
  br i1 %tobool.not.i82, label %cdns_pcie_ep_fn_readw.exit.i83.cleanup_crit_edge, label %if.end10.i

cdns_pcie_ep_fn_readw.exit.i83.cleanup_crit_edge: ; preds = %cdns_pcie_ep_fn_readw.exit.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %cdns_pcie_ep_fn_readw.exit.i83
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %87, i32 %shl.i.i71
  %add.ptr1.i90.i = getelementptr i8, ptr %add.ptr.i89.i, i32 180
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i90.i) #5, !srcloc !85
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %conv14.i = and i32 %89, 7
  %and15.i = and i32 %89, -8
  %arrayidx17.i = getelementptr %struct.cdns_pcie_epf, ptr %epf.092.i, i32 0, i32 1, i32 %conv14.i
  %90 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx17.i, align 4
  %addr.i = getelementptr inbounds %struct.pci_epf_bar, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %addr.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %93, i32 %and15.i
  %conv18.i = zext i16 %interrupt_num to i32
  %sub19.i = add nsw i32 %conv18.i, -1
  %arrayidx20.i = getelementptr %struct.pci_epf_msix_tbl, ptr %add.ptr.i84, i32 %sub19.i
  %94 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx20.i, align 8
  %msg_data25.i = getelementptr inbounds %struct.pci_epf_msix_tbl, ptr %arrayidx20.i, i32 0, i32 1
  %96 = ptrtoint ptr %msg_data25.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %msg_data25.i, align 8
  %irq_pci_addr.i85 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 6
  %98 = ptrtoint ptr %irq_pci_addr.i85 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %irq_pci_addr.i85, align 8
  %and26.i = and i64 %95, -256
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %and26.i)
  %cmp27.not.i = icmp eq i64 %99, %and26.i
  br i1 %cmp27.not.i, label %lor.lhs.false.i87, label %if.end10.i.if.then33.i_crit_edge

if.end10.i.if.then33.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i

lor.lhs.false.i87:                                ; preds = %if.end10.i
  %irq_pci_fn.i86 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 7
  %100 = ptrtoint ptr %irq_pci_fn.i86 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %irq_pci_fn.i86, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %101, i8 %retval.0.i.i70)
  %cmp31.not.i = icmp eq i8 %101, %retval.0.i.i70
  br i1 %cmp31.not.i, label %lor.lhs.false.i87.do.body.i90_crit_edge, label %lor.lhs.false.i87.if.then33.i_crit_edge

lor.lhs.false.i87.if.then33.i_crit_edge:          ; preds = %lor.lhs.false.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i

lor.lhs.false.i87.do.body.i90_crit_edge:          ; preds = %lor.lhs.false.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i90

if.then33.i:                                      ; preds = %lor.lhs.false.i87.if.then33.i_crit_edge, %if.end10.i.if.then33.i_crit_edge
  %irq_phys_addr.i88 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 4
  %102 = ptrtoint ptr %irq_phys_addr.i88 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq_phys_addr.i88, align 4
  %conv34.i = zext i32 %103 to i64
  tail call void @cdns_pcie_set_outbound_region(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i.i70, i32 noundef 0, i1 noundef zeroext false, i64 noundef %conv34.i, i64 noundef %and26.i, i32 noundef 256) #5
  %104 = ptrtoint ptr %irq_pci_addr.i85 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %and26.i, ptr %irq_pci_addr.i85, align 8
  %irq_pci_fn42.i = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 7
  %105 = ptrtoint ptr %irq_pci_fn42.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %retval.0.i.i70, ptr %irq_pci_fn42.i, align 8
  br label %do.body.i90

do.body.i90:                                      ; preds = %if.then33.i, %lor.lhs.false.i87.do.body.i90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %106 = tail call i32 @llvm.bswap.i32(i32 %97) #5
  %irq_cpu_addr.i89 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %1, i32 0, i32 5
  %107 = ptrtoint ptr %irq_cpu_addr.i89 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %irq_cpu_addr.i89, align 8
  %109 = trunc i64 %95 to i32
  %idx.ext.i = and i32 %109, 255
  %add.ptr45.i = getelementptr i8, ptr %108, i32 %idx.ext.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %106) #5, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %do.body.i90, %cdns_pcie_ep_fn_readw.exit.i83.cleanup_crit_edge, %cdns_pcie_ep_fn_readw.exit.thread.i79, %do.body.i, %lor.lhs.false.i.cleanup_crit_edge, %cdns_pcie_ep_fn_readw.exit.i33.cleanup_crit_edge, %cdns_pcie_ep_fn_readw.exit.thread.i29, %if.end.i, %cdns_pcie_ep_fn_readw.exit.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %cdns_pcie_ep_fn_readw.exit.i.cleanup_crit_edge ], [ 0, %do.body.i ], [ -22, %cdns_pcie_ep_fn_readw.exit.i33.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %cdns_pcie_ep_fn_readw.exit.thread.i29 ], [ 0, %do.body.i90 ], [ -22, %cdns_pcie_ep_fn_readw.exit.i83.cleanup_crit_edge ], [ -22, %cdns_pcie_ep_fn_readw.exit.thread.i79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_map_msi_irq(ptr noundef %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %addr, i8 noundef zeroext %interrupt_num, i32 noundef %entry_size, ptr nocapture noundef writeonly %msi_data, ptr nocapture noundef writeonly %msi_addr_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfn)
  %cmp.i = icmp eq i8 %vfn, 0
  br i1 %cmp.i, label %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge, label %if.end.i

entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns_pcie_get_fn_from_vfn.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i.i = zext i8 %fn to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 12
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 532
  %4 = ptrtoint ptr %add.ptr1.i.i to i32
  %and.i.i.i = and i32 %4, -4
  %5 = inttoptr i32 %and.i.i.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end9.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit.i

if.end9.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %and1.i.i.i = shl i32 %4, 3
  %mul.i.i.i = and i32 %and1.i.i.i, 24
  %shr.i.i.i = lshr i32 %7, %mul.i.i.i
  %extract.t.i = trunc i32 %shr.i.i.i to i8
  br label %cdns_pcie_ep_fn_readw.exit.i

cdns_pcie_ep_fn_readw.exit.i:                     ; preds = %if.end9.i.i.i, %do.end.i.i.i
  %retval.0.i.i.off0.i = phi i8 [ %extract.t.i, %if.end9.i.i.i ], [ 0, %do.end.i.i.i ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %add.ptr1.i23.i = getelementptr i8, ptr %add.ptr.i22.i, i32 534
  %10 = ptrtoint ptr %add.ptr1.i23.i to i32
  %and.i.i24.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i.i24.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i25.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i25.i)
  %cmp.i.i26.i = icmp eq i32 %and4.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %if.end9.i.i33.i, label %do.end.i.i28.i

do.end.i.i28.i:                                   ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i23.i, i32 noundef 2) #8
  br label %cdns_pcie_ep_fn_readw.exit35.i

if.end9.i.i33.i:                                  ; preds = %cdns_pcie_ep_fn_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %and1.i.i29.i = shl i32 %10, 3
  %mul.i.i30.i = and i32 %and1.i.i29.i, 24
  %shr.i.i31.i = lshr i32 %13, %mul.i.i30.i
  %extract.t36.i = trunc i32 %shr.i.i31.i to i8
  br label %cdns_pcie_ep_fn_readw.exit35.i

cdns_pcie_ep_fn_readw.exit35.i:                   ; preds = %if.end9.i.i33.i, %do.end.i.i28.i
  %retval.0.i.i34.off0.i = phi i8 [ %extract.t36.i, %if.end9.i.i33.i ], [ 0, %do.end.i.i28.i ]
  %add7.i = add i8 %retval.0.i.i.off0.i, %fn
  %sub.i = add i8 %vfn, -1
  %mul.i = mul i8 %retval.0.i.i34.off0.i, %sub.i
  %add9.i = add i8 %add7.i, %mul.i
  br label %cdns_pcie_get_fn_from_vfn.exit

cdns_pcie_get_fn_from_vfn.exit:                   ; preds = %cdns_pcie_ep_fn_readw.exit35.i, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge
  %retval.0.i = phi i8 [ %add9.i, %cdns_pcie_ep_fn_readw.exit35.i ], [ %fn, %entry.cdns_pcie_get_fn_from_vfn.exit_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv.i = zext i8 %retval.0.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %add.ptr.i = getelementptr i8, ptr %15, i32 %shl.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 146
  %16 = ptrtoint ptr %add.ptr1.i to i32
  %and.i.i = and i32 %16, -4
  %17 = inttoptr i32 %and.i.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %cmp.i.i, label %cdns_pcie_ep_fn_readw.exit, label %cdns_pcie_ep_fn_readw.exit.thread

cdns_pcie_ep_fn_readw.exit.thread:                ; preds = %cdns_pcie_get_fn_from_vfn.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i, i32 noundef 2) #8
  br label %cleanup

cdns_pcie_ep_fn_readw.exit:                       ; preds = %cdns_pcie_get_fn_from_vfn.exit
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %and1.i.i = shl i32 %16, 3
  %mul.i.i = and i32 %and1.i.i, 24
  %shr.i.i = lshr i32 %19, %mul.i.i
  %20 = and i32 %shr.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %interrupt_num)
  %tobool9.not = icmp eq i8 %interrupt_num, 0
  %or.cond = or i1 %tobool9.not, %tobool.not
  br i1 %or.cond, label %cdns_pcie_ep_fn_readw.exit.cleanup_crit_edge, label %lor.lhs.false

cdns_pcie_ep_fn_readw.exit.cleanup_crit_edge:     ; preds = %cdns_pcie_ep_fn_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %cdns_pcie_ep_fn_readw.exit
  %21 = trunc i32 %shr.i.i to i8
  %22 = lshr i8 %21, 4
  %conv7 = and i8 %22, 7
  %shl = shl nuw i8 1, %conv7
  %conv10 = zext i8 %interrupt_num to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %shl, i8 %interrupt_num)
  %cmp = icmp ult i8 %shl, %interrupt_num
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %conv11 = zext i8 %shl to i32
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i85 = getelementptr i8, ptr %24, i32 %shl.i
  %add.ptr1.i86 = getelementptr i8, ptr %add.ptr.i85, i32 156
  %25 = ptrtoint ptr %add.ptr1.i86 to i32
  %and.i.i87 = and i32 %25, -4
  %26 = inttoptr i32 %and.i.i87 to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i88 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i88)
  %cmp.i.i89 = icmp eq i32 %and4.i.i88, 0
  br i1 %cmp.i.i89, label %if.end9.i.i96, label %do.end.i.i91

do.end.i.i91:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i86, i32 noundef 2) #8
  br label %for.body.lr.ph

if.end9.i.i96:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %and1.i.i92 = shl i32 %25, 3
  %mul.i.i93 = and i32 %and1.i.i92, 24
  %shr.i.i94 = lshr i32 %28, %mul.i.i93
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end9.i.i96, %do.end.i.i91
  %retval.0.i.i97 = phi i32 [ %shr.i.i94, %if.end9.i.i96 ], [ 0, %do.end.i.i91 ]
  %notlhs = sub nsw i32 0, %conv11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i101 = getelementptr i8, ptr %30, i32 %shl.i
  %add.ptr1.i102 = getelementptr i8, ptr %add.ptr.i101, i32 152
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i102) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr.i105 = getelementptr i8, ptr %33, i32 %shl.i
  %add.ptr1.i106 = getelementptr i8, ptr %add.ptr.i105, i32 148
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i106) #5, !srcloc !85
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %36 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %conv25 = zext i32 %36 to i64
  %shl26 = shl nuw i64 %conv25, 32
  %37 = and i32 %35, -256
  %conv29.masked.masked = zext i32 %37 to i64
  %and35 = or i64 %shl26, %conv29.masked.masked
  br label %for.body

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end39.for.body_crit_edge ]
  %addr.addr.0112 = phi i32 [ %addr, %for.body.lr.ph ], [ %add40, %if.end39.for.body_crit_edge ]
  %call36 = tail call i32 @cdns_pcie_ep_map_addr(ptr noundef %epc, i8 noundef zeroext %retval.0.i, i8 noundef zeroext %vfn, i32 noundef %addr.addr.0112, i64 noundef %and35, i32 noundef %entry_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %for.body
  %add40 = add i32 %addr.addr.0112, %entry_size
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, %conv10
  br i1 %exitcond.not, label %for.end, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %and21 = and i32 %notlhs, 65535
  %conv41 = and i32 %and21, %retval.0.i.i97
  %38 = ptrtoint ptr %msi_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv41, ptr %msi_data, align 4
  %and42 = and i32 %35, 252
  %39 = ptrtoint ptr %msi_addr_offset to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and42, ptr %msi_addr_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cdns_pcie_ep_fn_readw.exit.cleanup_crit_edge, %cdns_pcie_ep_fn_readw.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %cdns_pcie_ep_fn_readw.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %cdns_pcie_ep_fn_readw.exit.thread ], [ %call36, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_pcie_ep_start(ptr nocapture noundef readonly %epc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.cdns_pcie, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %function_num_map = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 10
  %4 = ptrtoint ptr %function_num_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %function_num_map, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1049280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !84
  %ops.i = getelementptr inbounds %struct.cdns_pcie, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %cdns_pcie_start_link.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cdns_pcie_start_link.exit:                        ; preds = %entry
  %call.i = tail call i32 %12(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cdns_pcie_start_link.exit.cleanup_crit_edge, label %do.end

cdns_pcie_start_link.exit.cleanup_crit_edge:      ; preds = %cdns_pcie_start_link.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %cdns_pcie_start_link.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.33) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cdns_pcie_start_link.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %cdns_pcie_start_link.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @cdns_pcie_ep_get_features(ptr nocapture noundef readnone %epc, i8 noundef zeroext %func_no, i8 noundef zeroext %vfunc_no) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfunc_no)
  %tobool.not = icmp eq i8 %vfunc_no, 0
  %cdns_pcie_epc_features.cdns_pcie_epc_vf_features = select i1 %tobool.not, ptr @cdns_pcie_epc_features, ptr @cdns_pcie_epc_vf_features
  ret ptr %cdns_pcie_epc_features.cdns_pcie_epc_vf_features
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_pcie_set_outbound_region(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_pcie_reset_outbound_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_pcie_ep_assert_intx(ptr noundef %ep, i8 noundef zeroext %fn, i1 noundef zeroext %is_asserted) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_pci_addr = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %irq_pci_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %irq_pci_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %1)
  %cmp.not = icmp eq i64 %1, 3
  br i1 %cmp.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !93

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %irq_pci_fn = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 7
  %2 = ptrtoint ptr %irq_pci_fn to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_pci_fn, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %fn)
  %cmp6.not = icmp eq i8 %3, %fn
  br i1 %cmp6.not, label %lor.rhs.if.end_crit_edge, label %lor.rhs.if.then_crit_edge, !prof !93

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  %irq_phys_addr = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 4
  %4 = ptrtoint ptr %irq_phys_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_phys_addr, align 4
  %conv9 = zext i32 %5 to i64
  tail call void @cdns_pcie_set_outbound_region_for_normal_msg(ptr noundef %ep, i8 noundef zeroext 0, i8 noundef zeroext %fn, i32 noundef 0, i64 noundef %conv9) #5
  %6 = ptrtoint ptr %irq_pci_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 3, ptr %irq_pci_addr, align 8
  %irq_pci_fn11 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 7
  %7 = ptrtoint ptr %irq_pci_fn11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %fn, ptr %irq_pci_fn11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.rhs.if.end_crit_edge
  %irq_pending = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 8
  %8 = ptrtoint ptr %irq_pending to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_pending, align 1
  %10 = and i8 %9, -2
  %masksel = zext i1 %is_asserted to i8
  %.sink = or i8 %10, %masksel
  store i8 %.sink, ptr %irq_pending, align 1
  %lock = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 9
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep, align 4
  %conv.i = zext i8 %fn to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %add.ptr.i = getelementptr i8, ptr %12, i32 %shl.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 6
  %13 = ptrtoint ptr %add.ptr1.i to i32
  %and.i.i = and i32 %13, -4
  %14 = inttoptr i32 %and.i.i to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and4.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %cmp.i.i, label %cdns_pcie_ep_fn_readw.exit, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i, i32 noundef 2) #8
  %irq_pending4010 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 8
  %16 = ptrtoint ptr %irq_pending4010 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %irq_pending4010, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp4211 = icmp eq i8 %17, 0
  br i1 %cmp4211, label %do.end.i.i.if.end49_crit_edge, label %do.end.i.i.if.then45_crit_edge

do.end.i.i.if.then45_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

do.end.i.i.if.end49_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

cdns_pcie_ep_fn_readw.exit:                       ; preds = %if.end
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %and1.i.i = shl i32 %13, 3
  %mul.i.i = and i32 %and1.i.i, 24
  %shr.i.i = lshr i32 %18, %mul.i.i
  %irq_pending40 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 8
  %19 = ptrtoint ptr %irq_pending40 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %irq_pending40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp42 = icmp eq i8 %20, 0
  %21 = and i32 %shr.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp ne i32 %21, 0
  %tobool44.not = xor i1 %22, %cmp42
  br i1 %tobool44.not, label %cdns_pcie_ep_fn_readw.exit.if.end49_crit_edge, label %cdns_pcie_ep_fn_readw.exit.if.then45_crit_edge

cdns_pcie_ep_fn_readw.exit.if.then45_crit_edge:   ; preds = %cdns_pcie_ep_fn_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

cdns_pcie_ep_fn_readw.exit.if.end49_crit_edge:    ; preds = %cdns_pcie_ep_fn_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then45:                                        ; preds = %cdns_pcie_ep_fn_readw.exit.if.then45_crit_edge, %do.end.i.i.if.then45_crit_edge
  %retval.0.i.i12 = phi i32 [ 0, %do.end.i.i.if.then45_crit_edge ], [ %shr.i.i, %cdns_pcie_ep_fn_readw.exit.if.then45_crit_edge ]
  %23 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ep, align 4
  %add.ptr.i3 = getelementptr i8, ptr %24, i32 %shl.i
  %add.ptr1.i4 = getelementptr i8, ptr %add.ptr.i3, i32 6
  %25 = ptrtoint ptr %add.ptr1.i4 to i32
  %and3.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp.i.i5 = icmp eq i32 %and3.i.i, 0
  br i1 %cmp.i.i5, label %if.end9.i.i9, label %do.end.i.i6

do.end.i.i6:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %add.ptr1.i4, i32 noundef 2) #8
  br label %if.end49

if.end9.i.i9:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %xor47 = and i32 %retval.0.i.i12, 65535
  %conv2.i = xor i32 %xor47, 8
  %and.i.i7 = and i32 %25, -4
  %26 = inttoptr i32 %and.i.i7 to ptr
  %and1.i.i8 = shl i32 %25, 3
  %mul11.i.i = and i32 %and1.i.i8, 24
  %shl12.i.i = shl i32 65535, %mul11.i.i
  %neg.i.i = xor i32 %shl12.i.i, -1
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !85
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %and16.i.i = and i32 %28, %neg.i.i
  %shl18.i.i = shl i32 %conv2.i, %mul11.i.i
  %or.i.i = or i32 %and16.i.i, %shl18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %29) #5, !srcloc !84
  br label %if.end49

if.end49:                                         ; preds = %if.end9.i.i9, %do.end.i.i6, %cdns_pcie_ep_fn_readw.exit.if.end49_crit_edge, %do.end.i.i.if.end49_crit_edge
  %msg_code.0 = select i1 %is_asserted, i32 73856, i32 74880
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %irq_cpu_addr = getelementptr inbounds %struct.cdns_pcie_ep, ptr %ep, i32 0, i32 5
  %30 = ptrtoint ptr %irq_cpu_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_cpu_addr, align 8
  %add.ptr = getelementptr i8, ptr %31, i32 %msg_code.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_pcie_set_outbound_region_for_normal_msg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 639, i32 63}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 641, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cdns_pcie_ep_setup._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @cdns_pcie_ep_setup._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 645, i32 59}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 647, i32 3}
!14 = !{ptr @cdns_pcie_ep_setup._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cdns_pcie_ep_setup._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 653, i32 27}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 666, i32 3}
!20 = !{ptr @cdns_pcie_ep_setup._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cdns_pcie_ep_setup._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 672, i32 30}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 685, i32 38}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 702, i32 3}
!28 = !{ptr @cdns_pcie_ep_setup._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cdns_pcie_ep_setup._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 709, i32 3}
!32 = !{ptr @cdns_pcie_ep_setup._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cdns_pcie_ep_setup._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @cdns_pcie_ep_setup.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 720, i32 2}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cdns_pcie_epc_ops, !38, !"cdns_pcie_epc_ops", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 608, i32 33}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 43, i32 3}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cdns_pcie_ep_write_header._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cdns_pcie_ep_write_header._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/cadence/pcie-cadence.h", i32 414, i32 3}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cdns_pcie_write_sz._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @cdns_pcie_write_sz._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/cadence/pcie-cadence.h", i32 396, i32 3}
!52 = !{ptr @cdns_pcie_read_sz._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cdns_pcie_read_sz._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 193, i32 3}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cdns_pcie_ep_map_addr._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @cdns_pcie_ep_map_addr._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 545, i32 4}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cdns_pcie_ep_raise_irq._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cdns_pcie_ep_raise_irq._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 578, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cdns_pcie_ep_start._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @cdns_pcie_ep_start._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @cdns_pcie_epc_features, !70, !"cdns_pcie_epc_features", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 592, i32 38}
!71 = !{ptr @cdns_pcie_epc_vf_features, !72, !"cdns_pcie_epc_vf_features", i1 false, i1 false}
!72 = !{!"../drivers/pci/controller/cadence/pcie-cadence-ep.c", i32 585, i32 38}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2155460993}
!84 = !{i64 5119965}
!85 = !{i64 5120383}
!86 = !{i64 2155468073}
!87 = !{i64 2155468282}
!88 = !{i32 0, i32 33}
!89 = !{i64 2155461844}
!90 = !{i64 2155463003}
!91 = !{i64 2155472167}
!92 = !{i64 2155476176}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2155495447}
!95 = !{i64 2155496681}
!96 = !{i64 2155492879}
