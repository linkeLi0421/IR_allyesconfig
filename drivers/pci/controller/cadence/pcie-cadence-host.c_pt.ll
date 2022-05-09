; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/cadence/pcie-cadence-host.c_pt.bc'
source_filename = "../drivers/pci/controller/cadence/pcie-cadence-host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cdns_pcie = type { ptr, ptr, ptr, i8, i32, ptr, ptr, ptr }
%struct.cdns_pcie_rc = type { %struct.cdns_pcie, ptr, ptr, i32, i32, [3 x i8], i8 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.cdns_pcie_ops = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vendor-id\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"device-id\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@cdns_pcie_host_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 491, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"missing \22reg\22\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_pcie_host_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/pci/controller/cadence/pcie-cadence-host.c\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_pcie_host_setup._entry_ptr = internal global ptr @cdns_pcie_host_setup._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@cdns_pcie_host_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 506, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to start link\0A\00", [42 x i8] zeroinitializer }, align 32
@cdns_pcie_host_setup._entry_ptr.11 = internal global ptr @cdns_pcie_host_setup._entry.9, section ".printk_index", align 4
@cdns_pcie_host_setup.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.4, ptr @.str.5, ptr @.str.13, i8 0, i8 -128, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcie_cadence_host\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCIe link never came up\0A\00", [39 x i8] zeroinitializer }, align 32
@cdns_pcie_host_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @cdns_pci_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@cdns_pcie_host_wait_for_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 88, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Link up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cdns_pcie_host_wait_for_link\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cdns_pcie_host_wait_for_link._entry_ptr = internal global ptr @cdns_pcie_host_wait_for_link._entry, section ".printk_index", align 4
@cdns_pcie_read_sz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Address %p and size %d are not aligned\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cdns_pcie_read_sz\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/pci/controller/cadence/pcie-cadence.h\00", [50 x i8] zeroinitializer }, align 32
@cdns_pcie_read_sz._entry_ptr = internal global ptr @cdns_pcie_read_sz._entry, section ".printk_index", align 4
@cdns_pcie_write_sz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.20, ptr @.str.19, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_pcie_write_sz\00", [45 x i8] zeroinitializer }, align 32
@cdns_pcie_write_sz._entry_ptr = internal global ptr @cdns_pcie_write_sz._entry, section ".printk_index", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns,no-bar-match-nbits\00", [40 x i8] zeroinitializer }, align 32
@cdns_pcie_host_map_dma_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 379, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IB BAR: %d config failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cdns_pcie_host_map_dma_ranges\00", [34 x i8] zeroinitializer }, align 32
@cdns_pcie_host_map_dma_ranges._entry_ptr = internal global ptr @cdns_pcie_host_map_dma_ranges._entry, section ".printk_index", align 4
@cdns_pcie_host_map_dma_ranges._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 388, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Fail to configure IB using dma-ranges\0A\00", [57 x i8] zeroinitializer }, align 32
@cdns_pcie_host_map_dma_ranges._entry_ptr.26 = internal global ptr @cdns_pcie_host_map_dma_ranges._entry.24, section ".printk_index", align 4
@bar_aperture_mask = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1F\0F", [30 x i8] zeroinitializer }, align 32
@cdns_pcie_host_bar_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PCI addr: %llx must be equal to CPU addr: %llx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_pcie_host_bar_config\00", [38 x i8] zeroinitializer }, align 32
@cdns_pcie_host_bar_config._entry_ptr = internal global ptr @cdns_pcie_host_bar_config._entry, section ".printk_index", align 4
@cdns_pcie_host_bar_config._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.28, ptr @.str.5, i32 311, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cdns_pcie_host_bar_config._entry_ptr.30 = internal global ptr @cdns_pcie_host_bar_config._entry.29, section ".printk_index", align 4
@cdns_pcie_host_bar_config._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.5, i32 329, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No free BAR to map cpu_addr %llx\0A\00", [62 x i8] zeroinitializer }, align 32
@cdns_pcie_host_bar_config._entry_ptr.33 = internal global ptr @cdns_pcie_host_bar_config._entry.31, section ".printk_index", align 4
@bar_max_size = internal constant { [3 x i64], [40 x i8] } { [3 x i64] [i64 274877906944, i64 2147483648, i64 -9223372036854775808], [40 x i8] zeroinitializer }, align 32
@cdns_pcie_host_bar_config._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.28, ptr @.str.5, i32 337, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cdns_pcie_host_bar_config._entry_ptr.35 = internal global ptr @cdns_pcie_host_bar_config._entry.34, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 484, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 487, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 489, i32 63 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 491, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 495, i32 59 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 506, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 512, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"cdns_pcie_host_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 74, i32 23 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 88, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 396, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [49 x i8] c"../drivers/pci/controller/cadence/pcie-cadence.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 414, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 374, i32 28 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 379, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 388, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"bar_aperture_mask\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 21, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 292, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 311, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 328, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [13 x i8] c"bar_max_size\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 15, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private constant [54 x i8] c"../drivers/pci/controller/cadence/pcie-cadence-host.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 337, i32 4 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @cdns_pcie_host_bar_config._entry, ptr @cdns_pcie_host_bar_config._entry.29, ptr @cdns_pcie_host_bar_config._entry.31, ptr @cdns_pcie_host_bar_config._entry.34, ptr @cdns_pcie_host_bar_config._entry_ptr, ptr @cdns_pcie_host_bar_config._entry_ptr.30, ptr @cdns_pcie_host_bar_config._entry_ptr.33, ptr @cdns_pcie_host_bar_config._entry_ptr.35, ptr @cdns_pcie_host_map_dma_ranges._entry, ptr @cdns_pcie_host_map_dma_ranges._entry.24, ptr @cdns_pcie_host_map_dma_ranges._entry_ptr, ptr @cdns_pcie_host_map_dma_ranges._entry_ptr.26, ptr @cdns_pcie_host_setup._entry, ptr @cdns_pcie_host_setup._entry.9, ptr @cdns_pcie_host_setup._entry_ptr, ptr @cdns_pcie_host_setup._entry_ptr.11, ptr @cdns_pcie_host_wait_for_link._entry, ptr @cdns_pcie_host_wait_for_link._entry_ptr, ptr @cdns_pcie_read_sz._entry, ptr @cdns_pcie_read_sz._entry_ptr, ptr @cdns_pcie_write_sz._entry, ptr @cdns_pcie_write_sz._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @cdns_pcie_host_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @bar_aperture_mask, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @bar_max_size], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_wait_for_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_read_sz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_write_sz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_map_dma_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_map_dma_ranges._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bar_aperture_mask to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_bar_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_bar_config._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_bar_config._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bar_max_size to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_pcie_host_bar_config._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cdns_pci_map_bus(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_find_host_bridge(ptr noundef %bus) #6
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %number, align 4
  %conv = zext i8 %1 to i32
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %tobool.not = icmp eq i32 %devfn, 0
  br i1 %tobool.not, label %if.then.cleanup.sink.split_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end5:                                          ; preds = %entry
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1048576
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %9, i32 4196388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #6, !srcloc !84
  %shl = shl i32 %devfn, 12
  %and11 = and i32 %shl, 1044480
  %shl12 = shl nuw nsw i32 %conv, 20
  %or = or i32 %shl12, %and11
  %or14 = or i32 %or, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or14) #6
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %12, i32 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %10) #6, !srcloc !84
  %busnr = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %busnr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %busnr, align 16
  %add = add i32 %14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp eq i32 %add, %conv
  %. = select i1 %cmp, i32 8388618, i32 8388619
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %.) #6
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %17, i32 4194312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %15) #6, !srcloc !84
  %cfg_base = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end10, %if.then.cleanup.sink.split_crit_edge
  %cfg_base.sink = phi ptr [ %cfg_base, %if.end10 ], [ %private.i, %if.then.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %cfg_base.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg_base.sink, align 4
  %and20 = and i32 %where, 4095
  %add.ptr21 = getelementptr i8, ptr %19, i32 %and20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ], [ %add.ptr21, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_pcie_host_setup(ptr noundef %rc) local_unnamed_addr #0 align 64 {
entry:
  %no_bar_nbits.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cdns_pcie, ptr %rc, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %add.ptr.i = getelementptr i8, ptr %rc, i32 -1024
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %is_rc = getelementptr inbounds %struct.cdns_pcie, ptr %rc, i32 0, i32 3
  %4 = ptrtoint ptr %is_rc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_rc, align 4
  %vendor_id = getelementptr inbounds %struct.cdns_pcie_rc, ptr %rc, i32 0, i32 3
  %5 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65535, ptr %vendor_id, align 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %vendor_id, i32 noundef 1, i32 noundef 0) #6
  %device_id = getelementptr inbounds %struct.cdns_pcie_rc, ptr %rc, i32 0, i32 4
  %6 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65535, ptr %device_id, align 4
  %call.i.i109 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %device_id, i32 noundef 1, i32 noundef 0) #6
  %call8 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.2) #6
  %7 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %rc, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.3) #9
  %8 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rc, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.8) #6
  %call16 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %1, ptr noundef %call15) #6
  %cfg_base = getelementptr inbounds %struct.cdns_pcie_rc, ptr %rc, i32 0, i32 2
  %11 = ptrtoint ptr %cfg_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %cfg_base, align 4
  %cmp.i110 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %cfg_res = getelementptr inbounds %struct.cdns_pcie_rc, ptr %rc, i32 0, i32 1
  %13 = ptrtoint ptr %cfg_res to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %cfg_res, align 4
  %quirk_detect_quiet_flag = getelementptr inbounds %struct.cdns_pcie_rc, ptr %rc, i32 0, i32 6
  %14 = ptrtoint ptr %quirk_detect_quiet_flag to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %quirk_detect_quiet_flag, align 1
  %15 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp eq i8 %15, 0
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %if.then24

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cdns_pcie_detect_quiet_min_delay_set(ptr noundef %rc) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %ops.i = getelementptr inbounds %struct.cdns_pcie, ptr %rc, i32 0, i32 7
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end26.if.end33_crit_edge, label %cdns_pcie_start_link.exit

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

cdns_pcie_start_link.exit:                        ; preds = %if.end26
  %call.i = tail call i32 %19(ptr noundef %rc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %cdns_pcie_start_link.exit.if.end33_crit_edge, label %do.end32

cdns_pcie_start_link.exit.if.end33_crit_edge:     ; preds = %cdns_pcie_start_link.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end32:                                         ; preds = %cdns_pcie_start_link.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end33:                                         ; preds = %cdns_pcie_start_link.exit.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  %call.i112 = tail call fastcc i32 @cdns_pcie_host_wait_for_link(ptr noundef %rc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i, label %if.end33.do.body37_crit_edge

if.end33.do.body37_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

land.lhs.true.i:                                  ; preds = %if.end33
  %20 = ptrtoint ptr %quirk_detect_quiet_flag to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %quirk_detect_quiet_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end48_crit_edge, label %if.then.i114

land.lhs.true.i.if.end48_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then.i114:                                     ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rc, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 2097356
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %24 = and i32 %23, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i, label %if.then.i114.if.end48_crit_edge, label %if.end.i.i

if.then.i114.if.end48_crit_edge:                  ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end.i.i:                                       ; preds = %if.then.i114
  %25 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rc, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %26, i32 2097362
  %27 = ptrtoint ptr %add.ptr1.i.i.i to i32
  %and.i.i.i.i = and i32 %27, -4
  %28 = inttoptr i32 %and.i.i.i.i to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %and4.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and4.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %cdns_pcie_rp_readw.exit.i.i, label %cdns_pcie_rp_readw.exit.thread.i.i

cdns_pcie_rp_readw.exit.thread.i.i:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %add.ptr1.i.i.i, i32 noundef 2) #9
  br label %if.end48

cdns_pcie_rp_readw.exit.i.i:                      ; preds = %if.end.i.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  %and1.i.i.i.i = shl i32 %27, 3
  %mul.i.i.i.i = and i32 %and1.i.i.i.i, 24
  %shr.i.i.i.i = lshr i32 %30, %mul.i.i.i.i
  %31 = and i32 %shr.i.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp5.i.i = icmp eq i32 %31, 1
  br i1 %cmp5.i.i, label %if.then7.i.i, label %cdns_pcie_rp_readw.exit.i.i.if.end48_crit_edge

cdns_pcie_rp_readw.exit.i.i.if.end48_crit_edge:   ; preds = %cdns_pcie_rp_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then7.i.i:                                     ; preds = %cdns_pcie_rp_readw.exit.i.i
  %32 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rc, align 4
  %add.ptr1.i30.i.i = getelementptr i8, ptr %33, i32 2097360
  %34 = ptrtoint ptr %add.ptr1.i30.i.i to i32
  %and.i.i31.i.i = and i32 %34, -4
  %35 = inttoptr i32 %and.i.i31.i.i to ptr
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %and4.i.i32.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i32.i.i)
  %cmp.i.i33.i.i = icmp eq i32 %and4.i.i32.i.i, 0
  br i1 %cmp.i.i33.i.i, label %if.end9.i.i40.i.i, label %do.end.i.i35.i.i

do.end.i.i35.i.i:                                 ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %add.ptr1.i30.i.i, i32 noundef 2) #9
  br label %cdns_pcie_rp_readw.exit42.i.i

if.end9.i.i40.i.i:                                ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %and1.i.i36.i.i = shl i32 %34, 3
  %mul.i.i37.i.i = and i32 %and1.i.i36.i.i, 24
  %shr.i.i38.i.i = lshr i32 %37, %mul.i.i37.i.i
  %phi.bo.i.i = and i32 %shr.i.i38.i.i, 65503
  %phi.cast.i.i = or i32 %phi.bo.i.i, 32
  br label %cdns_pcie_rp_readw.exit42.i.i

cdns_pcie_rp_readw.exit42.i.i:                    ; preds = %if.end9.i.i40.i.i, %do.end.i.i35.i.i
  %retval.0.i.i41.i.i = phi i32 [ %phi.cast.i.i, %if.end9.i.i40.i.i ], [ 32, %do.end.i.i35.i.i ]
  %38 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rc, align 4
  %add.ptr1.i44.i.i = getelementptr i8, ptr %39, i32 2097360
  %40 = ptrtoint ptr %add.ptr1.i44.i.i to i32
  %and3.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i)
  %cmp.i.i45.i.i = icmp eq i32 %and3.i.i.i.i, 0
  br i1 %cmp.i.i45.i.i, label %if.end9.i.i49.i.i, label %do.end.i.i46.i.i

do.end.i.i46.i.i:                                 ; preds = %cdns_pcie_rp_readw.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %add.ptr1.i44.i.i, i32 noundef 2) #9
  br label %cdns_pcie_host_start_link.exit

if.end9.i.i49.i.i:                                ; preds = %cdns_pcie_rp_readw.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i47.i.i = and i32 %40, -4
  %41 = inttoptr i32 %and.i.i47.i.i to ptr
  %and1.i.i48.i.i = shl i32 %40, 3
  %mul11.i.i.i.i = and i32 %and1.i.i48.i.i, 24
  %shl12.i.i.i.i = shl i32 65535, %mul11.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl12.i.i.i.i, -1
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !81
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %and16.i.i.i.i = and i32 %43, %neg.i.i.i.i
  %shl18.i.i.i.i = shl i32 %retval.0.i.i41.i.i, %mul11.i.i.i.i
  %or.i.i.i.i = or i32 %and16.i.i.i.i, %shl18.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %44) #6, !srcloc !84
  br label %cdns_pcie_host_start_link.exit

cdns_pcie_host_start_link.exit:                   ; preds = %if.end9.i.i49.i.i, %do.end.i.i46.i.i
  %call13.i.i = tail call fastcc i32 @cdns_pcie_host_wait_for_link(ptr noundef %rc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool35.not = icmp eq i32 %call13.i.i, 0
  br i1 %tobool35.not, label %cdns_pcie_host_start_link.exit.if.end48_crit_edge, label %cdns_pcie_host_start_link.exit.do.body37_crit_edge

cdns_pcie_host_start_link.exit.do.body37_crit_edge: ; preds = %cdns_pcie_host_start_link.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

cdns_pcie_host_start_link.exit.if.end48_crit_edge: ; preds = %cdns_pcie_host_start_link.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.body37:                                        ; preds = %cdns_pcie_host_start_link.exit.do.body37_crit_edge, %if.end33.do.body37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_pcie_host_setup.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cdns_pcie_host_setup, %if.end48)) #6
          to label %if.then44 [label %if.end48], !srcloc !88

if.then44:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_pcie_host_setup.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.13) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %do.body37, %cdns_pcie_host_start_link.exit.if.end48_crit_edge, %cdns_pcie_rp_readw.exit.i.i.if.end48_crit_edge, %cdns_pcie_rp_readw.exit.thread.i.i, %if.then.i114.if.end48_crit_edge, %land.lhs.true.i.if.end48_crit_edge
  %uglygep = getelementptr i8, ptr %rc, i32 48
  %45 = call ptr @memset(ptr %uglygep, i32 1, i32 3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rc, align 4
  %add.ptr.i.i.i115 = getelementptr i8, ptr %47, i32 1049344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i115, i32 7680) #6, !srcloc !84
  %48 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vendor_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %49)
  %cmp.not.i.i = icmp eq i32 %49, 65535
  br i1 %cmp.not.i.i, label %if.end48.if.end.i.i116_crit_edge, label %if.then.i.i

if.end48.if.end.i.i116_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i116

if.then.i.i:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %and10.i.i = and i32 %49, 65535
  %shl12.i.i = shl i32 %49, 16
  %or14.i.i = or i32 %and10.i.i, %shl12.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %or14.i.i) #6
  %51 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rc, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %52, i32 1048644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %50) #6, !srcloc !84
  br label %if.end.i.i116

if.end.i.i116:                                    ; preds = %if.then.i.i, %if.end48.if.end.i.i116_crit_edge
  %53 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %54)
  %cmp15.not.i.i = icmp eq i32 %54, 65535
  br i1 %cmp15.not.i.i, label %if.end.i.i116.if.end18.i.i_crit_edge, label %if.then16.i.i

if.end.i.i116.if.end18.i.i_crit_edge:             ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i.i

if.then16.i.i:                                    ; preds = %if.end.i.i116
  %55 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rc, align 4
  %add.ptr1.i.i.i117 = getelementptr i8, ptr %56, i32 2097154
  %57 = ptrtoint ptr %add.ptr1.i.i.i117 to i32
  %and3.i.i.i.i118 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i118)
  %cmp.i.i.i.i119 = icmp eq i32 %and3.i.i.i.i118, 0
  br i1 %cmp.i.i.i.i119, label %if.end9.i.i.i.i, label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %add.ptr1.i.i.i117, i32 noundef 2) #9
  br label %if.end18.i.i

if.end9.i.i.i.i:                                  ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = and i32 %54, 65535
  %and.i.i.i.i121 = and i32 %57, -4
  %58 = inttoptr i32 %and.i.i.i.i121 to ptr
  %and1.i.i.i.i122 = shl i32 %57, 3
  %mul11.i.i.i.i123 = and i32 %and1.i.i.i.i122, 24
  %shl12.i.i.i.i124 = shl i32 65535, %mul11.i.i.i.i123
  %neg.i.i.i.i125 = xor i32 %shl12.i.i.i.i124, -1
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !81
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %and16.i.i.i.i126 = and i32 %60, %neg.i.i.i.i125
  %shl18.i.i.i.i127 = shl i32 %conv.i.i.i, %mul11.i.i.i.i123
  %or.i.i.i.i128 = or i32 %and16.i.i.i.i126, %shl18.i.i.i.i127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i128) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %61) #6, !srcloc !84
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end9.i.i.i.i, %do.end.i.i.i.i, %if.end.i.i116.if.end18.i.i_crit_edge
  %62 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rc, align 4
  %add.ptr1.i4.i.i = getelementptr i8, ptr %63, i32 2097160
  %64 = ptrtoint ptr %add.ptr1.i4.i.i to i32
  %and.i.i5.i.i = and i32 %64, -4
  %65 = inttoptr i32 %and.i.i5.i.i to ptr
  %and1.i.i6.i.i = shl i32 %64, 3
  %mul11.i.i7.i.i = and i32 %and1.i.i6.i.i, 24
  %shl12.i.i8.i.i = shl nuw i32 255, %mul11.i.i7.i.i
  %neg.i.i9.i.i = xor i32 %shl12.i.i8.i.i, -1
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #6, !srcloc !81
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %and16.i.i10.i.i = and i32 %67, %neg.i.i9.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %68 = tail call i32 @llvm.bswap.i32(i32 %and16.i.i10.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %68) #6, !srcloc !84
  %69 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rc, align 4
  %add.ptr1.i12.i.i = getelementptr i8, ptr %70, i32 2097161
  %71 = ptrtoint ptr %add.ptr1.i12.i.i to i32
  %and.i.i13.i.i = and i32 %71, -4
  %72 = inttoptr i32 %and.i.i13.i.i to ptr
  %and1.i.i14.i.i = shl i32 %71, 3
  %mul11.i.i15.i.i = and i32 %and1.i.i14.i.i, 24
  %shl12.i.i16.i.i = shl nuw i32 255, %mul11.i.i15.i.i
  %neg.i.i17.i.i = xor i32 %shl12.i.i16.i.i, -1
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #6, !srcloc !81
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %and16.i.i18.i.i = and i32 %74, %neg.i.i17.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %75 = tail call i32 @llvm.bswap.i32(i32 %and16.i.i18.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %75) #6, !srcloc !84
  %76 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rc, align 4
  %add.ptr1.i20.i.i = getelementptr i8, ptr %77, i32 2097162
  %78 = ptrtoint ptr %add.ptr1.i20.i.i to i32
  %and3.i.i21.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i21.i.i)
  %cmp.i.i22.i.i = icmp eq i32 %and3.i.i21.i.i, 0
  br i1 %cmp.i.i22.i.i, label %if.end9.i.i33.i.i, label %do.end.i.i24.i.i

do.end.i.i24.i.i:                                 ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %add.ptr1.i20.i.i, i32 noundef 2) #9
  br label %cdns_pcie_host_init_root_port.exit.i

if.end9.i.i33.i.i:                                ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i25.i.i = and i32 %78, -4
  %79 = inttoptr i32 %and.i.i25.i.i to ptr
  %and1.i.i26.i.i = shl i32 %78, 3
  %mul11.i.i27.i.i = and i32 %and1.i.i26.i.i, 24
  %shl12.i.i28.i.i = shl i32 65535, %mul11.i.i27.i.i
  %neg.i.i29.i.i = xor i32 %shl12.i.i28.i.i, -1
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #6, !srcloc !81
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %and16.i.i30.i.i = and i32 %81, %neg.i.i29.i.i
  %shl18.i.i31.i.i = shl i32 1540, %mul11.i.i27.i.i
  %or.i.i32.i.i = or i32 %and16.i.i30.i.i, %shl18.i.i31.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %82 = tail call i32 @llvm.bswap.i32(i32 %or.i.i32.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %82) #6, !srcloc !84
  br label %cdns_pcie_host_init_root_port.exit.i

cdns_pcie_host_init_root_port.exit.i:             ; preds = %if.end9.i.i33.i.i, %do.end.i.i24.i.i
  %83 = ptrtoint ptr %cfg_res to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg_res, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %conv.i.i = zext i32 %86 to i64
  %windows.i.i = getelementptr i8, ptr %rc, i32 -72
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %cdns_pcie_host_init_root_port.exit.i
  %entry1.0.in.i.i.i = phi ptr [ %windows.i.i, %cdns_pcie_host_init_root_port.exit.i ], [ %entry1.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %87 = ptrtoint ptr %entry1.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %entry1.0.i.i.i = load ptr, ptr %entry1.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %entry1.0.i.i.i, %windows.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.end.i4.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end.i4.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i4.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %res.i.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %res.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %res.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.resource, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i.i2.i = and i32 %91, 7936
  %cmp2.i.i.i = icmp eq i32 %and.i.i.i2.i, 4096
  br i1 %cmp2.i.i.i, label %resource_list_first_type.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.i

resource_list_first_type.exit.i.i:                ; preds = %for.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %entry1.0.i.i.i, null
  br i1 %tobool.not.i.i, label %resource_list_first_type.exit.i.i.if.end.i4.i_crit_edge, label %if.then.i3.i

resource_list_first_type.exit.i.i.if.end.i4.i_crit_edge: ; preds = %resource_list_first_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i4.i

if.then.i3.i:                                     ; preds = %resource_list_first_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %89, align 4
  br label %if.end.i4.i

if.end.i4.i:                                      ; preds = %if.then.i3.i, %resource_list_first_type.exit.i.i.if.end.i4.i_crit_edge, %for.cond.i.i.i.if.end.i4.i_crit_edge
  %busnr.0.i.i = phi i32 [ %93, %if.then.i3.i ], [ 0, %resource_list_first_type.exit.i.i.if.end.i4.i_crit_edge ], [ 0, %for.cond.i.i.i.if.end.i4.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %94 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rc, align 4
  %add.ptr.i79.i.i = getelementptr i8, ptr %95, i32 4194308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i.i, i32 0) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %and.i.i = shl i32 %busnr.0.i.i, 24
  %96 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rc, align 4
  %add.ptr.i80.i.i = getelementptr i8, ptr %97, i32 4194316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i.i, i32 %and.i.i) #6, !srcloc !84
  %98 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i, align 4
  %cpu_addr_fixup.i.i = getelementptr inbounds %struct.cdns_pcie_ops, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu_addr_fixup.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cpu_addr_fixup.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %101, null
  br i1 %tobool6.not.i.i, label %if.end.i4.i.if.end11.i.i_crit_edge, label %if.then7.i.i129

if.end.i4.i.if.end11.i.i_crit_edge:               ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

if.then7.i.i129:                                  ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i.i = tail call i64 %101(ptr noundef %rc, i64 noundef %conv.i.i) #6
  %extract.t.i.i = trunc i64 %call10.i.i to i32
  %extract.i.i = lshr i64 %call10.i.i, 32
  %extract.t76.i.i = trunc i64 %extract.i.i to i32
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then7.i.i129, %if.end.i4.i.if.end11.i.i_crit_edge
  %cpu_addr.0.off0.i.i = phi i32 [ %extract.t.i.i, %if.then7.i.i129 ], [ %86, %if.end.i4.i.if.end11.i.i_crit_edge ]
  %cpu_addr.0.off32.i.i = phi i32 [ %extract.t76.i.i, %if.then7.i.i129 ], [ 0, %if.end.i4.i.if.end11.i.i_crit_edge ]
  %and14.i.i = and i32 %cpu_addr.0.off0.i.i, -256
  %or.i.i = or i32 %and14.i.i, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %102 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %103 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rc, align 4
  %add.ptr.i81.i.i = getelementptr i8, ptr %104, i32 4194328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i.i, i32 %102) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %105 = tail call i32 @llvm.bswap.i32(i32 %cpu_addr.0.off32.i.i) #6
  %106 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rc, align 4
  %add.ptr.i82.i.i = getelementptr i8, ptr %107, i32 4194332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i.i, i32 %105) #6, !srcloc !84
  %108 = ptrtoint ptr %windows.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %entry3.0124.i.i = load ptr, ptr %windows.i.i, align 4
  %cmp.not125.i.i = icmp eq ptr %entry3.0124.i.i, %windows.i.i
  br i1 %cmp.not125.i.i, label %if.end11.i.i.if.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end11.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end11.i.i
  %conv33.i.i = trunc i32 %busnr.0.i.i to i8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end37.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %entry3.0128.i.i = phi ptr [ %entry3.0124.i.i, %for.body.lr.ph.i.i ], [ %entry3.0.i.i, %if.end37.i.i.for.body.i.i_crit_edge ]
  %r.0126.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end37.i.i.for.body.i.i_crit_edge ]
  %res21.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry3.0128.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %res21.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %res21.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %offset.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry3.0128.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %offset.i.i, align 4
  %sub.i.i = sub i32 %112, %114
  %conv23.i.i = zext i32 %sub.i.i to i64
  %flags.i.i.i = getelementptr inbounds %struct.resource, ptr %110, i32 0, i32 3
  %115 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %116, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i.i.i)
  %cmp25.i.i = icmp eq i32 %and.i.i.i, 256
  br i1 %cmp25.i.i, label %if.then27.i.i, label %if.else.i.i

if.then27.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call30.i.i = tail call i32 @pci_pio_to_address(i32 noundef %112) #6
  %conv31.i.i = zext i32 %call30.i.i to i64
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %110, i32 0, i32 1
  %117 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %end.i.i.i, align 4
  %119 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %110, align 4
  %sub.i.i.i = add i32 %118, 1
  %add.i.i.i = sub i32 %sub.i.i.i, %120
  tail call void @cdns_pcie_set_outbound_region(ptr noundef %rc, i8 noundef zeroext %conv33.i.i, i8 noundef zeroext 0, i32 noundef %r.0126.i.i, i1 noundef zeroext true, i64 noundef %conv31.i.i, i64 noundef %conv23.i.i, i32 noundef %add.i.i.i) #6
  br label %if.end37.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv35.i.i = zext i32 %112 to i64
  %end.i83.i.i = getelementptr inbounds %struct.resource, ptr %110, i32 0, i32 1
  %121 = ptrtoint ptr %end.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %end.i83.i.i, align 4
  %sub.i84.i.i = sub i32 1, %112
  %add.i85.i.i = add i32 %sub.i84.i.i, %122
  tail call void @cdns_pcie_set_outbound_region(ptr noundef %rc, i8 noundef zeroext %conv33.i.i, i8 noundef zeroext 0, i32 noundef %r.0126.i.i, i1 noundef zeroext false, i64 noundef %conv35.i.i, i64 noundef %conv23.i.i, i32 noundef %add.i85.i.i) #6
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.else.i.i, %if.then27.i.i
  %inc.i.i = add i32 %r.0126.i.i, 1
  %123 = ptrtoint ptr %entry3.0128.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %entry3.0.i.i = load ptr, ptr %entry3.0128.i.i, align 4
  %cmp.not.i5.i = icmp eq ptr %entry3.0.i.i, %windows.i.i
  br i1 %cmp.not.i5.i, label %if.end37.i.i.if.end.i.i.i_crit_edge, label %if.end37.i.i.for.body.i.i_crit_edge

if.end37.i.i.for.body.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end37.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end37.i.i.if.end.i.i.i_crit_edge, %if.end11.i.i.if.end.i.i.i_crit_edge
  %124 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev1, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.device, ptr %125, i32 0, i32 27
  %126 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %of_node.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %no_bar_nbits.i.i.i) #6
  %128 = ptrtoint ptr %no_bar_nbits.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 32, ptr %no_bar_nbits.i.i.i, align 4
  %dma_ranges.i.i.i = getelementptr i8, ptr %rc, i32 -64
  %129 = ptrtoint ptr %dma_ranges.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile ptr, ptr %dma_ranges.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %130, %dma_ranges.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then6.i.i.i, label %if.end12.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %127, ptr noundef nonnull @.str.21, ptr noundef nonnull %no_bar_nbits.i.i.i, i32 noundef 1, i32 noundef 0) #6
  %131 = ptrtoint ptr %no_bar_nbits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %no_bar_nbits.i.i.i, align 4
  %sh_prom.i.i.i = zext i32 %132 to i64
  %shl.i.i.i = shl nuw i64 1, %sh_prom.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.cdns_pcie_rc, ptr %rc, i32 0, i32 5, i32 2
  %133 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i.i.i.i, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i.i.i.i = icmp eq i8 %134, 0
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then6.i.i.i
  %135 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx.i.i.i.i, align 1
  %shr.i.i.i.i.i.i = lshr i64 %shl.i.i.i, 32
  %conv.i.i.i.i.i.i = trunc i64 %shr.i.i.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %conv.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %136 = call i32 @llvm.ctlz.i32(i32 %conv.i.i.i.i.i.i, i1 true) #6, !range !90
  %add.i.i.i.i.i.i = sub nuw nsw i32 64, %136
  br label %cdns_pcie_host_bar_ib_config.exit.thread.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i.i.i.i.i = trunc i64 %shl.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i.i.i.i)
  %tobool.not.i5.i.i.i.i.i.i = icmp eq i32 %conv1.i.i.i.i.i.i, 0
  %137 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i.i.i.i, i1 true) #6, !range !90
  %sub.i6.i.i.i.i.i.i = sub nuw nsw i32 32, %137
  %cond.i7.i.i.i.i.i.i = select i1 %tobool.not.i5.i.i.i.i.i.i, i32 0, i32 %sub.i6.i.i.i.i.i.i
  br label %cdns_pcie_host_bar_ib_config.exit.thread.i.i.i

cdns_pcie_host_bar_ib_config.exit.thread.i.i.i:   ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %add.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %cond.i7.i.i.i.i.i.i, %if.end.i.i.i.i.i.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  call void @arm_heavy_mb() #6
  %sub.i.i.i.i.i = shl i32 %retval.0.i.i.i.i.i.i, 24
  %and.i.i86.i.i = add i32 %sub.i.i.i.i.i, 1040187392
  %138 = and i32 %and.i.i86.i.i, 1056964608
  %139 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rc, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %140, i32 4196368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %138) #6, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rc, align 4
  %add.ptr.i114.i.i.i.i = getelementptr i8, ptr %142, i32 4196372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i.i.i.i, i32 0) #6, !srcloc !84
  br label %if.end52

do.end.i.i.i:                                     ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.22, i32 noundef 2) #9
  br label %cdns_pcie_host_init.exit

if.end12.i.i.i:                                   ; preds = %if.end.i.i.i
  tail call void @list_sort(ptr noundef null, ptr noundef %dma_ranges.i.i.i, ptr noundef nonnull @cdns_pcie_host_dma_ranges_cmp) #6
  %143 = ptrtoint ptr %dma_ranges.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %entry3.086.i.i.i = load ptr, ptr %dma_ranges.i.i.i, align 4
  %cmp.not87.i.i.i = icmp eq ptr %entry3.086.i.i.i, %dma_ranges.i.i.i
  br i1 %cmp.not87.i.i.i, label %if.end12.i.i.i.if.end52_crit_edge, label %for.body.lr.ph.i.i.i

if.end12.i.i.i.if.end52_crit_edge:                ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

for.body.lr.ph.i.i.i:                             ; preds = %if.end12.i.i.i
  %arrayidx.1.i.i.i.i.i = getelementptr %struct.cdns_pcie_rc, ptr %rc, i32 0, i32 5, i32 1
  %arrayidx.2.i.i.i.i.i = getelementptr %struct.cdns_pcie_rc, ptr %rc, i32 0, i32 5, i32 2
  br label %for.body.i87.i.i

for.body.i87.i.i:                                 ; preds = %cdns_pcie_host_bar_config.exit.i.i.i.for.body.i87.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %entry3.088.i.i.i = phi ptr [ %entry3.086.i.i.i, %for.body.lr.ph.i.i.i ], [ %entry3.0.i.i.i, %cdns_pcie_host_bar_config.exit.i.i.i.for.body.i87.i.i_crit_edge ]
  %144 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev1, align 4
  %res.i.i.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry3.088.i.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %res.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %res.i.i.i.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %conv.i49.i.i.i = zext i32 %149 to i64
  %offset.i.i.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry3.088.i.i.i, i32 0, i32 2
  %150 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %offset.i.i.i.i, align 4
  %flags8.i.i.i.i = getelementptr inbounds %struct.resource, ptr %147, i32 0, i32 3
  %152 = ptrtoint ptr %flags8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i51.i.i.i = icmp eq i32 %151, 0
  br i1 %tobool.not.i51.i.i.i, label %while.cond.preheader.i.i.i.i, label %do.end.i.i.i6.i

while.cond.preheader.i.i.i.i:                     ; preds = %for.body.i87.i.i
  %end.i.i.i.i.i = getelementptr inbounds %struct.resource, ptr %147, i32 0, i32 1
  %154 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %end.i.i.i.i.i, align 4
  %sub.i.i50.i.i.i = sub i32 1, %149
  %add.i.i.i.i.i = add i32 %155, %sub.i.i50.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i.i.i)
  %cmp.not106.i.i.i.i = icmp eq i32 %add.i.i.i.i.i, 0
  br i1 %cmp.not106.i.i.i.i, label %while.cond.preheader.i.i.i.i.cdns_pcie_host_bar_config.exit.i.i.i_crit_edge, label %while.body.i.preheader.i.i.i

while.cond.preheader.i.i.i.i.cdns_pcie_host_bar_config.exit.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cdns_pcie_host_bar_config.exit.i.i.i

while.body.i.preheader.i.i.i:                     ; preds = %while.cond.preheader.i.i.i.i
  %conv10.i.i.i.i = zext i32 %add.i.i.i.i.i to i64
  br label %while.body.i.i.i.i

do.end.i.i.i6.i:                                  ; preds = %for.body.i87.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i52.i.i.i = sub i32 %149, %151
  %conv6.i.i.i.i = zext i32 %sub.i52.i.i.i to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.27, i64 noundef %conv6.i.i.i.i, i64 noundef %conv.i49.i.i.i) #9
  br label %do.end21.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end39.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.body.i.preheader.i.i.i
  %size.0108.i.i.i.i = phi i64 [ %sub40.i.i.i.i, %if.end39.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %conv10.i.i.i.i, %while.body.i.preheader.i.i.i ]
  %cpu_addr.0107.i.i.i.i = phi i64 [ %add.i.i.i.i, %if.end39.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %conv.i49.i.i.i, %while.body.i.preheader.i.i.i ]
  %156 = ptrtoint ptr %uglygep to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %uglygep, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i.i.i.i.i = icmp eq i8 %157, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906944, i64 %size.0108.i.i.i.i)
  %cmp2.not.i.i.i.i.i = icmp ugt i64 %size.0108.i.i.i.i, 274877906944
  %or.cond.i.i.i.i.i = or i1 %cmp2.not.i.i.i.i.i, %tobool.not.i.i.i.i.i
  %spec.select27.i.i.i.i.i = sext i1 %or.cond.i.i.i.i.i to i32
  %158 = ptrtoint ptr %arrayidx.1.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.1.i.i.i.i.i, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.1.i.i.i.i.i = icmp eq i8 %159, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %size.0108.i.i.i.i)
  %cmp2.not.1.i.i.i.i.i = icmp ugt i64 %size.0108.i.i.i.i, 2147483648
  %or.cond24.i.i.i.i.i = or i1 %cmp2.not.1.i.i.i.i.i, %tobool.not.1.i.i.i.i.i
  %brmerge.i.i.i.i.i = or i1 %tobool.not.i.i.i.i.i, %or.cond24.i.i.i.i.i
  %sel_bar.1.mux.i.i.i.i.i = select i1 %or.cond24.i.i.i.i.i, i32 %spec.select27.i.i.i.i.i, i32 1
  %spec.select.1.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i32 -1, i32 1
  %sel_bar.1.1.i.i.i.i.i = select i1 %brmerge.i.i.i.i.i, i32 %sel_bar.1.mux.i.i.i.i.i, i32 %spec.select.1.i.i.i.i.i
  %160 = ptrtoint ptr %arrayidx.2.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.2.i.i.i.i.i, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.2.i.i.i.i.i = icmp eq i8 %161, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %size.0108.i.i.i.i)
  %cmp2.not.2.i.i.i.i.i = icmp ugt i64 %size.0108.i.i.i.i, -9223372036854775808
  %or.cond25.i.i.i.i.i = or i1 %cmp2.not.2.i.i.i.i.i, %tobool.not.2.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sel_bar.1.1.i.i.i.i.i)
  %cmp4.2.i.i.i.i.i = icmp eq i32 %sel_bar.1.1.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %cmp4.2.i.i.i.i.i, i32 2, i32 %sel_bar.1.1.i.i.i.i.i
  %sel_bar.1.2.i.i.i.i.i = select i1 %or.cond25.i.i.i.i.i, i32 %sel_bar.1.1.i.i.i.i.i, i32 %spec.select.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sel_bar.1.2.i.i.i.i.i)
  %cmp14.not.i.i.i.i = icmp eq i32 %sel_bar.1.2.i.i.i.i.i, -1
  br i1 %cmp14.not.i.i.i.i, label %if.end24.i.i.i.i, label %if.then16.i.i.i.i

if.then16.i.i.i.i:                                ; preds = %while.body.i.i.i.i
  %call17.i.i.i.i = tail call fastcc i32 @cdns_pcie_host_bar_ib_config(ptr noundef %rc, i32 noundef %sel_bar.1.2.i.i.i.i.i, i64 noundef %cpu_addr.0107.i.i.i.i, i64 noundef %size.0108.i.i.i.i, i32 noundef %153) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i.i)
  %tobool18.not.i.i.i.i = icmp eq i32 %call17.i.i.i.i, 0
  br i1 %tobool18.not.i.i.i.i, label %if.then16.i.i.i.i.cdns_pcie_host_bar_config.exit.i.i.i_crit_edge, label %do.end22.i.i.i.i

if.then16.i.i.i.i.cdns_pcie_host_bar_config.exit.i.i.i_crit_edge: ; preds = %if.then16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cdns_pcie_host_bar_config.exit.i.i.i

do.end22.i.i.i.i:                                 ; preds = %if.then16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.22, i32 noundef %sel_bar.1.2.i.i.i.i.i) #9
  br label %do.end21.i.i.i

if.end24.i.i.i.i:                                 ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906944, i64 %size.0108.i.i.i.i)
  %cmp2.not.i83.i.i.i.i = icmp ult i64 %size.0108.i.i.i.i, 274877906944
  %or.cond.i84.i.i.i.i = or i1 %cmp2.not.i83.i.i.i.i, %tobool.not.i.i.i.i.i
  %spec.select27.i85.i.i.i.i = sext i1 %or.cond.i84.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %size.0108.i.i.i.i)
  %cmp2.not.1.i88.i.i.i.i = icmp ult i64 %size.0108.i.i.i.i, 2147483648
  %or.cond24.i89.i.i.i.i = or i1 %cmp2.not.1.i88.i.i.i.i, %tobool.not.1.i.i.i.i.i
  %spec.select.i90.i.i.i.i = zext i1 %or.cond.i84.i.i.i.i to i32
  %sel_bar.1.1.i91.i.i.i.i = select i1 %or.cond24.i89.i.i.i.i, i32 %spec.select27.i85.i.i.i.i, i32 %spec.select.i90.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %size.0108.i.i.i.i)
  %cmp2.not.2.i94.i.i.i.i = icmp sgt i64 %size.0108.i.i.i.i, -1
  %or.cond25.i95.i.i.i.i = or i1 %cmp2.not.2.i94.i.i.i.i, %tobool.not.2.i.i.i.i.i
  %sel_bar.1.2.i96.i.i.i.i = select i1 %or.cond25.i95.i.i.i.i, i32 %sel_bar.1.1.i91.i.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sel_bar.1.2.i96.i.i.i.i)
  %cmp26.i.i.i.i = icmp eq i32 %sel_bar.1.2.i96.i.i.i.i, -1
  br i1 %cmp26.i.i.i.i, label %do.end31.i.i.i.i, label %if.end32.i.i.i.i

do.end31.i.i.i.i:                                 ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.32, i64 noundef %cpu_addr.0107.i.i.i.i) #9
  br label %do.end21.i.i.i

if.end32.i.i.i.i:                                 ; preds = %if.end24.i.i.i.i
  %arrayidx.i53.i.i.i = getelementptr [3 x i64], ptr @bar_max_size, i32 0, i32 %sel_bar.1.2.i96.i.i.i.i
  %162 = ptrtoint ptr %arrayidx.i53.i.i.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %arrayidx.i53.i.i.i, align 8
  %call33.i.i.i.i = tail call fastcc i32 @cdns_pcie_host_bar_ib_config(ptr noundef %rc, i32 noundef %sel_bar.1.2.i96.i.i.i.i, i64 noundef %cpu_addr.0107.i.i.i.i, i64 noundef %163, i32 noundef %153) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i.i.i)
  %tobool34.not.i.i.i.i = icmp eq i32 %call33.i.i.i.i, 0
  br i1 %tobool34.not.i.i.i.i, label %if.end39.i.i.i.i, label %do.end38.i.i.i.i

do.end38.i.i.i.i:                                 ; preds = %if.end32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.22, i32 noundef %sel_bar.1.2.i96.i.i.i.i) #9
  br label %do.end21.i.i.i

if.end39.i.i.i.i:                                 ; preds = %if.end32.i.i.i.i
  %sub40.i.i.i.i = sub i64 %size.0108.i.i.i.i, %163
  %add.i.i.i.i = add i64 %163, %cpu_addr.0107.i.i.i.i
  %cmp.not.i.i.i.i = icmp eq i64 %sub40.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end39.i.i.i.i.cdns_pcie_host_bar_config.exit.i.i.i_crit_edge, label %if.end39.i.i.i.i.while.body.i.i.i.i_crit_edge

if.end39.i.i.i.i.while.body.i.i.i.i_crit_edge:    ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i.i

if.end39.i.i.i.i.cdns_pcie_host_bar_config.exit.i.i.i_crit_edge: ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cdns_pcie_host_bar_config.exit.i.i.i

cdns_pcie_host_bar_config.exit.i.i.i:             ; preds = %if.end39.i.i.i.i.cdns_pcie_host_bar_config.exit.i.i.i_crit_edge, %if.then16.i.i.i.i.cdns_pcie_host_bar_config.exit.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.cdns_pcie_host_bar_config.exit.i.i.i_crit_edge
  %164 = ptrtoint ptr %entry3.088.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %entry3.0.i.i.i = load ptr, ptr %entry3.088.i.i.i, align 4
  %cmp.not.i88.i.i = icmp eq ptr %entry3.0.i.i.i, %dma_ranges.i.i.i
  br i1 %cmp.not.i88.i.i, label %cdns_pcie_host_bar_config.exit.i.i.i.if.end52_crit_edge, label %cdns_pcie_host_bar_config.exit.i.i.i.for.body.i87.i.i_crit_edge

cdns_pcie_host_bar_config.exit.i.i.i.for.body.i87.i.i_crit_edge: ; preds = %cdns_pcie_host_bar_config.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i87.i.i

cdns_pcie_host_bar_config.exit.i.i.i.if.end52_crit_edge: ; preds = %cdns_pcie_host_bar_config.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end21.i.i.i:                                   ; preds = %do.end38.i.i.i.i, %do.end31.i.i.i.i, %do.end22.i.i.i.i, %do.end.i.i.i6.i
  %retval.0.i54.ph.i.i.i = phi i32 [ %call17.i.i.i.i, %do.end22.i.i.i.i ], [ %call33.i.i.i.i, %do.end38.i.i.i.i ], [ -22, %do.end31.i.i.i.i ], [ -22, %do.end.i.i.i6.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.25) #9
  br label %cdns_pcie_host_init.exit

cdns_pcie_host_init.exit:                         ; preds = %do.end21.i.i.i, %do.end.i.i.i
  %retval.0.i89.i.i = phi i32 [ %retval.0.i54.ph.i.i.i, %do.end21.i.i.i ], [ -16, %do.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %no_bar_nbits.i.i.i) #6
  br label %cleanup

if.end52:                                         ; preds = %cdns_pcie_host_bar_config.exit.i.i.i.if.end52_crit_edge, %if.end12.i.i.i.if.end52_crit_edge, %cdns_pcie_host_bar_ib_config.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %no_bar_nbits.i.i.i) #6
  %ops = getelementptr i8, ptr %rc, i32 -92
  %165 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ops, align 4
  %tobool53.not = icmp eq ptr %166, null
  br i1 %tobool53.not, label %if.then54, label %if.end52.if.end56_crit_edge

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @cdns_pcie_host_ops, ptr %ops, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52.if.end56_crit_edge
  %call57 = call i32 @pci_host_probe(ptr noundef nonnull %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %err_init, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_init:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %call.i130 = call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %err_init, %if.end56.cleanup_crit_edge, %cdns_pcie_host_init.exit, %do.end32, %if.then19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %12, %if.then19 ], [ %call.i, %do.end32 ], [ %call57, %err_init ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i89.i.i, %cdns_pcie_host_init.exit ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_pcie_detect_quiet_min_delay_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_pcie_host_wait_for_link(ptr noundef %pcie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ops.i = getelementptr inbounds %struct.cdns_pcie, ptr %pcie, i32 0, i32 7
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %link_up.i = getelementptr inbounds %struct.cdns_pcie_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_up.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %cdns_pcie_link_up.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit:                           ; preds = %entry
  %call.i = tail call zeroext i1 %5(ptr noundef %pcie) #6
  br i1 %call.i, label %cdns_pcie_link_up.exit.do.end_crit_edge, label %if.end

cdns_pcie_link_up.exit.do.end_crit_edge:          ; preds = %cdns_pcie_link_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %cdns_pcie_link_up.exit.9.do.end_crit_edge, %if.end.8.do.end_crit_edge, %cdns_pcie_link_up.exit.8.do.end_crit_edge, %if.end.7.do.end_crit_edge, %cdns_pcie_link_up.exit.7.do.end_crit_edge, %if.end.6.do.end_crit_edge, %cdns_pcie_link_up.exit.6.do.end_crit_edge, %if.end.5.do.end_crit_edge, %cdns_pcie_link_up.exit.5.do.end_crit_edge, %if.end.4.do.end_crit_edge, %cdns_pcie_link_up.exit.4.do.end_crit_edge, %if.end.3.do.end_crit_edge, %cdns_pcie_link_up.exit.3.do.end_crit_edge, %if.end.2.do.end_crit_edge, %cdns_pcie_link_up.exit.2.do.end_crit_edge, %if.end.1.do.end_crit_edge, %cdns_pcie_link_up.exit.1.do.end_crit_edge, %if.end.do.end_crit_edge, %cdns_pcie_link_up.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end:                                           ; preds = %cdns_pcie_link_up.exit
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %link_up.i.1 = getelementptr inbounds %struct.cdns_pcie_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %link_up.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_up.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %9, null
  br i1 %tobool.not.i.1, label %if.end.do.end_crit_edge, label %cdns_pcie_link_up.exit.1

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit.1:                         ; preds = %if.end
  %call.i.1 = tail call zeroext i1 %9(ptr noundef %pcie) #6
  br i1 %call.i.1, label %cdns_pcie_link_up.exit.1.do.end_crit_edge, label %if.end.1

cdns_pcie_link_up.exit.1.do.end_crit_edge:        ; preds = %cdns_pcie_link_up.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.1:                                         ; preds = %cdns_pcie_link_up.exit.1
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %link_up.i.2 = getelementptr inbounds %struct.cdns_pcie_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %link_up.i.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_up.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %13, null
  br i1 %tobool.not.i.2, label %if.end.1.do.end_crit_edge, label %cdns_pcie_link_up.exit.2

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit.2:                         ; preds = %if.end.1
  %call.i.2 = tail call zeroext i1 %13(ptr noundef %pcie) #6
  br i1 %call.i.2, label %cdns_pcie_link_up.exit.2.do.end_crit_edge, label %if.end.2

cdns_pcie_link_up.exit.2.do.end_crit_edge:        ; preds = %cdns_pcie_link_up.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.2:                                         ; preds = %cdns_pcie_link_up.exit.2
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %link_up.i.3 = getelementptr inbounds %struct.cdns_pcie_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %link_up.i.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link_up.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %17, null
  br i1 %tobool.not.i.3, label %if.end.2.do.end_crit_edge, label %cdns_pcie_link_up.exit.3

if.end.2.do.end_crit_edge:                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit.3:                         ; preds = %if.end.2
  %call.i.3 = tail call zeroext i1 %17(ptr noundef %pcie) #6
  br i1 %call.i.3, label %cdns_pcie_link_up.exit.3.do.end_crit_edge, label %if.end.3

cdns_pcie_link_up.exit.3.do.end_crit_edge:        ; preds = %cdns_pcie_link_up.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.3:                                         ; preds = %cdns_pcie_link_up.exit.3
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %link_up.i.4 = getelementptr inbounds %struct.cdns_pcie_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %link_up.i.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link_up.i.4, align 4
  %tobool.not.i.4 = icmp eq ptr %21, null
  br i1 %tobool.not.i.4, label %if.end.3.do.end_crit_edge, label %cdns_pcie_link_up.exit.4

if.end.3.do.end_crit_edge:                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit.4:                         ; preds = %if.end.3
  %call.i.4 = tail call zeroext i1 %21(ptr noundef %pcie) #6
  br i1 %call.i.4, label %cdns_pcie_link_up.exit.4.do.end_crit_edge, label %if.end.4

cdns_pcie_link_up.exit.4.do.end_crit_edge:        ; preds = %cdns_pcie_link_up.exit.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.4:                                         ; preds = %cdns_pcie_link_up.exit.4
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %link_up.i.5 = getelementptr inbounds %struct.cdns_pcie_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %link_up.i.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link_up.i.5, align 4
  %tobool.not.i.5 = icmp eq ptr %25, null
  br i1 %tobool.not.i.5, label %if.end.4.do.end_crit_edge, label %cdns_pcie_link_up.exit.5

if.end.4.do.end_crit_edge:                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit.5:                         ; preds = %if.end.4
  %call.i.5 = tail call zeroext i1 %25(ptr noundef %pcie) #6
  br i1 %call.i.5, label %cdns_pcie_link_up.exit.5.do.end_crit_edge, label %if.end.5

cdns_pcie_link_up.exit.5.do.end_crit_edge:        ; preds = %cdns_pcie_link_up.exit.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.5:                                         ; preds = %cdns_pcie_link_up.exit.5
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %link_up.i.6 = getelementptr inbounds %struct.cdns_pcie_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %link_up.i.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link_up.i.6, align 4
  %tobool.not.i.6 = icmp eq ptr %29, null
  br i1 %tobool.not.i.6, label %if.end.5.do.end_crit_edge, label %cdns_pcie_link_up.exit.6

if.end.5.do.end_crit_edge:                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit.6:                         ; preds = %if.end.5
  %call.i.6 = tail call zeroext i1 %29(ptr noundef %pcie) #6
  br i1 %call.i.6, label %cdns_pcie_link_up.exit.6.do.end_crit_edge, label %if.end.6

cdns_pcie_link_up.exit.6.do.end_crit_edge:        ; preds = %cdns_pcie_link_up.exit.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.6:                                         ; preds = %cdns_pcie_link_up.exit.6
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %link_up.i.7 = getelementptr inbounds %struct.cdns_pcie_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %link_up.i.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link_up.i.7, align 4
  %tobool.not.i.7 = icmp eq ptr %33, null
  br i1 %tobool.not.i.7, label %if.end.6.do.end_crit_edge, label %cdns_pcie_link_up.exit.7

if.end.6.do.end_crit_edge:                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit.7:                         ; preds = %if.end.6
  %call.i.7 = tail call zeroext i1 %33(ptr noundef %pcie) #6
  br i1 %call.i.7, label %cdns_pcie_link_up.exit.7.do.end_crit_edge, label %if.end.7

cdns_pcie_link_up.exit.7.do.end_crit_edge:        ; preds = %cdns_pcie_link_up.exit.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.7:                                         ; preds = %cdns_pcie_link_up.exit.7
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %link_up.i.8 = getelementptr inbounds %struct.cdns_pcie_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %link_up.i.8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link_up.i.8, align 4
  %tobool.not.i.8 = icmp eq ptr %37, null
  br i1 %tobool.not.i.8, label %if.end.7.do.end_crit_edge, label %cdns_pcie_link_up.exit.8

if.end.7.do.end_crit_edge:                        ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit.8:                         ; preds = %if.end.7
  %call.i.8 = tail call zeroext i1 %37(ptr noundef %pcie) #6
  br i1 %call.i.8, label %cdns_pcie_link_up.exit.8.do.end_crit_edge, label %if.end.8

cdns_pcie_link_up.exit.8.do.end_crit_edge:        ; preds = %cdns_pcie_link_up.exit.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.8:                                         ; preds = %cdns_pcie_link_up.exit.8
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %link_up.i.9 = getelementptr inbounds %struct.cdns_pcie_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %link_up.i.9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link_up.i.9, align 4
  %tobool.not.i.9 = icmp eq ptr %41, null
  br i1 %tobool.not.i.9, label %if.end.8.do.end_crit_edge, label %cdns_pcie_link_up.exit.9

if.end.8.do.end_crit_edge:                        ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cdns_pcie_link_up.exit.9:                         ; preds = %if.end.8
  %call.i.9 = tail call zeroext i1 %41(ptr noundef %pcie) #6
  br i1 %call.i.9, label %cdns_pcie_link_up.exit.9.do.end_crit_edge, label %if.end.9

cdns_pcie_link_up.exit.9.do.end_crit_edge:        ; preds = %cdns_pcie_link_up.exit.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.9:                                         ; preds = %cdns_pcie_link_up.exit.9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -110, %if.end.9 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_pcie_set_outbound_region(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_pcie_host_bar_ib_config(ptr nocapture noundef %rc, i32 noundef %bar, i64 noundef %cpu_addr, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cdns_pcie_rc, ptr %rc, i32 0, i32 5, i32 %bar
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %shr.i.i = lshr i64 %size, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #6, !range !90
  %add.i.i = sub nuw nsw i32 64, %3
  br label %cond.end6

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i = trunc i64 %size to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #6, !range !90
  %sub.i6.i.i = sub nuw nsw i32 32, %4
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end6

cond.end6:                                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub8 = add nsw i32 %retval.0.i.i, 62
  %and = and i32 %sub8, 63
  %conv = trunc i64 %cpu_addr to i32
  %and10 = and i32 %conv, -256
  %or = or i32 %and, %and10
  %shr = lshr i64 %cpu_addr, 32
  %conv12 = trunc i64 %shr to i32
  %mul = shl i32 %bar, 3
  %add = add i32 %mul, 4196352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %6 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rc, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !84
  %add14 = add i32 %mul, 4196356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv12) #6
  %9 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rc, align 4
  %add.ptr.i114 = getelementptr i8, ptr %10, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %8) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bar)
  %cmp15 = icmp eq i32 %bar, 2
  br i1 %cmp15, label %cond.end6.cleanup_crit_edge, label %if.end18

cond.end6.cleanup_crit_edge:                      ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rc, align 4
  %add.ptr.i115 = getelementptr i8, ptr %12, i32 1049344
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #6, !srcloc !81
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %add21 = or i32 %mul, 6
  %shl24 = shl i32 7, %add21
  %arrayidx34 = getelementptr [2 x i8], ptr @bar_aperture_mask, i32 0, i32 %bar
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %16 to i32
  %shl39 = shl i32 %conv35, %mul
  %or40 = or i32 %shl39, %shl24
  %neg = xor i32 %or40, -1
  %and41 = and i32 %14, %neg
  %add42 = add i64 %size, %cpu_addr
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add42)
  %cmp43 = icmp ugt i64 %add42, 4294967295
  %shl32 = shl i32 5, %add21
  %.sink = select i1 %cmp43, i32 6, i32 4
  %shl32.sink = select i1 %cmp43, i32 %shl24, i32 %shl32
  %shl28 = shl i32 %.sink, %add21
  %and58 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %or64 = select i1 %tobool59.not, i32 %shl28, i32 0
  %spec.select113 = or i32 %or64, %shl32.sink
  %value.2 = or i32 %spec.select113, %and41
  %sub71 = add nsw i32 %retval.0.i.i, -3
  %shl73 = shl i32 %sub71, %mul
  %or74 = or i32 %value.2, %shl73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or74) #6
  %18 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rc, align 4
  %add.ptr.i116 = getelementptr i8, ptr %19, i32 1049344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %17) #6, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %cond.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %cond.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns_pcie_host_dma_ranges_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.resource_entry, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %res4 = getelementptr inbounds %struct.resource_entry, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %res4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res4, align 4
  %end.i6 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %end.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i6, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %sub.i7.neg = xor i32 %9, -1
  %add.i8.neg = add i32 %3, 1
  %sub.i = sub i32 %add.i8.neg, %5
  %add.i = add i32 %sub.i, %sub.i7.neg
  %sub = add i32 %add.i, %11
  ret i32 %sub
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 484, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 487, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 489, i32 63}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 491, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cdns_pcie_host_setup._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @cdns_pcie_host_setup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 495, i32 59}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 506, i32 3}
!18 = !{ptr @cdns_pcie_host_setup._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cdns_pcie_host_setup._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 512, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cdns_pcie_host_setup.__UNIQUE_ID_ddebug293, !21, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 88, i32 4}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cdns_pcie_host_wait_for_link._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @cdns_pcie_host_wait_for_link._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/cadence/pcie-cadence.h", i32 396, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cdns_pcie_read_sz._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @cdns_pcie_read_sz._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/cadence/pcie-cadence.h", i32 414, i32 3}
!38 = !{ptr @cdns_pcie_write_sz._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cdns_pcie_write_sz._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 374, i32 28}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 379, i32 4}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cdns_pcie_host_map_dma_ranges._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cdns_pcie_host_map_dma_ranges._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 388, i32 4}
!49 = !{ptr @cdns_pcie_host_map_dma_ranges._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cdns_pcie_host_map_dma_ranges._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @bar_aperture_mask, !52, !"bar_aperture_mask", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 21, i32 11}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 292, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cdns_pcie_host_bar_config._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @cdns_pcie_host_bar_config._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @cdns_pcie_host_bar_config._entry.29, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 311, i32 5}
!60 = !{ptr @cdns_pcie_host_bar_config._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 328, i32 4}
!63 = !{ptr @cdns_pcie_host_bar_config._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cdns_pcie_host_bar_config._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @cdns_pcie_host_bar_config._entry.34, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 337, i32 4}
!67 = !{ptr @cdns_pcie_host_bar_config._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @bar_max_size, !69, !"bar_max_size", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 15, i32 12}
!70 = !{ptr @cdns_pcie_host_ops, !71, !"cdns_pcie_host_ops", i1 false, i1 false}
!71 = !{!"../drivers/pci/controller/cadence/pcie-cadence-host.c", i32 74, i32 23}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 4526637}
!82 = !{i64 2155453027}
!83 = !{i64 2155452176}
!84 = !{i64 4526219}
!85 = !{i64 2155454186}
!86 = !{i64 2155459256}
!87 = !{i64 2155459465}
!88 = !{i64 2148769154, i64 2148769159, i64 2148769172, i64 2148769216, i64 2148769250, i64 2148769271}
!89 = !{i8 0, i8 2}
!90 = !{i32 0, i32 33}
