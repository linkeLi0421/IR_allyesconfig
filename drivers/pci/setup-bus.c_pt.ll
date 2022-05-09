; ModuleID = '/llk/IR_all_yes/drivers/pci/setup-bus.c_pt.bc'
source_filename = "../drivers/pci/setup-bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_flags\09\09\09\09"
module asm "\09.long\09__crc_pci_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_flags\22\09\09\09\09\09"
module asm "__kstrtabns_pci_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_setup_cardbus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_setup_cardbus\09\09\09\09"
module asm "\09.long\09__crc_pci_setup_cardbus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_setup_cardbus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_setup_cardbus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_setup_cardbus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_bus_size_bridges\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_bus_size_bridges\09\09\09\09"
module asm "\09.long\09__crc_pci_bus_size_bridges\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_size_bridges:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_size_bridges\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_size_bridges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_bus_assign_resources\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_bus_assign_resources\09\09\09\09"
module asm "\09.long\09__crc_pci_bus_assign_resources\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_assign_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_assign_resources\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_assign_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_bus_claim_resources\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_bus_claim_resources\09\09\09\09"
module asm "\09.long\09__crc_pci_bus_claim_resources\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_claim_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_claim_resources\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_claim_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_assign_unassigned_bridge_resources\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_assign_unassigned_bridge_resources\09\09\09\09"
module asm "\09.long\09__crc_pci_assign_unassigned_bridge_resources\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_assign_unassigned_bridge_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_assign_unassigned_bridge_resources\22\09\09\09\09\09"
module asm "__kstrtabns_pci_assign_unassigned_bridge_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_assign_unassigned_bus_resources\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_assign_unassigned_bus_resources\09\09\09\09"
module asm "\09.long\09__crc_pci_assign_unassigned_bus_resources\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_assign_unassigned_bus_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_assign_unassigned_bus_resources\22\09\09\09\09\09"
module asm "__kstrtabns_pci_assign_unassigned_bus_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_dev_resource = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }

@pci_flags = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_pci_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_flags to i32), ptr @__kstrtab_pci_flags, ptr @__kstrtabns_pci_flags }, section "___ksymtab_gpl+pci_flags", align 4
@pci_setup_cardbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CardBus bridge to %pR\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_setup_cardbus\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pci/setup-bus.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_setup_cardbus._entry_ptr = internal global ptr @pci_setup_cardbus._entry, section ".printk_index", align 4
@pci_setup_cardbus._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  bridge window %pR\0A\00", [43 x i8] zeroinitializer }, align 32
@pci_setup_cardbus._entry_ptr.7 = internal global ptr @pci_setup_cardbus._entry.5, section ".printk_index", align 4
@pci_setup_cardbus._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 532, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pci_setup_cardbus._entry_ptr.9 = internal global ptr @pci_setup_cardbus._entry.8, section ".printk_index", align 4
@pci_setup_cardbus._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 542, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pci_setup_cardbus._entry_ptr.11 = internal global ptr @pci_setup_cardbus._entry.10, section ".printk_index", align 4
@pci_setup_cardbus._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 552, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pci_setup_cardbus._entry_ptr.13 = internal global ptr @pci_setup_cardbus._entry.12, section ".printk_index", align 4
@__kstrtab_pci_setup_cardbus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_setup_cardbus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_setup_cardbus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_setup_cardbus to i32), ptr @__kstrtab_pci_setup_cardbus, ptr @__kstrtabns_pci_setup_cardbus }, section "___ksymtab+pci_setup_cardbus", align 4
@pci_cardbus_io_size = external dso_local local_unnamed_addr global i32, align 4
@pci_cardbus_mem_size = external dso_local local_unnamed_addr global i32, align 4
@pci_hotplug_io_size = external dso_local local_unnamed_addr global i32, align 4
@pci_hotplug_mmio_size = external dso_local local_unnamed_addr global i32, align 4
@pci_hotplug_mmio_pref_size = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_pci_bus_size_bridges = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_size_bridges = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_size_bridges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_size_bridges to i32), ptr @__kstrtab_pci_bus_size_bridges, ptr @__kstrtabns_pci_bus_size_bridges }, section "___ksymtab+pci_bus_size_bridges", align 4
@__pci_bus_assign_resources._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1409, ptr @.str.3, ptr @.str.4 }, align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"not setting up bridge for bus %04x:%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__pci_bus_assign_resources\00", [37 x i8] zeroinitializer }, align 32
@__pci_bus_assign_resources._entry_ptr = internal global ptr @__pci_bus_assign_resources._entry, section ".printk_index", align 4
@__kstrtab_pci_bus_assign_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_assign_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_assign_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_assign_resources to i32), ptr @__kstrtab_pci_bus_assign_resources, ptr @__kstrtabns_pci_bus_assign_resources }, section "___ksymtab+pci_bus_assign_resources", align 4
@__kstrtab_pci_bus_claim_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_claim_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_claim_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_claim_resources to i32), ptr @__kstrtab_pci_bus_claim_resources, ptr @__kstrtabns_pci_bus_claim_resources }, section "___ksymtab+pci_bus_claim_resources", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@pci_realloc_enable = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@pci_assign_unassigned_root_bus_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1772, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"max bus depth: %d pci_try_num: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pci_assign_unassigned_root_bus_resources\00", [55 x i8] zeroinitializer }, align 32
@pci_assign_unassigned_root_bus_resources._entry_ptr = internal global ptr @pci_assign_unassigned_root_bus_resources._entry, section ".printk_index", align 4
@pci_assign_unassigned_root_bus_resources._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1799, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Some PCI device resources are unassigned, try booting with pci=realloc\0A\00", [56 x i8] zeroinitializer }, align 32
@pci_assign_unassigned_root_bus_resources._entry_ptr.22 = internal global ptr @pci_assign_unassigned_root_bus_resources._entry.20, section ".printk_index", align 4
@pci_assign_unassigned_root_bus_resources._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 1801, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Automatically enabled pci realloc, if you have problem, try booting with pci=realloc=off\0A\00", [38 x i8] zeroinitializer }, align 32
@pci_assign_unassigned_root_bus_resources._entry_ptr.25 = internal global ptr @pci_assign_unassigned_root_bus_resources._entry.23, section ".printk_index", align 4
@pci_assign_unassigned_root_bus_resources._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 1808, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No. %d try to assign unassigned res\0A\00", [59 x i8] zeroinitializer }, align 32
@pci_assign_unassigned_root_bus_resources._entry_ptr.28 = internal global ptr @pci_assign_unassigned_root_bus_resources._entry.26, section ".printk_index", align 4
@pci_root_buses = external dso_local global %struct.list_head, align 4
@pci_assign_unassigned_bridge_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 2085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017PCI: No. %d try to assign unassigned res\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pci_assign_unassigned_bridge_resources\00", [57 x i8] zeroinitializer }, align 32
@pci_assign_unassigned_bridge_resources._entry_ptr = internal global ptr @pci_assign_unassigned_bridge_resources._entry, section ".printk_index", align 4
@pci_assign_unassigned_bridge_resources._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 2119, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error reenabling bridge (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pci_assign_unassigned_bridge_resources._entry_ptr.34 = internal global ptr @pci_assign_unassigned_bridge_resources._entry.31, section ".printk_index", align 4
@__kstrtab_pci_assign_unassigned_bridge_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_assign_unassigned_bridge_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_assign_unassigned_bridge_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_assign_unassigned_bridge_resources to i32), ptr @__kstrtab_pci_assign_unassigned_bridge_resources, ptr @__kstrtabns_pci_assign_unassigned_bridge_resources }, section "___ksymtab_gpl+pci_assign_unassigned_bridge_resources", align 4
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@pci_reassign_bridge_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 2156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BAR %d: releasing %pR\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pci_reassign_bridge_resources\00", [34 x i8] zeroinitializer }, align 32
@pci_reassign_bridge_resources._entry_ptr = internal global ptr @pci_reassign_bridge_resources._entry, section ".printk_index", align 4
@__kstrtab_pci_assign_unassigned_bus_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_assign_unassigned_bus_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_assign_unassigned_bus_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_assign_unassigned_bus_resources to i32), ptr @__kstrtab_pci_assign_unassigned_bus_resources, ptr @__kstrtabns_pci_assign_unassigned_bus_resources }, section "___ksymtab_gpl+pci_assign_unassigned_bus_resources", align 4
@__pci_setup_bridge._entry = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 670, ptr @.str.3, ptr @.str.4 }, align 1
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCI bridge to %pR\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__pci_setup_bridge\00", [45 x i8] zeroinitializer }, align 32
@__pci_setup_bridge._entry_ptr = internal global ptr @__pci_setup_bridge._entry, section ".printk_index", align 4
@pci_setup_bridge_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.39, ptr @.str.2, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci_setup_bridge_io\00", [44 x i8] zeroinitializer }, align 32
@pci_setup_bridge_io._entry_ptr = internal global ptr @pci_setup_bridge_io._entry, section ".printk_index", align 4
@pci_setup_bridge_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.40, ptr @.str.2, i32 623, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_setup_bridge_mmio\00", [42 x i8] zeroinitializer }, align 32
@pci_setup_bridge_mmio._entry_ptr = internal global ptr @pci_setup_bridge_mmio._entry, section ".printk_index", align 4
@pci_setup_bridge_mmio_pref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.41, ptr @.str.2, i32 654, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pci_setup_bridge_mmio_pref\00", [37 x i8] zeroinitializer }, align 32
@pci_setup_bridge_mmio_pref._entry_ptr = internal global ptr @pci_setup_bridge_mmio_pref._entry, section ".printk_index", align 4
@pbus_size_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 931, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"disabling bridge window %pR to %pR (unused)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pbus_size_io\00", [19 x i8] zeroinitializer }, align 32
@pbus_size_io._entry_ptr = internal global ptr @pbus_size_io._entry, section ".printk_index", align 4
@pbus_size_io._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 944, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bridge window %pR to %pR add_size %llx\0A\00", [56 x i8] zeroinitializer }, align 32
@pbus_size_io._entry_ptr.46 = internal global ptr @pbus_size_io._entry.44, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@pbus_size_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1052, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"disabling BAR %d: %pR (bad alignment %#llx)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pbus_size_mem\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pbus_size_mem._entry_ptr = internal global ptr @pbus_size_mem._entry, section ".printk_index", align 4
@pbus_size_mem._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.48, ptr @.str.2, i32 1084, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pbus_size_mem._entry_ptr.51 = internal global ptr @pbus_size_mem._entry.50, section ".printk_index", align 4
@pbus_size_mem._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 1096, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bridge window %pR to %pR add_size %llx add_align %llx\0A\00", [41 x i8] zeroinitializer }, align 32
@pbus_size_mem._entry_ptr.54 = internal global ptr @pbus_size_mem._entry.52, section ".printk_index", align 4
@pdev_sort_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 150, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BAR %d: %pR has bogus alignment\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pdev_sort_resources\00", [44 x i8] zeroinitializer }, align 32
@pdev_sort_resources._entry_ptr = internal global ptr @pdev_sort_resources._entry, section ".printk_index", align 4
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: kzalloc() failed!\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@reassign_resources_sorted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add %llx res[%d]=%pR\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reassign_resources_sorted\00", [38 x i8] zeroinitializer }, align 32
@reassign_resources_sorted._entry_ptr = internal global ptr @reassign_resources_sorted._entry, section ".printk_index", align 4
@pci_bridge_release_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1567, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"resource %d %pR released\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pci_bridge_release_resources\00", [35 x i8] zeroinitializer }, align 32
@pci_bridge_release_resources._entry_ptr = internal global ptr @pci_bridge_release_resources._entry, section ".printk_index", align 4
@pci_bus_dump_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1632, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resource %d %pR\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_bus_dump_res\00", [47 x i8] zeroinitializer }, align 32
@pci_bus_dump_res._entry_ptr = internal global ptr @pci_bus_dump_res._entry, section ".printk_index", align 4
@adjust_bridge_window.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 1, i8 -43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setup_bus\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adjust_bridge_window\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge window %pR extended by %pa\0A\00", [61 x i8] zeroinitializer }, align 32
@adjust_bridge_window.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.65, ptr @.str.2, ptr @.str.67, i8 1, i8 -42, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge window %pR shrunken by %pa\0A\00", [61 x i8] zeroinitializer }, align 32
@__pci_bridge_assign_resources._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.68, ptr @.str.2, i32 1514, ptr @.str.3, ptr @.str.4 }, align 1
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__pci_bridge_assign_resources\00", [34 x i8] zeroinitializer }, align 32
@__pci_bridge_assign_resources._entry_ptr = internal global ptr @__pci_bridge_assign_resources._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4294967295]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1540, i64 1543]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1536, i64 2048]
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"pci_flags\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 28, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 512, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 522, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 532, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 542, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 552, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1408, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1687, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"pci_realloc_enable\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1684, i32 25 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1689, i32 25 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1771, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1799, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1801, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1807, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2084, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2119, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2155, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 669, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 597, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 623, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 654, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 930, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 942, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1051, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1083, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1093, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 149, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 156, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 255, i32 5 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1566, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1632, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1875, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1879, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [27 x i8] c"../drivers/pci/setup-bus.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1513, i32 3 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__ksymtab_pci_assign_unassigned_bridge_resources, ptr @__ksymtab_pci_assign_unassigned_bus_resources, ptr @__ksymtab_pci_bus_assign_resources, ptr @__ksymtab_pci_bus_claim_resources, ptr @__ksymtab_pci_bus_size_bridges, ptr @__ksymtab_pci_flags, ptr @__ksymtab_pci_setup_cardbus, ptr @__pci_bridge_assign_resources._entry, ptr @__pci_bridge_assign_resources._entry_ptr, ptr @__pci_bus_assign_resources._entry, ptr @__pci_bus_assign_resources._entry_ptr, ptr @__pci_setup_bridge._entry, ptr @__pci_setup_bridge._entry_ptr, ptr @pbus_size_io._entry, ptr @pbus_size_io._entry.44, ptr @pbus_size_io._entry_ptr, ptr @pbus_size_io._entry_ptr.46, ptr @pbus_size_mem._entry, ptr @pbus_size_mem._entry.50, ptr @pbus_size_mem._entry.52, ptr @pbus_size_mem._entry_ptr, ptr @pbus_size_mem._entry_ptr.51, ptr @pbus_size_mem._entry_ptr.54, ptr @pci_assign_unassigned_bridge_resources._entry, ptr @pci_assign_unassigned_bridge_resources._entry.31, ptr @pci_assign_unassigned_bridge_resources._entry_ptr, ptr @pci_assign_unassigned_bridge_resources._entry_ptr.34, ptr @pci_assign_unassigned_root_bus_resources._entry, ptr @pci_assign_unassigned_root_bus_resources._entry.20, ptr @pci_assign_unassigned_root_bus_resources._entry.23, ptr @pci_assign_unassigned_root_bus_resources._entry.26, ptr @pci_assign_unassigned_root_bus_resources._entry_ptr, ptr @pci_assign_unassigned_root_bus_resources._entry_ptr.22, ptr @pci_assign_unassigned_root_bus_resources._entry_ptr.25, ptr @pci_assign_unassigned_root_bus_resources._entry_ptr.28, ptr @pci_bridge_release_resources._entry, ptr @pci_bridge_release_resources._entry_ptr, ptr @pci_bus_dump_res._entry, ptr @pci_bus_dump_res._entry_ptr, ptr @pci_reassign_bridge_resources._entry, ptr @pci_reassign_bridge_resources._entry_ptr, ptr @pci_setup_bridge_io._entry, ptr @pci_setup_bridge_io._entry_ptr, ptr @pci_setup_bridge_mmio._entry, ptr @pci_setup_bridge_mmio._entry_ptr, ptr @pci_setup_bridge_mmio_pref._entry, ptr @pci_setup_bridge_mmio_pref._entry_ptr, ptr @pci_setup_cardbus._entry, ptr @pci_setup_cardbus._entry.10, ptr @pci_setup_cardbus._entry.12, ptr @pci_setup_cardbus._entry.5, ptr @pci_setup_cardbus._entry.8, ptr @pci_setup_cardbus._entry_ptr, ptr @pci_setup_cardbus._entry_ptr.11, ptr @pci_setup_cardbus._entry_ptr.13, ptr @pci_setup_cardbus._entry_ptr.7, ptr @pci_setup_cardbus._entry_ptr.9, ptr @pdev_sort_resources._entry, ptr @pdev_sort_resources._entry_ptr, ptr @reassign_resources_sorted._entry, ptr @reassign_resources_sorted._entry_ptr, ptr @pci_flags, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @pci_realloc_enable, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_cardbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_cardbus._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_cardbus._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_cardbus._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_cardbus._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_realloc_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_unassigned_root_bus_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_unassigned_root_bus_resources._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_unassigned_root_bus_resources._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_unassigned_root_bus_resources._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_unassigned_bridge_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_unassigned_bridge_resources._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_reassign_bridge_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_bridge_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_bridge_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_setup_bridge_mmio_pref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbus_size_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbus_size_io._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbus_size_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbus_size_mem._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbus_size_mem._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev_sort_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reassign_resources_sorted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bridge_release_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_dump_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_setup_cardbus(ptr noundef %bus) #0 align 64 {
entry:
  %region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #12
  %2 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %region, align 4, !annotation !162
  %3 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !162
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %busn_res) #15
  %resource = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 6
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource, align 8
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus1, align 8
  call void @pcibios_resource_to_bus(ptr noundef %8, ptr noundef nonnull %region, ptr noundef %6) #12
  %flags = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %6) #15
  %11 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %region, align 4
  %call = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 44, i32 noundef %12) #12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %call6 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 48, i32 noundef %14) #12
  br label %if.end

if.end:                                           ; preds = %do.end4, %entry.if.end_crit_edge
  %arrayidx8 = getelementptr %struct.pci_bus, ptr %bus, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx8, align 4
  %17 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus1, align 8
  call void @pcibios_resource_to_bus(ptr noundef %18, ptr noundef nonnull %region, ptr noundef %16) #12
  %flags10 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags10, align 4
  %and11 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end22_crit_edge, label %do.end16

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %16) #15
  %21 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %region, align 4
  %call19 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 52, i32 noundef %22) #12
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %call21 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 56, i32 noundef %24) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end16, %if.end.if.end22_crit_edge
  %arrayidx24 = getelementptr %struct.pci_bus, ptr %bus, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx24, align 8
  %27 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus1, align 8
  call void @pcibios_resource_to_bus(ptr noundef %28, ptr noundef nonnull %region, ptr noundef %26) #12
  %flags26 = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags26, align 4
  %and27 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end22.if.end38_crit_edge, label %do.end32

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

do.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %26) #15
  %31 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %region, align 4
  %call35 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 28, i32 noundef %32) #12
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %3, align 4
  %call37 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 32, i32 noundef %34) #12
  br label %if.end38

if.end38:                                         ; preds = %do.end32, %if.end22.if.end38_crit_edge
  %arrayidx40 = getelementptr %struct.pci_bus, ptr %bus, i32 0, i32 6, i32 3
  %35 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx40, align 4
  %37 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus1, align 8
  call void @pcibios_resource_to_bus(ptr noundef %38, ptr noundef nonnull %region, ptr noundef %36) #12
  %flags42 = getelementptr inbounds %struct.resource, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags42, align 4
  %and43 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end38.if.end54_crit_edge, label %do.end48

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

do.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %36) #15
  %41 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %region, align 4
  %call51 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 36, i32 noundef %42) #12
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %3, align 4
  %call53 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 40, i32 noundef %44) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %if.end38.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @pcibios_setup_bridge(ptr noundef %bus, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_setup_bridge(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pcibios_setup_bridge(ptr noundef %bus, i32 noundef 8960)
  tail call fastcc void @__pci_setup_bridge(ptr noundef %bus, i32 noundef 8960)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__pci_setup_bridge(ptr noundef %bus, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %region.i = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %busn_res) #15
  %and = and i32 %type, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pci_setup_bridge_io(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %type, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region.i) #12
  %2 = ptrtoint ptr %region.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %region.i, align 4, !annotation !162
  %3 = getelementptr inbounds %struct.pci_bus_region, ptr %region.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !162
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 14
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  call void @pcibios_resource_to_bus(ptr noundef %6, ptr noundef nonnull %region.i, ptr noundef %arrayidx.i) #12
  %flags.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 14, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then3.pci_setup_bridge_mmio.exit_crit_edge, label %if.then.i

if.then3.pci_setup_bridge_mmio.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_setup_bridge_mmio.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %region.i, align 4
  %shr.i = lshr i32 %10, 16
  %and1.i = and i32 %shr.i, 65520
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %and2.i = and i32 %12, -1048576
  %or.i = or i32 %and1.i, %and2.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %arrayidx.i) #15
  br label %pci_setup_bridge_mmio.exit

pci_setup_bridge_mmio.exit:                       ; preds = %if.then.i, %if.then3.pci_setup_bridge_mmio.exit_crit_edge
  %l.0.i = phi i32 [ %or.i, %if.then.i ], [ 65520, %if.then3.pci_setup_bridge_mmio.exit_crit_edge ]
  %call.i = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 32, i32 noundef %l.0.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i) #12
  br label %if.end4

if.end4:                                          ; preds = %pci_setup_bridge_mmio.exit, %if.end.if.end4_crit_edge
  %and5 = and i32 %type, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @pci_setup_bridge_mmio_pref(ptr noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %bridge_ctl = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 18
  %13 = ptrtoint ptr %bridge_ctl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bridge_ctl, align 4
  %call = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 62, i16 noundef zeroext %14) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_claim_bridge_resource(ptr noundef %bridge, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  %region.i = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %i, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %0)
  %1 = icmp ult i32 %0, -4
  br i1 %1, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @pci_claim_resource(ptr noundef %bridge, i32 noundef %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4:                                          ; preds = %if.end
  %class = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 11
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 8
  %shr.mask = and i32 %3, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 394240, i32 %shr.mask)
  %cmp5.not = icmp eq i32 %shr.mask, 394240
  br i1 %cmp5.not, label %if.end7, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end7:                                          ; preds = %if.end4
  %call8 = tail call zeroext i1 @pci_bus_clip_resource(ptr noundef %bridge, i32 noundef %i) #12
  br i1 %call8, label %if.end10, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end10:                                         ; preds = %if.end7
  %4 = zext i32 %i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i, label %if.end10.return_crit_edge [
    i32 13, label %sw.bb
    i32 14, label %sw.bb11
    i32 15, label %sw.bb12
  ]

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pci_setup_bridge_io(ptr noundef %bridge)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region.i) #12
  %5 = ptrtoint ptr %region.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %region.i, align 4, !annotation !162
  %6 = getelementptr inbounds %struct.pci_bus_region, ptr %region.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !162
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  call void @pcibios_resource_to_bus(ptr noundef %9, ptr noundef nonnull %region.i, ptr noundef %arrayidx.i) #12
  %flags.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb11.pci_setup_bridge_mmio.exit_crit_edge, label %if.then.i

sw.bb11.pci_setup_bridge_mmio.exit_crit_edge:     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_setup_bridge_mmio.exit

if.then.i:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %region.i, align 4
  %shr.i = lshr i32 %13, 16
  %and1.i = and i32 %shr.i, 65520
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %and2.i = and i32 %15, -1048576
  %or.i = or i32 %and1.i, %and2.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef %arrayidx.i) #15
  br label %pci_setup_bridge_mmio.exit

pci_setup_bridge_mmio.exit:                       ; preds = %if.then.i, %sw.bb11.pci_setup_bridge_mmio.exit_crit_edge
  %l.0.i = phi i32 [ %or.i, %if.then.i ], [ 65520, %sw.bb11.pci_setup_bridge_mmio.exit_crit_edge ]
  %call.i = call i32 @pci_write_config_dword(ptr noundef %bridge, i32 noundef 32, i32 noundef %l.0.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i) #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pci_setup_bridge_mmio_pref(ptr noundef %bridge)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %pci_setup_bridge_mmio.exit, %sw.bb
  %call13 = call i32 @pci_claim_resource(ptr noundef %bridge, i32 noundef %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  %. = select i1 %cmp14, i32 0, i32 -22
  br label %return

return:                                           ; preds = %sw.epilog, %if.end10.return_crit_edge, %if.end7.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.end4.return_crit_edge ], [ -22, %if.end7.return_crit_edge ], [ -22, %if.end10.return_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_claim_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_bus_clip_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_setup_bridge_io(ptr noundef %bridge) unnamed_addr #0 align 64 {
entry:
  %region = alloca %struct.pci_bus_region, align 4
  %l = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #12
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region, align 4, !annotation !162
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %l) #12
  %3 = ptrtoint ptr %l to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %l, align 2, !annotation !162
  %io_window_1k = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 49
  %4 = ptrtoint ptr %io_window_1k to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %io_window_1k, align 1
  %arrayidx = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13
  %bus = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 1
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %6, ptr noundef nonnull %region, ptr noundef %arrayidx) #12
  %flags = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = and i40 %bf.load, 512
  %tobool.not = icmp eq i40 %9, 0
  %spec.store.select = select i1 %tobool.not, i32 -16, i32 -4
  %call = call i32 @pci_read_config_word(ptr noundef %bridge, i32 noundef 28, ptr noundef nonnull %l) #12
  %10 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %region, align 4
  %shr = lshr i32 %11, 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %and530 = shl nsw i32 %spec.store.select, 8
  %shr431 = and i32 %13, %and530
  %and3 = and i32 %spec.store.select, 252
  %conv9 = and i32 %and3, %shr
  %or = or i32 %shr431, %conv9
  %conv10 = trunc i32 %or to i16
  %14 = ptrtoint ptr %l to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv10, ptr %l, align 2
  %and12 = and i32 %13, -65536
  %shr14 = lshr i32 %11, 16
  %or15 = or i32 %and12, %shr14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %arrayidx) #15
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %l to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 240, ptr %l, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then2
  %io_upper16.0 = phi i32 [ %or15, %if.then2 ], [ 0, %if.else ]
  %call17 = call i32 @pci_write_config_dword(ptr noundef %bridge, i32 noundef 48, i32 noundef 65535) #12
  %16 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %l, align 2
  %call18 = call i32 @pci_write_config_word(ptr noundef %bridge, i32 noundef 28, i16 noundef zeroext %17) #12
  %call19 = call i32 @pci_write_config_dword(ptr noundef %bridge, i32 noundef 48, i32 noundef %io_upper16.0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %l) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_setup_bridge_mmio_pref(ptr noundef %bridge) unnamed_addr #0 align 64 {
entry:
  %region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #12
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region, align 4, !annotation !162
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !162
  %call = tail call i32 @pci_write_config_dword(ptr noundef %bridge, i32 noundef 44, i32 noundef 0) #12
  %arrayidx = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15
  %bus = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %4, ptr noundef nonnull %region, ptr noundef %arrayidx) #12
  %flags = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %region, align 4
  %shr = lshr i32 %8, 16
  %and1 = and i32 %shr, 65520
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %and2 = and i32 %10, -1048576
  %or = or i32 %and1, %and2
  %dev = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %arrayidx) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then, %entry.if.end13_crit_edge
  %l.0 = phi i32 [ %or, %if.then ], [ 65520, %entry.if.end13_crit_edge ]
  %call14 = call i32 @pci_write_config_dword(ptr noundef %bridge, i32 noundef 36, i32 noundef %l.0) #12
  %call15 = call i32 @pci_write_config_dword(ptr noundef %bridge, i32 noundef 40, i32 noundef 0) #12
  %call16 = call i32 @pci_write_config_dword(ptr noundef %bridge, i32 noundef 44, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_window_alignment(ptr noundef %bus, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pci_cardbus_resource_alignment(ptr nocapture noundef readonly %res) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return.sink.split_crit_edge

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end.return.sink.split_crit_edge

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %pci_cardbus_mem_size.sink = phi ptr [ @pci_cardbus_io_size, %entry.return.sink.split_crit_edge ], [ @pci_cardbus_mem_size, %if.end.return.sink.split_crit_edge ]
  %2 = ptrtoint ptr %pci_cardbus_mem_size.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pci_cardbus_mem_size.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ %3, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pci_bus_size_bridges(ptr noundef %bus, ptr noundef %realloc_head) local_unnamed_addr #0 align 64 {
entry:
  %ctrl.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0187 = load ptr, ptr %devices, align 4
  %cmp.not188 = icmp eq ptr %dev.0187, %devices
  br i1 %cmp.not188, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool2.not.i = icmp eq ptr %realloc_head, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %dev.0189 = phi ptr [ %dev.0187, %for.body.lr.ph ], [ %dev.0, %cleanup.for.body_crit_edge ]
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev.0189, i32 0, i32 2
  %1 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %hdr_type2 = getelementptr inbounds %struct.pci_dev, ptr %dev.0189, i32 0, i32 13
  %3 = ptrtoint ptr %hdr_type2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hdr_type2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cond99 = icmp eq i8 %4, 2
  br i1 %cond99, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %self.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_mem_size to i32))
  %7 = load i32, ptr @pci_cardbus_mem_size, align 4
  %mul.i = shl i32 %7, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i) #12
  %8 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %ctrl.i, align 2, !annotation !162
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 13
  %parent.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 13, i32 5
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.handle_b_res_1.i_crit_edge

sw.bb.handle_b_res_1.i_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_1.i

if.end.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_io_size to i32))
  %11 = load i32, ptr @pci_cardbus_io_size, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx.i, align 4
  %13 = load i32, ptr @pci_cardbus_io_size, align 4
  %add.i = add i32 %11, -1
  %sub.i = add i32 %add.i, %13
  %end.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 13, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i, ptr %end.i, align 4
  %flags.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 13, i32 3
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %16, 524544
  store i32 %or.i, ptr %flags.i, align 4
  br i1 %tobool2.not.i, label %if.end.i.handle_b_res_1.i_crit_edge, label %if.then3.i

if.end.i.handle_b_res_1.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_1.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_io_size to i32))
  %17 = load i32, ptr @pci_cardbus_io_size, align 4
  %sub5.i = sub i32 %sub.i, %17
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub5.i, ptr %end.i, align 4
  %19 = load i32, ptr @pci_cardbus_io_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then3.i.handle_b_res_1.i_crit_edge, label %if.end.i.i

if.then3.i.handle_b_res_1.i_crit_edge:            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_1.i

if.end.i.i:                                       ; preds = %if.then3.i
  %res1.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %res1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.i, ptr %res1.i.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %6, ptr %dev2.i.i, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %start3.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %start3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %start3.i.i, align 8
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  %end4.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %end4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %end4.i.i, align 4
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %flags5.i.i, align 8
  %add_size6.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %add_size6.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %19, ptr %add_size6.i.i, align 8
  %min_align7.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %min_align7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %19, ptr %min_align7.i.i, align 4
  %34 = ptrtoint ptr %realloc_head to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %realloc_head, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %realloc_head, ptr noundef %35) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.handle_b_res_1.i_crit_edge

if.end.i.i.handle_b_res_1.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_1.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %realloc_head, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %realloc_head to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i.i.i, ptr %realloc_head, align 4
  br label %handle_b_res_1.i

handle_b_res_1.i:                                 ; preds = %if.end.i.i.i.i, %if.end.i.i.handle_b_res_1.i_crit_edge, %if.then3.i.handle_b_res_1.i_crit_edge, %if.end.i.handle_b_res_1.i_crit_edge, %sw.bb.handle_b_res_1.i_crit_edge
  %arrayidx8.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 14
  %parent9.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 14, i32 5
  %40 = ptrtoint ptr %parent9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent9.i, align 4
  %tobool10.not.i = icmp eq ptr %41, null
  br i1 %tobool10.not.i, label %if.end12.i, label %handle_b_res_1.i.handle_b_res_2.i_crit_edge

handle_b_res_1.i.handle_b_res_2.i_crit_edge:      ; preds = %handle_b_res_1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_2.i

if.end12.i:                                       ; preds = %handle_b_res_1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_io_size to i32))
  %42 = load i32, ptr @pci_cardbus_io_size, align 4
  %43 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx8.i, align 4
  %44 = load i32, ptr @pci_cardbus_io_size, align 4
  %add15.i = add i32 %42, -1
  %sub16.i = add i32 %add15.i, %44
  %end17.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 14, i32 1
  %45 = ptrtoint ptr %end17.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub16.i, ptr %end17.i, align 4
  %flags18.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 14, i32 3
  %46 = ptrtoint ptr %flags18.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags18.i, align 4
  %or19.i = or i32 %47, 524544
  store i32 %or19.i, ptr %flags18.i, align 4
  br i1 %tobool2.not.i, label %if.end12.i.handle_b_res_2.i_crit_edge, label %if.then21.i

if.end12.i.handle_b_res_2.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_2.i

if.then21.i:                                      ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_io_size to i32))
  %48 = load i32, ptr @pci_cardbus_io_size, align 4
  %sub23.i = sub i32 %sub16.i, %48
  %49 = ptrtoint ptr %end17.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub23.i, ptr %end17.i, align 4
  %50 = load i32, ptr @pci_cardbus_io_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i138.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not.i139.i = icmp eq ptr %call7.i.i.i138.i, null
  br i1 %tobool.not.i139.i, label %if.then21.i.handle_b_res_2.i_crit_edge, label %if.end.i150.i

if.then21.i.handle_b_res_2.i_crit_edge:           ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_2.i

if.end.i150.i:                                    ; preds = %if.then21.i
  %res1.i140.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i138.i, i32 0, i32 1
  %52 = ptrtoint ptr %res1.i140.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx8.i, ptr %res1.i140.i, align 8
  %dev2.i141.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i138.i, i32 0, i32 2
  %53 = ptrtoint ptr %dev2.i141.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %6, ptr %dev2.i141.i, align 4
  %54 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx8.i, align 4
  %start3.i142.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i138.i, i32 0, i32 3
  %56 = ptrtoint ptr %start3.i142.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %start3.i142.i, align 8
  %57 = ptrtoint ptr %end17.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %end17.i, align 4
  %end4.i144.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i138.i, i32 0, i32 4
  %59 = ptrtoint ptr %end4.i144.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %end4.i144.i, align 4
  %60 = ptrtoint ptr %flags18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags18.i, align 4
  %flags5.i146.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i138.i, i32 0, i32 7
  %62 = ptrtoint ptr %flags5.i146.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %flags5.i146.i, align 8
  %add_size6.i147.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i138.i, i32 0, i32 5
  %63 = ptrtoint ptr %add_size6.i147.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %50, ptr %add_size6.i147.i, align 8
  %min_align7.i148.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i138.i, i32 0, i32 6
  %64 = ptrtoint ptr %min_align7.i148.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %50, ptr %min_align7.i148.i, align 4
  %65 = ptrtoint ptr %realloc_head to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %realloc_head, align 4
  %call.i.i.i149.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i138.i, ptr noundef nonnull %realloc_head, ptr noundef %66) #12
  br i1 %call.i.i.i149.i, label %if.end.i.i.i153.i, label %if.end.i150.i.handle_b_res_2.i_crit_edge

if.end.i150.i.handle_b_res_2.i_crit_edge:         ; preds = %if.end.i150.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_2.i

if.end.i.i.i153.i:                                ; preds = %if.end.i150.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i151.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i151.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i.i138.i, ptr %prev1.i.i.i151.i, align 4
  %68 = ptrtoint ptr %call7.i.i.i138.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %call7.i.i.i138.i, align 8
  %prev3.i.i.i152.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i138.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i152.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %realloc_head, ptr %prev3.i.i.i152.i, align 4
  %70 = ptrtoint ptr %realloc_head to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call7.i.i.i138.i, ptr %realloc_head, align 4
  br label %handle_b_res_2.i

handle_b_res_2.i:                                 ; preds = %if.end.i.i.i153.i, %if.end.i150.i.handle_b_res_2.i_crit_edge, %if.then21.i.handle_b_res_2.i_crit_edge, %if.end12.i.handle_b_res_2.i_crit_edge, %handle_b_res_1.i.handle_b_res_2.i_crit_edge
  %call26.i = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef 62, ptr noundef nonnull %ctrl.i) #12
  %71 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ctrl.i, align 2
  %73 = and i16 %72, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool27.not.i = icmp eq i16 %73, 0
  br i1 %tobool27.not.i, label %handle_b_res_2.i.if.end34.i_crit_edge, label %if.then28.i

handle_b_res_2.i.if.end34.i_crit_edge:            ; preds = %handle_b_res_2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then28.i:                                      ; preds = %handle_b_res_2.i
  call void @__sanitizer_cov_trace_pc() #14
  %and30.i = and i16 %72, -513
  %74 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %and30.i, ptr %ctrl.i, align 2
  %call32.i = call i32 @pci_write_config_word(ptr noundef %6, i32 noundef 62, i16 noundef zeroext %and30.i) #12
  %call33.i = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef 62, ptr noundef nonnull %ctrl.i) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then28.i, %handle_b_res_2.i.if.end34.i_crit_edge
  %call35.i = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef 62, ptr noundef nonnull %ctrl.i) #12
  %75 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ctrl.i, align 2
  %77 = and i16 %76, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool38.not.i = icmp eq i16 %77, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.end34.i.if.end45.i_crit_edge

if.end34.i.if.end45.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %or41.i = or i16 %76, 256
  %78 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %or41.i, ptr %ctrl.i, align 2
  %call43.i = call i32 @pci_write_config_word(ptr noundef %6, i32 noundef 62, i16 noundef zeroext %or41.i) #12
  %call44.i = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef 62, ptr noundef nonnull %ctrl.i) #12
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then39.i, %if.end34.i.if.end45.i_crit_edge
  %arrayidx47.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 15
  %parent48.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 15, i32 5
  %79 = ptrtoint ptr %parent48.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parent48.i, align 4
  %tobool49.not.i = icmp eq ptr %80, null
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end45.i.handle_b_res_3.i_crit_edge

if.end45.i.handle_b_res_3.i_crit_edge:            ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_3.i

if.end51.i:                                       ; preds = %if.end45.i
  %81 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ctrl.i, align 2
  %83 = and i16 %82, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool54.not.i = icmp eq i16 %83, 0
  br i1 %tobool54.not.i, label %if.end51.i.handle_b_res_3.i_crit_edge, label %if.then55.i

if.end51.i.handle_b_res_3.i_crit_edge:            ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_b_res_3.i

if.then55.i:                                      ; preds = %if.end51.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_mem_size to i32))
  %84 = load i32, ptr @pci_cardbus_mem_size, align 4
  %85 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx47.i, align 4
  %86 = load i32, ptr @pci_cardbus_mem_size, align 4
  %add58.i = add i32 %84, -1
  %sub59.i = add i32 %add58.i, %86
  %end60.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 15, i32 1
  %87 = ptrtoint ptr %end60.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub59.i, ptr %end60.i, align 4
  %flags61.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 15, i32 3
  %88 = ptrtoint ptr %flags61.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags61.i, align 4
  %or62.i = or i32 %89, 532992
  store i32 %or62.i, ptr %flags61.i, align 4
  br i1 %tobool2.not.i, label %if.then55.i.if.end68.i_crit_edge, label %if.then64.i

if.then55.i.if.end68.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.then64.i:                                      ; preds = %if.then55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_mem_size to i32))
  %90 = load i32, ptr @pci_cardbus_mem_size, align 4
  %sub66.i = sub i32 %sub59.i, %90
  %91 = ptrtoint ptr %end60.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %sub66.i, ptr %end60.i, align 4
  %92 = load i32, ptr @pci_cardbus_mem_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %93 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i156.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not.i157.i = icmp eq ptr %call7.i.i.i156.i, null
  br i1 %tobool.not.i157.i, label %if.then64.i.if.end68.i_crit_edge, label %if.end.i168.i

if.then64.i.if.end68.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.end.i168.i:                                    ; preds = %if.then64.i
  %res1.i158.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i156.i, i32 0, i32 1
  %94 = ptrtoint ptr %res1.i158.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %arrayidx47.i, ptr %res1.i158.i, align 8
  %dev2.i159.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i156.i, i32 0, i32 2
  %95 = ptrtoint ptr %dev2.i159.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %6, ptr %dev2.i159.i, align 4
  %96 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx47.i, align 4
  %start3.i160.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i156.i, i32 0, i32 3
  %98 = ptrtoint ptr %start3.i160.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %start3.i160.i, align 8
  %99 = ptrtoint ptr %end60.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %end60.i, align 4
  %end4.i162.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i156.i, i32 0, i32 4
  %101 = ptrtoint ptr %end4.i162.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %end4.i162.i, align 4
  %102 = ptrtoint ptr %flags61.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags61.i, align 4
  %flags5.i164.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i156.i, i32 0, i32 7
  %104 = ptrtoint ptr %flags5.i164.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %flags5.i164.i, align 8
  %add_size6.i165.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i156.i, i32 0, i32 5
  %105 = ptrtoint ptr %add_size6.i165.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %92, ptr %add_size6.i165.i, align 8
  %min_align7.i166.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i156.i, i32 0, i32 6
  %106 = ptrtoint ptr %min_align7.i166.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %92, ptr %min_align7.i166.i, align 4
  %107 = ptrtoint ptr %realloc_head to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %realloc_head, align 4
  %call.i.i.i167.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i156.i, ptr noundef nonnull %realloc_head, ptr noundef %108) #12
  br i1 %call.i.i.i167.i, label %if.end.i.i.i171.i, label %if.end.i168.i.if.end68.i_crit_edge

if.end.i168.i.if.end68.i_crit_edge:               ; preds = %if.end.i168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.end.i.i.i171.i:                                ; preds = %if.end.i168.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i169.i = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i.i169.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call7.i.i.i156.i, ptr %prev1.i.i.i169.i, align 4
  %110 = ptrtoint ptr %call7.i.i.i156.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %108, ptr %call7.i.i.i156.i, align 8
  %prev3.i.i.i170.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i156.i, i32 0, i32 1
  %111 = ptrtoint ptr %prev3.i.i.i170.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %realloc_head, ptr %prev3.i.i.i170.i, align 4
  %112 = ptrtoint ptr %realloc_head to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %call7.i.i.i156.i, ptr %realloc_head, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.end.i.i.i171.i, %if.end.i168.i.if.end68.i_crit_edge, %if.then64.i.if.end68.i_crit_edge, %if.then55.i.if.end68.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_mem_size to i32))
  %113 = load i32, ptr @pci_cardbus_mem_size, align 4
  br label %handle_b_res_3.i

handle_b_res_3.i:                                 ; preds = %if.end68.i, %if.end51.i.handle_b_res_3.i_crit_edge, %if.end45.i.handle_b_res_3.i_crit_edge
  %b_res_3_size.0.i = phi i32 [ %mul.i, %if.end45.i.handle_b_res_3.i_crit_edge ], [ %113, %if.end68.i ], [ %mul.i, %if.end51.i.handle_b_res_3.i_crit_edge ]
  %arrayidx71.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 16
  %parent72.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 16, i32 5
  %114 = ptrtoint ptr %parent72.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %parent72.i, align 4
  %tobool73.not.i = icmp eq ptr %115, null
  br i1 %tobool73.not.i, label %if.end75.i, label %handle_b_res_3.i.pci_bus_size_cardbus.exit_crit_edge

handle_b_res_3.i.pci_bus_size_cardbus.exit_crit_edge: ; preds = %handle_b_res_3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_bus_size_cardbus.exit

if.end75.i:                                       ; preds = %handle_b_res_3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_mem_size to i32))
  %116 = load i32, ptr @pci_cardbus_mem_size, align 4
  %117 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx71.i, align 4
  %add78.i = add i32 %b_res_3_size.0.i, -1
  %sub79.i = add i32 %add78.i, %116
  %end80.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 16, i32 1
  %118 = ptrtoint ptr %end80.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sub79.i, ptr %end80.i, align 4
  %flags81.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 16, i32 3
  %119 = ptrtoint ptr %flags81.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags81.i, align 4
  %or82.i = or i32 %120, 524800
  store i32 %or82.i, ptr %flags81.i, align 4
  br i1 %tobool2.not.i, label %if.end75.i.pci_bus_size_cardbus.exit_crit_edge, label %if.then84.i

if.end75.i.pci_bus_size_cardbus.exit_crit_edge:   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_bus_size_cardbus.exit

if.then84.i:                                      ; preds = %if.end75.i
  %sub86.i = sub i32 %sub79.i, %b_res_3_size.0.i
  %121 = ptrtoint ptr %end80.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %sub86.i, ptr %end80.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_mem_size to i32))
  %122 = load i32, ptr @pci_cardbus_mem_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %123 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i174.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %123, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not.i175.i = icmp eq ptr %call7.i.i.i174.i, null
  br i1 %tobool.not.i175.i, label %if.then84.i.pci_bus_size_cardbus.exit_crit_edge, label %if.end.i186.i

if.then84.i.pci_bus_size_cardbus.exit_crit_edge:  ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_bus_size_cardbus.exit

if.end.i186.i:                                    ; preds = %if.then84.i
  %res1.i176.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i174.i, i32 0, i32 1
  %124 = ptrtoint ptr %res1.i176.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %arrayidx71.i, ptr %res1.i176.i, align 8
  %dev2.i177.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i174.i, i32 0, i32 2
  %125 = ptrtoint ptr %dev2.i177.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %6, ptr %dev2.i177.i, align 4
  %126 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx71.i, align 4
  %start3.i178.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i174.i, i32 0, i32 3
  %128 = ptrtoint ptr %start3.i178.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %start3.i178.i, align 8
  %129 = ptrtoint ptr %end80.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %end80.i, align 4
  %end4.i180.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i174.i, i32 0, i32 4
  %131 = ptrtoint ptr %end4.i180.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %end4.i180.i, align 4
  %132 = ptrtoint ptr %flags81.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags81.i, align 4
  %flags5.i182.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i174.i, i32 0, i32 7
  %134 = ptrtoint ptr %flags5.i182.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %flags5.i182.i, align 8
  %add_size6.i183.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i174.i, i32 0, i32 5
  %135 = ptrtoint ptr %add_size6.i183.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %b_res_3_size.0.i, ptr %add_size6.i183.i, align 8
  %min_align7.i184.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i174.i, i32 0, i32 6
  %136 = ptrtoint ptr %min_align7.i184.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %122, ptr %min_align7.i184.i, align 4
  %137 = ptrtoint ptr %realloc_head to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %realloc_head, align 4
  %call.i.i.i185.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i174.i, ptr noundef nonnull %realloc_head, ptr noundef %138) #12
  br i1 %call.i.i.i185.i, label %if.end.i.i.i189.i, label %if.end.i186.i.pci_bus_size_cardbus.exit_crit_edge

if.end.i186.i.pci_bus_size_cardbus.exit_crit_edge: ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_bus_size_cardbus.exit

if.end.i.i.i189.i:                                ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i187.i = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %prev1.i.i.i187.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call7.i.i.i174.i, ptr %prev1.i.i.i187.i, align 4
  %140 = ptrtoint ptr %call7.i.i.i174.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %138, ptr %call7.i.i.i174.i, align 8
  %prev3.i.i.i188.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i174.i, i32 0, i32 1
  %141 = ptrtoint ptr %prev3.i.i.i188.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %realloc_head, ptr %prev3.i.i.i188.i, align 4
  %142 = ptrtoint ptr %realloc_head to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %call7.i.i.i174.i, ptr %realloc_head, align 4
  br label %pci_bus_size_cardbus.exit

pci_bus_size_cardbus.exit:                        ; preds = %if.end.i.i.i189.i, %if.end.i186.i.pci_bus_size_cardbus.exit_crit_edge, %if.then84.i.pci_bus_size_cardbus.exit_crit_edge, %if.end75.i.pci_bus_size_cardbus.exit_crit_edge, %handle_b_res_3.i.pci_bus_size_cardbus.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #12
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__pci_bus_size_bridges(ptr noundef nonnull %2, ptr noundef %realloc_head)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %pci_bus_size_cardbus.exit, %for.body.cleanup_crit_edge
  %143 = ptrtoint ptr %dev.0189 to i32
  call void @__asan_load4_noabort(i32 %143)
  %dev.0 = load ptr, ptr %dev.0189, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %parent.i156 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %144 = ptrtoint ptr %parent.i156 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %parent.i156, align 8
  %tobool.not.i157 = icmp eq ptr %145, null
  br i1 %tobool.not.i157, label %if.then9, label %if.end31

if.then9:                                         ; preds = %for.end
  %bridge = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 20
  %146 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bridge, align 8
  %size_windows = getelementptr inbounds %struct.pci_host_bridge, ptr %147, i32 0, i32 13
  %148 = ptrtoint ptr %size_windows to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load = load i16, ptr %size_windows, align 8
  %149 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool13.not = icmp eq i16 %149, 0
  br i1 %tobool13.not, label %if.then9.cleanup84_crit_edge, label %for.cond16.preheader

if.then9.cleanup84_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

for.cond16.preheader:                             ; preds = %if.then9
  %call17190 = call ptr @pci_bus_resource_n(ptr noundef %bus, i32 noundef 0) #12
  %tobool18.not191 = icmp eq ptr %call17190, null
  br label %for.body21

for.body21:                                       ; preds = %for.inc26.for.body21_crit_edge, %for.cond16.preheader
  %tobool18.not194 = phi i1 [ %tobool18.not191, %for.cond16.preheader ], [ %tobool18.not, %for.inc26.for.body21_crit_edge ]
  %call17193 = phi ptr [ %call17190, %for.cond16.preheader ], [ %call17, %for.inc26.for.body21_crit_edge ]
  %i.0192 = phi i32 [ 0, %for.cond16.preheader ], [ %inc, %for.inc26.for.body21_crit_edge ]
  br i1 %tobool18.not194, label %for.body21.for.inc26_crit_edge, label %land.lhs.true

for.body21.for.inc26_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc26

land.lhs.true:                                    ; preds = %for.body21
  %flags = getelementptr inbounds %struct.resource, ptr %call17193, i32 0, i32 3
  %150 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags, align 4
  %and = and i32 %151, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %land.lhs.true.for.inc26_crit_edge, label %land.lhs.true.sw.default41_crit_edge

land.lhs.true.sw.default41_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default41

land.lhs.true.for.inc26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc26

for.inc26:                                        ; preds = %land.lhs.true.for.inc26_crit_edge, %for.body21.for.inc26_crit_edge
  %inc = add i32 %i.0192, 1
  %call17 = call ptr @pci_bus_resource_n(ptr noundef %bus, i32 noundef %inc) #12
  %tobool18.not = icmp eq ptr %call17, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp19 = icmp sgt i32 %inc, 3
  %152 = and i1 %cmp19, %tobool18.not
  br i1 %152, label %for.inc26.sw.default41_crit_edge, label %for.inc26.for.body21_crit_edge

for.inc26.for.body21_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21

for.inc26.sw.default41_crit_edge:                 ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default41

if.end31:                                         ; preds = %for.end
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %153 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %self, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %154, i32 0, i32 47, i32 15
  %hdr_type29 = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 13
  %155 = ptrtoint ptr %hdr_type29 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %hdr_type29, align 1
  %157 = zext i8 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %156, label %if.end31.sw.default41_crit_edge [
    i8 2, label %if.end31.cleanup84_crit_edge
    i8 1, label %sw.bb32
  ]

if.end31.cleanup84_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

if.end31.sw.default41_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default41

sw.bb32:                                          ; preds = %if.end31
  %158 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %self, align 4
  %flags.i159 = getelementptr %struct.pci_dev, ptr %159, i32 0, i32 47, i32 14, i32 3
  %160 = ptrtoint ptr %flags.i159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags.i159, align 4
  %or.i160 = or i32 %161, 512
  store i32 %or.i160, ptr %flags.i159, align 4
  %io_window.i = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 49
  %162 = ptrtoint ptr %io_window.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 5)
  %bf.load.i = load i40, ptr %io_window.i, align 1
  %163 = and i40 %bf.load.i, 274877906944
  %tobool.not.i161 = icmp eq i40 %163, 0
  br i1 %tobool.not.i161, label %sw.bb32.if.end.i162_crit_edge, label %if.then.i

sw.bb32.if.end.i162_crit_edge:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i162

if.then.i:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  %flags3.i = getelementptr %struct.pci_dev, ptr %159, i32 0, i32 47, i32 13, i32 3
  %164 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %flags3.i, align 4
  %or4.i = or i32 %165, 256
  store i32 %or4.i, ptr %flags3.i, align 4
  br label %if.end.i162

if.end.i162:                                      ; preds = %if.then.i, %sw.bb32.if.end.i162_crit_edge
  %166 = and i40 %bf.load.i, 137438953472
  %tobool9.not.i = icmp eq i40 %166, 0
  br i1 %tobool9.not.i, label %if.end.i162.pci_bridge_check_ranges.exit_crit_edge, label %if.then10.i

if.end.i162.pci_bridge_check_ranges.exit_crit_edge: ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_bridge_check_ranges.exit

if.then10.i:                                      ; preds = %if.end.i162
  %flags13.i = getelementptr %struct.pci_dev, ptr %159, i32 0, i32 47, i32 15, i32 3
  %167 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags13.i, align 4
  %or14.i = or i32 %168, 8704
  store i32 %or14.i, ptr %flags13.i, align 4
  %169 = and i40 %bf.load.i, 68719476736
  %tobool19.not.i = icmp eq i40 %169, 0
  br i1 %tobool19.not.i, label %if.then10.i.pci_bridge_check_ranges.exit_crit_edge, label %if.then20.i

if.then10.i.pci_bridge_check_ranges.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_bridge_check_ranges.exit

if.then20.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %or22.i = or i32 %168, 1057281
  %170 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or22.i, ptr %flags13.i, align 4
  br label %pci_bridge_check_ranges.exit

pci_bridge_check_ranges.exit:                     ; preds = %if.then20.i, %if.then10.i.pci_bridge_check_ranges.exit_crit_edge, %if.end.i162.pci_bridge_check_ranges.exit_crit_edge
  %171 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %self, align 4
  %is_hotplug_bridge = getelementptr inbounds %struct.pci_dev, ptr %172, i32 0, i32 49
  %173 = ptrtoint ptr %is_hotplug_bridge to i32
  call void @__asan_loadN_noabort(i32 %173, i32 5)
  %bf.load34 = load i40, ptr %is_hotplug_bridge, align 1
  %174 = and i40 %bf.load34, 32768
  %tobool38.not = icmp eq i40 %174, 0
  br i1 %tobool38.not, label %pci_bridge_check_ranges.exit.sw.default41_crit_edge, label %if.then39

pci_bridge_check_ranges.exit.sw.default41_crit_edge: ; preds = %pci_bridge_check_ranges.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default41

if.then39:                                        ; preds = %pci_bridge_check_ranges.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_hotplug_io_size to i32))
  %175 = load i32, ptr @pci_hotplug_io_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_hotplug_mmio_size to i32))
  %176 = load i32, ptr @pci_hotplug_mmio_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_hotplug_mmio_pref_size to i32))
  %177 = load i32, ptr @pci_hotplug_mmio_pref_size, align 4
  br label %sw.default41

sw.default41:                                     ; preds = %if.then39, %pci_bridge_check_ranges.exit.sw.default41_crit_edge, %if.end31.sw.default41_crit_edge, %for.inc26.sw.default41_crit_edge, %land.lhs.true.sw.default41_crit_edge
  %pref.0179 = phi ptr [ %arrayidx, %if.end31.sw.default41_crit_edge ], [ %arrayidx, %if.then39 ], [ %arrayidx, %pci_bridge_check_ranges.exit.sw.default41_crit_edge ], [ null, %for.inc26.sw.default41_crit_edge ], [ %call17193, %land.lhs.true.sw.default41_crit_edge ]
  %additional_mmio_size.0 = phi i32 [ 0, %if.end31.sw.default41_crit_edge ], [ %176, %if.then39 ], [ 0, %pci_bridge_check_ranges.exit.sw.default41_crit_edge ], [ 0, %for.inc26.sw.default41_crit_edge ], [ 0, %land.lhs.true.sw.default41_crit_edge ]
  %additional_mmio_pref_size.0 = phi i32 [ 0, %if.end31.sw.default41_crit_edge ], [ %177, %if.then39 ], [ 0, %pci_bridge_check_ranges.exit.sw.default41_crit_edge ], [ 0, %for.inc26.sw.default41_crit_edge ], [ 0, %land.lhs.true.sw.default41_crit_edge ]
  %additional_io_size.0 = phi i32 [ 0, %if.end31.sw.default41_crit_edge ], [ %175, %if.then39 ], [ 0, %pci_bridge_check_ranges.exit.sw.default41_crit_edge ], [ 0, %for.inc26.sw.default41_crit_edge ], [ 0, %land.lhs.true.sw.default41_crit_edge ]
  %tobool42.not = icmp eq ptr %realloc_head, null
  %spec.select = select i1 %tobool42.not, i32 %additional_io_size.0, i32 0
  %call36.i.i = call ptr @pci_bus_resource_n(ptr noundef %bus, i32 noundef 0) #12
  %tobool.not37.i.i = icmp eq ptr %call36.i.i, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.default41
  %tobool.not42.i.i = phi i1 [ %tobool.not37.i.i, %sw.default41 ], [ %tobool.not.i.i163, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call40.i.i = phi ptr [ %call36.i.i, %sw.default41 ], [ %call.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.039.i.i = phi i32 [ 0, %sw.default41 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %r_assigned.038.i.i = phi ptr [ null, %sw.default41 ], [ %r_assigned.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cmp1.i.i = icmp eq ptr %call40.i.i, @ioport_resource
  %cmp2.i.i = icmp eq ptr %call40.i.i, @iomem_resource
  %or.cond33.i.i = or i1 %cmp1.i.i, %cmp2.i.i
  %brmerge.i.i = or i1 %tobool.not42.i.i, %or.cond33.i.i
  br i1 %brmerge.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %call40.i.i, i32 0, i32 3
  %178 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %179, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp4.i.i = icmp ne i32 %and.i.i, 0
  br i1 %cmp4.i.i, label %land.lhs.true5.i.i, label %land.lhs.true.i.i.land.lhs.true10.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true10.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true10.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %parent.i.i = getelementptr inbounds %struct.resource, ptr %call40.i.i, i32 0, i32 5
  %180 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %parent.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %181, null
  br i1 %tobool6.not.i.i, label %land.lhs.true5.i.i.find_bus_resource_of_type.exit.i_crit_edge, label %land.lhs.true5.i.i.land.lhs.true10.i.i_crit_edge

land.lhs.true5.i.i.land.lhs.true10.i.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true10.i.i

land.lhs.true5.i.i.find_bus_resource_of_type.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_bus_resource_of_type.exit.i

land.lhs.true10.i.i:                              ; preds = %land.lhs.true5.i.i.land.lhs.true10.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true10.i.i_crit_edge
  %tobool15.not.i.i = icmp eq ptr %r_assigned.038.i.i, null
  %or.cond35.i.i = select i1 %cmp4.i.i, i1 %tobool15.not.i.i, i1 false
  %spec.select.i.i = select i1 %or.cond35.i.i, ptr %call40.i.i, ptr %r_assigned.038.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true10.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %r_assigned.1.i.i = phi ptr [ %r_assigned.038.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true10.i.i ]
  %inc.i.i = add i32 %i.039.i.i, 1
  %call.i.i = call ptr @pci_bus_resource_n(ptr noundef %bus, i32 noundef %inc.i.i) #12
  %tobool.not.i.i163 = icmp eq ptr %call.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i)
  %cmp.i.i = icmp sgt i32 %inc.i.i, 3
  %182 = and i1 %cmp.i.i, %tobool.not.i.i163
  br i1 %182, label %for.inc.i.i.find_bus_resource_of_type.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.find_bus_resource_of_type.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_bus_resource_of_type.exit.i

find_bus_resource_of_type.exit.i:                 ; preds = %for.inc.i.i.find_bus_resource_of_type.exit.i_crit_edge, %land.lhs.true5.i.i.find_bus_resource_of_type.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call40.i.i, %land.lhs.true5.i.i.find_bus_resource_of_type.exit.i_crit_edge ], [ %r_assigned.1.i.i, %for.inc.i.i.find_bus_resource_of_type.exit.i_crit_edge ]
  %tobool.not.i164 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i164, label %find_bus_resource_of_type.exit.i.pbus_size_io.exit_crit_edge, label %if.end.i166

find_bus_resource_of_type.exit.i.pbus_size_io.exit_crit_edge: ; preds = %find_bus_resource_of_type.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pbus_size_io.exit

if.end.i166:                                      ; preds = %find_bus_resource_of_type.exit.i
  %parent.i165 = getelementptr inbounds %struct.resource, ptr %retval.0.i.i, i32 0, i32 5
  %183 = ptrtoint ptr %parent.i165 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %parent.i165, align 4
  %tobool1.not.i = icmp eq ptr %184, null
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i166.pbus_size_io.exit_crit_edge

if.end.i166.pbus_size_io.exit_crit_edge:          ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #14
  br label %pbus_size_io.exit

if.end3.i:                                        ; preds = %if.end.i166
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %185 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %self.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %186, null
  br i1 %tobool4.not.i.i, label %if.end3.i.if.else8.i.i_crit_edge, label %land.lhs.true.i159.i

if.end3.i.if.else8.i.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8.i.i

land.lhs.true.i159.i:                             ; preds = %if.end3.i
  %io_window_1k.i.i = getelementptr inbounds %struct.pci_dev, ptr %186, i32 0, i32 49
  %187 = ptrtoint ptr %io_window_1k.i.i to i32
  call void @__asan_loadN_noabort(i32 %187, i32 5)
  %bf.load.i.i = load i40, ptr %io_window_1k.i.i, align 1
  %188 = and i40 %bf.load.i.i, 512
  %tobool6.not.i158.i = icmp eq i40 %188, 0
  br i1 %tobool6.not.i158.i, label %land.lhs.true.i159.i.if.else8.i.i_crit_edge, label %land.lhs.true.i159.i.window_alignment.exit.i_crit_edge

land.lhs.true.i159.i.window_alignment.exit.i_crit_edge: ; preds = %land.lhs.true.i159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %window_alignment.exit.i

land.lhs.true.i159.i.if.else8.i.i_crit_edge:      ; preds = %land.lhs.true.i159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8.i.i

if.else8.i.i:                                     ; preds = %land.lhs.true.i159.i.if.else8.i.i_crit_edge, %if.end3.i.if.else8.i.i_crit_edge
  br label %window_alignment.exit.i

window_alignment.exit.i:                          ; preds = %if.else8.i.i, %land.lhs.true.i159.i.window_alignment.exit.i_crit_edge
  %align.0.i.i = phi i32 [ 4096, %if.else8.i.i ], [ 1024, %land.lhs.true.i159.i.window_alignment.exit.i_crit_edge ]
  %call.i160.i = call i32 @pcibios_window_alignment(ptr noundef %bus, i32 noundef 256) #12
  %189 = call i32 @llvm.umax.i32(i32 %align.0.i.i, i32 %call.i160.i) #12
  %190 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %190)
  %dev.0192.i = load ptr, ptr %devices, align 4
  %cmp.not193.i = icmp eq ptr %dev.0192.i, %devices
  br i1 %cmp.not193.i, label %window_alignment.exit.i.for.end35.i_crit_edge, label %window_alignment.exit.i.for.cond6.preheader.i_crit_edge

window_alignment.exit.i.for.cond6.preheader.i_crit_edge: ; preds = %window_alignment.exit.i
  br label %for.cond6.preheader.i

window_alignment.exit.i.for.end35.i_crit_edge:    ; preds = %window_alignment.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end35.i

for.cond.loopexit.i:                              ; preds = %cleanup.i
  %191 = ptrtoint ptr %dev.0198.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %dev.0.i = load ptr, ptr %dev.0198.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, %devices
  br i1 %cmp.not.i, label %for.cond.loopexit.i.for.end35.i_crit_edge, label %for.cond.loopexit.i.for.cond6.preheader.i_crit_edge

for.cond.loopexit.i.for.cond6.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond6.preheader.i

for.cond.loopexit.i.for.end35.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end35.i

for.cond6.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond6.preheader.i_crit_edge, %window_alignment.exit.i.for.cond6.preheader.i_crit_edge
  %dev.0198.i = phi ptr [ %dev.0.i, %for.cond.loopexit.i.for.cond6.preheader.i_crit_edge ], [ %dev.0192.i, %window_alignment.exit.i.for.cond6.preheader.i_crit_edge ]
  %size.0197.i = phi i32 [ %size.3.i, %for.cond.loopexit.i.for.cond6.preheader.i_crit_edge ], [ 0, %window_alignment.exit.i.for.cond6.preheader.i_crit_edge ]
  %min_align.0196.i = phi i32 [ %min_align.3.i, %for.cond.loopexit.i.for.cond6.preheader.i_crit_edge ], [ %189, %window_alignment.exit.i.for.cond6.preheader.i_crit_edge ]
  %children_add_size.0195.i = phi i32 [ %children_add_size.3.i, %for.cond.loopexit.i.for.cond6.preheader.i_crit_edge ], [ 0, %window_alignment.exit.i.for.cond6.preheader.i_crit_edge ]
  %size1.0194.i = phi i32 [ %size1.3.i, %for.cond.loopexit.i.for.cond6.preheader.i_crit_edge ], [ 0, %window_alignment.exit.i.for.cond6.preheader.i_crit_edge ]
  %class.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0198.i, i32 0, i32 11
  br label %for.body8.i

for.body8.i:                                      ; preds = %cleanup.i.for.body8.i_crit_edge, %for.cond6.preheader.i
  %i.0189.i = phi i32 [ 0, %for.cond6.preheader.i ], [ %inc.i, %cleanup.i.for.body8.i_crit_edge ]
  %size.1188.i = phi i32 [ %size.0197.i, %for.cond6.preheader.i ], [ %size.3.i, %cleanup.i.for.body8.i_crit_edge ]
  %min_align.1187.i = phi i32 [ %min_align.0196.i, %for.cond6.preheader.i ], [ %min_align.3.i, %cleanup.i.for.body8.i_crit_edge ]
  %children_add_size.1186.i = phi i32 [ %children_add_size.0195.i, %for.cond6.preheader.i ], [ %children_add_size.3.i, %cleanup.i.for.body8.i_crit_edge ]
  %size1.1185.i = phi i32 [ %size1.0194.i, %for.cond6.preheader.i ], [ %size1.3.i, %cleanup.i.for.body8.i_crit_edge ]
  %arrayidx.i167 = getelementptr %struct.pci_dev, ptr %dev.0198.i, i32 0, i32 47, i32 %i.0189.i
  %parent9.i168 = getelementptr %struct.pci_dev, ptr %dev.0198.i, i32 0, i32 47, i32 %i.0189.i, i32 5
  %192 = ptrtoint ptr %parent9.i168 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %parent9.i168, align 4
  %tobool10.not.i169 = icmp eq ptr %193, null
  br i1 %tobool10.not.i169, label %lor.lhs.false.i, label %for.body8.i.cleanup.i_crit_edge

for.body8.i.cleanup.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body8.i
  %flags.i170 = getelementptr %struct.pci_dev, ptr %dev.0198.i, i32 0, i32 47, i32 %i.0189.i, i32 3
  %194 = ptrtoint ptr %flags.i170 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %flags.i170, align 4
  %and.i = and i32 %195, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end13.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end13.i:                                       ; preds = %lor.lhs.false.i
  %end.i.i = getelementptr %struct.pci_dev, ptr %dev.0198.i, i32 0, i32 47, i32 %i.0189.i, i32 1
  %196 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %end.i.i, align 4
  %198 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i167, align 4
  %sub.i.i = add i32 %197, 1
  %add.i.i = sub i32 %sub.i.i, %199
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i)
  %cmp15.i = icmp ult i32 %add.i.i, 1024
  %add17.i = select i1 %cmp15.i, i32 0, i32 %add.i.i
  %size1.2.i = add i32 %add17.i, %size1.1185.i
  %add.i171 = select i1 %cmp15.i, i32 %add.i.i, i32 0
  %size.2.i = add i32 %add.i171, %size.1188.i
  %arrayidx.idx.i = shl i32 %i.0189.i, 5
  %200 = add nsw i32 %arrayidx.idx.i, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %200)
  %201 = icmp ult i32 %200, 223
  br i1 %201, label %if.then.i.i, label %if.end.i.i172

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i161.i = call i32 @pci_sriov_resource_alignment(ptr noundef %dev.0198.i, i32 noundef %i.0189.i) #12
  br label %pci_resource_alignment.exit.i

if.end.i.i172:                                    ; preds = %if.end13.i
  %202 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %class.i.i, align 8
  %shr.mask.i.i = and i32 %203, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i.i)
  %cmp2.i162.i = icmp eq i32 %shr.mask.i.i, 395008
  br i1 %cmp2.i162.i, label %return.sink.split.i.i.i, label %if.end5.i.i

return.sink.split.i.i.i:                          ; preds = %if.end.i.i172
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_cardbus_io_size to i32))
  %204 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %pci_resource_alignment.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i172
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call i32 @resource_alignment(ptr noundef %arrayidx.i167) #12
  br label %pci_resource_alignment.exit.i

pci_resource_alignment.exit.i:                    ; preds = %if.end5.i.i, %return.sink.split.i.i.i, %if.then.i.i
  %retval.0.i163.i = phi i32 [ %call.i161.i, %if.then.i.i ], [ %call6.i.i, %if.end5.i.i ], [ %204, %return.sink.split.i.i.i ]
  %205 = call i32 @llvm.umax.i32(i32 %retval.0.i163.i, i32 %min_align.1187.i) #12
  br i1 %tobool42.not, label %pci_resource_alignment.exit.i.cleanup.i_crit_edge, label %pci_resource_alignment.exit.i.for.cond.i.i.i_crit_edge

pci_resource_alignment.exit.i.for.cond.i.i.i_crit_edge: ; preds = %pci_resource_alignment.exit.i
  br label %for.cond.i.i.i

pci_resource_alignment.exit.i.cleanup.i_crit_edge: ; preds = %pci_resource_alignment.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %pci_resource_alignment.exit.i.for.cond.i.i.i_crit_edge
  %dev_res.0.in.i.i.i = phi ptr [ %dev_res.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %realloc_head, %pci_resource_alignment.exit.i.for.cond.i.i.i_crit_edge ]
  %206 = ptrtoint ptr %dev_res.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %dev_res.0.i.i.i = load ptr, ptr %dev_res.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %dev_res.0.i.i.i, %realloc_head
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.get_res_add_size.exit.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.get_res_add_size.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_res_add_size.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %res1.i.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i.i, i32 0, i32 1
  %207 = ptrtoint ptr %res1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %res1.i.i.i, align 4
  %cmp2.i.i.i = icmp eq ptr %208, %arrayidx.i167
  br i1 %cmp2.i.i.i, label %res_to_dev_res.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

res_to_dev_res.exit.i.i:                          ; preds = %for.body.i.i.i
  %tobool.not.i164.i = icmp eq ptr %dev_res.0.i.i.i, null
  br i1 %tobool.not.i164.i, label %res_to_dev_res.exit.i.i.get_res_add_size.exit.i_crit_edge, label %cond.true.i.i

res_to_dev_res.exit.i.i.get_res_add_size.exit.i_crit_edge: ; preds = %res_to_dev_res.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_res_add_size.exit.i

cond.true.i.i:                                    ; preds = %res_to_dev_res.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add_size.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i.i, i32 0, i32 5
  %209 = ptrtoint ptr %add_size.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %add_size.i.i, align 4
  br label %get_res_add_size.exit.i

get_res_add_size.exit.i:                          ; preds = %cond.true.i.i, %res_to_dev_res.exit.i.i.get_res_add_size.exit.i_crit_edge, %for.cond.i.i.i.get_res_add_size.exit.i_crit_edge
  %cond.i.i = phi i32 [ %210, %cond.true.i.i ], [ 0, %res_to_dev_res.exit.i.i.get_res_add_size.exit.i_crit_edge ], [ 0, %for.cond.i.i.i.get_res_add_size.exit.i_crit_edge ]
  %add26.i = add i32 %cond.i.i, %children_add_size.1186.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %get_res_add_size.exit.i, %pci_resource_alignment.exit.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body8.i.cleanup.i_crit_edge
  %size1.3.i = phi i32 [ %size1.1185.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %size1.1185.i, %for.body8.i.cleanup.i_crit_edge ], [ %size1.2.i, %get_res_add_size.exit.i ], [ %size1.2.i, %pci_resource_alignment.exit.i.cleanup.i_crit_edge ]
  %children_add_size.3.i = phi i32 [ %children_add_size.1186.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %children_add_size.1186.i, %for.body8.i.cleanup.i_crit_edge ], [ %add26.i, %get_res_add_size.exit.i ], [ %children_add_size.1186.i, %pci_resource_alignment.exit.i.cleanup.i_crit_edge ]
  %min_align.3.i = phi i32 [ %min_align.1187.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %min_align.1187.i, %for.body8.i.cleanup.i_crit_edge ], [ %205, %get_res_add_size.exit.i ], [ %205, %pci_resource_alignment.exit.i.cleanup.i_crit_edge ]
  %size.3.i = phi i32 [ %size.1188.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %size.1188.i, %for.body8.i.cleanup.i_crit_edge ], [ %size.2.i, %get_res_add_size.exit.i ], [ %size.2.i, %pci_resource_alignment.exit.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0189.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %cleanup.i.for.body8.i_crit_edge

cleanup.i.for.body8.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8.i

for.end35.i:                                      ; preds = %for.cond.loopexit.i.for.end35.i_crit_edge, %window_alignment.exit.i.for.end35.i_crit_edge
  %size1.0.lcssa.i = phi i32 [ 0, %window_alignment.exit.i.for.end35.i_crit_edge ], [ %size1.3.i, %for.cond.loopexit.i.for.end35.i_crit_edge ]
  %children_add_size.0.lcssa.i = phi i32 [ 0, %window_alignment.exit.i.for.end35.i_crit_edge ], [ %children_add_size.3.i, %for.cond.loopexit.i.for.end35.i_crit_edge ]
  %min_align.0.lcssa.i = phi i32 [ %189, %window_alignment.exit.i.for.end35.i_crit_edge ], [ %min_align.3.i, %for.cond.loopexit.i.for.end35.i_crit_edge ]
  %size.0.lcssa.i = phi i32 [ 0, %window_alignment.exit.i.for.end35.i_crit_edge ], [ %size.3.i, %for.cond.loopexit.i.for.end35.i_crit_edge ]
  %end.i165.i = getelementptr inbounds %struct.resource, ptr %retval.0.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %end.i165.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %end.i165.i, align 4
  %213 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %retval.0.i.i, align 4
  %sub.i166.i = add i32 %212, 1
  %add.i167.i = sub i32 %sub.i166.i, %214
  %215 = call i32 @llvm.umax.i32(i32 %size.0.lcssa.i, i32 %spec.select) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i167.i)
  %cmp1.i168.i = icmp eq i32 %add.i167.i, 1
  %spec.store.select.i.i = select i1 %cmp1.i168.i, i32 0, i32 %add.i167.i
  %add.i169.i = add i32 %215, %size1.0.lcssa.i
  %216 = call i32 @llvm.umax.i32(i32 %add.i169.i, i32 %spec.store.select.i.i) #12
  %sub.i170.i = add i32 %min_align.0.lcssa.i, -1
  %add9.i.i = add i32 %216, %sub.i170.i
  %neg.i.i = sub i32 0, %min_align.0.lcssa.i
  %and.i171.i = and i32 %add9.i.i, %neg.i.i
  br i1 %tobool42.not, label %for.end35.i.cond.end.i_crit_edge, label %land.lhs.true.i

for.end35.i.cond.end.i_crit_edge:                 ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

land.lhs.true.i:                                  ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %additional_io_size.0)
  %tobool41.not.i = icmp eq i32 %additional_io_size.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %children_add_size.0.lcssa.i)
  %tobool43.not.i = icmp eq i32 %children_add_size.0.lcssa.i, 0
  %or.cond.i = select i1 %tobool41.not.i, i1 %tobool43.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.cond.end.i_crit_edge, label %cond.false.i

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %217 = call i32 @llvm.umax.i32(i32 %216, i32 %additional_io_size.0) #12
  %sub.i178.i = add i32 %sub.i170.i, %children_add_size.0.lcssa.i
  %add9.i179.i = add i32 %sub.i178.i, %217
  %and.i181.i = and i32 %add9.i179.i, %neg.i.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true.i.cond.end.i_crit_edge, %for.end35.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %and.i181.i, %cond.false.i ], [ %and.i171.i, %land.lhs.true.i.cond.end.i_crit_edge ], [ %and.i171.i, %for.end35.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171.i)
  %tobool46.not.i = icmp eq i32 %and.i171.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool48.not.i = icmp eq i32 %cond.i, 0
  %or.cond156.i = select i1 %tobool46.not.i, i1 %tobool48.not.i, i1 false
  br i1 %or.cond156.i, label %if.then49.i, label %if.end60.i

if.then49.i:                                      ; preds = %cond.end.i
  %218 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %self.i.i, align 4
  %tobool50.not.i = icmp eq ptr %219, null
  br i1 %tobool50.not.i, label %if.then49.i.if.end58.i_crit_edge, label %land.lhs.true51.i

if.then49.i.if.end58.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

land.lhs.true51.i:                                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool52.not.i = icmp eq i32 %214, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool54.not.i174 = icmp eq i32 %212, 0
  %or.cond182.i = select i1 %tobool52.not.i, i1 %tobool54.not.i174, i1 false
  br i1 %or.cond182.i, label %land.lhs.true51.i.if.end58.i_crit_edge, label %do.end.i

land.lhs.true51.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

do.end.i:                                         ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %219, i32 0, i32 44
  %busn_res.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev57.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %retval.0.i.i, ptr noundef %busn_res.i) #15
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.end.i, %land.lhs.true51.i.if.end58.i_crit_edge, %if.then49.i.if.end58.i_crit_edge
  %flags59.i = getelementptr inbounds %struct.resource, ptr %retval.0.i.i, i32 0, i32 3
  %220 = ptrtoint ptr %flags59.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %flags59.i, align 4
  br label %pbus_size_io.exit

if.end60.i:                                       ; preds = %cond.end.i
  %221 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %min_align.0.lcssa.i, ptr %retval.0.i.i, align 4
  %sub.i175 = add i32 %and.i171.i, %sub.i170.i
  %222 = ptrtoint ptr %end.i165.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %sub.i175, ptr %end.i165.i, align 4
  %flags65.i = getelementptr inbounds %struct.resource, ptr %retval.0.i.i, i32 0, i32 3
  %223 = ptrtoint ptr %flags65.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %flags65.i, align 4
  %or.i176 = or i32 %224, 524288
  store i32 %or.i176, ptr %flags65.i, align 4
  %225 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %self.i.i, align 4
  %tobool67.not.i = icmp eq ptr %226, null
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %and.i171.i)
  %cmp69.i = icmp ule i32 %cond.i, %and.i171.i
  %or.cond157.i = select i1 %tobool67.not.i, i1 true, i1 %cmp69.i
  %brmerge.i = or i1 %tobool42.not, %or.cond157.i
  br i1 %brmerge.i, label %if.end60.i.pbus_size_io.exit_crit_edge, label %if.then72.i

if.end60.i.pbus_size_io.exit_crit_edge:           ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pbus_size_io.exit

if.then72.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub74.i = sub i32 %cond.i, %and.i171.i
  %call75.i = call fastcc i32 @add_to_list(ptr noundef nonnull %realloc_head, ptr noundef nonnull %226, ptr noundef nonnull %retval.0.i.i, i32 noundef %sub74.i, i32 noundef %min_align.0.lcssa.i) #12
  %227 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %self.i.i, align 4
  %dev80.i = getelementptr inbounds %struct.pci_dev, ptr %228, i32 0, i32 44
  %busn_res81.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 8
  %conv.i = zext i32 %cond.i to i64
  %conv82.i = zext i32 %and.i171.i to i64
  %sub83.i = sub nsw i64 %conv.i, %conv82.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev80.i, ptr noundef nonnull @.str.45, ptr noundef nonnull %retval.0.i.i, ptr noundef %busn_res81.i, i64 noundef %sub83.i) #15
  br label %pbus_size_io.exit

pbus_size_io.exit:                                ; preds = %if.then72.i, %if.end60.i.pbus_size_io.exit_crit_edge, %if.end58.i, %if.end.i166.pbus_size_io.exit_crit_edge, %find_bus_resource_of_type.exit.i.pbus_size_io.exit_crit_edge
  %tobool43.not = icmp eq ptr %pref.0179, null
  br i1 %tobool43.not, label %pbus_size_io.exit.if.then63_crit_edge, label %land.lhs.true44

pbus_size_io.exit.if.then63_crit_edge:            ; preds = %pbus_size_io.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

land.lhs.true44:                                  ; preds = %pbus_size_io.exit
  %flags45 = getelementptr inbounds %struct.resource, ptr %pref.0179, i32 0, i32 3
  %229 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %flags45, align 4
  %and46 = and i32 %230, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.lhs.true44.if.then63_crit_edge, label %if.then48

land.lhs.true44.if.then63_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

if.then48:                                        ; preds = %land.lhs.true44
  %spec.select153 = select i1 %tobool42.not, i32 %additional_mmio_pref_size.0, i32 0
  %call54 = call fastcc i32 @pbus_size_mem(ptr noundef %bus, i32 noundef 1057280, i32 noundef 1057280, i32 noundef 1057280, i32 noundef 1057280, i32 noundef %spec.select153, i32 noundef %additional_mmio_pref_size.0, ptr noundef %realloc_head)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then48.if.end76_crit_edge, label %if.then48.if.then63_crit_edge

if.then48.if.then63_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

if.then48.if.end76_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then63:                                        ; preds = %if.then48.if.then63_crit_edge, %land.lhs.true44.if.then63_crit_edge, %pbus_size_io.exit.if.then63_crit_edge
  %spec.select154 = select i1 %tobool42.not, i32 %additional_mmio_pref_size.0, i32 0
  %call70 = call fastcc i32 @pbus_size_mem(ptr noundef %bus, i32 noundef 8704, i32 noundef 8704, i32 noundef 8704, i32 noundef 8704, i32 noundef %spec.select154, i32 noundef %additional_mmio_pref_size.0, ptr noundef %realloc_head)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp eq i32 %call70, 0
  %add = select i1 %cmp71, i32 0, i32 %additional_mmio_pref_size.0
  %additional_mmio_size.1 = add i32 %add, %additional_mmio_size.0
  %mask.1 = select i1 %cmp71, i32 8704, i32 512
  br label %if.end76

if.end76:                                         ; preds = %if.then63, %if.then48.if.end76_crit_edge
  %additional_mmio_size.2 = phi i32 [ %additional_mmio_size.1, %if.then63 ], [ %additional_mmio_size.0, %if.then48.if.end76_crit_edge ]
  %type3.1 = phi i32 [ 512, %if.then63 ], [ 1049088, %if.then48.if.end76_crit_edge ]
  %type2.1 = phi i32 [ 512, %if.then63 ], [ 8704, %if.then48.if.end76_crit_edge ]
  %mask.2 = phi i32 [ %mask.1, %if.then63 ], [ 1057280, %if.then48.if.end76_crit_edge ]
  %spec.select155 = select i1 %tobool42.not, i32 %additional_mmio_size.2, i32 0
  %call82 = call fastcc i32 @pbus_size_mem(ptr noundef %bus, i32 noundef %mask.2, i32 noundef 512, i32 noundef %type2.1, i32 noundef %type3.1, i32 noundef %spec.select155, i32 noundef %additional_mmio_size.2, ptr noundef %realloc_head)
  br label %cleanup84

cleanup84:                                        ; preds = %if.end76, %if.end31.cleanup84_crit_edge, %if.then9.cleanup84_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_resource_n(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pbus_size_mem(ptr noundef %bus, i32 noundef %mask, i32 noundef %type, i32 noundef %type2, i32 noundef %type3, i32 noundef %min_size, i32 noundef %add_size, ptr noundef %realloc_head) unnamed_addr #0 align 64 {
entry:
  %aligns = alloca [18 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %aligns) #12
  %0 = call ptr @memset(ptr %aligns, i32 255, i32 72)
  %or = or i32 %mask, 8192
  %call36.i = tail call ptr @pci_bus_resource_n(ptr noundef %bus, i32 noundef 0) #12
  %tobool.not37.i = icmp eq ptr %call36.i, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tobool.not42.i = phi i1 [ %tobool.not37.i, %entry ], [ %tobool.not.i, %for.inc.i.for.body.i_crit_edge ]
  %call40.i = phi ptr [ %call36.i, %entry ], [ %call.i, %for.inc.i.for.body.i_crit_edge ]
  %i.039.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %r_assigned.038.i = phi ptr [ null, %entry ], [ %r_assigned.1.i, %for.inc.i.for.body.i_crit_edge ]
  %cmp1.i = icmp eq ptr %call40.i, @ioport_resource
  %cmp2.i = icmp eq ptr %call40.i, @iomem_resource
  %or.cond33.i = or i1 %cmp1.i, %cmp2.i
  %brmerge.i = or i1 %tobool.not42.i, %or.cond33.i
  br i1 %brmerge.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.resource, ptr %call40.i, i32 0, i32 3
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, %or
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %type)
  %cmp4.i = icmp eq i32 %and.i, %type
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.land.lhs.true10.i_crit_edge

land.lhs.true.i.land.lhs.true10.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %parent.i = getelementptr inbounds %struct.resource, ptr %call40.i, i32 0, i32 5
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 4
  %tobool6.not.i = icmp eq ptr %4, null
  br i1 %tobool6.not.i, label %land.lhs.true5.i.find_bus_resource_of_type.exit_crit_edge, label %land.lhs.true5.i.land.lhs.true10.i_crit_edge

land.lhs.true5.i.land.lhs.true10.i_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true10.i

land.lhs.true5.i.find_bus_resource_of_type.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_bus_resource_of_type.exit

land.lhs.true10.i:                                ; preds = %land.lhs.true5.i.land.lhs.true10.i_crit_edge, %land.lhs.true.i.land.lhs.true10.i_crit_edge
  %tobool15.not.i = icmp eq ptr %r_assigned.038.i, null
  %or.cond35.i = select i1 %cmp4.i, i1 %tobool15.not.i, i1 false
  %spec.select.i = select i1 %or.cond35.i, ptr %call40.i, ptr %r_assigned.038.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true10.i, %for.body.i.for.inc.i_crit_edge
  %r_assigned.1.i = phi ptr [ %r_assigned.038.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true10.i ]
  %inc.i = add i32 %i.039.i, 1
  %call.i = tail call ptr @pci_bus_resource_n(ptr noundef %bus, i32 noundef %inc.i) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 3
  %5 = and i1 %cmp.i, %tobool.not.i
  br i1 %5, label %for.inc.i.find_bus_resource_of_type.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.find_bus_resource_of_type.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_bus_resource_of_type.exit

find_bus_resource_of_type.exit:                   ; preds = %for.inc.i.find_bus_resource_of_type.exit_crit_edge, %land.lhs.true5.i.find_bus_resource_of_type.exit_crit_edge
  %retval.0.i = phi ptr [ %call40.i, %land.lhs.true5.i.find_bus_resource_of_type.exit_crit_edge ], [ %r_assigned.1.i, %for.inc.i.find_bus_resource_of_type.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %find_bus_resource_of_type.exit.cleanup166_crit_edge, label %if.end

find_bus_resource_of_type.exit.cleanup166_crit_edge: ; preds = %find_bus_resource_of_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

if.end:                                           ; preds = %find_bus_resource_of_type.exit
  %parent = getelementptr inbounds %struct.resource, ptr %retval.0.i, i32 0, i32 5
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup166_crit_edge

if.end.cleanup166_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

if.end3:                                          ; preds = %if.end
  %8 = call ptr @memset(ptr %aligns, i32 0, i32 72)
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %9 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %9)
  %dev.0380 = load ptr, ptr %devices, align 4
  %cmp.not381 = icmp eq ptr %dev.0380, %devices
  br i1 %cmp.not381, label %if.end3.for.body.i337.preheader_crit_edge, label %for.cond5.preheader.lr.ph

if.end3.for.body.i337.preheader_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i337.preheader

for.cond5.preheader.lr.ph:                        ; preds = %if.end3
  %tobool25.not = icmp eq ptr %realloc_head, null
  %tobool25.not.not = xor i1 %tobool25.not, true
  br label %for.cond5.preheader

for.cond.loopexit:                                ; preds = %cleanup
  %10 = ptrtoint ptr %dev.0386 to i32
  call void @__asan_load4_noabort(i32 %10)
  %dev.0 = load ptr, ptr %dev.0386, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %for.cond.loopexit.for.body.i337.preheader_crit_edge, label %for.cond.loopexit.for.cond5.preheader_crit_edge

for.cond.loopexit.for.cond5.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader

for.cond.loopexit.for.body.i337.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i337.preheader

for.cond5.preheader:                              ; preds = %for.cond.loopexit.for.cond5.preheader_crit_edge, %for.cond5.preheader.lr.ph
  %dev.0386 = phi ptr [ %dev.0380, %for.cond5.preheader.lr.ph ], [ %dev.0, %for.cond.loopexit.for.cond5.preheader_crit_edge ]
  %size.0385 = phi i32 [ 0, %for.cond5.preheader.lr.ph ], [ %size.2, %for.cond.loopexit.for.cond5.preheader_crit_edge ]
  %max_order.0384 = phi i32 [ 0, %for.cond5.preheader.lr.ph ], [ %max_order.3, %for.cond.loopexit.for.cond5.preheader_crit_edge ]
  %add_align.0383 = phi i32 [ 0, %for.cond5.preheader.lr.ph ], [ %add_align.3, %for.cond.loopexit.for.cond5.preheader_crit_edge ]
  %children_add_size.0382 = phi i32 [ 0, %for.cond5.preheader.lr.ph ], [ %children_add_size.3, %for.cond.loopexit.for.cond5.preheader_crit_edge ]
  %class.i306 = getelementptr inbounds %struct.pci_dev, ptr %dev.0386, i32 0, i32 11
  br label %for.body7

for.body7:                                        ; preds = %cleanup.for.body7_crit_edge, %for.cond5.preheader
  %size.1379 = phi i32 [ %size.0385, %for.cond5.preheader ], [ %size.2, %cleanup.for.body7_crit_edge ]
  %i.0374 = phi i32 [ 0, %for.cond5.preheader ], [ %inc, %cleanup.for.body7_crit_edge ]
  %max_order.1373 = phi i32 [ %max_order.0384, %for.cond5.preheader ], [ %max_order.3, %cleanup.for.body7_crit_edge ]
  %add_align.1372 = phi i32 [ %add_align.0383, %for.cond5.preheader ], [ %add_align.3, %cleanup.for.body7_crit_edge ]
  %children_add_size.1371 = phi i32 [ %children_add_size.0382, %for.cond5.preheader ], [ %children_add_size.3, %cleanup.for.body7_crit_edge ]
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev.0386, i32 0, i32 47, i32 %i.0374
  %parent8 = getelementptr %struct.pci_dev, ptr %dev.0386, i32 0, i32 47, i32 %i.0374, i32 5
  %11 = ptrtoint ptr %parent8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent8, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %lor.lhs.false, label %for.body7.cleanup_crit_edge

for.body7.cleanup_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body7
  %flags = getelementptr %struct.pci_dev, ptr %dev.0386, i32 0, i32 47, i32 %i.0374, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %and13 = and i32 %14, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %type)
  %cmp14.not = icmp eq i32 %and13, %type
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %type2)
  %cmp17.not = icmp eq i32 %and13, %type2
  %or.cond = or i1 %cmp14.not, %cmp17.not
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %type3)
  %cmp21.not = icmp eq i32 %and13, %type3
  %or.cond285 = or i1 %cmp21.not, %or.cond
  br i1 %or.cond285, label %if.end23, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false11
  %end.i = getelementptr %struct.pci_dev, ptr %dev.0386, i32 0, i32 47, i32 %i.0374, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %sub.i = add i32 %16, 1
  %add.i = sub i32 %sub.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0374)
  %cmp27 = icmp ugt i32 %i.0374, 6
  %or.cond286 = select i1 %tobool25.not.not, i1 %cmp27, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.0374)
  %cmp29 = icmp ult i32 %i.0374, 13
  %or.cond287 = select i1 %or.cond286, i1 %cmp29, i1 false
  br i1 %or.cond287, label %if.then.i, label %if.end35

if.then.i:                                        ; preds = %if.end23
  %call.i291 = tail call i32 @pci_sriov_resource_alignment(ptr noundef %dev.0386, i32 noundef %i.0374) #12
  %19 = tail call i32 @llvm.umax.i32(i32 %call.i291, i32 %add_align.1372)
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %21, -1
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %end.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not.i294 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i294, label %if.then.i.add_to_list.exit_crit_edge, label %if.end.i297

if.then.i.add_to_list.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_to_list.exit

if.end.i297:                                      ; preds = %if.then.i
  %res1.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %res1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx, ptr %res1.i, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev.0386, ptr %dev2.i, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %start3.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %start3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %start3.i, align 8
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i, align 4
  %end4.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %end4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %end4.i, align 4
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %flags5.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %flags5.i, align 8
  %add_size6.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %add_size6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i, ptr %add_size6.i, align 8
  %min_align7.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %min_align7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %min_align7.i, align 4
  %37 = ptrtoint ptr %realloc_head to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %realloc_head, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %realloc_head, ptr noundef %38) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i297.add_to_list.exit_crit_edge

if.end.i297.add_to_list.exit_crit_edge:           ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_to_list.exit

if.end.i.i.i:                                     ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %realloc_head, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %realloc_head to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call7.i.i.i, ptr %realloc_head, align 4
  br label %add_to_list.exit

add_to_list.exit:                                 ; preds = %if.end.i.i.i, %if.end.i297.add_to_list.exit_crit_edge, %if.then.i.add_to_list.exit_crit_edge
  %add = add i32 %add.i, %children_add_size.1371
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %arrayidx.idx = shl i32 %i.0374, 5
  %43 = add nsw i32 %arrayidx.idx, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %43)
  %44 = icmp ult i32 %43, 223
  br i1 %44, label %if.then.i305, label %if.end.i309

if.then.i305:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %call.i304 = tail call i32 @pci_sriov_resource_alignment(ptr noundef %dev.0386, i32 noundef %i.0374) #12
  br label %pci_resource_alignment.exit322

if.end.i309:                                      ; preds = %if.end35
  %45 = ptrtoint ptr %class.i306 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %class.i306, align 8
  %shr.mask.i307 = and i32 %46, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i307)
  %cmp2.i308 = icmp eq i32 %shr.mask.i307, 395008
  br i1 %cmp2.i308, label %if.then3.i313, label %if.end5.i320

if.then3.i313:                                    ; preds = %if.end.i309
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and.i.i311 = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i311)
  %tobool.not.i.i312 = icmp eq i32 %and.i.i311, 0
  br i1 %tobool.not.i.i312, label %if.end.i.i316, label %if.then3.i313.return.sink.split.i.i318_crit_edge

if.then3.i313.return.sink.split.i.i318_crit_edge: ; preds = %if.then3.i313
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i318

if.end.i.i316:                                    ; preds = %if.then3.i313
  %and2.i.i314 = and i32 %48, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i314)
  %tobool3.not.i.i315 = icmp eq i32 %and2.i.i314, 0
  br i1 %tobool3.not.i.i315, label %if.end.i.i316.pci_resource_alignment.exit322_crit_edge, label %if.end.i.i316.return.sink.split.i.i318_crit_edge

if.end.i.i316.return.sink.split.i.i318_crit_edge: ; preds = %if.end.i.i316
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i318

if.end.i.i316.pci_resource_alignment.exit322_crit_edge: ; preds = %if.end.i.i316
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_resource_alignment.exit322

return.sink.split.i.i318:                         ; preds = %if.end.i.i316.return.sink.split.i.i318_crit_edge, %if.then3.i313.return.sink.split.i.i318_crit_edge
  %pci_cardbus_mem_size.sink.i.i317 = phi ptr [ @pci_cardbus_io_size, %if.then3.i313.return.sink.split.i.i318_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i316.return.sink.split.i.i318_crit_edge ]
  %49 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i317 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pci_cardbus_mem_size.sink.i.i317, align 4
  br label %pci_resource_alignment.exit322

if.end5.i320:                                     ; preds = %if.end.i309
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i319 = tail call i32 @resource_alignment(ptr noundef %arrayidx) #12
  br label %pci_resource_alignment.exit322

pci_resource_alignment.exit322:                   ; preds = %if.end5.i320, %return.sink.split.i.i318, %if.end.i.i316.pci_resource_alignment.exit322_crit_edge, %if.then.i305
  %retval.0.i321 = phi i32 [ %call.i304, %if.then.i305 ], [ %call6.i319, %if.end5.i320 ], [ 0, %if.end.i.i316.pci_resource_alignment.exit322_crit_edge ], [ %50, %return.sink.split.i.i318 ]
  %51 = tail call i32 @llvm.cttz.i32(i32 %retval.0.i321, i1 false) #12, !range !163
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 20)
  %53 = add nsw i32 %52, -20
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %retval.0.i321)
  %cmp48 = icmp ugt i32 %add.i, %retval.0.i321
  %54 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 %retval.0.i321)
  %add54 = add i32 %54, %size.1379
  br i1 %cmp48, label %pci_resource_alignment.exit322.if.end60_crit_edge, label %if.then57

pci_resource_alignment.exit322.if.end60_crit_edge: ; preds = %pci_resource_alignment.exit322
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then57:                                        ; preds = %pci_resource_alignment.exit322
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx58 = getelementptr [18 x i32], ptr %aligns, i32 0, i32 %53
  %55 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx58, align 4
  %add59 = add i32 %56, %retval.0.i321
  store i32 %add59, ptr %arrayidx58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %pci_resource_alignment.exit322.if.end60_crit_edge
  %57 = tail call i32 @llvm.smax.i32(i32 %53, i32 %max_order.1373)
  br i1 %tobool25.not, label %if.end60.cleanup_crit_edge, label %if.end60.for.cond.i.i_crit_edge

if.end60.for.cond.i.i_crit_edge:                  ; preds = %if.end60
  br label %for.cond.i.i

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end60.for.cond.i.i_crit_edge
  %dev_res.0.in.i.i = phi ptr [ %dev_res.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %realloc_head, %if.end60.for.cond.i.i_crit_edge ]
  %58 = ptrtoint ptr %dev_res.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %dev_res.0.i.i = load ptr, ptr %dev_res.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %dev_res.0.i.i, %realloc_head
  br i1 %cmp.not.i.i, label %for.cond.i.i.get_res_add_size.exit_crit_edge, label %for.body.i.i

for.cond.i.i.get_res_add_size.exit_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_res_add_size.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %res1.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %res1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %res1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %60, %arrayidx
  br i1 %cmp2.i.i, label %res_to_dev_res.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

res_to_dev_res.exit.i:                            ; preds = %for.body.i.i
  %tobool.not.i323 = icmp eq ptr %dev_res.0.i.i, null
  br i1 %tobool.not.i323, label %res_to_dev_res.exit.i.get_res_add_size.exit_crit_edge, label %cond.true.i

res_to_dev_res.exit.i.get_res_add_size.exit_crit_edge: ; preds = %res_to_dev_res.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_res_add_size.exit

cond.true.i:                                      ; preds = %res_to_dev_res.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %add_size.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %add_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add_size.i, align 4
  br label %get_res_add_size.exit

get_res_add_size.exit:                            ; preds = %cond.true.i, %res_to_dev_res.exit.i.get_res_add_size.exit_crit_edge, %for.cond.i.i.get_res_add_size.exit_crit_edge
  %cond.i = phi i32 [ %62, %cond.true.i ], [ 0, %res_to_dev_res.exit.i.get_res_add_size.exit_crit_edge ], [ 0, %for.cond.i.i.get_res_add_size.exit_crit_edge ]
  %add68 = add i32 %cond.i, %children_add_size.1371
  br label %for.cond.i.i327

for.cond.i.i327:                                  ; preds = %for.body.i.i330.for.cond.i.i327_crit_edge, %get_res_add_size.exit
  %dev_res.0.in.i.i324 = phi ptr [ %realloc_head, %get_res_add_size.exit ], [ %dev_res.0.i.i325, %for.body.i.i330.for.cond.i.i327_crit_edge ]
  %63 = ptrtoint ptr %dev_res.0.in.i.i324 to i32
  call void @__asan_load4_noabort(i32 %63)
  %dev_res.0.i.i325 = load ptr, ptr %dev_res.0.in.i.i324, align 4
  %cmp.not.i.i326 = icmp eq ptr %dev_res.0.i.i325, %realloc_head
  br i1 %cmp.not.i.i326, label %for.cond.i.i327.get_res_add_align.exit_crit_edge, label %for.body.i.i330

for.cond.i.i327.get_res_add_align.exit_crit_edge: ; preds = %for.cond.i.i327
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_res_add_align.exit

for.body.i.i330:                                  ; preds = %for.cond.i.i327
  %res1.i.i328 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i325, i32 0, i32 1
  %64 = ptrtoint ptr %res1.i.i328 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %res1.i.i328, align 4
  %cmp2.i.i329 = icmp eq ptr %65, %arrayidx
  br i1 %cmp2.i.i329, label %res_to_dev_res.exit.i332, label %for.body.i.i330.for.cond.i.i327_crit_edge

for.body.i.i330.for.cond.i.i327_crit_edge:        ; preds = %for.body.i.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i327

res_to_dev_res.exit.i332:                         ; preds = %for.body.i.i330
  %tobool.not.i331 = icmp eq ptr %dev_res.0.i.i325, null
  br i1 %tobool.not.i331, label %res_to_dev_res.exit.i332.get_res_add_align.exit_crit_edge, label %cond.true.i333

res_to_dev_res.exit.i332.get_res_add_align.exit_crit_edge: ; preds = %res_to_dev_res.exit.i332
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_res_add_align.exit

cond.true.i333:                                   ; preds = %res_to_dev_res.exit.i332
  call void @__sanitizer_cov_trace_pc() #14
  %min_align.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i325, i32 0, i32 6
  %66 = ptrtoint ptr %min_align.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %min_align.i, align 4
  br label %get_res_add_align.exit

get_res_add_align.exit:                           ; preds = %cond.true.i333, %res_to_dev_res.exit.i332.get_res_add_align.exit_crit_edge, %for.cond.i.i327.get_res_add_align.exit_crit_edge
  %cond.i334 = phi i32 [ %67, %cond.true.i333 ], [ 0, %res_to_dev_res.exit.i332.get_res_add_align.exit_crit_edge ], [ 0, %for.cond.i.i327.get_res_add_align.exit_crit_edge ]
  %68 = tail call i32 @llvm.umax.i32(i32 %add_align.1372, i32 %cond.i334)
  br label %cleanup

cleanup:                                          ; preds = %get_res_add_align.exit, %if.end60.cleanup_crit_edge, %add_to_list.exit, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body7.cleanup_crit_edge
  %children_add_size.3 = phi i32 [ %add, %add_to_list.exit ], [ %children_add_size.1371, %lor.lhs.false11.cleanup_crit_edge ], [ %children_add_size.1371, %lor.lhs.false.cleanup_crit_edge ], [ %children_add_size.1371, %for.body7.cleanup_crit_edge ], [ %add68, %get_res_add_align.exit ], [ %children_add_size.1371, %if.end60.cleanup_crit_edge ]
  %add_align.3 = phi i32 [ %19, %add_to_list.exit ], [ %add_align.1372, %lor.lhs.false11.cleanup_crit_edge ], [ %add_align.1372, %lor.lhs.false.cleanup_crit_edge ], [ %add_align.1372, %for.body7.cleanup_crit_edge ], [ %68, %get_res_add_align.exit ], [ %add_align.1372, %if.end60.cleanup_crit_edge ]
  %max_order.3 = phi i32 [ %max_order.1373, %add_to_list.exit ], [ %max_order.1373, %lor.lhs.false11.cleanup_crit_edge ], [ %max_order.1373, %lor.lhs.false.cleanup_crit_edge ], [ %max_order.1373, %for.body7.cleanup_crit_edge ], [ %57, %get_res_add_align.exit ], [ %57, %if.end60.cleanup_crit_edge ]
  %size.2 = phi i32 [ %size.1379, %add_to_list.exit ], [ %size.1379, %lor.lhs.false11.cleanup_crit_edge ], [ %size.1379, %lor.lhs.false.cleanup_crit_edge ], [ %size.1379, %for.body7.cleanup_crit_edge ], [ %add54, %get_res_add_align.exit ], [ %add54, %if.end60.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0374, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.cond.loopexit, label %cleanup.for.body7_crit_edge

cleanup.for.body7_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7

for.body.i337.preheader:                          ; preds = %for.cond.loopexit.for.body.i337.preheader_crit_edge, %if.end3.for.body.i337.preheader_crit_edge
  %children_add_size.0.lcssa = phi i32 [ 0, %if.end3.for.body.i337.preheader_crit_edge ], [ %children_add_size.3, %for.cond.loopexit.for.body.i337.preheader_crit_edge ]
  %add_align.0.lcssa = phi i32 [ 0, %if.end3.for.body.i337.preheader_crit_edge ], [ %add_align.3, %for.cond.loopexit.for.body.i337.preheader_crit_edge ]
  %max_order.0.lcssa = phi i32 [ 0, %if.end3.for.body.i337.preheader_crit_edge ], [ %max_order.3, %for.cond.loopexit.for.body.i337.preheader_crit_edge ]
  %size.0.lcssa = phi i32 [ 0, %if.end3.for.body.i337.preheader_crit_edge ], [ %size.2, %for.cond.loopexit.for.body.i337.preheader_crit_edge ]
  br label %for.body.i337

for.body.i337:                                    ; preds = %if.end6.i.for.body.i337_crit_edge, %for.body.i337.preheader
  %order.023.i = phi i32 [ %inc.i341, %if.end6.i.for.body.i337_crit_edge ], [ 0, %for.body.i337.preheader ]
  %min_align.022.i = phi i32 [ %min_align.1.i, %if.end6.i.for.body.i337_crit_edge ], [ 0, %for.body.i337.preheader ]
  %align.020.i = phi i32 [ %add7.i, %if.end6.i.for.body.i337_crit_edge ], [ 0, %for.body.i337.preheader ]
  %add.i335 = add i32 %order.023.i, 20
  %shl.i = shl nuw i32 1, %add.i335
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align.020.i)
  %tobool.not.i336 = icmp eq i32 %align.020.i, 0
  br i1 %tobool.not.i336, label %for.body.i337.if.end6.i_crit_edge, label %if.else.i

for.body.i337.if.end6.i_crit_edge:                ; preds = %for.body.i337
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.else.i:                                        ; preds = %for.body.i337
  call void @__sanitizer_cov_trace_pc() #14
  %factor.i = shl i32 %min_align.022.i, 1
  %add1.i = add i32 %align.020.i, -1
  %add2.i = add i32 %add1.i, %factor.i
  %neg.i = sub i32 0, %min_align.022.i
  %and.i338 = and i32 %add2.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i338, i32 %shl.i)
  %cmp4.i339 = icmp ult i32 %and.i338, %shl.i
  %shr.i = lshr i32 %shl.i, 1
  %spec.select.i340 = select i1 %cmp4.i339, i32 %shr.i, i32 %min_align.022.i
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %for.body.i337.if.end6.i_crit_edge
  %min_align.1.i = phi i32 [ %shl.i, %for.body.i337.if.end6.i_crit_edge ], [ %spec.select.i340, %if.else.i ]
  %arrayidx.i = getelementptr i32, ptr %aligns, i32 %order.023.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %add7.i = add i32 %70, %align.020.i
  %inc.i341 = add i32 %order.023.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i341, %max_order.0.lcssa
  br i1 %cmp.not.i, label %calculate_mem_align.exit, label %if.end6.i.for.body.i337_crit_edge

if.end6.i.for.body.i337_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i337

calculate_mem_align.exit:                         ; preds = %if.end6.i
  %flags88 = getelementptr inbounds %struct.resource, ptr %retval.0.i, i32 0, i32 3
  %71 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags88, align 4
  %and.i342 = and i32 %72, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i342)
  %tobool.not.i343 = icmp eq i32 %and.i342, 0
  br i1 %tobool.not.i343, label %if.else.i344, label %calculate_mem_align.exit.window_alignment.exit_crit_edge

calculate_mem_align.exit.window_alignment.exit_crit_edge: ; preds = %calculate_mem_align.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %window_alignment.exit

if.else.i344:                                     ; preds = %calculate_mem_align.exit
  %and1.i = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i344.window_alignment.exit_crit_edge, label %if.then3.i345

if.else.i344.window_alignment.exit_crit_edge:     ; preds = %if.else.i344
  call void @__sanitizer_cov_trace_pc() #14
  br label %window_alignment.exit

if.then3.i345:                                    ; preds = %if.else.i344
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %73 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %self.i, align 4
  %tobool4.not.i = icmp eq ptr %74, null
  br i1 %tobool4.not.i, label %if.then3.i345.if.else8.i_crit_edge, label %land.lhs.true.i347

if.then3.i345.if.else8.i_crit_edge:               ; preds = %if.then3.i345
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8.i

land.lhs.true.i347:                               ; preds = %if.then3.i345
  %io_window_1k.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 49
  %75 = ptrtoint ptr %io_window_1k.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 5)
  %bf.load.i = load i40, ptr %io_window_1k.i, align 1
  %76 = and i40 %bf.load.i, 512
  %tobool6.not.i346 = icmp eq i40 %76, 0
  br i1 %tobool6.not.i346, label %land.lhs.true.i347.if.else8.i_crit_edge, label %land.lhs.true.i347.window_alignment.exit_crit_edge

land.lhs.true.i347.window_alignment.exit_crit_edge: ; preds = %land.lhs.true.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %window_alignment.exit

land.lhs.true.i347.if.else8.i_crit_edge:          ; preds = %land.lhs.true.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8.i

if.else8.i:                                       ; preds = %land.lhs.true.i347.if.else8.i_crit_edge, %if.then3.i345.if.else8.i_crit_edge
  br label %window_alignment.exit

window_alignment.exit:                            ; preds = %if.else8.i, %land.lhs.true.i347.window_alignment.exit_crit_edge, %if.else.i344.window_alignment.exit_crit_edge, %calculate_mem_align.exit.window_alignment.exit_crit_edge
  %align.0.i = phi i32 [ 4096, %if.else8.i ], [ 1, %if.else.i344.window_alignment.exit_crit_edge ], [ 1048576, %calculate_mem_align.exit.window_alignment.exit_crit_edge ], [ 1024, %land.lhs.true.i347.window_alignment.exit_crit_edge ]
  %call.i348 = tail call i32 @pcibios_window_alignment(ptr noundef %bus, i32 noundef %72) #12
  %77 = tail call i32 @llvm.umax.i32(i32 %align.0.i, i32 %call.i348) #12
  %78 = tail call i32 @llvm.umax.i32(i32 %min_align.1.i, i32 %77)
  %end.i349 = getelementptr inbounds %struct.resource, ptr %retval.0.i, i32 0, i32 1
  %79 = ptrtoint ptr %end.i349 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %end.i349, align 4
  %81 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %retval.0.i, align 4
  %sub.i350 = add i32 %80, 1
  %add.i351 = sub i32 %sub.i350, %82
  %83 = tail call i32 @llvm.umax.i32(i32 %size.0.lcssa, i32 %min_size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i351)
  %cmp1.i352 = icmp eq i32 %add.i351, 1
  %spec.store.select.i = select i1 %cmp1.i352, i32 0, i32 %add.i351
  %84 = tail call i32 @llvm.umax.i32(i32 %83, i32 %spec.store.select.i) #12
  %sub.i353 = add i32 %78, -1
  %add8.i = add i32 %sub.i353, %84
  %neg.i354 = sub i32 0, %78
  %and.i355 = and i32 %add8.i, %neg.i354
  %85 = tail call i32 @llvm.umax.i32(i32 %78, i32 %add_align.0.lcssa)
  %tobool106.not = icmp eq ptr %realloc_head, null
  br i1 %tobool106.not, label %window_alignment.exit.cond.end117_crit_edge, label %land.lhs.true109

window_alignment.exit.cond.end117_crit_edge:      ; preds = %window_alignment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end117

land.lhs.true109:                                 ; preds = %window_alignment.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add_size)
  %tobool110.not = icmp eq i32 %add_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %children_add_size.0.lcssa)
  %tobool112.not = icmp eq i32 %children_add_size.0.lcssa, 0
  %or.cond288 = select i1 %tobool110.not, i1 %tobool112.not, i1 false
  br i1 %or.cond288, label %land.lhs.true109.cond.end117_crit_edge, label %cond.false114

land.lhs.true109.cond.end117_crit_edge:           ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end117

cond.false114:                                    ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #14
  %86 = tail call i32 @llvm.umax.i32(i32 %84, i32 %add_size) #12
  %add.i361 = add i32 %children_add_size.0.lcssa, -1
  %sub.i362 = add i32 %add.i361, %85
  %add8.i363 = add i32 %sub.i362, %86
  %neg.i364 = sub i32 0, %85
  %and.i365 = and i32 %add8.i363, %neg.i364
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false114, %land.lhs.true109.cond.end117_crit_edge, %window_alignment.exit.cond.end117_crit_edge
  %cond118 = phi i32 [ %and.i365, %cond.false114 ], [ %and.i355, %land.lhs.true109.cond.end117_crit_edge ], [ %and.i355, %window_alignment.exit.cond.end117_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i355)
  %tobool119.not = icmp eq i32 %and.i355, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond118)
  %tobool121.not = icmp eq i32 %cond118, 0
  %or.cond289 = select i1 %tobool119.not, i1 %tobool121.not, i1 false
  br i1 %or.cond289, label %if.then122, label %if.end138

if.then122:                                       ; preds = %cond.end117
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %87 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %self, align 4
  %tobool123.not = icmp eq ptr %88, null
  br i1 %tobool123.not, label %if.then122.if.end136_crit_edge, label %land.lhs.true124

if.then122.if.end136_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

land.lhs.true124:                                 ; preds = %if.then122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool126.not = icmp eq i32 %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool129.not = icmp eq i32 %80, 0
  %or.cond366 = select i1 %tobool126.not, i1 %tobool129.not, i1 false
  br i1 %or.cond366, label %land.lhs.true124.if.end136_crit_edge, label %do.end133

land.lhs.true124.if.end136_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

do.end133:                                        ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #14
  %dev135 = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev135, ptr noundef nonnull @.str.42, ptr noundef nonnull %retval.0.i, ptr noundef %busn_res) #15
  br label %if.end136

if.end136:                                        ; preds = %do.end133, %land.lhs.true124.if.end136_crit_edge, %if.then122.if.end136_crit_edge
  %89 = ptrtoint ptr %flags88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %flags88, align 4
  br label %cleanup166

if.end138:                                        ; preds = %cond.end117
  %90 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %78, ptr %retval.0.i, align 4
  %sub141 = add i32 %sub.i353, %and.i355
  %91 = ptrtoint ptr %end.i349 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %sub141, ptr %end.i349, align 4
  %92 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags88, align 4
  %or144 = or i32 %93, 524288
  store i32 %or144, ptr %flags88, align 4
  %self145 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %94 = ptrtoint ptr %self145 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %self145, align 4
  %tobool146.not = icmp eq ptr %95, null
  call void @__sanitizer_cov_trace_cmp4(i32 %cond118, i32 %and.i355)
  %cmp148 = icmp ule i32 %cond118, %and.i355
  %or.cond290 = select i1 %tobool146.not, i1 true, i1 %cmp148
  %brmerge = or i1 %tobool106.not, %or.cond290
  br i1 %brmerge, label %if.end138.cleanup166_crit_edge, label %if.then152

if.end138.cleanup166_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

if.then152:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  %sub154 = sub i32 %cond118, %and.i355
  %call155 = tail call fastcc i32 @add_to_list(ptr noundef nonnull %realloc_head, ptr noundef nonnull %95, ptr noundef nonnull %retval.0.i, i32 noundef %sub154, i32 noundef %85)
  %96 = ptrtoint ptr %self145 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %self145, align 4
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %busn_res161 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 8
  %conv163 = zext i32 %sub154 to i64
  %conv164 = zext i32 %85 to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev160, ptr noundef nonnull @.str.53, ptr noundef nonnull %retval.0.i, ptr noundef %busn_res161, i64 noundef %conv163, i64 noundef %conv164) #15
  br label %cleanup166

cleanup166:                                       ; preds = %if.then152, %if.end138.cleanup166_crit_edge, %if.end136, %if.end.cleanup166_crit_edge, %find_bus_resource_of_type.exit.cleanup166_crit_edge
  %retval.0 = phi i32 [ 0, %if.end136 ], [ -28, %find_bus_resource_of_type.exit.cleanup166_crit_edge ], [ 0, %if.end.cleanup166_crit_edge ], [ 0, %if.end138.cleanup166_crit_edge ], [ 0, %if.then152 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %aligns) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_bus_size_bridges(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pci_bus_size_bridges(ptr noundef %bus, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pci_bus_assign_resources(ptr noundef readonly %bus, ptr noundef %realloc_head, ptr noundef %fail_head) local_unnamed_addr #0 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %3 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %dev.011.i = load ptr, ptr %devices.i, align 4
  %cmp.not12.i = icmp eq ptr %dev.011.i, %devices.i
  br i1 %cmp.not12.i, label %entry.pbus_assign_resources_sorted.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.pbus_assign_resources_sorted.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pbus_assign_resources_sorted.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dev.013.i = phi ptr [ %dev.0.i, %for.body.i.for.body.i_crit_edge ], [ %dev.011.i, %entry.for.body.i_crit_edge ]
  call fastcc void @__dev_sort_resources(ptr noundef %dev.013.i, ptr noundef nonnull %head.i) #12
  %4 = ptrtoint ptr %dev.013.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %dev.0.i = load ptr, ptr %dev.013.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, %devices.i
  br i1 %cmp.not.i, label %for.body.i.pbus_assign_resources_sorted.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.pbus_assign_resources_sorted.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pbus_assign_resources_sorted.exit

pbus_assign_resources_sorted.exit:                ; preds = %for.body.i.pbus_assign_resources_sorted.exit_crit_edge, %entry.pbus_assign_resources_sorted.exit_crit_edge
  call fastcc void @__assign_resources_sorted(ptr noundef nonnull %head.i, ptr noundef %realloc_head, ptr noundef %fail_head) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #12
  %5 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %dev.030 = load ptr, ptr %devices.i, align 4
  %cmp.not31 = icmp eq ptr %dev.030, %devices.i
  br i1 %cmp.not31, label %pbus_assign_resources_sorted.exit.for.end_crit_edge, label %pbus_assign_resources_sorted.exit.for.body_crit_edge

pbus_assign_resources_sorted.exit.for.body_crit_edge: ; preds = %pbus_assign_resources_sorted.exit
  br label %for.body

pbus_assign_resources_sorted.exit.for.end_crit_edge: ; preds = %pbus_assign_resources_sorted.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %pbus_assign_resources_sorted.exit.for.body_crit_edge
  %dev.032 = phi ptr [ %dev.0, %for.inc.for.body_crit_edge ], [ %dev.030, %pbus_assign_resources_sorted.exit.for.body_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev.032, i32 0, i32 1
  br label %for.body.i29

for.body.i29:                                     ; preds = %cleanup.i.for.body.i29_crit_edge, %for.body
  %i.023.i = phi i32 [ 0, %for.body ], [ %inc.i, %cleanup.i.for.body.i29_crit_edge ]
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %dev.032, i32 0, i32 47, i32 %i.023.i
  %parent.i = getelementptr %struct.pci_dev, ptr %dev.032, i32 0, i32 47, i32 %i.023.i, i32 5
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i29.cleanup.i_crit_edge

for.body.i29.cleanup.i_crit_edge:                 ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i29
  %flags.i = getelementptr %struct.pci_dev, ptr %dev.032, i32 0, i32 47, i32 %i.023.i, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %9, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool5.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %b.020.i = load ptr, ptr %bus.i, align 8
  %tobool6.not21.i = icmp eq ptr %b.020.i, null
  br i1 %tobool6.not21.i, label %if.end.i.cleanup.i_crit_edge, label %land.rhs.lr.ph.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.rhs.lr.ph.i:                                 ; preds = %if.end.i
  %end9.i.i.i = getelementptr %struct.pci_dev, ptr %dev.032, i32 0, i32 47, i32 %i.023.i, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %assign_fixed_resource_on_bus.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %b.022.i = phi ptr [ %b.020.i, %land.rhs.lr.ph.i ], [ %b.0.i, %assign_fixed_resource_on_bus.exit.i.land.rhs.i_crit_edge ]
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %tobool8.not.i = icmp eq ptr %12, null
  br i1 %tobool8.not.i, label %while.body.i, label %land.rhs.i.cleanup.i_crit_edge

land.rhs.i.cleanup.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

while.body.i:                                     ; preds = %land.rhs.i
  %call18.i.i = call ptr @pci_bus_resource_n(ptr noundef nonnull %b.022.i, i32 noundef 0) #12
  %tobool.not19.i.i = icmp eq ptr %call18.i.i, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %while.body.i
  %tobool.not22.i.i = phi i1 [ %tobool.not19.i.i, %while.body.i ], [ %tobool.not.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call21.i.i = phi ptr [ %call18.i.i, %while.body.i ], [ %call.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.020.i.i = phi i32 [ 0, %while.body.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  br i1 %tobool.not22.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %flags2.i.i = getelementptr inbounds %struct.resource, ptr %call21.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags2.i.i, align 4
  %17 = xor i32 %16, %14
  %18 = and i32 %17, 8960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.i.i = icmp eq i32 %18, 0
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %19 = and i32 %17, 7936
  %and.i.i.i = and i32 %16, 536870912
  %20 = or i32 %19, %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  %and3.i.i.i = and i32 %14, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  %or.cond19.i.i.i = select i1 %21, i1 %tobool4.not.i.i.i, i1 false
  br i1 %or.cond19.i.i.i, label %if.end6.i.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end6.i.i.i:                                    ; preds = %land.lhs.true.i.i
  %22 = ptrtoint ptr %call21.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call21.i.i, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp8.not.i.i.i = icmp ugt i32 %23, %25
  br i1 %cmp8.not.i.i.i, label %if.end6.i.i.i.for.inc.i.i_crit_edge, label %resource_contains.exit.i.i

if.end6.i.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

resource_contains.exit.i.i:                       ; preds = %if.end6.i.i.i
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call21.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i.i.i, align 4
  %28 = ptrtoint ptr %end9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end9.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp10.i.not.i.i = icmp ult i32 %27, %29
  br i1 %cmp10.i.not.i.i, label %resource_contains.exit.i.i.for.inc.i.i_crit_edge, label %if.then6.i.i

resource_contains.exit.i.i.for.inc.i.i_crit_edge: ; preds = %resource_contains.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %resource_contains.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i.i = call i32 @request_resource(ptr noundef nonnull %call21.i.i, ptr noundef %arrayidx.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then6.i.i, %resource_contains.exit.i.i.for.inc.i.i_crit_edge, %if.end6.i.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add i32 %i.020.i.i, 1
  %call.i.i = call ptr @pci_bus_resource_n(ptr noundef nonnull %b.022.i, i32 noundef %inc.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i)
  %cmp.i.i = icmp sgt i32 %inc.i.i, 3
  %30 = and i1 %cmp.i.i, %tobool.not.i.i
  br i1 %30, label %assign_fixed_resource_on_bus.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

assign_fixed_resource_on_bus.exit.i:              ; preds = %for.inc.i.i
  %parent9.i = getelementptr inbounds %struct.pci_bus, ptr %b.022.i, i32 0, i32 1
  %31 = ptrtoint ptr %parent9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %b.0.i = load ptr, ptr %parent9.i, align 8
  %tobool6.not.i = icmp eq ptr %b.0.i, null
  br i1 %tobool6.not.i, label %assign_fixed_resource_on_bus.exit.i.cleanup.i_crit_edge, label %assign_fixed_resource_on_bus.exit.i.land.rhs.i_crit_edge

assign_fixed_resource_on_bus.exit.i.land.rhs.i_crit_edge: ; preds = %assign_fixed_resource_on_bus.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

assign_fixed_resource_on_bus.exit.i.cleanup.i_crit_edge: ; preds = %assign_fixed_resource_on_bus.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %assign_fixed_resource_on_bus.exit.i.cleanup.i_crit_edge, %land.rhs.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i29.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %pdev_assign_fixed_resources.exit, label %cleanup.i.for.body.i29_crit_edge

cleanup.i.for.body.i29_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i29

pdev_assign_fixed_resources.exit:                 ; preds = %cleanup.i
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev.032, i32 0, i32 2
  %32 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %pdev_assign_fixed_resources.exit.for.inc_crit_edge, label %if.end

pdev_assign_fixed_resources.exit.for.inc_crit_edge: ; preds = %pdev_assign_fixed_resources.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %pdev_assign_fixed_resources.exit
  call void @__pci_bus_assign_resources(ptr noundef nonnull %33, ptr noundef %realloc_head, ptr noundef %fail_head)
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %dev.032, i32 0, i32 13
  %34 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hdr_type, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %35, label %do.end [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %enable_cnt.i = getelementptr inbounds %struct.pci_dev, ptr %dev.032, i32 0, i32 51
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %enable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %enable_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i = icmp slt i32 %38, 1
  br i1 %cmp.i, label %if.then3, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  call void @pcibios_setup_bridge(ptr noundef nonnull %33, i32 noundef 8960) #12
  call fastcc void @__pci_setup_bridge(ptr noundef nonnull %33, i32 noundef 8960) #12
  br label %for.inc

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @pci_setup_cardbus(ptr noundef nonnull %33)
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %dev.032, i32 0, i32 44
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %33, i32 0, i32 16
  %39 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %domain_nr.i, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %33, i32 0, i32 12
  %41 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %number, align 4
  %conv8 = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.14, i32 noundef %40, i32 noundef %conv8) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end, %sw.bb5, %if.then3, %sw.bb.for.inc_crit_edge, %pdev_assign_fixed_resources.exit.for.inc_crit_edge
  %43 = ptrtoint ptr %dev.032 to i32
  call void @__asan_load4_noabort(i32 %43)
  %dev.0 = load ptr, ptr %dev.032, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices.i
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %pbus_assign_resources_sorted.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_bus_assign_resources(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pci_bus_assign_resources(ptr noundef %bus, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_bus_claim_resources(ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pci_bus_allocate_resources(ptr noundef %b)
  tail call fastcc void @pci_bus_allocate_dev_resources(ptr noundef %b)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_bus_allocate_resources(ptr noundef %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %self = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 4
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @pci_read_bridge_bases(ptr noundef %b) #12
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self, align 4
  %flags.i = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 13, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.cleanup.i_crit_edge, label %lor.lhs.false.i

if.then.cleanup.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.then
  %parent.i = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 13, i32 5
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i28 = tail call i32 @pci_claim_resource(ptr noundef %3, i32 noundef 13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp2.i29 = icmp eq i32 %call.i28, 0
  br i1 %cmp2.i29, label %if.end.i.cleanup.i_crit_edge, label %if.end4.i34

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end4.i34:                                      ; preds = %if.end.i
  %class.i31 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %class.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %class.i31, align 8
  %shr.mask.i32 = and i32 %9, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 394240, i32 %shr.mask.i32)
  %cmp5.not.i33 = icmp eq i32 %shr.mask.i32, 394240
  br i1 %cmp5.not.i33, label %if.end7.i36, label %if.end4.i34.cleanup.i_crit_edge

if.end4.i34.cleanup.i_crit_edge:                  ; preds = %if.end4.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end7.i36:                                      ; preds = %if.end4.i34
  %call8.i35 = tail call zeroext i1 @pci_bus_clip_resource(ptr noundef %3, i32 noundef 13) #12
  br i1 %call8.i35, label %if.end10.i37, label %if.end7.i36.cleanup.i_crit_edge

if.end7.i36.cleanup.i_crit_edge:                  ; preds = %if.end7.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end10.i37:                                     ; preds = %if.end7.i36
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pci_setup_bridge_io(ptr noundef %3) #12
  %call13.i38 = tail call i32 @pci_claim_resource(ptr noundef %3, i32 noundef 13) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end10.i37, %if.end7.i36.cleanup.i_crit_edge, %if.end4.i34.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %if.then.cleanup.i_crit_edge
  %flags.1.i = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 14, i32 3
  %10 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %lor.lhs.false.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1.i

lor.lhs.false.1.i:                                ; preds = %cleanup.i
  %parent.1.i = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 14, i32 5
  %12 = ptrtoint ptr %parent.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.1.i, align 4
  %tobool1.not.1.i = icmp eq ptr %13, null
  br i1 %tobool1.not.1.i, label %if.end.1.i, label %lor.lhs.false.1.i.cleanup.1.i_crit_edge

lor.lhs.false.1.i.cleanup.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.1.i = tail call i32 @pci_claim_bridge_resource(ptr noundef %3, i32 noundef 14) #12
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %flags.2.i = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 15, i32 3
  %14 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.2.i = icmp eq i32 %15, 0
  br i1 %tobool.not.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %lor.lhs.false.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.i

lor.lhs.false.2.i:                                ; preds = %cleanup.1.i
  %parent.2.i = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 15, i32 5
  %16 = ptrtoint ptr %parent.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.2.i, align 4
  %tobool1.not.2.i = icmp eq ptr %17, null
  br i1 %tobool1.not.2.i, label %if.end.2.i, label %lor.lhs.false.2.i.cleanup.2.i_crit_edge

lor.lhs.false.2.i.cleanup.2.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.i

if.end.2.i:                                       ; preds = %lor.lhs.false.2.i
  %call.i16 = tail call i32 @pci_claim_resource(ptr noundef %3, i32 noundef 15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp2.i17 = icmp eq i32 %call.i16, 0
  br i1 %cmp2.i17, label %if.end.2.i.cleanup.2.i_crit_edge, label %if.end4.i22

if.end.2.i.cleanup.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.i

if.end4.i22:                                      ; preds = %if.end.2.i
  %class.i19 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %class.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %class.i19, align 8
  %shr.mask.i20 = and i32 %19, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 394240, i32 %shr.mask.i20)
  %cmp5.not.i21 = icmp eq i32 %shr.mask.i20, 394240
  br i1 %cmp5.not.i21, label %if.end7.i24, label %if.end4.i22.cleanup.2.i_crit_edge

if.end4.i22.cleanup.2.i_crit_edge:                ; preds = %if.end4.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.i

if.end7.i24:                                      ; preds = %if.end4.i22
  %call8.i23 = tail call zeroext i1 @pci_bus_clip_resource(ptr noundef %3, i32 noundef 15) #12
  br i1 %call8.i23, label %if.end10.i25, label %if.end7.i24.cleanup.2.i_crit_edge

if.end7.i24.cleanup.2.i_crit_edge:                ; preds = %if.end7.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.i

if.end10.i25:                                     ; preds = %if.end7.i24
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pci_setup_bridge_mmio_pref(ptr noundef %3) #12
  %call13.i = tail call i32 @pci_claim_resource(ptr noundef %3, i32 noundef 15) #12
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end10.i25, %if.end7.i24.cleanup.2.i_crit_edge, %if.end4.i22.cleanup.2.i_crit_edge, %if.end.2.i.cleanup.2.i_crit_edge, %lor.lhs.false.2.i.cleanup.2.i_crit_edge, %cleanup.1.i.cleanup.2.i_crit_edge
  %flags.3.i = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 16, i32 3
  %20 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.3.i = icmp eq i32 %21, 0
  br i1 %tobool.not.3.i, label %cleanup.2.i.if.end_crit_edge, label %lor.lhs.false.3.i

cleanup.2.i.if.end_crit_edge:                     ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.3.i:                                ; preds = %cleanup.2.i
  %parent.3.i = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 16, i32 5
  %22 = ptrtoint ptr %parent.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.3.i, align 4
  %tobool1.not.3.i = icmp eq ptr %23, null
  br i1 %tobool1.not.3.i, label %if.end.3.i, label %lor.lhs.false.3.i.if.end_crit_edge

lor.lhs.false.3.i.if.end_crit_edge:               ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.3.i:                                       ; preds = %lor.lhs.false.3.i
  %call.i14 = tail call i32 @pci_claim_resource(ptr noundef %3, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp2.i = icmp eq i32 %call.i14, 0
  br i1 %cmp2.i, label %if.end.3.i.if.end_crit_edge, label %if.end4.i

if.end.3.i.if.end_crit_edge:                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end4.i:                                        ; preds = %if.end.3.i
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %class.i, align 8
  %shr.mask.i = and i32 %25, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 394240, i32 %shr.mask.i)
  %cmp5.not.i = icmp eq i32 %shr.mask.i, 394240
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = tail call zeroext i1 @pci_bus_clip_resource(ptr noundef %3, i32 noundef 16) #12
  br label %if.end

if.end:                                           ; preds = %if.end7.i, %if.end4.i.if.end_crit_edge, %if.end.3.i.if.end_crit_edge, %lor.lhs.false.3.i.if.end_crit_edge, %cleanup.2.i.if.end_crit_edge, %entry.if.end_crit_edge
  %children = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 2
  %26 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %26)
  %child.043 = load ptr, ptr %children, align 4
  %cmp.not44 = icmp eq ptr %child.043, %children
  br i1 %cmp.not44, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %child.045 = phi ptr [ %child.0, %for.body.for.body_crit_edge ], [ %child.043, %if.end.for.body_crit_edge ]
  tail call fastcc void @pci_bus_allocate_resources(ptr noundef %child.045)
  %27 = ptrtoint ptr %child.045 to i32
  call void @__asan_load4_noabort(i32 %27)
  %child.0 = load ptr, ptr %child.045, align 4
  %cmp.not = icmp eq ptr %child.0, %children
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_bus_allocate_dev_resources(ptr noundef readonly %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.pci_bus, ptr %b, i32 0, i32 3
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.012 = load ptr, ptr %devices, align 4
  %cmp.not13 = icmp eq ptr %dev.012, %devices
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  br label %for.body.i.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.i.preheader:                             ; preds = %for.inc.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  %dev.014 = phi ptr [ %dev.0, %for.inc.for.body.i.preheader_crit_edge ], [ %dev.012, %entry.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.07.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %flags.i = getelementptr %struct.pci_dev, ptr %dev.014, i32 0, i32 47, i32 %i.07.i, i32 3
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %lor.lhs.false.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %parent.i = getelementptr %struct.pci_dev, ptr %dev.014, i32 0, i32 47, i32 %i.07.i, i32 5
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @pci_claim_resource(ptr noundef %dev.014, i32 noundef %i.07.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %pci_claim_device_resources.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

pci_claim_device_resources.exit:                  ; preds = %cleanup.i
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev.014, i32 0, i32 2
  %5 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %pci_claim_device_resources.exit.for.inc_crit_edge, label %if.then

pci_claim_device_resources.exit.for.inc_crit_edge: ; preds = %pci_claim_device_resources.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %pci_claim_device_resources.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pci_bus_allocate_dev_resources(ptr noundef nonnull %6)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %pci_claim_device_resources.exit.for.inc_crit_edge
  %7 = ptrtoint ptr %dev.014 to i32
  call void @__asan_load4_noabort(i32 %7)
  %dev.0 = load ptr, ptr %dev.014, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body.i.preheader_crit_edge

for.inc.for.body.i.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pci_realloc_get_opt(ptr nocapture noundef readonly %str) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.16, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4.sink.split_crit_edge, label %if.else

entry.if.end4.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.sink.split

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(3) @.str.17, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else.if.end4.sink.split_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.else.if.end4.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.else.if.end4.sink.split_crit_edge, %entry.if.end4.sink.split_crit_edge
  %.sink = phi i32 [ 0, %entry.if.end4.sink.split_crit_edge ], [ 2, %if.else.if.end4.sink.split_crit_edge ]
  store i32 %.sink, ptr @pci_realloc_enable, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.else.if.end4_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_assign_unassigned_root_bus_resources(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %unassigned.i = alloca i8, align 1
  %realloc_head = alloca %struct.list_head, align 4
  %fail_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %realloc_head) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %realloc_head, i32 0, i32 1
  %1 = ptrtoint ptr %realloc_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %realloc_head, ptr %realloc_head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %realloc_head, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fail_head) #12
  %3 = getelementptr inbounds %struct.list_head, ptr %fail_head, i32 0, i32 1
  %4 = ptrtoint ptr %fail_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fail_head, ptr %fail_head, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fail_head, ptr %3, align 4
  %6 = load i32, ptr @pci_realloc_enable, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unassigned.i) #12
  %7 = ptrtoint ptr %unassigned.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %unassigned.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, -1
  br i1 %cmp.not.i, label %if.end.i, label %pci_realloc_detect.exit

if.end.i:                                         ; preds = %entry
  %call.i = call ptr @pci_find_host_bridge(ptr noundef %bus) #12
  %preserve_config.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %preserve_config.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %preserve_config.i, align 8
  %9 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.pci_realloc_detect.exit.thread_crit_edge

if.end.i.pci_realloc_detect.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_realloc_detect.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  call void @pci_walk_bus(ptr noundef %bus, ptr noundef nonnull @iov_resources_unassigned, ptr noundef nonnull %unassigned.i) #12
  %10 = ptrtoint ptr %unassigned.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %unassigned.i, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %if.end2.i.pci_realloc_detect.exit.thread_crit_edge, label %pci_realloc_detect.exit.thread155

if.end2.i.pci_realloc_detect.exit.thread_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_realloc_detect.exit.thread

pci_realloc_detect.exit.thread155:                ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unassigned.i) #12
  br label %if.then

pci_realloc_detect.exit.thread:                   ; preds = %if.end2.i.pci_realloc_detect.exit.thread_crit_edge, %if.end.i.pci_realloc_detect.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %if.end.i.pci_realloc_detect.exit.thread_crit_edge ], [ -1, %if.end2.i.pci_realloc_detect.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unassigned.i) #12
  br label %if.end

pci_realloc_detect.exit:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unassigned.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp sgt i32 %6, 1
  br i1 %cmp.i, label %pci_realloc_detect.exit.if.then_crit_edge, label %pci_realloc_detect.exit.if.end_crit_edge

pci_realloc_detect.exit.if.end_crit_edge:         ; preds = %pci_realloc_detect.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pci_realloc_detect.exit.if.then_crit_edge:        ; preds = %pci_realloc_detect.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %pci_realloc_detect.exit.if.then_crit_edge, %pci_realloc_detect.exit.thread155
  %retval.0.i158 = phi i32 [ 3, %pci_realloc_detect.exit.thread155 ], [ %6, %pci_realloc_detect.exit.if.then_crit_edge ]
  %call4 = call fastcc i32 @pci_bus_get_depth(ptr noundef %bus)
  %add = add i32 %call4, 1
  %dev = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call4, i32 noundef %add) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %pci_realloc_detect.exit.if.end_crit_edge, %pci_realloc_detect.exit.thread
  %retval.0.i154 = phi i32 [ %retval.0.i158, %if.then ], [ %6, %pci_realloc_detect.exit.if.end_crit_edge ], [ %retval.0.i.ph, %pci_realloc_detect.exit.thread ]
  %pci_try_num.0 = phi i32 [ %add, %if.then ], [ 1, %pci_realloc_detect.exit.if.end_crit_edge ], [ 1, %pci_realloc_detect.exit.thread ]
  %dev50 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %smax = call i32 @llvm.smax.i32(i32 %pci_try_num.0, i32 1)
  %12 = add nsw i32 %smax, -1
  br label %again

again:                                            ; preds = %again.backedge, %if.end
  %rel_type.0 = phi i32 [ 0, %if.end ], [ %spec.select135, %again.backedge ]
  %tried_times.0 = phi i32 [ 0, %if.end ], [ %add5, %again.backedge ]
  %add_list.0 = phi ptr [ null, %if.end ], [ %spec.select, %again.backedge ]
  %add5 = add nuw nsw i32 %tried_times.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %pci_try_num.0)
  %cmp = icmp eq i32 %add5, %pci_try_num.0
  %spec.select = select i1 %cmp, ptr %realloc_head, ptr %add_list.0
  call void @__pci_bus_size_bridges(ptr noundef %bus, ptr noundef %spec.select)
  call void @__pci_bus_assign_resources(ptr noundef %bus, ptr noundef %spec.select, ptr noundef nonnull %fail_head)
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %again.if.end25_crit_edge, label %do.body9

again.if.end25_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.body9:                                         ; preds = %again
  %13 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %spec.select, align 4
  %cmp.i136.not = icmp eq ptr %14, %spec.select
  br i1 %cmp.i136.not, label %do.body9.if.end25_crit_edge, label %do.body16, !prof !165

do.body9.if.end25_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.body16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/setup-bus.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1790, 0\0A.popsection", ""() #12, !srcloc !166
  unreachable

if.end25:                                         ; preds = %do.body9.if.end25_crit_edge, %again.if.end25_crit_edge
  %15 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %fail_head, align 4
  %cmp.i137.not = icmp eq ptr %16, %fail_head
  br i1 %cmp.i137.not, label %if.end25.dump_crit_edge, label %if.end29

if.end25.dump_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %dump

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %tried_times.0, i32 %12)
  %exitcond.not = icmp eq i32 %tried_times.0, %12
  br i1 %exitcond.not, label %if.then31, label %do.end49

if.then31:                                        ; preds = %if.end29
  %17 = zext i32 %retval.0.i154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %retval.0.i154, label %if.then31.if.end45_crit_edge [
    i32 -1, label %if.then31.if.end45.sink.split_crit_edge
    i32 3, label %do.end42
  ]

if.then31.if.end45.sink.split_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.sink.split

if.then31.if.end45_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end42:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %do.end42, %if.then31.if.end45.sink.split_crit_edge
  %.str.24.sink = phi ptr [ @.str.24, %do.end42 ], [ @.str.21, %if.then31.if.end45.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev50, ptr noundef nonnull %.str.24.sink) #15
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.then31.if.end45_crit_edge
  %18 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fail_head, align 4
  %cmp.not18.i = icmp eq ptr %19, %fail_head
  br i1 %cmp.not18.i, label %if.end45.dump_crit_edge, label %if.end45.for.body.i_crit_edge

if.end45.for.body.i_crit_edge:                    ; preds = %if.end45
  br label %for.body.i

if.end45.dump_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %dump

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end45.for.body.i_crit_edge
  %dev_res.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %19, %if.end45.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.0.i = load ptr, ptr %dev_res.019.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_res.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %27 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %dev_res.019.i) #12
  %cmp.not.i139 = icmp eq ptr %tmp.0.i, %fail_head
  br i1 %cmp.not.i139, label %list_del.exit.i.dump_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.dump_crit_edge:                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dump

do.end49:                                         ; preds = %if.end29
  %add51 = add nuw i32 %tried_times.0, 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev50, ptr noundef nonnull @.str.27, i32 noundef %add51) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add51)
  %cmp53 = icmp sgt i32 %add51, 2
  %spec.select135 = select i1 %cmp53, i32 1, i32 %rel_type.0
  %29 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %29)
  %fail_res.0160 = load ptr, ptr %fail_head, align 4
  %cmp57.not161 = icmp eq ptr %fail_res.0160, %fail_head
  br i1 %cmp57.not161, label %do.end49.for.cond71.preheader_crit_edge, label %do.end49.for.body_crit_edge

do.end49.for.body_crit_edge:                      ; preds = %do.end49
  br label %for.body

do.end49.for.cond71.preheader_crit_edge:          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond71.preheader

for.cond71.preheader:                             ; preds = %for.body.for.cond71.preheader_crit_edge, %do.end49.for.cond71.preheader_crit_edge
  %30 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %30)
  %fail_res.1163 = load ptr, ptr %fail_head, align 4
  %cmp73.not164 = icmp eq ptr %fail_res.1163, %fail_head
  br i1 %cmp73.not164, label %for.cond71.preheader.for.end98_crit_edge, label %for.cond71.preheader.for.body76_crit_edge

for.cond71.preheader.for.body76_crit_edge:        ; preds = %for.cond71.preheader
  br label %for.body76

for.cond71.preheader.for.end98_crit_edge:         ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end98

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end49.for.body_crit_edge
  %fail_res.0162 = phi ptr [ %fail_res.0, %for.body.for.body_crit_edge ], [ %fail_res.0160, %do.end49.for.body_crit_edge ]
  %dev60 = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.0162, i32 0, i32 2
  %31 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev60, align 4
  %bus61 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %bus61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus61, align 8
  %flags = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.0162, i32 0, i32 7
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and = and i32 %36, 1057536
  call fastcc void @pci_bus_release_bridge_resources(ptr noundef %34, i32 noundef %and, i32 noundef %spec.select135)
  %37 = ptrtoint ptr %fail_res.0162 to i32
  call void @__asan_load4_noabort(i32 %37)
  %fail_res.0 = load ptr, ptr %fail_res.0162, align 4
  %cmp57.not = icmp eq ptr %fail_res.0, %fail_head
  br i1 %cmp57.not, label %for.body.for.cond71.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.cond71.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond71.preheader

for.body76:                                       ; preds = %if.end91.for.body76_crit_edge, %for.cond71.preheader.for.body76_crit_edge
  %fail_res.1165 = phi ptr [ %fail_res.1, %if.end91.for.body76_crit_edge ], [ %fail_res.1163, %for.cond71.preheader.for.body76_crit_edge ]
  %res77 = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1165, i32 0, i32 1
  %38 = ptrtoint ptr %res77 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %res77, align 4
  %start = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1165, i32 0, i32 3
  %40 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %start, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %39, align 4
  %end = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1165, i32 0, i32 4
  %43 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end, align 4
  %end79 = getelementptr inbounds %struct.resource, ptr %39, i32 0, i32 1
  %45 = ptrtoint ptr %end79 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %end79, align 4
  %flags80 = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1165, i32 0, i32 7
  %46 = ptrtoint ptr %flags80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags80, align 4
  %flags81 = getelementptr inbounds %struct.resource, ptr %39, i32 0, i32 3
  %48 = ptrtoint ptr %flags81 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %flags81, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1165, i32 0, i32 2
  %49 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev82, align 4
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hdr_type.i, align 1
  %53 = add i8 %52, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %54 = icmp ult i8 %53, 2
  br i1 %54, label %if.then84, label %for.body76.if.end91_crit_edge

for.body76.if.end91_crit_edge:                    ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then84:                                        ; preds = %for.body76
  %resource = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 47
  %sub.ptr.lhs.cast = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %resource to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, -385
  %55 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %55)
  %56 = icmp ult i32 %55, 159
  br i1 %56, label %if.then88, label %if.then84.if.end91_crit_edge

if.then84.if.end91_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %flags81 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %flags81, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.then84.if.end91_crit_edge, %for.body76.if.end91_crit_edge
  %58 = ptrtoint ptr %fail_res.1165 to i32
  call void @__asan_load4_noabort(i32 %58)
  %fail_res.1 = load ptr, ptr %fail_res.1165, align 4
  %cmp73.not = icmp eq ptr %fail_res.1, %fail_head
  br i1 %cmp73.not, label %if.end91.for.end98_crit_edge, label %if.end91.for.body76_crit_edge

if.end91.for.body76_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body76

if.end91.for.end98_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end98

for.end98:                                        ; preds = %if.end91.for.end98_crit_edge, %for.cond71.preheader.for.end98_crit_edge
  %59 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fail_head, align 4
  %cmp.not18.i140 = icmp eq ptr %60, %fail_head
  br i1 %cmp.not18.i140, label %for.end98.again.backedge_crit_edge, label %for.end98.for.body.i144_crit_edge

for.end98.for.body.i144_crit_edge:                ; preds = %for.end98
  br label %for.body.i144

for.end98.again.backedge_crit_edge:               ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge

again.backedge:                                   ; preds = %list_del.exit.i150.again.backedge_crit_edge, %for.end98.again.backedge_crit_edge
  br label %again

for.body.i144:                                    ; preds = %list_del.exit.i150.for.body.i144_crit_edge, %for.end98.for.body.i144_crit_edge
  %dev_res.019.i141 = phi ptr [ %tmp.0.i142, %list_del.exit.i150.for.body.i144_crit_edge ], [ %60, %for.end98.for.body.i144_crit_edge ]
  %61 = ptrtoint ptr %dev_res.019.i141 to i32
  call void @__asan_load4_noabort(i32 %61)
  %tmp.0.i142 = load ptr, ptr %dev_res.019.i141, align 4
  %call.i.i.i143 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i141) #12
  br i1 %call.i.i.i143, label %if.end.i.i.i147, label %for.body.i144.list_del.exit.i150_crit_edge

for.body.i144.list_del.exit.i150_crit_edge:       ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i150

if.end.i.i.i147:                                  ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i145 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i141, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i145, align 4
  %64 = ptrtoint ptr %dev_res.019.i141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_res.019.i141, align 4
  %prev1.i.i.i.i146 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i146, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit.i150

list_del.exit.i150:                               ; preds = %if.end.i.i.i147, %for.body.i144.list_del.exit.i150_crit_edge
  %68 = ptrtoint ptr %dev_res.019.i141 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i141, align 4
  %prev.i.i148 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i141, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i148 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i148, align 4
  call void @kfree(ptr noundef %dev_res.019.i141) #12
  %cmp.not.i149 = icmp eq ptr %tmp.0.i142, %fail_head
  br i1 %cmp.not.i149, label %list_del.exit.i150.again.backedge_crit_edge, label %list_del.exit.i150.for.body.i144_crit_edge

list_del.exit.i150.for.body.i144_crit_edge:       ; preds = %list_del.exit.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i144

list_del.exit.i150.again.backedge_crit_edge:      ; preds = %list_del.exit.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge

dump:                                             ; preds = %list_del.exit.i.dump_crit_edge, %if.end45.dump_crit_edge, %if.end25.dump_crit_edge
  call fastcc void @pci_bus_dump_resources(ptr noundef %bus)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fail_head) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %realloc_head) #12
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_bus_get_depth(ptr noundef readonly %bus) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %children = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 2
  %0 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %0)
  %child_bus.014 = load ptr, ptr %children, align 4
  %cmp.not15 = icmp eq ptr %child_bus.014, %children
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %child_bus.017 = phi ptr [ %child_bus.0, %for.body.for.body_crit_edge ], [ %child_bus.014, %entry.for.body_crit_edge ]
  %depth.016 = phi i32 [ %1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @pci_bus_get_depth(ptr noundef %child_bus.017)
  %add = add i32 %call, 1
  %1 = tail call i32 @llvm.smax.i32(i32 %add, i32 %depth.016)
  %2 = ptrtoint ptr %child_bus.017 to i32
  call void @__asan_load4_noabort(i32 %2)
  %child_bus.0 = load ptr, ptr %child_bus.017, align 4
  %cmp.not = icmp eq ptr %child_bus.0, %children
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %depth.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %1, %for.body.for.end_crit_edge ]
  ret i32 %depth.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_list(ptr noundef readonly %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not18 = icmp eq ptr %1, %head
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %dev_res.019 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %dev_res.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %dev_res.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %dev_res.019 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_res.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %dev_res.019 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %dev_res.019) #12
  %cmp.not = icmp eq ptr %tmp.0, %head
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_bus_release_bridge_resources(ptr noundef %bus, i32 noundef %type, i32 noundef %rel_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.042 = load ptr, ptr %devices, align 4
  %cmp.not43 = icmp eq ptr %dev.042, %devices
  br i1 %cmp.not43, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rel_type)
  %cmp5 = icmp eq i32 %rel_type, 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %dev.045 = phi ptr [ %dev.042, %for.body.lr.ph ], [ %dev.0, %cleanup.for.body_crit_edge ]
  %is_leaf_bridge.0.off044 = phi i1 [ true, %for.body.lr.ph ], [ %is_leaf_bridge.1.off0, %cleanup.for.body_crit_edge ]
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev.045, i32 0, i32 2
  %1 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev.045, i32 0, i32 11
  %3 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %class, align 8
  %shr.mask = and i32 %4, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 394240, i32 %shr.mask)
  %cmp2.not = icmp eq i32 %shr.mask, 394240
  %or.cond = and i1 %cmp5, %cmp2.not
  br i1 %or.cond, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pci_bus_release_bridge_resources(ptr noundef nonnull %2, i32 noundef %type, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %is_leaf_bridge.1.off0 = phi i1 [ %is_leaf_bridge.0.off044, %for.body.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.then6 ]
  %5 = ptrtoint ptr %dev.045 to i32
  call void @__asan_load4_noabort(i32 %5)
  %dev.0 = load ptr, ptr %dev.045, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %is_leaf_bridge.0.off0.lcssa = phi i1 [ true, %entry.for.end_crit_edge ], [ %is_leaf_bridge.1.off0, %cleanup.for.end_crit_edge ]
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.end.cleanup24_crit_edge, label %if.end14

for.end.cleanup24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

if.end14:                                         ; preds = %for.end
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %8 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %self, align 4
  %class15 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %class15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %class15, align 8
  %shr16.mask = and i32 %11, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 394240, i32 %shr16.mask)
  %cmp17.not = icmp eq i32 %shr16.mask, 394240
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rel_type)
  %cmp20 = icmp eq i32 %rel_type, 1
  %brmerge = select i1 %cmp20, i1 true, i1 %is_leaf_bridge.0.off0.lcssa
  %or.cond39 = select i1 %cmp17.not, i1 %brmerge, i1 false
  br i1 %or.cond39, label %if.then22, label %if.end14.cleanup24_crit_edge

if.end14.cleanup24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

if.then22:                                        ; preds = %if.end14
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 13
  %and.i = and i32 %type, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i40 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i40, label %if.else.i, label %if.then22.if.end25.i_crit_edge

if.then22.if.end25.i_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.else.i:                                        ; preds = %if.then22
  %and1.i = and i32 %type, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i.if.end25.i_crit_edge, label %if.else4.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.else4.i:                                       ; preds = %if.else.i
  %and5.i = and i32 %type, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else4.i.if.else11.i_crit_edge, label %land.lhs.true.i

if.else4.i.if.else11.i_crit_edge:                 ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

land.lhs.true.i:                                  ; preds = %if.else4.i
  %flags.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 15, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and8.i = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.else11.i_crit_edge, label %land.lhs.true.i.if.end25.i_crit_edge

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

land.lhs.true.i.if.else11.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

if.else11.i:                                      ; preds = %land.lhs.true.i.if.else11.i_crit_edge, %if.else4.i.if.else11.i_crit_edge
  %flags13.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 15, i32 3
  %14 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags13.i, align 4
  %16 = and i32 %15, 1056768
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %16)
  %.not.i = icmp eq i32 %16, 8192
  %spec.select.i = select i1 %.not.i, i32 2, i32 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else11.i, %land.lhs.true.i.if.end25.i_crit_edge, %if.else.i.if.end25.i_crit_edge, %if.then22.if.end25.i_crit_edge
  %idx.0.i = phi i32 [ 0, %if.then22.if.end25.i_crit_edge ], [ 1, %if.else.i.if.end25.i_crit_edge ], [ 2, %land.lhs.true.i.if.end25.i_crit_edge ], [ %spec.select.i, %if.else11.i ]
  %arrayidx26.i = getelementptr %struct.resource, ptr %arrayidx.i, i32 %idx.0.i
  %parent.i41 = getelementptr %struct.resource, ptr %arrayidx.i, i32 %idx.0.i, i32 5
  %17 = ptrtoint ptr %parent.i41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i41, align 4
  %tobool27.not.i = icmp eq ptr %18, null
  br i1 %tobool27.not.i, label %if.end25.i.cleanup24_crit_edge, label %if.end29.i

if.end25.i.cleanup24_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

if.end29.i:                                       ; preds = %if.end25.i
  tail call void @release_child_resources(ptr noundef %arrayidx26.i) #12
  %call.i = tail call i32 @release_resource(ptr noundef %arrayidx26.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end29.i.cleanup24_crit_edge

if.end29.i.cleanup24_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags32.i = getelementptr %struct.resource, ptr %arrayidx.i, i32 %idx.0.i, i32 3
  %19 = ptrtoint ptr %flags32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags32.i, align 4
  %and33.i = and i32 %20, 1057536
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %add.i = add nuw nsw i32 %idx.0.i, 13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34.i, ptr noundef nonnull @.str.60, i32 noundef %add.i, ptr noundef %arrayidx26.i) #15
  %end.i.i = getelementptr %struct.resource, ptr %arrayidx.i, i32 %idx.0.i, i32 1
  %21 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i.i, align 4
  %23 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx26.i, align 4
  %sub.i = sub i32 %22, %24
  store i32 %sub.i, ptr %end.i.i, align 4
  store i32 0, ptr %arrayidx26.i, align 4
  %25 = ptrtoint ptr %flags32.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags32.i, align 4
  %and37.i = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  %spec.store.select.i = select i1 %tobool38.not.i, i32 %and33.i, i32 8192
  tail call fastcc void @__pci_setup_bridge(ptr noundef %bus, i32 noundef %spec.store.select.i) #12
  %26 = ptrtoint ptr %flags32.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and33.i, ptr %flags32.i, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %if.then31.i, %if.end29.i.cleanup24_crit_edge, %if.end25.i.cleanup24_crit_edge, %if.end14.cleanup24_crit_edge, %for.end.cleanup24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_bus_dump_resources(ptr noundef %bus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call12.i = tail call ptr @pci_bus_resource_n(ptr noundef %bus, i32 noundef 0) #12
  %tobool.not13.i = icmp eq ptr %call12.i, null
  %dev.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tobool.not16.i = phi i1 [ %tobool.not13.i, %entry ], [ %tobool.not.i, %for.inc.i.for.body.i_crit_edge ]
  %call15.i = phi ptr [ %call12.i, %entry ], [ %call.i, %for.inc.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not16.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %end.i = getelementptr inbounds %struct.resource, ptr %call15.i, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not.i = icmp eq i32 %1, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.resource, ptr %call15.i, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not.i = icmp eq i32 %3, 0
  br i1 %tobool4.not.i, label %lor.lhs.false3.i.for.inc.i_crit_edge, label %do.end.i

lor.lhs.false3.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end.i:                                         ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.62, i32 noundef %i.014.i, ptr noundef nonnull %call15.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %lor.lhs.false3.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.014.i, 1
  %call.i = tail call ptr @pci_bus_resource_n(ptr noundef %bus, i32 noundef %inc.i) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 3
  %4 = and i1 %cmp.i, %tobool.not.i
  br i1 %4, label %pci_bus_dump_res.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

pci_bus_dump_res.exit:                            ; preds = %for.inc.i
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %dev.012 = load ptr, ptr %devices, align 4
  %cmp.not13 = icmp eq ptr %dev.012, %devices
  br i1 %cmp.not13, label %pci_bus_dump_res.exit.for.end_crit_edge, label %pci_bus_dump_res.exit.for.body_crit_edge

pci_bus_dump_res.exit.for.body_crit_edge:         ; preds = %pci_bus_dump_res.exit
  br label %for.body

pci_bus_dump_res.exit.for.end_crit_edge:          ; preds = %pci_bus_dump_res.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %pci_bus_dump_res.exit.for.body_crit_edge
  %dev.014 = phi ptr [ %dev.0, %for.inc.for.body_crit_edge ], [ %dev.012, %pci_bus_dump_res.exit.for.body_crit_edge ]
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev.014, i32 0, i32 2
  %6 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pci_bus_dump_resources(ptr noundef nonnull %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %dev.014 to i32
  call void @__asan_load4_noabort(i32 %8)
  %dev.0 = load ptr, ptr %dev.014, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %pci_bus_dump_res.exit.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_assign_unassigned_resources() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_root_buses to i32))
  %root_bus.07 = load ptr, ptr @pci_root_buses, align 4
  %cmp.not8 = icmp eq ptr %root_bus.07, @pci_root_buses
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %root_bus.09 = phi ptr [ %root_bus.0, %for.body.for.body_crit_edge ], [ %root_bus.07, %entry.for.body_crit_edge ]
  tail call void @pci_assign_unassigned_root_bus_resources(ptr noundef %root_bus.09)
  %0 = ptrtoint ptr %root_bus.09 to i32
  call void @__asan_load4_noabort(i32 %0)
  %root_bus.0 = load ptr, ptr %root_bus.09, align 4
  %cmp.not = icmp eq ptr %root_bus.0, @pci_root_buses
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_assign_unassigned_bridge_resources(ptr noundef %bridge) #0 align 64 {
entry:
  %add_list = alloca %struct.list_head, align 4
  %fail_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subordinate, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %add_list) #12
  %2 = getelementptr inbounds %struct.list_head, ptr %add_list, i32 0, i32 1
  %3 = ptrtoint ptr %add_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add_list, ptr %add_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add_list, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fail_head) #12
  %5 = getelementptr inbounds %struct.list_head, ptr %fail_head, i32 0, i32 1
  %6 = ptrtoint ptr %fail_head to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fail_head, ptr %fail_head, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fail_head, ptr %5, align 4
  %is_hotplug_bridge.i = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 49
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13
  %available_io.sroa.5.0.arrayidx.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13, i32 1
  %available_io.sroa.7.0.arrayidx.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13, i32 2
  %available_io.sroa.9.0.arrayidx.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13, i32 3
  %available_io.sroa.11.0.arrayidx.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13, i32 4
  %available_io.sroa.13.0.arrayidx.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13, i32 5
  %available_io.sroa.15.0.arrayidx.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13, i32 6
  %available_io.sroa.17.0.arrayidx.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 13, i32 7
  %arrayidx2.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14
  %available_mmio.sroa.5.0.arrayidx2.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14, i32 1
  %available_mmio.sroa.7.0.arrayidx2.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14, i32 2
  %available_mmio.sroa.9.0.arrayidx2.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14, i32 3
  %available_mmio.sroa.11.0.arrayidx2.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14, i32 4
  %available_mmio.sroa.13.0.arrayidx2.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14, i32 5
  %available_mmio.sroa.15.0.arrayidx2.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14, i32 6
  %available_mmio.sroa.17.0.arrayidx2.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 14, i32 7
  %arrayidx4.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15
  %available_mmio_pref.sroa.5.0.arrayidx4.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15, i32 1
  %available_mmio_pref.sroa.7.0.arrayidx4.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15, i32 2
  %available_mmio_pref.sroa.9.0.arrayidx4.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15, i32 3
  %available_mmio_pref.sroa.11.0.arrayidx4.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15, i32 4
  %available_mmio_pref.sroa.13.0.arrayidx4.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15, i32 5
  %available_mmio_pref.sroa.15.0.arrayidx4.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15, i32 6
  %available_mmio_pref.sroa.17.0.arrayidx4.sroa_idx.i = getelementptr %struct.pci_dev, ptr %bridge, i32 0, i32 47, i32 15, i32 7
  br label %again

again:                                            ; preds = %again.backedge, %entry
  %cmp = phi i1 [ false, %entry ], [ true, %again.backedge ]
  call void @__pci_bus_size_bridges(ptr noundef %1, ptr noundef nonnull %add_list)
  %8 = ptrtoint ptr %is_hotplug_bridge.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 5)
  %bf.load.i = load i40, ptr %is_hotplug_bridge.i, align 1
  %9 = and i40 %bf.load.i, 32768
  %tobool.not.i = icmp eq i40 %9, 0
  br i1 %tobool.not.i, label %again.pci_bridge_distribute_available_resources.exit_crit_edge, label %if.end.i

again.pci_bridge_distribute_available_resources.exit_crit_edge: ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_bridge_distribute_available_resources.exit

if.end.i:                                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %available_io.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 8
  %11 = ptrtoint ptr %available_io.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %available_io.sroa.5.0.copyload.i = load i32, ptr %available_io.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %12 = ptrtoint ptr %available_io.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %available_io.sroa.7.0.copyload.i = load ptr, ptr %available_io.sroa.7.0.arrayidx.sroa_idx.i, align 8
  %13 = ptrtoint ptr %available_io.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %available_io.sroa.9.0.copyload.i = load i32, ptr %available_io.sroa.9.0.arrayidx.sroa_idx.i, align 4
  %14 = ptrtoint ptr %available_io.sroa.11.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %available_io.sroa.11.0.copyload.i = load i32, ptr %available_io.sroa.11.0.arrayidx.sroa_idx.i, align 8
  %15 = ptrtoint ptr %available_io.sroa.13.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %available_io.sroa.13.0.copyload.i = load ptr, ptr %available_io.sroa.13.0.arrayidx.sroa_idx.i, align 4
  %16 = ptrtoint ptr %available_io.sroa.15.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %available_io.sroa.15.0.copyload.i = load ptr, ptr %available_io.sroa.15.0.arrayidx.sroa_idx.i, align 8
  %17 = ptrtoint ptr %available_io.sroa.17.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %available_io.sroa.17.0.copyload.i = load ptr, ptr %available_io.sroa.17.0.arrayidx.sroa_idx.i, align 4
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %available_mmio.sroa.0.0.copyload.i = load i32, ptr %arrayidx2.i, align 8
  %19 = ptrtoint ptr %available_mmio.sroa.5.0.arrayidx2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %available_mmio.sroa.5.0.copyload.i = load i32, ptr %available_mmio.sroa.5.0.arrayidx2.sroa_idx.i, align 4
  %20 = ptrtoint ptr %available_mmio.sroa.7.0.arrayidx2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %available_mmio.sroa.7.0.copyload.i = load ptr, ptr %available_mmio.sroa.7.0.arrayidx2.sroa_idx.i, align 8
  %21 = ptrtoint ptr %available_mmio.sroa.9.0.arrayidx2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %available_mmio.sroa.9.0.copyload.i = load i32, ptr %available_mmio.sroa.9.0.arrayidx2.sroa_idx.i, align 4
  %22 = ptrtoint ptr %available_mmio.sroa.11.0.arrayidx2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %available_mmio.sroa.11.0.copyload.i = load i32, ptr %available_mmio.sroa.11.0.arrayidx2.sroa_idx.i, align 8
  %23 = ptrtoint ptr %available_mmio.sroa.13.0.arrayidx2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %available_mmio.sroa.13.0.copyload.i = load ptr, ptr %available_mmio.sroa.13.0.arrayidx2.sroa_idx.i, align 4
  %24 = ptrtoint ptr %available_mmio.sroa.15.0.arrayidx2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %available_mmio.sroa.15.0.copyload.i = load ptr, ptr %available_mmio.sroa.15.0.arrayidx2.sroa_idx.i, align 8
  %25 = ptrtoint ptr %available_mmio.sroa.17.0.arrayidx2.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %available_mmio.sroa.17.0.copyload.i = load ptr, ptr %available_mmio.sroa.17.0.arrayidx2.sroa_idx.i, align 4
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %available_mmio_pref.sroa.0.0.copyload.i = load i32, ptr %arrayidx4.i, align 8
  %27 = ptrtoint ptr %available_mmio_pref.sroa.5.0.arrayidx4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %available_mmio_pref.sroa.5.0.copyload.i = load i32, ptr %available_mmio_pref.sroa.5.0.arrayidx4.sroa_idx.i, align 4
  %28 = ptrtoint ptr %available_mmio_pref.sroa.7.0.arrayidx4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %available_mmio_pref.sroa.7.0.copyload.i = load ptr, ptr %available_mmio_pref.sroa.7.0.arrayidx4.sroa_idx.i, align 8
  %29 = ptrtoint ptr %available_mmio_pref.sroa.9.0.arrayidx4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %available_mmio_pref.sroa.9.0.copyload.i = load i32, ptr %available_mmio_pref.sroa.9.0.arrayidx4.sroa_idx.i, align 4
  %30 = ptrtoint ptr %available_mmio_pref.sroa.11.0.arrayidx4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %available_mmio_pref.sroa.11.0.copyload.i = load i32, ptr %available_mmio_pref.sroa.11.0.arrayidx4.sroa_idx.i, align 8
  %31 = ptrtoint ptr %available_mmio_pref.sroa.13.0.arrayidx4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %available_mmio_pref.sroa.13.0.copyload.i = load ptr, ptr %available_mmio_pref.sroa.13.0.arrayidx4.sroa_idx.i, align 4
  %32 = ptrtoint ptr %available_mmio_pref.sroa.15.0.arrayidx4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %available_mmio_pref.sroa.15.0.copyload.i = load ptr, ptr %available_mmio_pref.sroa.15.0.arrayidx4.sroa_idx.i, align 8
  %33 = ptrtoint ptr %available_mmio_pref.sroa.17.0.arrayidx4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %available_mmio_pref.sroa.17.0.copyload.i = load ptr, ptr %available_mmio_pref.sroa.17.0.arrayidx4.sroa_idx.i, align 4
  %34 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %subordinate, align 4
  %.fca.0.insert15.i = insertvalue [8 x i32] poison, i32 %available_io.sroa.0.0.copyload.i, 0
  %.fca.1.insert16.i = insertvalue [8 x i32] %.fca.0.insert15.i, i32 %available_io.sroa.5.0.copyload.i, 1
  %36 = ptrtoint ptr %available_io.sroa.7.0.copyload.i to i32
  %.fca.2.insert17.i = insertvalue [8 x i32] %.fca.1.insert16.i, i32 %36, 2
  %.fca.3.insert18.i = insertvalue [8 x i32] %.fca.2.insert17.i, i32 %available_io.sroa.9.0.copyload.i, 3
  %.fca.4.insert19.i = insertvalue [8 x i32] %.fca.3.insert18.i, i32 %available_io.sroa.11.0.copyload.i, 4
  %37 = ptrtoint ptr %available_io.sroa.13.0.copyload.i to i32
  %.fca.5.insert20.i = insertvalue [8 x i32] %.fca.4.insert19.i, i32 %37, 5
  %38 = ptrtoint ptr %available_io.sroa.15.0.copyload.i to i32
  %.fca.6.insert21.i = insertvalue [8 x i32] %.fca.5.insert20.i, i32 %38, 6
  %39 = ptrtoint ptr %available_io.sroa.17.0.copyload.i to i32
  %.fca.7.insert22.i = insertvalue [8 x i32] %.fca.6.insert21.i, i32 %39, 7
  %.fca.0.insert7.i = insertvalue [8 x i32] poison, i32 %available_mmio.sroa.0.0.copyload.i, 0
  %.fca.1.insert8.i = insertvalue [8 x i32] %.fca.0.insert7.i, i32 %available_mmio.sroa.5.0.copyload.i, 1
  %40 = ptrtoint ptr %available_mmio.sroa.7.0.copyload.i to i32
  %.fca.2.insert9.i = insertvalue [8 x i32] %.fca.1.insert8.i, i32 %40, 2
  %.fca.3.insert10.i = insertvalue [8 x i32] %.fca.2.insert9.i, i32 %available_mmio.sroa.9.0.copyload.i, 3
  %.fca.4.insert11.i = insertvalue [8 x i32] %.fca.3.insert10.i, i32 %available_mmio.sroa.11.0.copyload.i, 4
  %41 = ptrtoint ptr %available_mmio.sroa.13.0.copyload.i to i32
  %.fca.5.insert12.i = insertvalue [8 x i32] %.fca.4.insert11.i, i32 %41, 5
  %42 = ptrtoint ptr %available_mmio.sroa.15.0.copyload.i to i32
  %.fca.6.insert13.i = insertvalue [8 x i32] %.fca.5.insert12.i, i32 %42, 6
  %43 = ptrtoint ptr %available_mmio.sroa.17.0.copyload.i to i32
  %.fca.7.insert14.i = insertvalue [8 x i32] %.fca.6.insert13.i, i32 %43, 7
  %.fca.0.insert.i = insertvalue [8 x i32] poison, i32 %available_mmio_pref.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue [8 x i32] %.fca.0.insert.i, i32 %available_mmio_pref.sroa.5.0.copyload.i, 1
  %44 = ptrtoint ptr %available_mmio_pref.sroa.7.0.copyload.i to i32
  %.fca.2.insert.i = insertvalue [8 x i32] %.fca.1.insert.i, i32 %44, 2
  %.fca.3.insert.i = insertvalue [8 x i32] %.fca.2.insert.i, i32 %available_mmio_pref.sroa.9.0.copyload.i, 3
  %.fca.4.insert.i = insertvalue [8 x i32] %.fca.3.insert.i, i32 %available_mmio_pref.sroa.11.0.copyload.i, 4
  %45 = ptrtoint ptr %available_mmio_pref.sroa.13.0.copyload.i to i32
  %.fca.5.insert.i = insertvalue [8 x i32] %.fca.4.insert.i, i32 %45, 5
  %46 = ptrtoint ptr %available_mmio_pref.sroa.15.0.copyload.i to i32
  %.fca.6.insert.i = insertvalue [8 x i32] %.fca.5.insert.i, i32 %46, 6
  %47 = ptrtoint ptr %available_mmio_pref.sroa.17.0.copyload.i to i32
  %.fca.7.insert.i = insertvalue [8 x i32] %.fca.6.insert.i, i32 %47, 7
  call fastcc void @pci_bus_distribute_available_resources(ptr noundef %35, ptr noundef nonnull %add_list, [8 x i32] %.fca.7.insert22.i, [8 x i32] %.fca.7.insert14.i, [8 x i32] %.fca.7.insert.i) #12
  br label %pci_bridge_distribute_available_resources.exit

pci_bridge_distribute_available_resources.exit:   ; preds = %if.end.i, %again.pci_bridge_distribute_available_resources.exit_crit_edge
  call fastcc void @__pci_bridge_assign_resources(ptr noundef %bridge, ptr noundef nonnull %add_list, ptr noundef nonnull %fail_head)
  %48 = ptrtoint ptr %add_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %add_list, align 4
  %cmp.i.not = icmp eq ptr %49, %add_list
  br i1 %cmp.i.not, label %do.end11, label %do.body6, !prof !165

do.body6:                                         ; preds = %pci_bridge_distribute_available_resources.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/setup-bus.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2072, 0\0A.popsection", ""() #12, !srcloc !167
  unreachable

do.end11:                                         ; preds = %pci_bridge_distribute_available_resources.exit
  %50 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %fail_head, align 4
  %cmp.i96 = icmp eq ptr %51, %fail_head
  br i1 %cmp.i96, label %do.end11.enable_all_crit_edge, label %if.end15

do.end11.enable_all_crit_edge:                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %enable_all

if.end15:                                         ; preds = %do.end11
  br i1 %cmp, label %if.end15.for.body.i_crit_edge, label %do.end20

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %dev_res.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %51, %if.end15.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %tmp.0.i = load ptr, ptr %dev_res.019.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_res.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %59 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %dev_res.019.i) #12
  %cmp.not.i = icmp eq ptr %tmp.0.i, %fail_head
  br i1 %cmp.not.i, label %list_del.exit.i.enable_all_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.enable_all_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enable_all

do.end20:                                         ; preds = %if.end15
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 2) #15
  %61 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %61)
  %fail_res.0112 = load ptr, ptr %fail_head, align 4
  %cmp24.not113 = icmp eq ptr %fail_res.0112, %fail_head
  br i1 %cmp24.not113, label %do.end20.for.cond36.preheader_crit_edge, label %do.end20.for.body_crit_edge

do.end20.for.body_crit_edge:                      ; preds = %do.end20
  br label %for.body

do.end20.for.cond36.preheader_crit_edge:          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.body.for.cond36.preheader_crit_edge, %do.end20.for.cond36.preheader_crit_edge
  %62 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %62)
  %fail_res.1115 = load ptr, ptr %fail_head, align 4
  %cmp38.not116 = icmp eq ptr %fail_res.1115, %fail_head
  br i1 %cmp38.not116, label %for.cond36.preheader.for.end63_crit_edge, label %for.cond36.preheader.for.body41_crit_edge

for.cond36.preheader.for.body41_crit_edge:        ; preds = %for.cond36.preheader
  br label %for.body41

for.cond36.preheader.for.end63_crit_edge:         ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end20.for.body_crit_edge
  %fail_res.0114 = phi ptr [ %fail_res.0, %for.body.for.body_crit_edge ], [ %fail_res.0112, %do.end20.for.body_crit_edge ]
  %dev = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.0114, i32 0, i32 2
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus, align 8
  %flags = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.0114, i32 0, i32 7
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 4
  %and = and i32 %68, 1057536
  call fastcc void @pci_bus_release_bridge_resources(ptr noundef %66, i32 noundef %and, i32 noundef 1)
  %69 = ptrtoint ptr %fail_res.0114 to i32
  call void @__asan_load4_noabort(i32 %69)
  %fail_res.0 = load ptr, ptr %fail_res.0114, align 4
  %cmp24.not = icmp eq ptr %fail_res.0, %fail_head
  br i1 %cmp24.not, label %for.body.for.cond36.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.cond36.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond36.preheader

for.body41:                                       ; preds = %if.end56.for.body41_crit_edge, %for.cond36.preheader.for.body41_crit_edge
  %fail_res.1117 = phi ptr [ %fail_res.1, %if.end56.for.body41_crit_edge ], [ %fail_res.1115, %for.cond36.preheader.for.body41_crit_edge ]
  %res42 = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1117, i32 0, i32 1
  %70 = ptrtoint ptr %res42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %res42, align 4
  %start = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1117, i32 0, i32 3
  %72 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %start, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %71, align 4
  %end = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1117, i32 0, i32 4
  %75 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %end, align 4
  %end44 = getelementptr inbounds %struct.resource, ptr %71, i32 0, i32 1
  %77 = ptrtoint ptr %end44 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %end44, align 4
  %flags45 = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1117, i32 0, i32 7
  %78 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags45, align 4
  %flags46 = getelementptr inbounds %struct.resource, ptr %71, i32 0, i32 3
  %80 = ptrtoint ptr %flags46 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %flags46, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.1117, i32 0, i32 2
  %81 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev47, align 4
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hdr_type.i, align 1
  %85 = add i8 %84, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %86 = icmp ult i8 %85, 2
  br i1 %86, label %if.then49, label %for.body41.if.end56_crit_edge

for.body41.if.end56_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then49:                                        ; preds = %for.body41
  %resource = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 47
  %sub.ptr.lhs.cast = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %resource to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, -385
  %87 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %87)
  %88 = icmp ult i32 %87, 159
  br i1 %88, label %if.then53, label %if.then49.if.end56_crit_edge

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %flags46 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %flags46, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then49.if.end56_crit_edge, %for.body41.if.end56_crit_edge
  %90 = ptrtoint ptr %fail_res.1117 to i32
  call void @__asan_load4_noabort(i32 %90)
  %fail_res.1 = load ptr, ptr %fail_res.1117, align 4
  %cmp38.not = icmp eq ptr %fail_res.1, %fail_head
  br i1 %cmp38.not, label %if.end56.for.end63_crit_edge, label %if.end56.for.body41_crit_edge

if.end56.for.body41_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body41

if.end56.for.end63_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63

for.end63:                                        ; preds = %if.end56.for.end63_crit_edge, %for.cond36.preheader.for.end63_crit_edge
  %91 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fail_head, align 4
  %cmp.not18.i98 = icmp eq ptr %92, %fail_head
  br i1 %cmp.not18.i98, label %for.end63.again.backedge_crit_edge, label %for.end63.for.body.i102_crit_edge

for.end63.for.body.i102_crit_edge:                ; preds = %for.end63
  br label %for.body.i102

for.end63.again.backedge_crit_edge:               ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge

again.backedge:                                   ; preds = %list_del.exit.i108.again.backedge_crit_edge, %for.end63.again.backedge_crit_edge
  br label %again

for.body.i102:                                    ; preds = %list_del.exit.i108.for.body.i102_crit_edge, %for.end63.for.body.i102_crit_edge
  %dev_res.019.i99 = phi ptr [ %tmp.0.i100, %list_del.exit.i108.for.body.i102_crit_edge ], [ %92, %for.end63.for.body.i102_crit_edge ]
  %93 = ptrtoint ptr %dev_res.019.i99 to i32
  call void @__asan_load4_noabort(i32 %93)
  %tmp.0.i100 = load ptr, ptr %dev_res.019.i99, align 4
  %call.i.i.i101 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i99) #12
  br i1 %call.i.i.i101, label %if.end.i.i.i105, label %for.body.i102.list_del.exit.i108_crit_edge

for.body.i102.list_del.exit.i108_crit_edge:       ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i108

if.end.i.i.i105:                                  ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i103 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i99, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i.i.i103, align 4
  %96 = ptrtoint ptr %dev_res.019.i99 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_res.019.i99, align 4
  %prev1.i.i.i.i104 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev1.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev1.i.i.i.i104, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %97, ptr %95, align 4
  br label %list_del.exit.i108

list_del.exit.i108:                               ; preds = %if.end.i.i.i105, %for.body.i102.list_del.exit.i108_crit_edge
  %100 = ptrtoint ptr %dev_res.019.i99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i99, align 4
  %prev.i.i106 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i99, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i106, align 4
  call void @kfree(ptr noundef %dev_res.019.i99) #12
  %cmp.not.i107 = icmp eq ptr %tmp.0.i100, %fail_head
  br i1 %cmp.not.i107, label %list_del.exit.i108.again.backedge_crit_edge, label %list_del.exit.i108.for.body.i102_crit_edge

list_del.exit.i108.for.body.i102_crit_edge:       ; preds = %list_del.exit.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i102

list_del.exit.i108.again.backedge_crit_edge:      ; preds = %list_del.exit.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge

enable_all:                                       ; preds = %list_del.exit.i.enable_all_crit_edge, %do.end11.enable_all_crit_edge
  %call64 = call i32 @pci_reenable_device(ptr noundef %bridge) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %enable_all.if.end71_crit_edge, label %do.end69

enable_all.if.end71_crit_edge:                    ; preds = %enable_all
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.end69:                                         ; preds = %enable_all
  call void @__sanitizer_cov_trace_pc() #14
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.32, i32 noundef %call64) #15
  br label %if.end71

if.end71:                                         ; preds = %do.end69, %enable_all.if.end71_crit_edge
  call void @pci_set_master(ptr noundef %bridge) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fail_head) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %add_list) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__pci_bridge_assign_resources(ptr noundef %bridge, ptr noundef %add_head, ptr noundef %fail_head) unnamed_addr #0 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  call fastcc void @__dev_sort_resources(ptr noundef %bridge, ptr noundef nonnull %head.i) #12
  call fastcc void @__assign_resources_sorted(ptr noundef nonnull %head.i, ptr noundef %add_head, ptr noundef %fail_head) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #12
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 2
  %3 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__pci_bus_assign_resources(ptr noundef nonnull %4, ptr noundef %add_head, ptr noundef %fail_head)
  %class = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 11
  %5 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %class, align 8
  %shr = lshr i32 %6, 8
  %7 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %shr, label %do.end [
    i32 1540, label %sw.bb
    i32 1543, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @pcibios_setup_bridge(ptr noundef nonnull %4, i32 noundef 8960) #12
  call fastcc void @__pci_setup_bridge(ptr noundef nonnull %4, i32 noundef 8960) #12
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @pci_setup_cardbus(ptr noundef nonnull %4)
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 44
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 16
  %8 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %domain_nr.i, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 4
  %conv = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %9, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reenable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_reassign_bridge_resources(ptr noundef %bridge, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %saved = alloca %struct.list_head, align 4
  %added = alloca %struct.list_head, align 4
  %failed = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %saved) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %saved, i32 0, i32 1
  %1 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %saved, ptr %saved, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %saved, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %added) #12
  %3 = getelementptr inbounds %struct.list_head, ptr %added, i32 0, i32 1
  %4 = ptrtoint ptr %added to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %added, ptr %added, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %added, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %failed) #12
  %6 = getelementptr inbounds %struct.list_head, ptr %failed, i32 0, i32 1
  %7 = ptrtoint ptr %failed to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %failed, ptr %failed, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %failed, ptr %6, align 4
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %do.body

do.body:                                          ; preds = %cond.end.do.body_crit_edge, %entry
  %next.0 = phi ptr [ %bridge, %entry ], [ %48, %cond.end.do.body_crit_edge ]
  %flags = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 13, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %xor = xor i32 %10, %type
  %and = and i32 %xor, 1057536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body.for.inc_crit_edge

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %do.body
  %child = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 13, i32 7
  %11 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %child, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %if.end.2.if.end8_crit_edge, %if.end.1.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %i.0212.lcssa = phi i32 [ 13, %if.end.if.end8_crit_edge ], [ 14, %if.end.1.if.end8_crit_edge ], [ 15, %if.end.2.if.end8_crit_edge ]
  %arrayidx.le = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 %i.0212.lcssa
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.cleanup68_crit_edge, label %if.end.i

if.end8.cleanup68_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

if.end.i:                                         ; preds = %if.end8
  %res1.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %res1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.le, ptr %res1.i, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %next.0, ptr %dev2.i, align 4
  %16 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.le, align 4
  %start3.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %start3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %start3.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 %i.0212.lcssa, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %end4.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %end4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %end4.i, align 4
  %flags.i = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 %i.0212.lcssa, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %flags5.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %flags5.i, align 8
  %add_size6.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %add_size6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %add_size6.i, align 8
  %min_align7.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %min_align7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %min_align7.i, align 4
  %27 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %saved, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %saved, ptr noundef %28) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %saved, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i, ptr %saved, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.i.i.i, %if.end.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %next.0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %i.0212.lcssa, ptr noundef %arrayidx.le) #15
  %parent = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 %i.0212.lcssa, i32 5
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent, align 4
  %tobool13.not = icmp eq ptr %34, null
  br i1 %tobool13.not, label %do.end.if.end19_crit_edge, label %if.then14

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = call i32 @release_resource(ptr noundef %arrayidx.le) #12
  br label %if.end19

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %do.body.for.inc_crit_edge
  %flags.1 = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 14, i32 3
  %35 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.1, align 4
  %xor.1 = xor i32 %36, %type
  %and.1 = and i32 %xor.1, 1057536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %child.1 = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 14, i32 7
  %37 = ptrtoint ptr %child.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %child.1, align 4
  %tobool6.not.1 = icmp eq ptr %38, null
  br i1 %tobool6.not.1, label %if.end.1.if.end8_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1.if.end8_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %flags.2 = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 15, i32 3
  %39 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.2, align 4
  %xor.2 = xor i32 %40, %type
  %and.2 = and i32 %xor.2, 1057536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.inc.1.do.end24_crit_edge

for.inc.1.do.end24_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

if.end.2:                                         ; preds = %for.inc.1
  %child.2 = getelementptr %struct.pci_dev, ptr %next.0, i32 0, i32 47, i32 15, i32 7
  %41 = ptrtoint ptr %child.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %child.2, align 4
  %tobool6.not.2 = icmp eq ptr %42, null
  br i1 %tobool6.not.2, label %if.end.2.if.end8_crit_edge, label %if.end.2.do.end24_crit_edge

if.end.2.do.end24_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

if.end.2.if.end8_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end19:                                         ; preds = %if.then14, %do.end.if.end19_crit_edge
  %43 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx.le, align 4
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %end.i, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %next.0, i32 0, i32 1
  %45 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus, align 8
  %tobool20.not = icmp eq ptr %46, null
  br i1 %tobool20.not, label %if.end19.do.end24_crit_edge, label %cond.end

if.end19.do.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

cond.end:                                         ; preds = %if.end19
  %self = getelementptr inbounds %struct.pci_bus, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %self, align 4
  %tobool23.not = icmp eq ptr %48, null
  br i1 %tobool23.not, label %cond.end.do.end24_crit_edge, label %cond.end.do.body_crit_edge

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

cond.end.do.end24_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

do.end24:                                         ; preds = %cond.end.do.end24_crit_edge, %if.end19.do.end24_crit_edge, %if.end.2.do.end24_crit_edge, %for.inc.1.do.end24_crit_edge
  %49 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %saved, align 4
  %cmp.i.not = icmp eq ptr %50, %saved
  br i1 %cmp.i.not, label %do.end24.cleanup123_crit_edge, label %if.end28

do.end24.cleanup123_crit_edge:                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup123

if.end28:                                         ; preds = %do.end24
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %next.0, i32 0, i32 2
  %51 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %subordinate, align 4
  call void @__pci_bus_size_bridges(ptr noundef %52, ptr noundef nonnull %added)
  call fastcc void @__pci_bridge_assign_resources(ptr noundef %next.0, ptr noundef nonnull %added, ptr noundef nonnull %failed)
  %53 = ptrtoint ptr %added to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %added, align 4
  %cmp.i178.not = icmp eq ptr %54, %added
  br i1 %cmp.i178.not, label %do.end44, label %do.body36, !prof !165

do.body36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/setup-bus.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2177, 0\0A.popsection", ""() #12, !srcloc !168
  unreachable

do.end44:                                         ; preds = %if.end28
  %55 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %failed, align 4
  %cmp.i180.not = icmp eq ptr %56, %failed
  br i1 %cmp.i180.not, label %for.cond50.preheader, label %do.end44.cleanup68_crit_edge

do.end44.cleanup68_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

for.cond50.preheader:                             ; preds = %do.end44
  %57 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %57)
  %dev_res.0214 = load ptr, ptr %saved, align 4
  %cmp51.not215 = icmp eq ptr %dev_res.0214, %saved
  br i1 %cmp51.not215, label %for.cond50.preheader.for.end67_crit_edge, label %for.cond50.preheader.for.body54_crit_edge

for.cond50.preheader.for.body54_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body54

for.cond50.preheader.for.end67_crit_edge:         ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end67

for.body54:                                       ; preds = %for.inc61.for.body54_crit_edge, %for.cond50.preheader.for.body54_crit_edge
  %dev_res.0217 = phi ptr [ %dev_res.0, %for.inc61.for.body54_crit_edge ], [ %dev_res.0214, %for.cond50.preheader.for.body54_crit_edge ]
  %bridge.addr.0216 = phi ptr [ %bridge.addr.1, %for.inc61.for.body54_crit_edge ], [ %next.0, %for.cond50.preheader.for.body54_crit_edge ]
  %dev55 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0217, i32 0, i32 2
  %58 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev55, align 4
  %cmp56 = icmp eq ptr %bridge.addr.0216, %59
  br i1 %cmp56, label %for.body54.for.inc61_crit_edge, label %if.end58

for.body54.for.inc61_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc61

if.end58:                                         ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #14
  %subordinate60 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %subordinate60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %subordinate60, align 4
  call void @pcibios_setup_bridge(ptr noundef %61, i32 noundef 8960) #12
  call fastcc void @__pci_setup_bridge(ptr noundef %61, i32 noundef 8960) #12
  br label %for.inc61

for.inc61:                                        ; preds = %if.end58, %for.body54.for.inc61_crit_edge
  %bridge.addr.1 = phi ptr [ %bridge.addr.0216, %for.body54.for.inc61_crit_edge ], [ %59, %if.end58 ]
  %62 = ptrtoint ptr %dev_res.0217 to i32
  call void @__asan_load4_noabort(i32 %62)
  %dev_res.0 = load ptr, ptr %dev_res.0217, align 4
  %cmp51.not = icmp eq ptr %dev_res.0, %saved
  br i1 %cmp51.not, label %for.inc61.for.end67_crit_edge, label %for.inc61.for.body54_crit_edge

for.inc61.for.body54_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body54

for.inc61.for.end67_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end67

for.end67:                                        ; preds = %for.inc61.for.end67_crit_edge, %for.cond50.preheader.for.end67_crit_edge
  call fastcc void @free_list(ptr noundef nonnull %saved)
  br label %cleanup123

cleanup68:                                        ; preds = %do.end44.cleanup68_crit_edge, %if.end8.cleanup68_crit_edge
  %ret.4 = phi i32 [ -28, %do.end44.cleanup68_crit_edge ], [ -12, %if.end8.cleanup68_crit_edge ]
  %63 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %63)
  %dev_res.1218 = load ptr, ptr %failed, align 4
  %cmp75.not219 = icmp eq ptr %dev_res.1218, %failed
  br i1 %cmp75.not219, label %cleanup68.for.end93_crit_edge, label %cleanup68.for.body78_crit_edge

cleanup68.for.body78_crit_edge:                   ; preds = %cleanup68
  br label %for.body78

cleanup68.for.end93_crit_edge:                    ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end93

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %cleanup68.for.body78_crit_edge
  %dev_res.1220 = phi ptr [ %dev_res.1, %for.body78.for.body78_crit_edge ], [ %dev_res.1218, %cleanup68.for.body78_crit_edge ]
  %res80 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.1220, i32 0, i32 1
  %64 = ptrtoint ptr %res80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %res80, align 4
  %start81 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.1220, i32 0, i32 3
  %66 = ptrtoint ptr %start81 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %start81, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %65, align 4
  %end83 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.1220, i32 0, i32 4
  %69 = ptrtoint ptr %end83 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %end83, align 4
  %end84 = getelementptr inbounds %struct.resource, ptr %65, i32 0, i32 1
  %71 = ptrtoint ptr %end84 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %end84, align 4
  %flags85 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.1220, i32 0, i32 7
  %72 = ptrtoint ptr %flags85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags85, align 4
  %flags86 = getelementptr inbounds %struct.resource, ptr %65, i32 0, i32 3
  %74 = ptrtoint ptr %flags86 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %flags86, align 4
  %75 = ptrtoint ptr %dev_res.1220 to i32
  call void @__asan_load4_noabort(i32 %75)
  %dev_res.1 = load ptr, ptr %dev_res.1220, align 4
  %cmp75.not = icmp eq ptr %dev_res.1, %failed
  br i1 %cmp75.not, label %for.body78.for.end93_crit_edge, label %for.body78.for.body78_crit_edge

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body78

for.body78.for.end93_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end93

for.end93:                                        ; preds = %for.body78.for.end93_crit_edge, %cleanup68.for.end93_crit_edge
  %76 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %failed, align 4
  %cmp.not18.i = icmp eq ptr %77, %failed
  br i1 %cmp.not18.i, label %for.end93.free_list.exit_crit_edge, label %for.end93.for.body.i_crit_edge

for.end93.for.body.i_crit_edge:                   ; preds = %for.end93
  br label %for.body.i

for.end93.free_list.exit_crit_edge:               ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.end93.for.body.i_crit_edge
  %dev_res.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %77, %for.end93.for.body.i_crit_edge ]
  %78 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %tmp.0.i = load ptr, ptr %dev_res.019.i, align 4
  %call.i.i.i182 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i) #12
  br i1 %call.i.i.i182, label %if.end.i.i.i183, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i183:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i, align 4
  %81 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_res.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i183, %for.body.i.list_del.exit.i_crit_edge
  %85 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %dev_res.019.i) #12
  %cmp.not.i = icmp eq ptr %tmp.0.i, %failed
  br i1 %cmp.not.i, label %list_del.exit.i.free_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.free_list.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_list.exit

free_list.exit:                                   ; preds = %list_del.exit.i.free_list.exit_crit_edge, %for.end93.free_list.exit_crit_edge
  %87 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %87)
  %dev_res.2221 = load ptr, ptr %saved, align 4
  %cmp100.not222 = icmp eq ptr %dev_res.2221, %saved
  br i1 %cmp100.not222, label %free_list.exit.for.end122_crit_edge, label %free_list.exit.for.body103_crit_edge

free_list.exit.for.body103_crit_edge:             ; preds = %free_list.exit
  br label %for.body103

free_list.exit.for.end122_crit_edge:              ; preds = %free_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end122

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %free_list.exit.for.body103_crit_edge
  %dev_res.2223 = phi ptr [ %dev_res.2, %for.body103.for.body103_crit_edge ], [ %dev_res.2221, %free_list.exit.for.body103_crit_edge ]
  %res105 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.2223, i32 0, i32 1
  %88 = ptrtoint ptr %res105 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %res105, align 4
  %dev106 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.2223, i32 0, i32 2
  %90 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev106, align 4
  %resource107 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 47
  %sub.ptr.lhs.cast = ptrtoint ptr %89 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %resource107 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 5
  %start108 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.2223, i32 0, i32 3
  %92 = ptrtoint ptr %start108 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %start108, align 4
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %89, align 4
  %end110 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.2223, i32 0, i32 4
  %95 = ptrtoint ptr %end110 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %end110, align 4
  %end111 = getelementptr inbounds %struct.resource, ptr %89, i32 0, i32 1
  %97 = ptrtoint ptr %end111 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %end111, align 4
  %flags112 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.2223, i32 0, i32 7
  %98 = ptrtoint ptr %flags112 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags112, align 4
  %flags113 = getelementptr inbounds %struct.resource, ptr %89, i32 0, i32 3
  %100 = ptrtoint ptr %flags113 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %flags113, align 4
  %call114 = call i32 @pci_claim_resource(ptr noundef %91, i32 noundef %sub.ptr.div) #12
  %subordinate115 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 2
  %101 = ptrtoint ptr %subordinate115 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %subordinate115, align 4
  call void @pcibios_setup_bridge(ptr noundef %102, i32 noundef 8960) #12
  call fastcc void @__pci_setup_bridge(ptr noundef %102, i32 noundef 8960) #12
  %103 = ptrtoint ptr %dev_res.2223 to i32
  call void @__asan_load4_noabort(i32 %103)
  %dev_res.2 = load ptr, ptr %dev_res.2223, align 4
  %cmp100.not = icmp eq ptr %dev_res.2, %saved
  br i1 %cmp100.not, label %for.body103.for.end122_crit_edge, label %for.body103.for.body103_crit_edge

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body103

for.body103.for.end122_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end122

for.end122:                                       ; preds = %for.body103.for.end122_crit_edge, %free_list.exit.for.end122_crit_edge
  %104 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %saved, align 4
  %cmp.not18.i184 = icmp eq ptr %105, %saved
  br i1 %cmp.not18.i184, label %for.end122.cleanup123_crit_edge, label %for.end122.for.body.i188_crit_edge

for.end122.for.body.i188_crit_edge:               ; preds = %for.end122
  br label %for.body.i188

for.end122.cleanup123_crit_edge:                  ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup123

for.body.i188:                                    ; preds = %list_del.exit.i194.for.body.i188_crit_edge, %for.end122.for.body.i188_crit_edge
  %dev_res.019.i185 = phi ptr [ %tmp.0.i186, %list_del.exit.i194.for.body.i188_crit_edge ], [ %105, %for.end122.for.body.i188_crit_edge ]
  %106 = ptrtoint ptr %dev_res.019.i185 to i32
  call void @__asan_load4_noabort(i32 %106)
  %tmp.0.i186 = load ptr, ptr %dev_res.019.i185, align 4
  %call.i.i.i187 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i185) #12
  br i1 %call.i.i.i187, label %if.end.i.i.i191, label %for.body.i188.list_del.exit.i194_crit_edge

for.body.i188.list_del.exit.i194_crit_edge:       ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i194

if.end.i.i.i191:                                  ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i189 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i185, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i.i189, align 4
  %109 = ptrtoint ptr %dev_res.019.i185 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_res.019.i185, align 4
  %prev1.i.i.i.i190 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %prev1.i.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev1.i.i.i.i190, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %110, ptr %108, align 4
  br label %list_del.exit.i194

list_del.exit.i194:                               ; preds = %if.end.i.i.i191, %for.body.i188.list_del.exit.i194_crit_edge
  %113 = ptrtoint ptr %dev_res.019.i185 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i185, align 4
  %prev.i.i192 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i185, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i192 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i192, align 4
  call void @kfree(ptr noundef %dev_res.019.i185) #12
  %cmp.not.i193 = icmp eq ptr %tmp.0.i186, %saved
  br i1 %cmp.not.i193, label %list_del.exit.i194.cleanup123_crit_edge, label %list_del.exit.i194.for.body.i188_crit_edge

list_del.exit.i194.for.body.i188_crit_edge:       ; preds = %list_del.exit.i194
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i188

list_del.exit.i194.cleanup123_crit_edge:          ; preds = %list_del.exit.i194
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup123

cleanup123:                                       ; preds = %list_del.exit.i194.cleanup123_crit_edge, %for.end122.cleanup123_crit_edge, %for.end67, %do.end24.cleanup123_crit_edge
  %retval.0 = phi i32 [ 0, %for.end67 ], [ -2, %do.end24.cleanup123_crit_edge ], [ %ret.4, %for.end122.cleanup123_crit_edge ], [ %ret.4, %list_del.exit.i194.cleanup123_crit_edge ]
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %failed) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %added) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %saved) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_to_list(ptr noundef %head, ptr noundef %dev, ptr noundef %res, i32 noundef %add_size, i32 noundef %min_align) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %res1 = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %res1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %res, ptr %res1, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  %start3 = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %start3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %start3, align 8
  %end = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  %end4 = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %end4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %end4, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %flags5 = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flags5, align 8
  %add_size6 = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %add_size6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add_size, ptr %add_size6, align 8
  %min_align7 = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %min_align7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %min_align, ptr %min_align7, align 4
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %head, ptr noundef %15) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %head, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i, ptr %head, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_assign_unassigned_bus_resources(ptr noundef %bus) #0 align 64 {
entry:
  %add_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %add_list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %add_list, i32 0, i32 1
  %1 = ptrtoint ptr %add_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add_list, ptr %add_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add_list, ptr %0, align 4
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %3 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %dev.030 = load ptr, ptr %devices, align 4
  %cmp.not31 = icmp eq ptr %dev.030, %devices
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.032 = phi ptr [ %dev.0, %for.inc.for.body_crit_edge ], [ %dev.030, %entry.for.body_crit_edge ]
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %dev.032, i32 0, i32 13
  %4 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr_type.i, align 1
  %6 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %if.else, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %for.body
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %dev.032, i32 0, i32 2
  %8 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subordinate.i, align 4
  %tobool.i.not = icmp eq ptr %9, null
  br i1 %tobool.i.not, label %if.else.for.inc_crit_edge, label %if.then4

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__pci_bus_size_bridges(ptr noundef nonnull %9, ptr noundef nonnull %add_list)
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %dev.032 to i32
  call void @__asan_load4_noabort(i32 %10)
  %dev.0 = load ptr, ptr %dev.032, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  call void @__pci_bus_assign_resources(ptr noundef %bus, ptr noundef nonnull %add_list, ptr noundef null)
  %11 = ptrtoint ptr %add_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %add_list, align 4
  %cmp.i.not = icmp eq ptr %12, %add_list
  br i1 %cmp.i.not, label %do.end23, label %do.body17, !prof !165

do.body17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/setup-bus.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2240, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

do.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %add_list) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_sriov_resource_alignment(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_alignment(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dev_sort_resources(ptr noundef %dev, ptr noundef %head) unnamed_addr #0 align 64 {
entry:
  %command = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %class1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %class1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class1, align 8
  %shr = lshr i32 %1, 8
  %trunc = trunc i32 %shr to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %trunc, label %entry.if.end14_crit_edge [
    i16 0, label %entry.cleanup15_crit_edge
    i16 1536, label %entry.cleanup15_crit_edge22
    i16 2048, label %if.then10
  ]

entry.cleanup15_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command) #12
  %3 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %command, align 2, !annotation !162
  %call = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %command) #12
  %4 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %command, align 2
  %6 = and i16 %5, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command) #12
  br i1 %tobool.not, label %if.then10.if.end14_crit_edge, label %if.then10.cleanup15_crit_edge

if.then10.cleanup15_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %if.then10.if.end14_crit_edge, %entry.if.end14_crit_edge
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup32.i.for.body.i_crit_edge, %if.end14
  %i.089.i = phi i32 [ 0, %if.end14 ], [ %inc.i, %cleanup32.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %i.089.i
  %flags.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %i.089.i, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i = icmp eq i32 %8, 0
  %or.cond.i = or i1 %tobool2.not.i, %tobool.not.i
  br i1 %or.cond.i, label %for.body.i.cleanup32.i_crit_edge, label %lor.lhs.false.i

for.body.i.cleanup32.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %parent.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %i.089.i, i32 5
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %if.end5.i, label %lor.lhs.false.i.cleanup32.i_crit_edge

lor.lhs.false.i.cleanup32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32.i

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %arrayidx.idx.i = shl i32 %i.089.i, 5
  %11 = add nsw i32 %arrayidx.idx.i, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %11)
  %12 = icmp ult i32 %11, 223
  br i1 %12, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 @pci_sriov_resource_alignment(ptr noundef %dev, i32 noundef %i.089.i) #12
  br label %pci_resource_alignment.exit.i

if.end.i.i:                                       ; preds = %if.end5.i
  %13 = ptrtoint ptr %class1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %class1, align 8
  %shr.mask.i.i = and i32 %14, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i.i)
  %cmp2.i.i = icmp eq i32 %shr.mask.i.i, 395008
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %and.i.i.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then3.i.i.return.sink.split.i.i.i_crit_edge

if.then3.i.i.return.sink.split.i.i.i_crit_edge:   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i.i

if.end.i.i.i:                                     ; preds = %if.then3.i.i
  %and2.i.i.i = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.do.end.i_crit_edge, label %if.end.i.i.i.return.sink.split.i.i.i_crit_edge

if.end.i.i.i.return.sink.split.i.i.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i.i

if.end.i.i.i.do.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

return.sink.split.i.i.i:                          ; preds = %if.end.i.i.i.return.sink.split.i.i.i_crit_edge, %if.then3.i.i.return.sink.split.i.i.i_crit_edge
  %pci_cardbus_mem_size.sink.i.i.i = phi ptr [ @pci_cardbus_io_size, %if.then3.i.i.return.sink.split.i.i.i_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i.i.return.sink.split.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pci_cardbus_mem_size.sink.i.i.i, align 4
  br label %pci_resource_alignment.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call i32 @resource_alignment(ptr noundef %arrayidx.i) #12
  br label %pci_resource_alignment.exit.i

pci_resource_alignment.exit.i:                    ; preds = %if.end5.i.i, %return.sink.split.i.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call6.i.i, %if.end5.i.i ], [ %16, %return.sink.split.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool6.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool6.not.i, label %pci_resource_alignment.exit.i.do.end.i_crit_edge, label %if.end9.i

pci_resource_alignment.exit.i.do.end.i_crit_edge: ; preds = %pci_resource_alignment.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %pci_resource_alignment.exit.i.do.end.i_crit_edge, %if.end.i.i.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i, ptr noundef nonnull @.str.55, i32 noundef %i.089.i, ptr noundef %arrayidx.i) #15
  br label %cleanup32.i

if.end9.i:                                        ; preds = %pci_resource_alignment.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 36) #16
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56) #17
  unreachable

if.end13.i:                                       ; preds = %if.end9.i
  %res.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.i, ptr %res.i, align 8
  %dev14.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %dev14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev14.i, align 4
  br label %for.cond16.i

for.cond16.i:                                     ; preds = %pci_resource_alignment.exit85.i.for.cond16.i_crit_edge, %if.end13.i
  %dev_res.0.in.i = phi ptr [ %head, %if.end13.i ], [ %dev_res.0.i, %pci_resource_alignment.exit85.i.for.cond16.i_crit_edge ]
  %20 = ptrtoint ptr %dev_res.0.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %dev_res.0.i = load ptr, ptr %dev_res.0.in.i, align 4
  %cmp17.not.i = icmp eq ptr %dev_res.0.i, %head
  br i1 %cmp17.not.i, label %for.cond16.i.for.end.i_crit_edge, label %for.body18.i

for.cond16.i.for.end.i_crit_edge:                 ; preds = %for.cond16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body18.i:                                     ; preds = %for.cond16.i
  %dev19.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev19.i, align 4
  %res20.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %res20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res20.i, align 4
  %resource.i62.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47
  %sub.ptr.lhs.cast.i63.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i64.i = ptrtoint ptr %resource.i62.i to i32
  %sub.ptr.sub.i65.i = sub i32 %sub.ptr.lhs.cast.i63.i, %sub.ptr.rhs.cast.i64.i
  %25 = add i32 %sub.ptr.sub.i65.i, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %25)
  %26 = icmp ult i32 %25, 223
  br i1 %26, label %if.then.i68.i, label %if.end.i72.i

if.then.i68.i:                                    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.div13.i66.i = lshr exact i32 %sub.ptr.sub.i65.i, 5
  %call.i67.i = call i32 @pci_sriov_resource_alignment(ptr noundef %22, i32 noundef %sub.ptr.div13.i66.i) #12
  br label %pci_resource_alignment.exit85.i

if.end.i72.i:                                     ; preds = %for.body18.i
  %class.i69.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 11
  %27 = ptrtoint ptr %class.i69.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %class.i69.i, align 8
  %shr.mask.i70.i = and i32 %28, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i70.i)
  %cmp2.i71.i = icmp eq i32 %shr.mask.i70.i, 395008
  br i1 %cmp2.i71.i, label %if.then3.i76.i, label %if.end5.i83.i

if.then3.i76.i:                                   ; preds = %if.end.i72.i
  %flags.i.i73.i = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i73.i, align 4
  %and.i.i74.i = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74.i)
  %tobool.not.i.i75.i = icmp eq i32 %and.i.i74.i, 0
  br i1 %tobool.not.i.i75.i, label %if.end.i.i79.i, label %if.then3.i76.i.return.sink.split.i.i81.i_crit_edge

if.then3.i76.i.return.sink.split.i.i81.i_crit_edge: ; preds = %if.then3.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i81.i

if.end.i.i79.i:                                   ; preds = %if.then3.i76.i
  %and2.i.i77.i = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i77.i)
  %tobool3.not.i.i78.i = icmp eq i32 %and2.i.i77.i, 0
  br i1 %tobool3.not.i.i78.i, label %if.end.i.i79.i.pci_resource_alignment.exit85.i_crit_edge, label %if.end.i.i79.i.return.sink.split.i.i81.i_crit_edge

if.end.i.i79.i.return.sink.split.i.i81.i_crit_edge: ; preds = %if.end.i.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i81.i

if.end.i.i79.i.pci_resource_alignment.exit85.i_crit_edge: ; preds = %if.end.i.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_resource_alignment.exit85.i

return.sink.split.i.i81.i:                        ; preds = %if.end.i.i79.i.return.sink.split.i.i81.i_crit_edge, %if.then3.i76.i.return.sink.split.i.i81.i_crit_edge
  %pci_cardbus_mem_size.sink.i.i80.i = phi ptr [ @pci_cardbus_io_size, %if.then3.i76.i.return.sink.split.i.i81.i_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i79.i.return.sink.split.i.i81.i_crit_edge ]
  %31 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pci_cardbus_mem_size.sink.i.i80.i, align 4
  br label %pci_resource_alignment.exit85.i

if.end5.i83.i:                                    ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i82.i = call i32 @resource_alignment(ptr noundef %24) #12
  br label %pci_resource_alignment.exit85.i

pci_resource_alignment.exit85.i:                  ; preds = %if.end5.i83.i, %return.sink.split.i.i81.i, %if.end.i.i79.i.pci_resource_alignment.exit85.i_crit_edge, %if.then.i68.i
  %retval.0.i84.i = phi i32 [ %call.i67.i, %if.then.i68.i ], [ %call6.i82.i, %if.end5.i83.i ], [ 0, %if.end.i.i79.i.pci_resource_alignment.exit85.i_crit_edge ], [ %32, %return.sink.split.i.i81.i ]
  %cmp22.i = icmp ugt i32 %retval.0.i.i, %retval.0.i84.i
  br i1 %cmp22.i, label %pci_resource_alignment.exit85.i.for.end.i_crit_edge, label %pci_resource_alignment.exit85.i.for.cond16.i_crit_edge

pci_resource_alignment.exit85.i.for.cond16.i_crit_edge: ; preds = %pci_resource_alignment.exit85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond16.i

pci_resource_alignment.exit85.i.for.end.i_crit_edge: ; preds = %pci_resource_alignment.exit85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %pci_resource_alignment.exit85.i.for.end.i_crit_edge, %for.cond16.i.for.end.i_crit_edge
  %n.2.i = phi ptr [ %dev_res.0.i, %pci_resource_alignment.exit85.i.for.end.i_crit_edge ], [ %head, %for.cond16.i.for.end.i_crit_edge ]
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %n.2.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %34, ptr noundef %n.2.i) #12
  br i1 %call.i.i.i, label %if.end.i.i86.i, label %for.end.i.cleanup32.i_crit_edge

for.end.i.cleanup32.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32.i

if.end.i.i86.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %n.2.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i.i, ptr %34, align 4
  br label %cleanup32.i

cleanup32.i:                                      ; preds = %if.end.i.i86.i, %for.end.i.cleanup32.i_crit_edge, %do.end.i, %lor.lhs.false.i.cleanup32.i_crit_edge, %for.body.i.cleanup32.i_crit_edge
  %inc.i = add nuw nsw i32 %i.089.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %cleanup32.i.cleanup15_crit_edge, label %cleanup32.i.for.body.i_crit_edge

cleanup32.i.for.body.i_crit_edge:                 ; preds = %cleanup32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup32.i.cleanup15_crit_edge:                  ; preds = %cleanup32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup32.i.cleanup15_crit_edge, %if.then10.cleanup15_crit_edge, %entry.cleanup15_crit_edge, %entry.cleanup15_crit_edge22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__assign_resources_sorted(ptr noundef %head, ptr noundef %realloc_head, ptr noundef %fail_head) unnamed_addr #0 align 64 {
entry:
  %save_head = alloca %struct.list_head, align 4
  %local_fail_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %save_head) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %save_head, i32 0, i32 1
  %1 = ptrtoint ptr %save_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %save_head, ptr %save_head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %save_head, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_fail_head) #12
  %3 = getelementptr inbounds %struct.list_head, ptr %local_fail_head, i32 0, i32 1
  %4 = ptrtoint ptr %local_fail_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %local_fail_head, ptr %local_fail_head, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %local_fail_head, ptr %3, align 4
  %tobool.not = icmp eq ptr %realloc_head, null
  br i1 %tobool.not, label %if.end180.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %realloc_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %realloc_head, align 4
  %cmp.i.not = icmp eq ptr %7, %realloc_head
  br i1 %cmp.i.not, label %lor.lhs.false.if.then179_crit_edge, label %for.cond.preheader

lor.lhs.false.if.then179_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then179

for.cond.preheader:                               ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %dev_res.0439 = load ptr, ptr %head, align 4
  %cmp.not440 = icmp eq ptr %dev_res.0439, %head
  br i1 %cmp.not440, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %add_to_list.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %dev_res.0441 = phi ptr [ %dev_res.0, %add_to_list.exit.for.body_crit_edge ], [ %dev_res.0439, %for.cond.preheader.for.body_crit_edge ]
  %dev = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0441, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %res = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0441, i32 0, i32 1
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then7, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %res1.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %res1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %res1.i, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %10, ptr %dev2.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %12, align 4
  %start3.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %start3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %start3.i, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %end4.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %end4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %end4.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %flags5.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %flags5.i, align 8
  %add_size6.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %add_size6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %add_size6.i, align 8
  %min_align7.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %min_align7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %min_align7.i, align 4
  %27 = ptrtoint ptr %save_head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %save_head, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %save_head, ptr noundef %28) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.add_to_list.exit_crit_edge

if.end.i.add_to_list.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_to_list.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %save_head, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %save_head to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i, ptr %save_head, align 4
  br label %add_to_list.exit

add_to_list.exit:                                 ; preds = %if.end.i.i.i, %if.end.i.add_to_list.exit_crit_edge
  %33 = ptrtoint ptr %dev_res.0441 to i32
  call void @__asan_load4_noabort(i32 %33)
  %dev_res.0 = load ptr, ptr %dev_res.0441, align 4
  %cmp.not = icmp eq ptr %dev_res.0, %head
  br i1 %cmp.not, label %add_to_list.exit.for.end_crit_edge, label %add_to_list.exit.for.body_crit_edge

add_to_list.exit.for.body_crit_edge:              ; preds = %add_to_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

add_to_list.exit.for.end_crit_edge:               ; preds = %add_to_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then7:                                         ; preds = %for.body
  %34 = ptrtoint ptr %save_head to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %save_head, align 4
  %cmp.not18.i = icmp eq ptr %35, %save_head
  br i1 %cmp.not18.i, label %if.then7.if.then179_crit_edge, label %if.then7.for.body.i_crit_edge

if.then7.for.body.i_crit_edge:                    ; preds = %if.then7
  br label %for.body.i

if.then7.if.then179_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then179

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then7.for.body.i_crit_edge
  %dev_res.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %35, %if.then7.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp.0.i = load ptr, ptr %dev_res.019.i, align 4
  %call.i.i.i258 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i) #12
  br i1 %call.i.i.i258, label %if.end.i.i.i259, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i259:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_res.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i259, %for.body.i.list_del.exit.i_crit_edge
  %43 = ptrtoint ptr %dev_res.019.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %dev_res.019.i) #12
  %cmp.not.i = icmp eq ptr %tmp.0.i, %save_head
  br i1 %cmp.not.i, label %list_del.exit.i.if.then179_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.if.then179_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then179

for.end:                                          ; preds = %add_to_list.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %45 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head, align 4
  %cmp25.not443 = icmp eq ptr %46, %head
  br i1 %cmp25.not443, label %for.end.for.end78_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.for.end78_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end78

for.body27:                                       ; preds = %for.inc72.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %dev_res.1444 = phi ptr [ %tmp_res.0446, %for.inc72.for.body27_crit_edge ], [ %46, %for.end.for.body27_crit_edge ]
  %47 = ptrtoint ptr %dev_res.1444 to i32
  call void @__asan_load4_noabort(i32 %47)
  %tmp_res.0446 = load ptr, ptr %dev_res.1444, align 4
  %res28 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.1444, i32 0, i32 1
  %48 = ptrtoint ptr %res28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %res28, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body27
  %dev_res.0.in.i.i = phi ptr [ %realloc_head, %for.body27 ], [ %dev_res.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %50 = ptrtoint ptr %dev_res.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %dev_res.0.i.i = load ptr, ptr %dev_res.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %dev_res.0.i.i, %realloc_head
  br i1 %cmp.not.i.i, label %for.cond.i.i.get_res_add_size.exit_crit_edge, label %for.body.i.i

for.cond.i.i.get_res_add_size.exit_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_res_add_size.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %res1.i.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %res1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %res1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %52, %49
  br i1 %cmp2.i.i, label %res_to_dev_res.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

res_to_dev_res.exit.i:                            ; preds = %for.body.i.i
  %tobool.not.i260 = icmp eq ptr %dev_res.0.i.i, null
  br i1 %tobool.not.i260, label %res_to_dev_res.exit.i.get_res_add_size.exit_crit_edge, label %cond.true.i

res_to_dev_res.exit.i.get_res_add_size.exit_crit_edge: ; preds = %res_to_dev_res.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_res_add_size.exit

cond.true.i:                                      ; preds = %res_to_dev_res.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %add_size.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %add_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add_size.i, align 4
  br label %get_res_add_size.exit

get_res_add_size.exit:                            ; preds = %cond.true.i, %res_to_dev_res.exit.i.get_res_add_size.exit_crit_edge, %for.cond.i.i.get_res_add_size.exit_crit_edge
  %cond.i = phi i32 [ %54, %cond.true.i ], [ 0, %res_to_dev_res.exit.i.get_res_add_size.exit_crit_edge ], [ 0, %for.cond.i.i.get_res_add_size.exit_crit_edge ]
  %end = getelementptr inbounds %struct.resource, ptr %49, i32 0, i32 1
  %55 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %end, align 4
  %add = add i32 %56, %cond.i
  store i32 %add, ptr %end, align 4
  %57 = ptrtoint ptr %res28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %res28, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %and = and i32 %60, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %get_res_add_size.exit.for.inc72_crit_edge, label %get_res_add_size.exit.for.cond.i.i264_crit_edge

get_res_add_size.exit.for.cond.i.i264_crit_edge:  ; preds = %get_res_add_size.exit
  br label %for.cond.i.i264

get_res_add_size.exit.for.inc72_crit_edge:        ; preds = %get_res_add_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

for.cond.i.i264:                                  ; preds = %for.body.i.i267.for.cond.i.i264_crit_edge, %get_res_add_size.exit.for.cond.i.i264_crit_edge
  %dev_res.0.in.i.i261 = phi ptr [ %dev_res.0.i.i262, %for.body.i.i267.for.cond.i.i264_crit_edge ], [ %realloc_head, %get_res_add_size.exit.for.cond.i.i264_crit_edge ]
  %61 = ptrtoint ptr %dev_res.0.in.i.i261 to i32
  call void @__asan_load4_noabort(i32 %61)
  %dev_res.0.i.i262 = load ptr, ptr %dev_res.0.in.i.i261, align 4
  %cmp.not.i.i263 = icmp eq ptr %dev_res.0.i.i262, %realloc_head
  br i1 %cmp.not.i.i263, label %for.cond.i.i264.for.inc72_crit_edge, label %for.body.i.i267

for.cond.i.i264.for.inc72_crit_edge:              ; preds = %for.cond.i.i264
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

for.body.i.i267:                                  ; preds = %for.cond.i.i264
  %res1.i.i265 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i262, i32 0, i32 1
  %62 = ptrtoint ptr %res1.i.i265 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %res1.i.i265, align 4
  %cmp2.i.i266 = icmp eq ptr %63, %58
  br i1 %cmp2.i.i266, label %res_to_dev_res.exit.i269, label %for.body.i.i267.for.cond.i.i264_crit_edge

for.body.i.i267.for.cond.i.i264_crit_edge:        ; preds = %for.body.i.i267
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i264

res_to_dev_res.exit.i269:                         ; preds = %for.body.i.i267
  %tobool.not.i268 = icmp eq ptr %dev_res.0.i.i262, null
  br i1 %tobool.not.i268, label %res_to_dev_res.exit.i269.for.inc72_crit_edge, label %get_res_add_align.exit

res_to_dev_res.exit.i269.for.inc72_crit_edge:     ; preds = %res_to_dev_res.exit.i269
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

get_res_add_align.exit:                           ; preds = %res_to_dev_res.exit.i269
  %min_align.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i.i262, i32 0, i32 6
  %64 = ptrtoint ptr %min_align.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %min_align.i, align 4
  %66 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp38 = icmp ugt i32 %65, %67
  br i1 %cmp38, label %if.then39, label %get_res_add_align.exit.for.inc72_crit_edge

get_res_add_align.exit.for.inc72_crit_edge:       ; preds = %get_res_add_align.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

if.then39:                                        ; preds = %get_res_add_align.exit
  %end.i272 = getelementptr inbounds %struct.resource, ptr %58, i32 0, i32 1
  %68 = ptrtoint ptr %end.i272 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %end.i272, align 4
  %70 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %65, ptr %58, align 4
  %add44 = sub i32 %65, %67
  %sub = add i32 %add44, %69
  %71 = ptrtoint ptr %res28 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %res28, align 4
  %end46 = getelementptr inbounds %struct.resource, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %end46 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub, ptr %end46, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %pci_resource_alignment.exit.for.cond51_crit_edge, %if.then39
  %dev_res2.0.in = phi ptr [ %head, %if.then39 ], [ %dev_res2.0, %pci_resource_alignment.exit.for.cond51_crit_edge ]
  %74 = ptrtoint ptr %dev_res2.0.in to i32
  call void @__asan_load4_noabort(i32 %74)
  %dev_res2.0 = load ptr, ptr %dev_res2.0.in, align 4
  %cmp53.not = icmp eq ptr %dev_res2.0, %head
  br i1 %cmp53.not, label %for.cond51.for.inc72_crit_edge, label %for.body55

for.cond51.for.inc72_crit_edge:                   ; preds = %for.cond51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

for.body55:                                       ; preds = %for.cond51
  %dev56 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res2.0, i32 0, i32 2
  %75 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev56, align 4
  %res57 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res2.0, i32 0, i32 1
  %77 = ptrtoint ptr %res57 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %res57, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 47
  %sub.ptr.lhs.cast.i = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %resource.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %79 = add i32 %sub.ptr.sub.i, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %79)
  %80 = icmp ult i32 %79, 223
  br i1 %80, label %if.then.i, label %if.end.i273

if.then.i:                                        ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.div13.i = lshr exact i32 %sub.ptr.sub.i, 5
  %call.i = call i32 @pci_sriov_resource_alignment(ptr noundef %76, i32 noundef %sub.ptr.div13.i) #12
  br label %pci_resource_alignment.exit

if.end.i273:                                      ; preds = %for.body55
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 11
  %81 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %class.i, align 8
  %shr.mask.i = and i32 %82, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i)
  %cmp2.i = icmp eq i32 %shr.mask.i, 395008
  br i1 %cmp2.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i273
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %78, i32 0, i32 3
  %83 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.i.return.sink.split.i.i_crit_edge

if.then3.i.return.sink.split.i.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

if.end.i.i:                                       ; preds = %if.then3.i
  %and2.i.i = and i32 %84, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.pci_resource_alignment.exit_crit_edge, label %if.end.i.i.return.sink.split.i.i_crit_edge

if.end.i.i.return.sink.split.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

if.end.i.i.pci_resource_alignment.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_resource_alignment.exit

return.sink.split.i.i:                            ; preds = %if.end.i.i.return.sink.split.i.i_crit_edge, %if.then3.i.return.sink.split.i.i_crit_edge
  %pci_cardbus_mem_size.sink.i.i = phi ptr [ @pci_cardbus_io_size, %if.then3.i.return.sink.split.i.i_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i.return.sink.split.i.i_crit_edge ]
  %85 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pci_cardbus_mem_size.sink.i.i, align 4
  br label %pci_resource_alignment.exit

if.end5.i:                                        ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 @resource_alignment(ptr noundef %78) #12
  br label %pci_resource_alignment.exit

pci_resource_alignment.exit:                      ; preds = %if.end5.i, %return.sink.split.i.i, %if.end.i.i.pci_resource_alignment.exit_crit_edge, %if.then.i
  %retval.0.i274 = phi i32 [ %call.i, %if.then.i ], [ %call6.i, %if.end5.i ], [ 0, %if.end.i.i.pci_resource_alignment.exit_crit_edge ], [ %86, %return.sink.split.i.i ]
  %cmp59 = icmp ugt i32 %65, %retval.0.i274
  br i1 %cmp59, label %if.then60, label %pci_resource_alignment.exit.for.cond51_crit_edge

pci_resource_alignment.exit.for.cond51_crit_edge: ; preds = %pci_resource_alignment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond51

if.then60:                                        ; preds = %pci_resource_alignment.exit
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.1444) #12
  br i1 %call.i.i, label %if.end.i.i277, label %if.then60.__list_del_entry.exit.i_crit_edge

if.then60.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i277:                                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i275 = getelementptr inbounds %struct.list_head, ptr %dev_res.1444, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i275 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i275, align 4
  %89 = ptrtoint ptr %dev_res.1444 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev_res.1444, align 4
  %prev1.i.i.i276 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i276 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i276, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i277, %if.then60.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %dev_res2.0, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i278 = call zeroext i1 @__list_add_valid(ptr noundef %dev_res.1444, ptr noundef %94, ptr noundef %dev_res2.0) #12
  br i1 %call.i.i.i278, label %if.end.i.i.i280, label %__list_del_entry.exit.i.for.inc72_crit_edge

__list_del_entry.exit.i.for.inc72_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

if.end.i.i.i280:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %dev_res.1444, ptr %prev.i2.i, align 4
  %96 = ptrtoint ptr %dev_res.1444 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %dev_res2.0, ptr %dev_res.1444, align 4
  %prev3.i.i.i279 = getelementptr inbounds %struct.list_head, ptr %dev_res.1444, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i279 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev3.i.i.i279, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %dev_res.1444, ptr %94, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %if.end.i.i.i280, %__list_del_entry.exit.i.for.inc72_crit_edge, %for.cond51.for.inc72_crit_edge, %get_res_add_align.exit.for.inc72_crit_edge, %res_to_dev_res.exit.i269.for.inc72_crit_edge, %for.cond.i.i264.for.inc72_crit_edge, %get_res_add_size.exit.for.inc72_crit_edge
  %cmp25.not = icmp eq ptr %tmp_res.0446, %head
  br i1 %cmp25.not, label %for.inc72.for.end78_crit_edge, label %for.inc72.for.body27_crit_edge

for.inc72.for.body27_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27

for.inc72.for.end78_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end78

for.end78:                                        ; preds = %for.inc72.for.end78_crit_edge, %for.end.for.end78_crit_edge
  call fastcc void @assign_requested_resources_sorted(ptr noundef %head, ptr noundef nonnull %local_fail_head)
  %99 = ptrtoint ptr %local_fail_head to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %local_fail_head, align 4
  %cmp.i281 = icmp eq ptr %100, %local_fail_head
  br i1 %cmp.i281, label %for.cond86.preheader, label %for.end78.for.body.i318_crit_edge

for.end78.for.body.i318_crit_edge:                ; preds = %for.end78
  br label %for.body.i318

for.cond86.preheader:                             ; preds = %for.end78
  %101 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %101)
  %dev_res.2458 = load ptr, ptr %head, align 4
  %cmp88.not459 = icmp eq ptr %dev_res.2458, %head
  br i1 %cmp88.not459, label %for.cond86.preheader.for.end98_crit_edge, label %for.cond86.preheader.for.body90_crit_edge

for.cond86.preheader.for.body90_crit_edge:        ; preds = %for.cond86.preheader
  br label %for.body90

for.cond86.preheader.for.end98_crit_edge:         ; preds = %for.cond86.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end98

for.body90:                                       ; preds = %remove_from_list.exit.for.body90_crit_edge, %for.cond86.preheader.for.body90_crit_edge
  %dev_res.2460 = phi ptr [ %dev_res.2, %remove_from_list.exit.for.body90_crit_edge ], [ %dev_res.2458, %for.cond86.preheader.for.body90_crit_edge ]
  %res91 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.2460, i32 0, i32 1
  %102 = ptrtoint ptr %res91 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %res91, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i284.for.cond.i_crit_edge, %for.body90
  %dev_res.0.in.i = phi ptr [ %realloc_head, %for.body90 ], [ %dev_res.0.i, %for.body.i284.for.cond.i_crit_edge ]
  %104 = ptrtoint ptr %dev_res.0.in.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %dev_res.0.i = load ptr, ptr %dev_res.0.in.i, align 4
  %cmp.not.i283 = icmp eq ptr %dev_res.0.i, %realloc_head
  br i1 %cmp.not.i283, label %for.cond.i.remove_from_list.exit_crit_edge, label %for.body.i284

for.cond.i.remove_from_list.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_from_list.exit

for.body.i284:                                    ; preds = %for.cond.i
  %res7.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i, i32 0, i32 1
  %105 = ptrtoint ptr %res7.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %res7.i, align 4
  %cmp8.i = icmp eq ptr %106, %103
  br i1 %cmp8.i, label %if.then.i286, label %for.body.i284.for.cond.i_crit_edge

for.body.i284.for.cond.i_crit_edge:               ; preds = %for.body.i284
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then.i286:                                     ; preds = %for.body.i284
  %call.i.i.i285 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.0.i) #12
  br i1 %call.i.i.i285, label %if.end.i.i.i289, label %if.then.i286.list_del.exit.i291_crit_edge

if.then.i286.list_del.exit.i291_crit_edge:        ; preds = %if.then.i286
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i291

if.end.i.i.i289:                                  ; preds = %if.then.i286
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i287 = getelementptr inbounds %struct.list_head, ptr %dev_res.0.i, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i.i287 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i.i287, align 4
  %109 = ptrtoint ptr %dev_res.0.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_res.0.i, align 4
  %prev1.i.i.i.i288 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %prev1.i.i.i.i288 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev1.i.i.i.i288, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %110, ptr %108, align 4
  br label %list_del.exit.i291

list_del.exit.i291:                               ; preds = %if.end.i.i.i289, %if.then.i286.list_del.exit.i291_crit_edge
  %113 = ptrtoint ptr %dev_res.0.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.0.i, align 4
  %prev.i.i290 = getelementptr inbounds %struct.list_head, ptr %dev_res.0.i, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i290 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i290, align 4
  call void @kfree(ptr noundef %dev_res.0.i) #12
  br label %remove_from_list.exit

remove_from_list.exit:                            ; preds = %list_del.exit.i291, %for.cond.i.remove_from_list.exit_crit_edge
  %115 = ptrtoint ptr %dev_res.2460 to i32
  call void @__asan_load4_noabort(i32 %115)
  %dev_res.2 = load ptr, ptr %dev_res.2460, align 4
  %cmp88.not = icmp eq ptr %dev_res.2, %head
  br i1 %cmp88.not, label %remove_from_list.exit.for.end98_crit_edge, label %remove_from_list.exit.for.body90_crit_edge

remove_from_list.exit.for.body90_crit_edge:       ; preds = %remove_from_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body90

remove_from_list.exit.for.end98_crit_edge:        ; preds = %remove_from_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end98

for.end98:                                        ; preds = %remove_from_list.exit.for.end98_crit_edge, %for.cond86.preheader.for.end98_crit_edge
  %116 = ptrtoint ptr %save_head to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %save_head, align 4
  %cmp.not18.i292 = icmp eq ptr %117, %save_head
  br i1 %cmp.not18.i292, label %for.end98.free_list.exit303_crit_edge, label %for.end98.for.body.i296_crit_edge

for.end98.for.body.i296_crit_edge:                ; preds = %for.end98
  br label %for.body.i296

for.end98.free_list.exit303_crit_edge:            ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_list.exit303

for.body.i296:                                    ; preds = %list_del.exit.i302.for.body.i296_crit_edge, %for.end98.for.body.i296_crit_edge
  %dev_res.019.i293 = phi ptr [ %tmp.0.i294, %list_del.exit.i302.for.body.i296_crit_edge ], [ %117, %for.end98.for.body.i296_crit_edge ]
  %118 = ptrtoint ptr %dev_res.019.i293 to i32
  call void @__asan_load4_noabort(i32 %118)
  %tmp.0.i294 = load ptr, ptr %dev_res.019.i293, align 4
  %call.i.i.i295 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i293) #12
  br i1 %call.i.i.i295, label %if.end.i.i.i299, label %for.body.i296.list_del.exit.i302_crit_edge

for.body.i296.list_del.exit.i302_crit_edge:       ; preds = %for.body.i296
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i302

if.end.i.i.i299:                                  ; preds = %for.body.i296
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i297 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i293, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i.i.i297, align 4
  %121 = ptrtoint ptr %dev_res.019.i293 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev_res.019.i293, align 4
  %prev1.i.i.i.i298 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev1.i.i.i.i298 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev1.i.i.i.i298, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %122, ptr %120, align 4
  br label %list_del.exit.i302

list_del.exit.i302:                               ; preds = %if.end.i.i.i299, %for.body.i296.list_del.exit.i302_crit_edge
  %125 = ptrtoint ptr %dev_res.019.i293 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i293, align 4
  %prev.i.i300 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i293, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i.i300 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i300, align 4
  call void @kfree(ptr noundef %dev_res.019.i293) #12
  %cmp.not.i301 = icmp eq ptr %tmp.0.i294, %save_head
  br i1 %cmp.not.i301, label %list_del.exit.i302.free_list.exit303_crit_edge, label %list_del.exit.i302.for.body.i296_crit_edge

list_del.exit.i302.for.body.i296_crit_edge:       ; preds = %list_del.exit.i302
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i296

list_del.exit.i302.free_list.exit303_crit_edge:   ; preds = %list_del.exit.i302
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_list.exit303

free_list.exit303:                                ; preds = %list_del.exit.i302.free_list.exit303_crit_edge, %for.end98.free_list.exit303_crit_edge
  %127 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %head, align 4
  %cmp.not18.i304 = icmp eq ptr %128, %head
  br i1 %cmp.not18.i304, label %free_list.exit303.cleanup_crit_edge, label %free_list.exit303.for.body.i308_crit_edge

free_list.exit303.for.body.i308_crit_edge:        ; preds = %free_list.exit303
  br label %for.body.i308

free_list.exit303.cleanup_crit_edge:              ; preds = %free_list.exit303
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i308:                                    ; preds = %list_del.exit.i314.for.body.i308_crit_edge, %free_list.exit303.for.body.i308_crit_edge
  %dev_res.019.i305 = phi ptr [ %tmp.0.i306, %list_del.exit.i314.for.body.i308_crit_edge ], [ %128, %free_list.exit303.for.body.i308_crit_edge ]
  %129 = ptrtoint ptr %dev_res.019.i305 to i32
  call void @__asan_load4_noabort(i32 %129)
  %tmp.0.i306 = load ptr, ptr %dev_res.019.i305, align 4
  %call.i.i.i307 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i305) #12
  br i1 %call.i.i.i307, label %if.end.i.i.i311, label %for.body.i308.list_del.exit.i314_crit_edge

for.body.i308.list_del.exit.i314_crit_edge:       ; preds = %for.body.i308
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i314

if.end.i.i.i311:                                  ; preds = %for.body.i308
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i309 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i305, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i.i.i309, align 4
  %132 = ptrtoint ptr %dev_res.019.i305 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev_res.019.i305, align 4
  %prev1.i.i.i.i310 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %prev1.i.i.i.i310 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev1.i.i.i.i310, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %133, ptr %131, align 4
  br label %list_del.exit.i314

list_del.exit.i314:                               ; preds = %if.end.i.i.i311, %for.body.i308.list_del.exit.i314_crit_edge
  %136 = ptrtoint ptr %dev_res.019.i305 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i305, align 4
  %prev.i.i312 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i305, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i312 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i312, align 4
  call void @kfree(ptr noundef %dev_res.019.i305) #12
  %cmp.not.i313 = icmp eq ptr %tmp.0.i306, %head
  br i1 %cmp.not.i313, label %list_del.exit.i314.cleanup_crit_edge, label %list_del.exit.i314.for.body.i308_crit_edge

list_del.exit.i314.for.body.i308_crit_edge:       ; preds = %list_del.exit.i314
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i308

list_del.exit.i314.cleanup_crit_edge:             ; preds = %list_del.exit.i314
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i318:                                    ; preds = %for.body.i318.for.body.i318_crit_edge, %for.end78.for.body.i318_crit_edge
  %fail_res.013.i = phi ptr [ %fail_res.0.i, %for.body.i318.for.body.i318_crit_edge ], [ %100, %for.end78.for.body.i318_crit_edge ]
  %mask.012.i = phi i32 [ %or.i, %for.body.i318.for.body.i318_crit_edge ], [ 0, %for.end78.for.body.i318_crit_edge ]
  %flags.i316 = getelementptr inbounds %struct.pci_dev_resource, ptr %fail_res.013.i, i32 0, i32 7
  %138 = ptrtoint ptr %flags.i316 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags.i316, align 4
  %or.i = or i32 %139, %mask.012.i
  %140 = ptrtoint ptr %fail_res.013.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %fail_res.0.i = load ptr, ptr %fail_res.013.i, align 4
  %cmp.not.i317 = icmp eq ptr %fail_res.0.i, %local_fail_head
  br i1 %cmp.not.i317, label %for.end.loopexit.i, label %for.body.i318.for.body.i318_crit_edge

for.body.i318.for.body.i318_crit_edge:            ; preds = %for.body.i318
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i318

for.end.loopexit.i:                               ; preds = %for.body.i318
  %141 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %head, align 4
  %cmp112.not448 = icmp eq ptr %142, %head
  br i1 %cmp112.not448, label %for.end.loopexit.i.for.end130_crit_edge, label %for.body114.lr.ph

for.end.loopexit.i.for.end130_crit_edge:          ; preds = %for.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end130

for.body114.lr.ph:                                ; preds = %for.end.loopexit.i
  %and1.i = and i32 %or.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  %and8.i = and i32 %or.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %and11.i = and i32 %or.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool24.i = icmp ne i32 %and11.i, 0
  br label %for.body114

for.body114:                                      ; preds = %for.inc124.for.body114_crit_edge, %for.body114.lr.ph
  %dev_res.3449 = phi ptr [ %142, %for.body114.lr.ph ], [ %tmp_res.1451, %for.inc124.for.body114_crit_edge ]
  %143 = ptrtoint ptr %dev_res.3449 to i32
  call void @__asan_load4_noabort(i32 %143)
  %tmp_res.1451 = load ptr, ptr %dev_res.3449, align 4
  %res115 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.3449, i32 0, i32 1
  %144 = ptrtoint ptr %res115 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %res115, align 4
  %parent = getelementptr inbounds %struct.resource, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %parent, align 4
  %tobool116.not = icmp eq ptr %147, null
  br i1 %tobool116.not, label %for.body114.for.inc124_crit_edge, label %land.lhs.true

for.body114.for.inc124_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc124

land.lhs.true:                                    ; preds = %for.body114
  %flags.i319 = getelementptr inbounds %struct.resource, ptr %145, i32 0, i32 3
  %148 = ptrtoint ptr %flags.i319 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags.i319, align 4
  %and.i = and i32 %149, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i320 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i320, label %if.end.i322, label %if.then.i321

if.then.i321:                                     ; preds = %land.lhs.true
  br i1 %tobool2.i.not, label %if.then.i321.for.cond.i327.preheader_crit_edge, label %if.then.i321.for.inc124_crit_edge

if.then.i321.for.inc124_crit_edge:                ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc124

if.then.i321.for.cond.i327.preheader_crit_edge:   ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i327.preheader

if.end.i322:                                      ; preds = %land.lhs.true
  %and5.i = and i32 %149, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end18.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i322
  br i1 %tobool9.not.i, label %if.else.i, label %if.then7.i.for.inc124_crit_edge

if.then7.i.for.inc124_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc124

if.else.i:                                        ; preds = %if.then7.i
  br i1 %tobool12.not.i, label %if.else.i.for.cond.i327.preheader_crit_edge, label %land.lhs.true.i

if.else.i.for.cond.i327.preheader_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i327.preheader

land.lhs.true.i:                                  ; preds = %if.else.i
  %flags13.i = getelementptr inbounds %struct.resource, ptr %147, i32 0, i32 3
  %150 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags13.i, align 4
  %and14.i = and i32 %151, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.for.inc124_crit_edge, label %land.lhs.true.i.for.cond.i327.preheader_crit_edge

land.lhs.true.i.for.cond.i327.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i327.preheader

land.lhs.true.i.for.inc124_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc124

if.end18.i:                                       ; preds = %if.end.i322
  %and20.i = and i32 %149, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp ne i32 %and20.i, 0
  %or.cond = select i1 %tobool21.not.i, i1 %tobool24.i, i1 false
  br i1 %or.cond, label %if.end18.i.for.inc124_crit_edge, label %if.end18.i.for.cond.i327.preheader_crit_edge

if.end18.i.for.cond.i327.preheader_crit_edge:     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i327.preheader

if.end18.i.for.inc124_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc124

for.cond.i327.preheader:                          ; preds = %if.end18.i.for.cond.i327.preheader_crit_edge, %land.lhs.true.i.for.cond.i327.preheader_crit_edge, %if.else.i.for.cond.i327.preheader_crit_edge, %if.then.i321.for.cond.i327.preheader_crit_edge
  br label %for.cond.i327

for.cond.i327:                                    ; preds = %for.body.i330.for.cond.i327_crit_edge, %for.cond.i327.preheader
  %dev_res.0.in.i324 = phi ptr [ %dev_res.0.i325, %for.body.i330.for.cond.i327_crit_edge ], [ %realloc_head, %for.cond.i327.preheader ]
  %152 = ptrtoint ptr %dev_res.0.in.i324 to i32
  call void @__asan_load4_noabort(i32 %152)
  %dev_res.0.i325 = load ptr, ptr %dev_res.0.in.i324, align 4
  %cmp.not.i326 = icmp eq ptr %dev_res.0.i325, %realloc_head
  br i1 %cmp.not.i326, label %for.cond.i327.remove_from_list.exit338_crit_edge, label %for.body.i330

for.cond.i327.remove_from_list.exit338_crit_edge: ; preds = %for.cond.i327
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_from_list.exit338

for.body.i330:                                    ; preds = %for.cond.i327
  %res7.i328 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i325, i32 0, i32 1
  %153 = ptrtoint ptr %res7.i328 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %res7.i328, align 4
  %cmp8.i329 = icmp eq ptr %154, %145
  br i1 %cmp8.i329, label %if.then.i332, label %for.body.i330.for.cond.i327_crit_edge

for.body.i330.for.cond.i327_crit_edge:            ; preds = %for.body.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i327

if.then.i332:                                     ; preds = %for.body.i330
  %call.i.i.i331 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.0.i325) #12
  br i1 %call.i.i.i331, label %if.end.i.i.i335, label %if.then.i332.list_del.exit.i337_crit_edge

if.then.i332.list_del.exit.i337_crit_edge:        ; preds = %if.then.i332
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i337

if.end.i.i.i335:                                  ; preds = %if.then.i332
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i333 = getelementptr inbounds %struct.list_head, ptr %dev_res.0.i325, i32 0, i32 1
  %155 = ptrtoint ptr %prev.i.i.i333 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %prev.i.i.i333, align 4
  %157 = ptrtoint ptr %dev_res.0.i325 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev_res.0.i325, align 4
  %prev1.i.i.i.i334 = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %prev1.i.i.i.i334 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %156, ptr %prev1.i.i.i.i334, align 4
  %160 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %158, ptr %156, align 4
  br label %list_del.exit.i337

list_del.exit.i337:                               ; preds = %if.end.i.i.i335, %if.then.i332.list_del.exit.i337_crit_edge
  %161 = ptrtoint ptr %dev_res.0.i325 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.0.i325, align 4
  %prev.i.i336 = getelementptr inbounds %struct.list_head, ptr %dev_res.0.i325, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i.i336 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i336, align 4
  call void @kfree(ptr noundef %dev_res.0.i325) #12
  br label %remove_from_list.exit338

remove_from_list.exit338:                         ; preds = %list_del.exit.i337, %for.cond.i327.remove_from_list.exit338_crit_edge
  %163 = ptrtoint ptr %res115 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %res115, align 4
  br label %for.cond.i342

for.cond.i342:                                    ; preds = %for.body.i345.for.cond.i342_crit_edge, %remove_from_list.exit338
  %dev_res.0.in.i339 = phi ptr [ %save_head, %remove_from_list.exit338 ], [ %dev_res.0.i340, %for.body.i345.for.cond.i342_crit_edge ]
  %165 = ptrtoint ptr %dev_res.0.in.i339 to i32
  call void @__asan_load4_noabort(i32 %165)
  %dev_res.0.i340 = load ptr, ptr %dev_res.0.in.i339, align 4
  %cmp.not.i341 = icmp eq ptr %dev_res.0.i340, %save_head
  br i1 %cmp.not.i341, label %for.cond.i342.remove_from_list.exit353_crit_edge, label %for.body.i345

for.cond.i342.remove_from_list.exit353_crit_edge: ; preds = %for.cond.i342
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_from_list.exit353

for.body.i345:                                    ; preds = %for.cond.i342
  %res7.i343 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i340, i32 0, i32 1
  %166 = ptrtoint ptr %res7.i343 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %res7.i343, align 4
  %cmp8.i344 = icmp eq ptr %167, %164
  br i1 %cmp8.i344, label %if.then.i347, label %for.body.i345.for.cond.i342_crit_edge

for.body.i345.for.cond.i342_crit_edge:            ; preds = %for.body.i345
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i342

if.then.i347:                                     ; preds = %for.body.i345
  %call.i.i.i346 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.0.i340) #12
  br i1 %call.i.i.i346, label %if.end.i.i.i350, label %if.then.i347.list_del.exit.i352_crit_edge

if.then.i347.list_del.exit.i352_crit_edge:        ; preds = %if.then.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i352

if.end.i.i.i350:                                  ; preds = %if.then.i347
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i348 = getelementptr inbounds %struct.list_head, ptr %dev_res.0.i340, i32 0, i32 1
  %168 = ptrtoint ptr %prev.i.i.i348 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prev.i.i.i348, align 4
  %170 = ptrtoint ptr %dev_res.0.i340 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev_res.0.i340, align 4
  %prev1.i.i.i.i349 = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %prev1.i.i.i.i349 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %prev1.i.i.i.i349, align 4
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %171, ptr %169, align 4
  br label %list_del.exit.i352

list_del.exit.i352:                               ; preds = %if.end.i.i.i350, %if.then.i347.list_del.exit.i352_crit_edge
  %174 = ptrtoint ptr %dev_res.0.i340 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.0.i340, align 4
  %prev.i.i351 = getelementptr inbounds %struct.list_head, ptr %dev_res.0.i340, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i.i351 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i351, align 4
  call void @kfree(ptr noundef %dev_res.0.i340) #12
  br label %remove_from_list.exit353

remove_from_list.exit353:                         ; preds = %list_del.exit.i352, %for.cond.i342.remove_from_list.exit353_crit_edge
  %call.i.i354 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.3449) #12
  br i1 %call.i.i354, label %if.end.i.i357, label %remove_from_list.exit353.list_del.exit_crit_edge

remove_from_list.exit353.list_del.exit_crit_edge: ; preds = %remove_from_list.exit353
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i357:                                    ; preds = %remove_from_list.exit353
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i355 = getelementptr inbounds %struct.list_head, ptr %dev_res.3449, i32 0, i32 1
  %176 = ptrtoint ptr %prev.i.i355 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %prev.i.i355, align 4
  %178 = ptrtoint ptr %dev_res.3449 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev_res.3449, align 4
  %prev1.i.i.i356 = getelementptr inbounds %struct.list_head, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %prev1.i.i.i356 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %177, ptr %prev1.i.i.i356, align 4
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %179, ptr %177, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i357, %remove_from_list.exit353.list_del.exit_crit_edge
  %182 = ptrtoint ptr %dev_res.3449 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.3449, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dev_res.3449, i32 0, i32 1
  %183 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %dev_res.3449) #12
  br label %for.inc124

for.inc124:                                       ; preds = %list_del.exit, %if.end18.i.for.inc124_crit_edge, %land.lhs.true.i.for.inc124_crit_edge, %if.then7.i.for.inc124_crit_edge, %if.then.i321.for.inc124_crit_edge, %for.body114.for.inc124_crit_edge
  %cmp112.not = icmp eq ptr %tmp_res.1451, %head
  br i1 %cmp112.not, label %for.inc124.for.end130_crit_edge, label %for.inc124.for.body114_crit_edge

for.inc124.for.body114_crit_edge:                 ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body114

for.inc124.for.end130_crit_edge:                  ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end130

for.end130:                                       ; preds = %for.inc124.for.end130_crit_edge, %for.end.loopexit.i.for.end130_crit_edge
  %184 = ptrtoint ptr %local_fail_head to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %local_fail_head, align 4
  %cmp.not18.i359 = icmp eq ptr %185, %local_fail_head
  br i1 %cmp.not18.i359, label %for.end130.free_list.exit370_crit_edge, label %for.end130.for.body.i363_crit_edge

for.end130.for.body.i363_crit_edge:               ; preds = %for.end130
  br label %for.body.i363

for.end130.free_list.exit370_crit_edge:           ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_list.exit370

for.body.i363:                                    ; preds = %list_del.exit.i369.for.body.i363_crit_edge, %for.end130.for.body.i363_crit_edge
  %dev_res.019.i360 = phi ptr [ %tmp.0.i361, %list_del.exit.i369.for.body.i363_crit_edge ], [ %185, %for.end130.for.body.i363_crit_edge ]
  %186 = ptrtoint ptr %dev_res.019.i360 to i32
  call void @__asan_load4_noabort(i32 %186)
  %tmp.0.i361 = load ptr, ptr %dev_res.019.i360, align 4
  %call.i.i.i362 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i360) #12
  br i1 %call.i.i.i362, label %if.end.i.i.i366, label %for.body.i363.list_del.exit.i369_crit_edge

for.body.i363.list_del.exit.i369_crit_edge:       ; preds = %for.body.i363
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i369

if.end.i.i.i366:                                  ; preds = %for.body.i363
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i364 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i360, i32 0, i32 1
  %187 = ptrtoint ptr %prev.i.i.i364 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %prev.i.i.i364, align 4
  %189 = ptrtoint ptr %dev_res.019.i360 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev_res.019.i360, align 4
  %prev1.i.i.i.i365 = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %prev1.i.i.i.i365 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %prev1.i.i.i.i365, align 4
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %190, ptr %188, align 4
  br label %list_del.exit.i369

list_del.exit.i369:                               ; preds = %if.end.i.i.i366, %for.body.i363.list_del.exit.i369_crit_edge
  %193 = ptrtoint ptr %dev_res.019.i360 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i360, align 4
  %prev.i.i367 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i360, i32 0, i32 1
  %194 = ptrtoint ptr %prev.i.i367 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i367, align 4
  call void @kfree(ptr noundef %dev_res.019.i360) #12
  %cmp.not.i368 = icmp eq ptr %tmp.0.i361, %local_fail_head
  br i1 %cmp.not.i368, label %list_del.exit.i369.free_list.exit370_crit_edge, label %list_del.exit.i369.for.body.i363_crit_edge

list_del.exit.i369.for.body.i363_crit_edge:       ; preds = %list_del.exit.i369
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i363

list_del.exit.i369.free_list.exit370_crit_edge:   ; preds = %list_del.exit.i369
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_list.exit370

free_list.exit370:                                ; preds = %list_del.exit.i369.free_list.exit370_crit_edge, %for.end130.free_list.exit370_crit_edge
  %195 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %195)
  %dev_res.4452 = load ptr, ptr %head, align 4
  %cmp137.not453 = icmp eq ptr %dev_res.4452, %head
  br i1 %cmp137.not453, label %free_list.exit370.for.cond158.preheader_crit_edge, label %free_list.exit370.for.body139_crit_edge

free_list.exit370.for.body139_crit_edge:          ; preds = %free_list.exit370
  br label %for.body139

free_list.exit370.for.cond158.preheader_crit_edge: ; preds = %free_list.exit370
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond158.preheader

for.cond158.preheader:                            ; preds = %for.inc147.for.cond158.preheader_crit_edge, %free_list.exit370.for.cond158.preheader_crit_edge
  %196 = ptrtoint ptr %save_head to i32
  call void @__asan_load4_noabort(i32 %196)
  %save_res.0455 = load ptr, ptr %save_head, align 4
  %cmp160.not456 = icmp eq ptr %save_res.0455, %save_head
  br i1 %cmp160.not456, label %for.cond158.preheader.for.end177_crit_edge, label %for.cond158.preheader.for.body162_crit_edge

for.cond158.preheader.for.body162_crit_edge:      ; preds = %for.cond158.preheader
  br label %for.body162

for.cond158.preheader.for.end177_crit_edge:       ; preds = %for.cond158.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end177

for.body139:                                      ; preds = %for.inc147.for.body139_crit_edge, %free_list.exit370.for.body139_crit_edge
  %dev_res.4454 = phi ptr [ %dev_res.4, %for.inc147.for.body139_crit_edge ], [ %dev_res.4452, %free_list.exit370.for.body139_crit_edge ]
  %res140 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.4454, i32 0, i32 1
  %197 = ptrtoint ptr %res140 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %res140, align 4
  %parent141 = getelementptr inbounds %struct.resource, ptr %198, i32 0, i32 5
  %199 = ptrtoint ptr %parent141 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %parent141, align 4
  %tobool142.not = icmp eq ptr %200, null
  br i1 %tobool142.not, label %for.body139.for.inc147_crit_edge, label %if.then143

for.body139.for.inc147_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc147

if.then143:                                       ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #14
  %call145 = call i32 @release_resource(ptr noundef %198) #12
  br label %for.inc147

for.inc147:                                       ; preds = %if.then143, %for.body139.for.inc147_crit_edge
  %201 = ptrtoint ptr %dev_res.4454 to i32
  call void @__asan_load4_noabort(i32 %201)
  %dev_res.4 = load ptr, ptr %dev_res.4454, align 4
  %cmp137.not = icmp eq ptr %dev_res.4, %head
  br i1 %cmp137.not, label %for.inc147.for.cond158.preheader_crit_edge, label %for.inc147.for.body139_crit_edge

for.inc147.for.body139_crit_edge:                 ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body139

for.inc147.for.cond158.preheader_crit_edge:       ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond158.preheader

for.body162:                                      ; preds = %for.body162.for.body162_crit_edge, %for.cond158.preheader.for.body162_crit_edge
  %save_res.0457 = phi ptr [ %save_res.0, %for.body162.for.body162_crit_edge ], [ %save_res.0455, %for.cond158.preheader.for.body162_crit_edge ]
  %res164 = getelementptr inbounds %struct.pci_dev_resource, ptr %save_res.0457, i32 0, i32 1
  %202 = ptrtoint ptr %res164 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %res164, align 4
  %start165 = getelementptr inbounds %struct.pci_dev_resource, ptr %save_res.0457, i32 0, i32 3
  %204 = ptrtoint ptr %start165 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %start165, align 4
  %206 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %203, align 4
  %end167 = getelementptr inbounds %struct.pci_dev_resource, ptr %save_res.0457, i32 0, i32 4
  %207 = ptrtoint ptr %end167 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %end167, align 4
  %end168 = getelementptr inbounds %struct.resource, ptr %203, i32 0, i32 1
  %209 = ptrtoint ptr %end168 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %end168, align 4
  %flags169 = getelementptr inbounds %struct.pci_dev_resource, ptr %save_res.0457, i32 0, i32 7
  %210 = ptrtoint ptr %flags169 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %flags169, align 4
  %flags170 = getelementptr inbounds %struct.resource, ptr %203, i32 0, i32 3
  %212 = ptrtoint ptr %flags170 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %flags170, align 4
  %213 = ptrtoint ptr %save_res.0457 to i32
  call void @__asan_load4_noabort(i32 %213)
  %save_res.0 = load ptr, ptr %save_res.0457, align 4
  %cmp160.not = icmp eq ptr %save_res.0, %save_head
  br i1 %cmp160.not, label %for.body162.for.end177_crit_edge, label %for.body162.for.body162_crit_edge

for.body162.for.body162_crit_edge:                ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body162

for.body162.for.end177_crit_edge:                 ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end177

for.end177:                                       ; preds = %for.body162.for.end177_crit_edge, %for.cond158.preheader.for.end177_crit_edge
  %214 = ptrtoint ptr %save_head to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %save_head, align 4
  %cmp.not18.i371 = icmp eq ptr %215, %save_head
  br i1 %cmp.not18.i371, label %for.end177.if.then179_crit_edge, label %for.end177.for.body.i375_crit_edge

for.end177.for.body.i375_crit_edge:               ; preds = %for.end177
  br label %for.body.i375

for.end177.if.then179_crit_edge:                  ; preds = %for.end177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then179

for.body.i375:                                    ; preds = %list_del.exit.i381.for.body.i375_crit_edge, %for.end177.for.body.i375_crit_edge
  %dev_res.019.i372 = phi ptr [ %tmp.0.i373, %list_del.exit.i381.for.body.i375_crit_edge ], [ %215, %for.end177.for.body.i375_crit_edge ]
  %216 = ptrtoint ptr %dev_res.019.i372 to i32
  call void @__asan_load4_noabort(i32 %216)
  %tmp.0.i373 = load ptr, ptr %dev_res.019.i372, align 4
  %call.i.i.i374 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i372) #12
  br i1 %call.i.i.i374, label %if.end.i.i.i378, label %for.body.i375.list_del.exit.i381_crit_edge

for.body.i375.list_del.exit.i381_crit_edge:       ; preds = %for.body.i375
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i381

if.end.i.i.i378:                                  ; preds = %for.body.i375
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i376 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i372, i32 0, i32 1
  %217 = ptrtoint ptr %prev.i.i.i376 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %prev.i.i.i376, align 4
  %219 = ptrtoint ptr %dev_res.019.i372 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev_res.019.i372, align 4
  %prev1.i.i.i.i377 = getelementptr inbounds %struct.list_head, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %prev1.i.i.i.i377 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %218, ptr %prev1.i.i.i.i377, align 4
  %222 = ptrtoint ptr %218 to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile ptr %220, ptr %218, align 4
  br label %list_del.exit.i381

list_del.exit.i381:                               ; preds = %if.end.i.i.i378, %for.body.i375.list_del.exit.i381_crit_edge
  %223 = ptrtoint ptr %dev_res.019.i372 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i372, align 4
  %prev.i.i379 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i372, i32 0, i32 1
  %224 = ptrtoint ptr %prev.i.i379 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i379, align 4
  call void @kfree(ptr noundef %dev_res.019.i372) #12
  %cmp.not.i380 = icmp eq ptr %tmp.0.i373, %save_head
  br i1 %cmp.not.i380, label %list_del.exit.i381.if.then179_crit_edge, label %list_del.exit.i381.for.body.i375_crit_edge

list_del.exit.i381.for.body.i375_crit_edge:       ; preds = %list_del.exit.i381
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i375

list_del.exit.i381.if.then179_crit_edge:          ; preds = %list_del.exit.i381
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then179

if.then179:                                       ; preds = %list_del.exit.i381.if.then179_crit_edge, %for.end177.if.then179_crit_edge, %list_del.exit.i.if.then179_crit_edge, %if.then7.if.then179_crit_edge, %lor.lhs.false.if.then179_crit_edge
  call fastcc void @assign_requested_resources_sorted(ptr noundef %head, ptr noundef %fail_head)
  %225 = ptrtoint ptr %realloc_head to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %realloc_head, align 4
  %cmp.not88.i = icmp eq ptr %226, %realloc_head
  br i1 %cmp.not88.i, label %if.then179.if.end180_crit_edge, label %if.then179.for.body.i386_crit_edge

if.then179.for.body.i386_crit_edge:               ; preds = %if.then179
  br label %for.body.i386

if.then179.if.end180_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

for.body.i386:                                    ; preds = %cleanup.i.for.body.i386_crit_edge, %if.then179.for.body.i386_crit_edge
  %add_res.089.i = phi ptr [ %tmp.091.i, %cleanup.i.for.body.i386_crit_edge ], [ %226, %if.then179.for.body.i386_crit_edge ]
  %227 = ptrtoint ptr %add_res.089.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %tmp.091.i = load ptr, ptr %add_res.089.i, align 4
  %res7.i383 = getelementptr inbounds %struct.pci_dev_resource, ptr %add_res.089.i, i32 0, i32 1
  %228 = ptrtoint ptr %res7.i383 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %res7.i383, align 4
  %flags.i384 = getelementptr inbounds %struct.resource, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %flags.i384 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %flags.i384, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool.not.i385 = icmp eq i32 %231, 0
  br i1 %tobool.not.i385, label %for.body.i386.out.i_crit_edge, label %for.body.i386.for.cond12.i_crit_edge

for.body.i386.for.cond12.i_crit_edge:             ; preds = %for.body.i386
  br label %for.cond12.i

for.body.i386.out.i_crit_edge:                    ; preds = %for.body.i386
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

for.cond12.i:                                     ; preds = %for.body16.i.for.cond12.i_crit_edge, %for.body.i386.for.cond12.i_crit_edge
  %dev_res.0.in.i387 = phi ptr [ %dev_res.0.i388, %for.body16.i.for.cond12.i_crit_edge ], [ %head, %for.body.i386.for.cond12.i_crit_edge ]
  %232 = ptrtoint ptr %dev_res.0.in.i387 to i32
  call void @__asan_load4_noabort(i32 %232)
  %dev_res.0.i388 = load ptr, ptr %dev_res.0.in.i387, align 4
  %cmp14.not.i = icmp eq ptr %dev_res.0.i388, %head
  br i1 %cmp14.not.i, label %for.cond12.i.cleanup.i_crit_edge, label %for.body16.i

for.cond12.i.cleanup.i_crit_edge:                 ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

for.body16.i:                                     ; preds = %for.cond12.i
  %res17.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i388, i32 0, i32 1
  %233 = ptrtoint ptr %res17.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %res17.i, align 4
  %cmp18.i = icmp eq ptr %234, %229
  br i1 %cmp18.i, label %if.end28.i, label %for.body16.i.for.cond12.i_crit_edge

for.body16.i.for.cond12.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond12.i

if.end28.i:                                       ; preds = %for.body16.i
  %dev.i = getelementptr inbounds %struct.pci_dev_resource, ptr %add_res.089.i, i32 0, i32 2
  %235 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i, align 4
  %resource.i389 = getelementptr inbounds %struct.pci_dev, ptr %236, i32 0, i32 47
  %sub.ptr.lhs.cast.i390 = ptrtoint ptr %229 to i32
  %sub.ptr.rhs.cast.i391 = ptrtoint ptr %resource.i389 to i32
  %sub.ptr.sub.i392 = sub i32 %sub.ptr.lhs.cast.i390, %sub.ptr.rhs.cast.i391
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i392, 5
  %add_size29.i = getelementptr inbounds %struct.pci_dev_resource, ptr %add_res.089.i, i32 0, i32 5
  %237 = ptrtoint ptr %add_size29.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %add_size29.i, align 4
  %min_align.i393 = getelementptr inbounds %struct.pci_dev_resource, ptr %add_res.089.i, i32 0, i32 6
  %239 = ptrtoint ptr %min_align.i393 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %min_align.i393, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %229, i32 0, i32 1
  %241 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %end.i.i, align 4
  %243 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %229, align 4
  %sub.i.i = add i32 %242, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %244)
  %tobool30.not.i = icmp eq i32 %sub.i.i, %244
  br i1 %tobool30.not.i, label %if.then31.i, label %if.else.i398

if.then31.i:                                      ; preds = %if.end28.i
  %245 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %240, ptr %229, align 4
  %add.i394 = add i32 %238, -1
  %sub.i395 = add i32 %add.i394, %240
  %246 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %sub.i395, ptr %end.i.i, align 4
  %247 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev.i, align 4
  %call34.i = call i32 @pci_assign_resource(ptr noundef %248, i32 noundef %sub.ptr.div.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then31.i.out.i_crit_edge, label %if.then36.i

if.then31.i.out.i_crit_edge:                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then36.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  %249 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %229, align 4
  %250 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %end.i.i, align 4
  %251 = ptrtoint ptr %flags.i384 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %flags.i384, align 4
  br label %out.i

if.else.i398:                                     ; preds = %if.end28.i
  %flags38.i = getelementptr inbounds %struct.pci_dev_resource, ptr %add_res.089.i, i32 0, i32 7
  %252 = ptrtoint ptr %flags38.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %flags38.i, align 4
  %and.i396 = and i32 %253, 786432
  %or.i397 = or i32 %and.i396, %231
  %254 = ptrtoint ptr %flags.i384 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %or.i397, ptr %flags.i384, align 4
  %255 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev.i, align 4
  %call41.i = call i32 @pci_reassign_resource(ptr noundef %256, i32 noundef %sub.ptr.div.i, i32 noundef %238, i32 noundef %240) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.else.i398.out.i_crit_edge, label %do.end.i

if.else.i398.out.i_crit_edge:                     ; preds = %if.else.i398
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.end.i:                                         ; preds = %if.else.i398
  call void @__sanitizer_cov_trace_pc() #14
  %257 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev.i, align 4
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %258, i32 0, i32 44
  %conv.i399 = zext i32 %238 to i64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45.i, ptr noundef nonnull @.str.58, i64 noundef %conv.i399, i32 noundef %sub.ptr.div.i, ptr noundef %229) #15
  br label %out.i

out.i:                                            ; preds = %do.end.i, %if.else.i398.out.i_crit_edge, %if.then36.i, %if.then31.i.out.i_crit_edge, %for.body.i386.out.i_crit_edge
  %call.i.i.i400 = call zeroext i1 @__list_del_entry_valid(ptr noundef %add_res.089.i) #12
  br i1 %call.i.i.i400, label %if.end.i.i.i403, label %out.i.list_del.exit.i405_crit_edge

out.i.list_del.exit.i405_crit_edge:               ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i405

if.end.i.i.i403:                                  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i401 = getelementptr inbounds %struct.list_head, ptr %add_res.089.i, i32 0, i32 1
  %259 = ptrtoint ptr %prev.i.i.i401 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %prev.i.i.i401, align 4
  %261 = ptrtoint ptr %add_res.089.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %add_res.089.i, align 4
  %prev1.i.i.i.i402 = getelementptr inbounds %struct.list_head, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %prev1.i.i.i.i402 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %260, ptr %prev1.i.i.i.i402, align 4
  %264 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile ptr %262, ptr %260, align 4
  br label %list_del.exit.i405

list_del.exit.i405:                               ; preds = %if.end.i.i.i403, %out.i.list_del.exit.i405_crit_edge
  %265 = ptrtoint ptr %add_res.089.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr inttoptr (i32 256 to ptr), ptr %add_res.089.i, align 4
  %prev.i.i404 = getelementptr inbounds %struct.list_head, ptr %add_res.089.i, i32 0, i32 1
  %266 = ptrtoint ptr %prev.i.i404 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i404, align 4
  call void @kfree(ptr noundef %add_res.089.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %list_del.exit.i405, %for.cond12.i.cleanup.i_crit_edge
  %cmp.not.i406 = icmp eq ptr %tmp.091.i, %realloc_head
  br i1 %cmp.not.i406, label %cleanup.i.if.end180_crit_edge, label %cleanup.i.for.body.i386_crit_edge

cleanup.i.for.body.i386_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i386

cleanup.i.if.end180_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.end180.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @assign_requested_resources_sorted(ptr noundef %head, ptr noundef %fail_head)
  br label %if.end180

if.end180:                                        ; preds = %if.end180.critedge, %cleanup.i.if.end180_crit_edge, %if.then179.if.end180_crit_edge
  %267 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %head, align 4
  %cmp.not18.i407 = icmp eq ptr %268, %head
  br i1 %cmp.not18.i407, label %if.end180.cleanup_crit_edge, label %if.end180.for.body.i411_crit_edge

if.end180.for.body.i411_crit_edge:                ; preds = %if.end180
  br label %for.body.i411

if.end180.cleanup_crit_edge:                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i411:                                    ; preds = %list_del.exit.i417.for.body.i411_crit_edge, %if.end180.for.body.i411_crit_edge
  %dev_res.019.i408 = phi ptr [ %tmp.0.i409, %list_del.exit.i417.for.body.i411_crit_edge ], [ %268, %if.end180.for.body.i411_crit_edge ]
  %269 = ptrtoint ptr %dev_res.019.i408 to i32
  call void @__asan_load4_noabort(i32 %269)
  %tmp.0.i409 = load ptr, ptr %dev_res.019.i408, align 4
  %call.i.i.i410 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.019.i408) #12
  br i1 %call.i.i.i410, label %if.end.i.i.i414, label %for.body.i411.list_del.exit.i417_crit_edge

for.body.i411.list_del.exit.i417_crit_edge:       ; preds = %for.body.i411
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i417

if.end.i.i.i414:                                  ; preds = %for.body.i411
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i412 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i408, i32 0, i32 1
  %270 = ptrtoint ptr %prev.i.i.i412 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %prev.i.i.i412, align 4
  %272 = ptrtoint ptr %dev_res.019.i408 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev_res.019.i408, align 4
  %prev1.i.i.i.i413 = getelementptr inbounds %struct.list_head, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %prev1.i.i.i.i413 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %271, ptr %prev1.i.i.i.i413, align 4
  %275 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %275)
  store volatile ptr %273, ptr %271, align 4
  br label %list_del.exit.i417

list_del.exit.i417:                               ; preds = %if.end.i.i.i414, %for.body.i411.list_del.exit.i417_crit_edge
  %276 = ptrtoint ptr %dev_res.019.i408 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.019.i408, align 4
  %prev.i.i415 = getelementptr inbounds %struct.list_head, ptr %dev_res.019.i408, i32 0, i32 1
  %277 = ptrtoint ptr %prev.i.i415 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i415, align 4
  call void @kfree(ptr noundef %dev_res.019.i408) #12
  %cmp.not.i416 = icmp eq ptr %tmp.0.i409, %head
  br i1 %cmp.not.i416, label %list_del.exit.i417.cleanup_crit_edge, label %list_del.exit.i417.for.body.i411_crit_edge

list_del.exit.i417.for.body.i411_crit_edge:       ; preds = %list_del.exit.i417
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i411

list_del.exit.i417.cleanup_crit_edge:             ; preds = %list_del.exit.i417
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i417.cleanup_crit_edge, %if.end180.cleanup_crit_edge, %list_del.exit.i314.cleanup_crit_edge, %free_list.exit303.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_fail_head) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %save_head) #12
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assign_requested_resources_sorted(ptr noundef readonly %head, ptr noundef %fail_head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev_res.035 = load ptr, ptr %head, align 4
  %cmp.not36 = icmp eq ptr %dev_res.035, %head
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool5.not = icmp eq ptr %fail_head, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev_res.037 = phi ptr [ %dev_res.035, %for.body.lr.ph ], [ %dev_res.0, %for.inc.for.body_crit_edge ]
  %res1 = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.037, i32 0, i32 1
  %1 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %res1, align 4
  %dev = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.037, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 47
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %resource to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %end.i = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  %sub.i = add i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %8)
  %tobool.not = icmp eq i32 %sub.i, %8
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 5
  %call3 = tail call i32 @pci_assign_resource(ptr noundef %4, i32 noundef %sub.ptr.div) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  br i1 %tobool5.not, label %if.then.if.end13_crit_edge, label %if.then6

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %sub.ptr.sub)
  %cmp7 = icmp eq i32 %sub.ptr.sub, 192
  br i1 %cmp7, label %land.lhs.true8, label %if.then6.if.then10_crit_edge

if.then6.if.then10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

land.lhs.true8:                                   ; preds = %if.then6
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end13_crit_edge, label %land.lhs.true8.if.then10_crit_edge

land.lhs.true8.if.then10_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

land.lhs.true8.if.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true8.if.then10_crit_edge, %if.then6.if.then10_crit_edge
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then10.if.end13_crit_edge, label %if.end.i

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end.i:                                         ; preds = %if.then10
  %res1.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %res1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %2, ptr %res1.i, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %dev2.i, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  %start3.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %start3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %start3.i, align 8
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %end4.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %end4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %end4.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %flags5.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %flags5.i, align 8
  %add_size6.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %add_size6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %add_size6.i, align 8
  %min_align7.i = getelementptr inbounds %struct.pci_dev_resource, ptr %call7.i.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %min_align7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %min_align7.i, align 4
  %27 = ptrtoint ptr %fail_head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fail_head, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %fail_head, ptr noundef %28) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end13_crit_edge

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %fail_head, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %fail_head to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i, ptr %fail_head, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end.i.i.i, %if.end.i.if.end13_crit_edge, %if.then10.if.end13_crit_edge, %land.lhs.true8.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %2, align 4
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %end.i, align 4
  %flags.i34 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %35 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flags.i34, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %36 = ptrtoint ptr %dev_res.037 to i32
  call void @__asan_load4_noabort(i32 %36)
  %dev_res.0 = load ptr, ptr %dev_res.037, align 4
  %cmp.not = icmp eq ptr %dev_res.0, %head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_assign_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reassign_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_read_bridge_bases(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iov_resources_unassigned(ptr noundef %dev, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #12
  %1 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %region, align 4, !annotation !162
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %0, align 4, !annotation !162
  %flags = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 7, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 7
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %6, ptr noundef nonnull %region, ptr noundef %arrayidx) #12
  %7 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  br label %cleanup5

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #12
  %10 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %region, align 4, !annotation !162
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %0, align 4, !annotation !162
  %flags.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 8, i32 3
  %12 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1 = icmp eq i32 %13, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 8
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %15, ptr noundef nonnull %region, ptr noundef %arrayidx.1) #12
  %16 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.1 = icmp eq i32 %17, 0
  br i1 %tobool1.not.1, label %if.end.1.cleanup_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #12
  %18 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %region, align 4, !annotation !162
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %0, align 4, !annotation !162
  %flags.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 9, i32 3
  %20 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.2 = icmp eq i32 %21, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 9
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %23, ptr noundef nonnull %region, ptr noundef %arrayidx.2) #12
  %24 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.2 = icmp eq i32 %25, 0
  br i1 %tobool1.not.2, label %if.end.2.cleanup_crit_edge, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #12
  %26 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %region, align 4, !annotation !162
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %0, align 4, !annotation !162
  %flags.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 10, i32 3
  %28 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.3 = icmp eq i32 %29, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 10
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %31, ptr noundef nonnull %region, ptr noundef %arrayidx.3) #12
  %32 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.3 = icmp eq i32 %33, 0
  br i1 %tobool1.not.3, label %if.end.3.cleanup_crit_edge, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.3:                                        ; preds = %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #12
  %34 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %region, align 4, !annotation !162
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %0, align 4, !annotation !162
  %flags.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 11, i32 3
  %36 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.4 = icmp eq i32 %37, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 11
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %39, ptr noundef nonnull %region, ptr noundef %arrayidx.4) #12
  %40 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool1.not.4 = icmp eq i32 %41, 0
  br i1 %tobool1.not.4, label %if.end.4.cleanup_crit_edge, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.4:                                        ; preds = %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #12
  %42 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %region, align 4, !annotation !162
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %0, align 4, !annotation !162
  %flags.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 12, i32 3
  %44 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.5 = icmp eq i32 %45, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 12
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %47, ptr noundef nonnull %region, ptr noundef %arrayidx.5) #12
  %48 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool1.not.5 = icmp eq i32 %49, 0
  br i1 %tobool1.not.5, label %if.end.5.cleanup_crit_edge, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.5:                                        ; preds = %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #12
  br label %cleanup5

cleanup5:                                         ; preds = %for.inc.5, %cleanup
  %retval.2 = phi i32 [ 1, %cleanup ], [ 0, %for.inc.5 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_child_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_bus_distribute_available_resources(ptr noundef readonly %bus, ptr noundef %add_list, [8 x i32] %io.coerce, [8 x i32] %mmio.coerce, [8 x i32] %mmio_pref.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.then81, %entry
  %bus.tr = phi ptr [ %bus, %entry ], [ %40, %if.then81 ]
  %io.coerce.tr = phi [8 x i32] [ %io.coerce, %entry ], [ %.fca.7.insert488, %if.then81 ]
  %mmio.coerce.tr = phi [8 x i32] [ %mmio.coerce, %entry ], [ %.fca.7.insert440, %if.then81 ]
  %mmio_pref.coerce.tr = phi [8 x i32] [ %mmio_pref.coerce, %entry ], [ %.fca.7.insert, %if.then81 ]
  %io.coerce.fca.0.extract = extractvalue [8 x i32] %io.coerce.tr, 0
  %io.coerce.fca.1.extract = extractvalue [8 x i32] %io.coerce.tr, 1
  %io.coerce.fca.2.extract = extractvalue [8 x i32] %io.coerce.tr, 2
  %io.coerce.fca.3.extract = extractvalue [8 x i32] %io.coerce.tr, 3
  %io.coerce.fca.4.extract = extractvalue [8 x i32] %io.coerce.tr, 4
  %io.coerce.fca.5.extract = extractvalue [8 x i32] %io.coerce.tr, 5
  %io.coerce.fca.6.extract = extractvalue [8 x i32] %io.coerce.tr, 6
  %io.coerce.fca.7.extract = extractvalue [8 x i32] %io.coerce.tr, 7
  %mmio.coerce.fca.0.extract = extractvalue [8 x i32] %mmio.coerce.tr, 0
  %mmio.coerce.fca.1.extract = extractvalue [8 x i32] %mmio.coerce.tr, 1
  %mmio.coerce.fca.2.extract = extractvalue [8 x i32] %mmio.coerce.tr, 2
  %mmio.coerce.fca.3.extract = extractvalue [8 x i32] %mmio.coerce.tr, 3
  %mmio.coerce.fca.4.extract = extractvalue [8 x i32] %mmio.coerce.tr, 4
  %mmio.coerce.fca.5.extract = extractvalue [8 x i32] %mmio.coerce.tr, 5
  %mmio.coerce.fca.6.extract = extractvalue [8 x i32] %mmio.coerce.tr, 6
  %mmio.coerce.fca.7.extract = extractvalue [8 x i32] %mmio.coerce.tr, 7
  %mmio_pref.coerce.fca.0.extract = extractvalue [8 x i32] %mmio_pref.coerce.tr, 0
  %mmio_pref.coerce.fca.1.extract = extractvalue [8 x i32] %mmio_pref.coerce.tr, 1
  %mmio_pref.coerce.fca.2.extract = extractvalue [8 x i32] %mmio_pref.coerce.tr, 2
  %mmio_pref.coerce.fca.3.extract = extractvalue [8 x i32] %mmio_pref.coerce.tr, 3
  %mmio_pref.coerce.fca.4.extract = extractvalue [8 x i32] %mmio_pref.coerce.tr, 4
  %mmio_pref.coerce.fca.5.extract = extractvalue [8 x i32] %mmio_pref.coerce.tr, 5
  %mmio_pref.coerce.fca.6.extract = extractvalue [8 x i32] %mmio_pref.coerce.tr, 6
  %mmio_pref.coerce.fca.7.extract = extractvalue [8 x i32] %mmio_pref.coerce.tr, 7
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus.tr, i32 0, i32 4
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 13
  %arrayidx2 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 14
  %arrayidx4 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 15
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class.i, align 8
  %shr.mask.i = and i32 %3, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i)
  %cmp2.i = icmp eq i32 %shr.mask.i, 395008
  br i1 %cmp2.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %tailrecurse
  %flags.i.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 13, i32 3
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.i.return.sink.split.i.i_crit_edge

if.then3.i.return.sink.split.i.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

if.end.i.i:                                       ; preds = %if.then3.i
  %and2.i.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end.i526_crit_edge, label %if.end.i.i.return.sink.split.i.i_crit_edge

if.end.i.i.return.sink.split.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

if.end.i.i.if.end.i526_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i526

return.sink.split.i.i:                            ; preds = %if.end.i.i.return.sink.split.i.i_crit_edge, %if.then3.i.return.sink.split.i.i_crit_edge
  %pci_cardbus_mem_size.sink.i.i = phi ptr [ @pci_cardbus_io_size, %if.then3.i.return.sink.split.i.i_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i.return.sink.split.i.i_crit_edge ]
  %6 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pci_cardbus_mem_size.sink.i.i, align 4
  br label %pci_resource_alignment.exit

if.end5.i:                                        ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 @resource_alignment(ptr noundef %arrayidx) #12
  br label %pci_resource_alignment.exit

pci_resource_alignment.exit:                      ; preds = %if.end5.i, %return.sink.split.i.i
  %retval.0.i = phi i32 [ %call6.i, %if.end5.i ], [ %7, %return.sink.split.i.i ]
  %parent = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 13, i32 5
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %tobool.not = icmp ne ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %pci_resource_alignment.exit.if.end.i526_crit_edge, label %if.then

pci_resource_alignment.exit.if.end.i526_crit_edge: ; preds = %pci_resource_alignment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i526

if.then:                                          ; preds = %pci_resource_alignment.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %io.coerce.fca.0.extract, -1
  %add = add i32 %sub, %retval.0.i
  %neg = sub i32 0, %retval.0.i
  %and = and i32 %add, %neg
  %add7 = add i32 %io.coerce.fca.1.extract, 1
  %10 = tail call i32 @llvm.umin.i32(i32 %and, i32 %add7)
  br label %if.end.i526

if.end.i526:                                      ; preds = %if.then, %pci_resource_alignment.exit.if.end.i526_crit_edge, %if.end.i.i.if.end.i526_crit_edge
  %io.sroa.0.0 = phi i32 [ %io.coerce.fca.0.extract, %pci_resource_alignment.exit.if.end.i526_crit_edge ], [ %10, %if.then ], [ %io.coerce.fca.0.extract, %if.end.i.i.if.end.i526_crit_edge ]
  %11 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %class.i, align 8
  %shr.mask.i524 = and i32 %12, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i524)
  %cmp2.i525 = icmp eq i32 %shr.mask.i524, 395008
  br i1 %cmp2.i525, label %if.then3.i530, label %if.end5.i537

if.then3.i530:                                    ; preds = %if.end.i526
  %flags.i.i527 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 14, i32 3
  %13 = ptrtoint ptr %flags.i.i527 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i.i527, align 4
  %and.i.i528 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i528)
  %tobool.not.i.i529 = icmp eq i32 %and.i.i528, 0
  br i1 %tobool.not.i.i529, label %if.end.i.i533, label %if.then3.i530.return.sink.split.i.i535_crit_edge

if.then3.i530.return.sink.split.i.i535_crit_edge: ; preds = %if.then3.i530
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i535

if.end.i.i533:                                    ; preds = %if.then3.i530
  %and2.i.i531 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i531)
  %tobool3.not.i.i532 = icmp eq i32 %and2.i.i531, 0
  br i1 %tobool3.not.i.i532, label %if.end.i.i533.if.end.i550_crit_edge, label %if.end.i.i533.return.sink.split.i.i535_crit_edge

if.end.i.i533.return.sink.split.i.i535_crit_edge: ; preds = %if.end.i.i533
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i535

if.end.i.i533.if.end.i550_crit_edge:              ; preds = %if.end.i.i533
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i550

return.sink.split.i.i535:                         ; preds = %if.end.i.i533.return.sink.split.i.i535_crit_edge, %if.then3.i530.return.sink.split.i.i535_crit_edge
  %pci_cardbus_mem_size.sink.i.i534 = phi ptr [ @pci_cardbus_io_size, %if.then3.i530.return.sink.split.i.i535_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i533.return.sink.split.i.i535_crit_edge ]
  %15 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i534 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pci_cardbus_mem_size.sink.i.i534, align 4
  br label %pci_resource_alignment.exit539

if.end5.i537:                                     ; preds = %if.end.i526
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i536 = tail call i32 @resource_alignment(ptr noundef %arrayidx2) #12
  br label %pci_resource_alignment.exit539

pci_resource_alignment.exit539:                   ; preds = %if.end5.i537, %return.sink.split.i.i535
  %retval.0.i538 = phi i32 [ %call6.i536, %if.end5.i537 ], [ %16, %return.sink.split.i.i535 ]
  %parent10 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 14, i32 5
  %17 = ptrtoint ptr %parent10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent10, align 4
  %tobool11.not = icmp ne ptr %18, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i538)
  %tobool13.not = icmp eq i32 %retval.0.i538, 0
  %or.cond514 = select i1 %tobool11.not, i1 true, i1 %tobool13.not
  br i1 %or.cond514, label %pci_resource_alignment.exit539.if.end.i550_crit_edge, label %if.then14

pci_resource_alignment.exit539.if.end.i550_crit_edge: ; preds = %pci_resource_alignment.exit539
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i550

if.then14:                                        ; preds = %pci_resource_alignment.exit539
  call void @__sanitizer_cov_trace_pc() #14
  %sub16 = add i32 %mmio.coerce.fca.0.extract, -1
  %add17 = add i32 %sub16, %retval.0.i538
  %neg19 = sub i32 0, %retval.0.i538
  %and20 = and i32 %add17, %neg19
  %add22 = add i32 %mmio.coerce.fca.1.extract, 1
  %19 = tail call i32 @llvm.umin.i32(i32 %and20, i32 %add22)
  br label %if.end.i550

if.end.i550:                                      ; preds = %if.then14, %pci_resource_alignment.exit539.if.end.i550_crit_edge, %if.end.i.i533.if.end.i550_crit_edge
  %mmio.sroa.0.0 = phi i32 [ %mmio.coerce.fca.0.extract, %pci_resource_alignment.exit539.if.end.i550_crit_edge ], [ %19, %if.then14 ], [ %mmio.coerce.fca.0.extract, %if.end.i.i533.if.end.i550_crit_edge ]
  %20 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %class.i, align 8
  %shr.mask.i548 = and i32 %21, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i548)
  %cmp2.i549 = icmp eq i32 %shr.mask.i548, 395008
  br i1 %cmp2.i549, label %if.then3.i554, label %if.end5.i561

if.then3.i554:                                    ; preds = %if.end.i550
  %flags.i.i551 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 15, i32 3
  %22 = ptrtoint ptr %flags.i.i551 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i551, align 4
  %and.i.i552 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i552)
  %tobool.not.i.i553 = icmp eq i32 %and.i.i552, 0
  br i1 %tobool.not.i.i553, label %if.end.i.i557, label %if.then3.i554.return.sink.split.i.i559_crit_edge

if.then3.i554.return.sink.split.i.i559_crit_edge: ; preds = %if.then3.i554
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i559

if.end.i.i557:                                    ; preds = %if.then3.i554
  %and2.i.i555 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i555)
  %tobool3.not.i.i556 = icmp eq i32 %and2.i.i555, 0
  br i1 %tobool3.not.i.i556, label %if.end.i.i557.if.end52_crit_edge, label %if.end.i.i557.return.sink.split.i.i559_crit_edge

if.end.i.i557.return.sink.split.i.i559_crit_edge: ; preds = %if.end.i.i557
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i559

if.end.i.i557.if.end52_crit_edge:                 ; preds = %if.end.i.i557
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

return.sink.split.i.i559:                         ; preds = %if.end.i.i557.return.sink.split.i.i559_crit_edge, %if.then3.i554.return.sink.split.i.i559_crit_edge
  %pci_cardbus_mem_size.sink.i.i558 = phi ptr [ @pci_cardbus_io_size, %if.then3.i554.return.sink.split.i.i559_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i557.return.sink.split.i.i559_crit_edge ]
  %24 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i558 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pci_cardbus_mem_size.sink.i.i558, align 4
  br label %pci_resource_alignment.exit563

if.end5.i561:                                     ; preds = %if.end.i550
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i560 = tail call i32 @resource_alignment(ptr noundef %arrayidx4) #12
  br label %pci_resource_alignment.exit563

pci_resource_alignment.exit563:                   ; preds = %if.end5.i561, %return.sink.split.i.i559
  %retval.0.i562 = phi i32 [ %call6.i560, %if.end5.i561 ], [ %25, %return.sink.split.i.i559 ]
  %parent32 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 15, i32 5
  %26 = ptrtoint ptr %parent32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent32, align 4
  %tobool33.not = icmp ne ptr %27, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i562)
  %tobool35.not = icmp eq i32 %retval.0.i562, 0
  %or.cond515 = select i1 %tobool33.not, i1 true, i1 %tobool35.not
  br i1 %or.cond515, label %pci_resource_alignment.exit563.if.end52_crit_edge, label %if.then36

pci_resource_alignment.exit563.if.end52_crit_edge: ; preds = %pci_resource_alignment.exit563
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then36:                                        ; preds = %pci_resource_alignment.exit563
  call void @__sanitizer_cov_trace_pc() #14
  %sub38 = add i32 %mmio_pref.coerce.fca.0.extract, -1
  %add39 = add i32 %sub38, %retval.0.i562
  %neg41 = sub i32 0, %retval.0.i562
  %and42 = and i32 %add39, %neg41
  %add44 = add i32 %mmio_pref.coerce.fca.1.extract, 1
  %28 = tail call i32 @llvm.umin.i32(i32 %and42, i32 %add44)
  br label %if.end52

if.end52:                                         ; preds = %if.then36, %pci_resource_alignment.exit563.if.end52_crit_edge, %if.end.i.i557.if.end52_crit_edge
  %mmio_pref.sroa.0.0 = phi i32 [ %mmio_pref.coerce.fca.0.extract, %pci_resource_alignment.exit563.if.end52_crit_edge ], [ %28, %if.then36 ], [ %mmio_pref.coerce.fca.0.extract, %if.end.i.i557.if.end52_crit_edge ]
  %sub.i = add i32 %io.coerce.fca.1.extract, 1
  %add.i = sub i32 %sub.i, %io.sroa.0.0
  tail call fastcc void @adjust_bridge_window(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %add_list, i32 noundef %add.i)
  %sub.i565 = add i32 %mmio.coerce.fca.1.extract, 1
  %add.i566 = sub i32 %sub.i565, %mmio.sroa.0.0
  tail call fastcc void @adjust_bridge_window(ptr noundef %1, ptr noundef %arrayidx2, ptr noundef %add_list, i32 noundef %add.i566)
  %sub.i568 = add i32 %mmio_pref.coerce.fca.1.extract, 1
  %add.i569 = sub i32 %sub.i568, %mmio_pref.sroa.0.0
  tail call fastcc void @adjust_bridge_window(ptr noundef %1, ptr noundef %arrayidx4, ptr noundef %add_list, i32 noundef %add.i569)
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus.tr, i32 0, i32 3
  %29 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %29)
  %dev.01013 = load ptr, ptr %devices, align 4
  %cmp58.not1014 = icmp eq ptr %dev.01013, %devices
  br i1 %cmp58.not1014, label %if.end52.cleanup283_crit_edge, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

if.end52.cleanup283_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup283

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end52.for.body_crit_edge
  %dev.01017 = phi ptr [ %dev.0, %for.inc.for.body_crit_edge ], [ %dev.01013, %if.end52.for.body_crit_edge ]
  %normal_bridges.01016 = phi i32 [ %normal_bridges.1, %for.inc.for.body_crit_edge ], [ 0, %if.end52.for.body_crit_edge ]
  %hotplug_bridges.01015 = phi i32 [ %hotplug_bridges.1, %for.inc.for.body_crit_edge ], [ 0, %if.end52.for.body_crit_edge ]
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %dev.01017, i32 0, i32 13
  %30 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hdr_type.i, align 1
  %32 = add i8 %31, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %33 = icmp ult i8 %32, 2
  br i1 %33, label %if.else, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %for.body
  %is_hotplug_bridge = getelementptr inbounds %struct.pci_dev, ptr %dev.01017, i32 0, i32 49
  %34 = ptrtoint ptr %is_hotplug_bridge to i32
  call void @__asan_loadN_noabort(i32 %34, i32 5)
  %bf.load = load i40, ptr %is_hotplug_bridge, align 1
  %35 = and i40 %bf.load, 32768
  %tobool61.not = icmp eq i40 %35, 0
  br i1 %tobool61.not, label %if.else63, label %if.then62

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %hotplug_bridges.01015, 1
  br label %for.inc

if.else63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %inc64 = add i32 %normal_bridges.01016, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else63, %if.then62, %for.body.for.inc_crit_edge
  %hotplug_bridges.1 = phi i32 [ %inc, %if.then62 ], [ %hotplug_bridges.01015, %if.else63 ], [ %hotplug_bridges.01015, %for.body.for.inc_crit_edge ]
  %normal_bridges.1 = phi i32 [ %normal_bridges.01016, %if.then62 ], [ %inc64, %if.else63 ], [ %normal_bridges.01016, %for.body.for.inc_crit_edge ]
  %36 = ptrtoint ptr %dev.01017 to i32
  call void @__asan_load4_noabort(i32 %36)
  %dev.0 = load ptr, ptr %dev.01017, align 4
  %cmp58.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp58.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %add72 = add i32 %normal_bridges.1, %hotplug_bridges.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add72)
  %cmp73 = icmp eq i32 %add72, 1
  br i1 %cmp73, label %if.then74, label %if.end84

if.then74:                                        ; preds = %for.end
  %37 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devices, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %subordinate, align 4
  %tobool80.not = icmp eq ptr %40, null
  br i1 %tobool80.not, label %if.then74.cleanup283_crit_edge, label %if.then81

if.then74.cleanup283_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup283

if.then81:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %.fca.0.insert467 = insertvalue [8 x i32] poison, i32 %io.sroa.0.0, 0
  %.fca.1.insert470 = insertvalue [8 x i32] %.fca.0.insert467, i32 %io.coerce.fca.1.extract, 1
  %.fca.2.insert473 = insertvalue [8 x i32] %.fca.1.insert470, i32 %io.coerce.fca.2.extract, 2
  %.fca.3.insert476 = insertvalue [8 x i32] %.fca.2.insert473, i32 %io.coerce.fca.3.extract, 3
  %.fca.4.insert479 = insertvalue [8 x i32] %.fca.3.insert476, i32 %io.coerce.fca.4.extract, 4
  %.fca.5.insert482 = insertvalue [8 x i32] %.fca.4.insert479, i32 %io.coerce.fca.5.extract, 5
  %.fca.6.insert485 = insertvalue [8 x i32] %.fca.5.insert482, i32 %io.coerce.fca.6.extract, 6
  %.fca.7.insert488 = insertvalue [8 x i32] %.fca.6.insert485, i32 %io.coerce.fca.7.extract, 7
  %.fca.0.insert419 = insertvalue [8 x i32] poison, i32 %mmio.sroa.0.0, 0
  %.fca.1.insert422 = insertvalue [8 x i32] %.fca.0.insert419, i32 %mmio.coerce.fca.1.extract, 1
  %.fca.2.insert425 = insertvalue [8 x i32] %.fca.1.insert422, i32 %mmio.coerce.fca.2.extract, 2
  %.fca.3.insert428 = insertvalue [8 x i32] %.fca.2.insert425, i32 %mmio.coerce.fca.3.extract, 3
  %.fca.4.insert431 = insertvalue [8 x i32] %.fca.3.insert428, i32 %mmio.coerce.fca.4.extract, 4
  %.fca.5.insert434 = insertvalue [8 x i32] %.fca.4.insert431, i32 %mmio.coerce.fca.5.extract, 5
  %.fca.6.insert437 = insertvalue [8 x i32] %.fca.5.insert434, i32 %mmio.coerce.fca.6.extract, 6
  %.fca.7.insert440 = insertvalue [8 x i32] %.fca.6.insert437, i32 %mmio.coerce.fca.7.extract, 7
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %mmio_pref.sroa.0.0, 0
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %mmio_pref.coerce.fca.1.extract, 1
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %mmio_pref.coerce.fca.2.extract, 2
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %mmio_pref.coerce.fca.3.extract, 3
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %mmio_pref.coerce.fca.4.extract, 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %mmio_pref.coerce.fca.5.extract, 5
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %mmio_pref.coerce.fca.6.extract, 6
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %mmio_pref.coerce.fca.7.extract, 7
  br label %tailrecurse

if.end84:                                         ; preds = %for.end
  %io.coerce.fca.2.extract.le = extractvalue [8 x i32] %io.coerce.tr, 2
  %io.coerce.fca.3.extract.le = extractvalue [8 x i32] %io.coerce.tr, 3
  %io.coerce.fca.4.extract.le = extractvalue [8 x i32] %io.coerce.tr, 4
  %io.coerce.fca.5.extract.le = extractvalue [8 x i32] %io.coerce.tr, 5
  %io.coerce.fca.6.extract.le = extractvalue [8 x i32] %io.coerce.tr, 6
  %io.coerce.fca.7.extract.le = extractvalue [8 x i32] %io.coerce.tr, 7
  %mmio.coerce.fca.2.extract.le = extractvalue [8 x i32] %mmio.coerce.tr, 2
  %mmio.coerce.fca.3.extract.le = extractvalue [8 x i32] %mmio.coerce.tr, 3
  %mmio.coerce.fca.4.extract.le = extractvalue [8 x i32] %mmio.coerce.tr, 4
  %mmio.coerce.fca.5.extract.le = extractvalue [8 x i32] %mmio.coerce.tr, 5
  %mmio.coerce.fca.6.extract.le = extractvalue [8 x i32] %mmio.coerce.tr, 6
  %mmio.coerce.fca.7.extract.le = extractvalue [8 x i32] %mmio.coerce.tr, 7
  %mmio_pref.coerce.fca.2.extract.le = extractvalue [8 x i32] %mmio_pref.coerce.tr, 2
  %mmio_pref.coerce.fca.3.extract.le = extractvalue [8 x i32] %mmio_pref.coerce.tr, 3
  %mmio_pref.coerce.fca.4.extract.le = extractvalue [8 x i32] %mmio_pref.coerce.tr, 4
  %mmio_pref.coerce.fca.5.extract.le = extractvalue [8 x i32] %mmio_pref.coerce.tr, 5
  %mmio_pref.coerce.fca.6.extract.le = extractvalue [8 x i32] %mmio_pref.coerce.tr, 6
  %mmio_pref.coerce.fca.7.extract.le = extractvalue [8 x i32] %mmio_pref.coerce.tr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hotplug_bridges.1)
  %cmp85 = icmp eq i32 %hotplug_bridges.1, 0
  br i1 %cmp85, label %if.end84.cleanup283_crit_edge, label %for.cond93.preheader

if.end84.cleanup283_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup283

for.cond93.preheader:                             ; preds = %if.end84
  %41 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %41)
  %dev.11034 = load ptr, ptr %devices, align 4
  %cmp96.not1035 = icmp eq ptr %dev.11034, %devices
  br i1 %cmp96.not1035, label %for.cond93.preheader.if.else162.i.i873_crit_edge, label %for.cond93.preheader.for.body98_crit_edge

for.cond93.preheader.for.body98_crit_edge:        ; preds = %for.cond93.preheader
  br label %for.body98

for.cond93.preheader.if.else162.i.i873_crit_edge: ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else162.i.i873

for.body98:                                       ; preds = %for.inc211.for.body98_crit_edge, %for.cond93.preheader.for.body98_crit_edge
  %dev.11039 = phi ptr [ %dev.1, %for.inc211.for.body98_crit_edge ], [ %dev.11034, %for.cond93.preheader.for.body98_crit_edge ]
  %mmio_pref.sroa.0.11038 = phi i32 [ %mmio_pref.sroa.0.2, %for.inc211.for.body98_crit_edge ], [ %mmio_pref.sroa.0.0, %for.cond93.preheader.for.body98_crit_edge ]
  %io.sroa.0.11037 = phi i32 [ %io.sroa.0.3, %for.inc211.for.body98_crit_edge ], [ %io.sroa.0.0, %for.cond93.preheader.for.body98_crit_edge ]
  %mmio.sroa.0.11036 = phi i32 [ %mmio.sroa.0.3, %for.inc211.for.body98_crit_edge ], [ %mmio.sroa.0.0, %for.cond93.preheader.for.body98_crit_edge ]
  %hdr_type.i570 = getelementptr inbounds %struct.pci_dev, ptr %dev.11039, i32 0, i32 13
  %42 = ptrtoint ptr %hdr_type.i570 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hdr_type.i570, align 1
  %44 = add i8 %43, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %45 = icmp ult i8 %44, 2
  br i1 %45, label %if.else101, label %for.body98.for.inc211_crit_edge

for.body98.for.inc211_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc211

if.else101:                                       ; preds = %for.body98
  %is_hotplug_bridge102 = getelementptr inbounds %struct.pci_dev, ptr %dev.11039, i32 0, i32 49
  %46 = ptrtoint ptr %is_hotplug_bridge102 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 5)
  %bf.load103 = load i40, ptr %is_hotplug_bridge102, align 1
  %47 = and i40 %bf.load103, 32768
  %tobool107.not = icmp eq i40 %47, 0
  br i1 %tobool107.not, label %if.end109, label %if.else101.for.inc211_crit_edge

if.else101.for.inc211_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc211

if.end109:                                        ; preds = %if.else101
  %arrayidx111 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 13
  %class.i578 = getelementptr inbounds %struct.pci_dev, ptr %dev.11039, i32 0, i32 11
  %48 = ptrtoint ptr %class.i578 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %class.i578, align 8
  %shr.mask.i579 = and i32 %49, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i579)
  %cmp2.i580 = icmp eq i32 %shr.mask.i579, 395008
  br i1 %cmp2.i580, label %if.then3.i585, label %if.end5.i592

if.then3.i585:                                    ; preds = %if.end109
  %flags.i.i582 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 13, i32 3
  %50 = ptrtoint ptr %flags.i.i582 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i582, align 4
  %and.i.i583 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i583)
  %tobool.not.i.i584 = icmp eq i32 %and.i.i583, 0
  br i1 %tobool.not.i.i584, label %if.end.i.i588, label %if.then3.i585.return.sink.split.i.i590_crit_edge

if.then3.i585.return.sink.split.i.i590_crit_edge: ; preds = %if.then3.i585
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i590

if.end.i.i588:                                    ; preds = %if.then3.i585
  %and2.i.i586 = and i32 %51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i586)
  %tobool3.not.i.i587 = icmp eq i32 %and2.i.i586, 0
  br i1 %tobool3.not.i.i587, label %if.end.i.i588.cond.end124_crit_edge, label %if.end.i.i588.return.sink.split.i.i590_crit_edge

if.end.i.i588.return.sink.split.i.i590_crit_edge: ; preds = %if.end.i.i588
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i590

if.end.i.i588.cond.end124_crit_edge:              ; preds = %if.end.i.i588
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end124

return.sink.split.i.i590:                         ; preds = %if.end.i.i588.return.sink.split.i.i590_crit_edge, %if.then3.i585.return.sink.split.i.i590_crit_edge
  %pci_cardbus_mem_size.sink.i.i589 = phi ptr [ @pci_cardbus_io_size, %if.then3.i585.return.sink.split.i.i590_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i588.return.sink.split.i.i590_crit_edge ]
  %52 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i589 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pci_cardbus_mem_size.sink.i.i589, align 4
  br label %pci_resource_alignment.exit594

if.end5.i592:                                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i591 = tail call i32 @resource_alignment(ptr noundef %arrayidx111) #12
  br label %pci_resource_alignment.exit594

pci_resource_alignment.exit594:                   ; preds = %if.end5.i592, %return.sink.split.i.i590
  %retval.0.i593 = phi i32 [ %call6.i591, %if.end5.i592 ], [ %53, %return.sink.split.i.i590 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i593)
  %tobool113.not = icmp eq i32 %retval.0.i593, 0
  br i1 %tobool113.not, label %pci_resource_alignment.exit594.cond.end124_crit_edge, label %cond.true114

pci_resource_alignment.exit594.cond.end124_crit_edge: ; preds = %pci_resource_alignment.exit594
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end124

cond.true114:                                     ; preds = %pci_resource_alignment.exit594
  call void @__sanitizer_cov_trace_pc() #14
  %sub116 = add i32 %io.sroa.0.11037, -1
  %add117 = add i32 %sub116, %retval.0.i593
  %neg119 = sub i32 0, %retval.0.i593
  %and120 = and i32 %add117, %neg119
  %sub122 = sub i32 %and120, %io.sroa.0.11037
  br label %cond.end124

cond.end124:                                      ; preds = %cond.true114, %pci_resource_alignment.exit594.cond.end124_crit_edge, %if.end.i.i588.cond.end124_crit_edge
  %cond125 = phi i32 [ %sub122, %cond.true114 ], [ 0, %pci_resource_alignment.exit594.cond.end124_crit_edge ], [ 0, %if.end.i.i588.cond.end124_crit_edge ]
  %end.i595 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 13, i32 1
  %54 = ptrtoint ptr %end.i595 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end.i595, align 4
  %56 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx111, align 4
  %parent128 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 13, i32 5
  %58 = ptrtoint ptr %parent128 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent128, align 4
  %tobool129.not = icmp eq ptr %59, null
  %sub.i596 = add i32 %io.sroa.0.11037, 1
  %add.i597 = add i32 %sub.i596, %cond125
  %add127 = add i32 %add.i597, %55
  %add132 = sub i32 %add127, %57
  %60 = tail call i32 @llvm.umin.i32(i32 %add132, i32 %sub.i)
  %io.sroa.0.2 = select i1 %tobool129.not, i32 %60, i32 %io.sroa.0.11037
  %arrayidx144 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 14
  %61 = ptrtoint ptr %class.i578 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %class.i578, align 8
  %shr.mask.i606 = and i32 %62, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i606)
  %cmp2.i607 = icmp eq i32 %shr.mask.i606, 395008
  br i1 %cmp2.i607, label %if.then3.i612, label %if.end5.i619

if.then3.i612:                                    ; preds = %cond.end124
  %flags.i.i609 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 14, i32 3
  %63 = ptrtoint ptr %flags.i.i609 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i.i609, align 4
  %and.i.i610 = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i610)
  %tobool.not.i.i611 = icmp eq i32 %and.i.i610, 0
  br i1 %tobool.not.i.i611, label %if.end.i.i615, label %if.then3.i612.return.sink.split.i.i617_crit_edge

if.then3.i612.return.sink.split.i.i617_crit_edge: ; preds = %if.then3.i612
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i617

if.end.i.i615:                                    ; preds = %if.then3.i612
  %and2.i.i613 = and i32 %64, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i613)
  %tobool3.not.i.i614 = icmp eq i32 %and2.i.i613, 0
  br i1 %tobool3.not.i.i614, label %if.end.i.i615.cond.end157_crit_edge, label %if.end.i.i615.return.sink.split.i.i617_crit_edge

if.end.i.i615.return.sink.split.i.i617_crit_edge: ; preds = %if.end.i.i615
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i617

if.end.i.i615.cond.end157_crit_edge:              ; preds = %if.end.i.i615
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end157

return.sink.split.i.i617:                         ; preds = %if.end.i.i615.return.sink.split.i.i617_crit_edge, %if.then3.i612.return.sink.split.i.i617_crit_edge
  %pci_cardbus_mem_size.sink.i.i616 = phi ptr [ @pci_cardbus_io_size, %if.then3.i612.return.sink.split.i.i617_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i615.return.sink.split.i.i617_crit_edge ]
  %65 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i616 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pci_cardbus_mem_size.sink.i.i616, align 4
  br label %pci_resource_alignment.exit621

if.end5.i619:                                     ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i618 = tail call i32 @resource_alignment(ptr noundef %arrayidx144) #12
  br label %pci_resource_alignment.exit621

pci_resource_alignment.exit621:                   ; preds = %if.end5.i619, %return.sink.split.i.i617
  %retval.0.i620 = phi i32 [ %call6.i618, %if.end5.i619 ], [ %66, %return.sink.split.i.i617 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i620)
  %tobool146.not = icmp eq i32 %retval.0.i620, 0
  br i1 %tobool146.not, label %pci_resource_alignment.exit621.cond.end157_crit_edge, label %cond.true147

pci_resource_alignment.exit621.cond.end157_crit_edge: ; preds = %pci_resource_alignment.exit621
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end157

cond.true147:                                     ; preds = %pci_resource_alignment.exit621
  call void @__sanitizer_cov_trace_pc() #14
  %sub149 = add i32 %mmio.sroa.0.11036, -1
  %add150 = add i32 %sub149, %retval.0.i620
  %neg152 = sub i32 0, %retval.0.i620
  %and153 = and i32 %add150, %neg152
  %sub155 = sub i32 %and153, %mmio.sroa.0.11036
  br label %cond.end157

cond.end157:                                      ; preds = %cond.true147, %pci_resource_alignment.exit621.cond.end157_crit_edge, %if.end.i.i615.cond.end157_crit_edge
  %cond158 = phi i32 [ %sub155, %cond.true147 ], [ 0, %pci_resource_alignment.exit621.cond.end157_crit_edge ], [ 0, %if.end.i.i615.cond.end157_crit_edge ]
  %end.i622 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 14, i32 1
  %67 = ptrtoint ptr %end.i622 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %end.i622, align 4
  %69 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx144, align 4
  %parent161 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 14, i32 5
  %71 = ptrtoint ptr %parent161 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parent161, align 4
  %tobool162.not = icmp eq ptr %72, null
  %sub.i623 = add i32 %mmio.sroa.0.11036, 1
  %add.i624 = add i32 %sub.i623, %cond158
  %add160 = add i32 %add.i624, %68
  %add165 = sub i32 %add160, %70
  %73 = tail call i32 @llvm.umin.i32(i32 %add165, i32 %sub.i565)
  %mmio.sroa.0.2 = select i1 %tobool162.not, i32 %73, i32 %mmio.sroa.0.11036
  %arrayidx177 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 15
  %74 = ptrtoint ptr %class.i578 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %class.i578, align 8
  %shr.mask.i633 = and i32 %75, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i633)
  %cmp2.i634 = icmp eq i32 %shr.mask.i633, 395008
  br i1 %cmp2.i634, label %if.then3.i639, label %if.end5.i646

if.then3.i639:                                    ; preds = %cond.end157
  %flags.i.i636 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 15, i32 3
  %76 = ptrtoint ptr %flags.i.i636 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i.i636, align 4
  %and.i.i637 = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i637)
  %tobool.not.i.i638 = icmp eq i32 %and.i.i637, 0
  br i1 %tobool.not.i.i638, label %if.end.i.i642, label %if.then3.i639.return.sink.split.i.i644_crit_edge

if.then3.i639.return.sink.split.i.i644_crit_edge: ; preds = %if.then3.i639
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i644

if.end.i.i642:                                    ; preds = %if.then3.i639
  %and2.i.i640 = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i640)
  %tobool3.not.i.i641 = icmp eq i32 %and2.i.i640, 0
  br i1 %tobool3.not.i.i641, label %if.end.i.i642.cond.end190_crit_edge, label %if.end.i.i642.return.sink.split.i.i644_crit_edge

if.end.i.i642.return.sink.split.i.i644_crit_edge: ; preds = %if.end.i.i642
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i644

if.end.i.i642.cond.end190_crit_edge:              ; preds = %if.end.i.i642
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end190

return.sink.split.i.i644:                         ; preds = %if.end.i.i642.return.sink.split.i.i644_crit_edge, %if.then3.i639.return.sink.split.i.i644_crit_edge
  %pci_cardbus_mem_size.sink.i.i643 = phi ptr [ @pci_cardbus_io_size, %if.then3.i639.return.sink.split.i.i644_crit_edge ], [ @pci_cardbus_mem_size, %if.end.i.i642.return.sink.split.i.i644_crit_edge ]
  %78 = ptrtoint ptr %pci_cardbus_mem_size.sink.i.i643 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pci_cardbus_mem_size.sink.i.i643, align 4
  br label %pci_resource_alignment.exit648

if.end5.i646:                                     ; preds = %cond.end157
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i645 = tail call i32 @resource_alignment(ptr noundef %arrayidx177) #12
  br label %pci_resource_alignment.exit648

pci_resource_alignment.exit648:                   ; preds = %if.end5.i646, %return.sink.split.i.i644
  %retval.0.i647 = phi i32 [ %call6.i645, %if.end5.i646 ], [ %79, %return.sink.split.i.i644 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i647)
  %tobool179.not = icmp eq i32 %retval.0.i647, 0
  br i1 %tobool179.not, label %pci_resource_alignment.exit648.cond.end190_crit_edge, label %cond.true180

pci_resource_alignment.exit648.cond.end190_crit_edge: ; preds = %pci_resource_alignment.exit648
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end190

cond.true180:                                     ; preds = %pci_resource_alignment.exit648
  call void @__sanitizer_cov_trace_pc() #14
  %sub182 = add i32 %mmio_pref.sroa.0.11038, -1
  %add183 = add i32 %sub182, %retval.0.i647
  %neg185 = sub i32 0, %retval.0.i647
  %and186 = and i32 %add183, %neg185
  %sub188 = sub i32 %and186, %mmio_pref.sroa.0.11038
  br label %cond.end190

cond.end190:                                      ; preds = %cond.true180, %pci_resource_alignment.exit648.cond.end190_crit_edge, %if.end.i.i642.cond.end190_crit_edge
  %cond191 = phi i32 [ %sub188, %cond.true180 ], [ 0, %pci_resource_alignment.exit648.cond.end190_crit_edge ], [ 0, %if.end.i.i642.cond.end190_crit_edge ]
  %parent194 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 15, i32 5
  %80 = ptrtoint ptr %parent194 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent194, align 4
  %tobool195.not = icmp eq ptr %81, null
  br i1 %tobool195.not, label %if.then196, label %cond.end190.for.inc211_crit_edge

cond.end190.for.inc211_crit_edge:                 ; preds = %cond.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc211

if.then196:                                       ; preds = %cond.end190
  call void @__sanitizer_cov_trace_pc() #14
  %end.i649 = getelementptr %struct.pci_dev, ptr %dev.11039, i32 0, i32 47, i32 15, i32 1
  %82 = ptrtoint ptr %end.i649 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %end.i649, align 4
  %84 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx177, align 4
  %sub.i650 = add i32 %mmio_pref.sroa.0.11038, 1
  %add.i651 = add i32 %sub.i650, %cond191
  %add193 = add i32 %add.i651, %83
  %add198 = sub i32 %add193, %85
  %86 = tail call i32 @llvm.umin.i32(i32 %add198, i32 %sub.i568)
  br label %for.inc211

for.inc211:                                       ; preds = %if.then196, %cond.end190.for.inc211_crit_edge, %if.else101.for.inc211_crit_edge, %for.body98.for.inc211_crit_edge
  %mmio.sroa.0.3 = phi i32 [ %mmio.sroa.0.2, %if.then196 ], [ %mmio.sroa.0.2, %cond.end190.for.inc211_crit_edge ], [ %mmio.sroa.0.11036, %if.else101.for.inc211_crit_edge ], [ %mmio.sroa.0.11036, %for.body98.for.inc211_crit_edge ]
  %io.sroa.0.3 = phi i32 [ %io.sroa.0.2, %if.then196 ], [ %io.sroa.0.2, %cond.end190.for.inc211_crit_edge ], [ %io.sroa.0.11037, %if.else101.for.inc211_crit_edge ], [ %io.sroa.0.11037, %for.body98.for.inc211_crit_edge ]
  %mmio_pref.sroa.0.2 = phi i32 [ %86, %if.then196 ], [ %mmio_pref.sroa.0.11038, %cond.end190.for.inc211_crit_edge ], [ %mmio_pref.sroa.0.11038, %if.else101.for.inc211_crit_edge ], [ %mmio_pref.sroa.0.11038, %for.body98.for.inc211_crit_edge ]
  %87 = ptrtoint ptr %dev.11039 to i32
  call void @__asan_load4_noabort(i32 %87)
  %dev.1 = load ptr, ptr %dev.11039, align 4
  %cmp96.not = icmp eq ptr %dev.1, %devices
  br i1 %cmp96.not, label %for.end217.loopexit, label %for.inc211.for.body98_crit_edge

for.inc211.for.body98_crit_edge:                  ; preds = %for.inc211
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body98

for.end217.loopexit:                              ; preds = %for.inc211
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = sub i32 %sub.i, %io.sroa.0.3
  br label %if.else162.i.i873

if.else162.i.i873:                                ; preds = %for.end217.loopexit, %for.cond93.preheader.if.else162.i.i873_crit_edge
  %add.i654.pre-phi = phi i32 [ %.pre, %for.end217.loopexit ], [ %add.i, %for.cond93.preheader.if.else162.i.i873_crit_edge ]
  %mmio.sroa.0.1.lcssa = phi i32 [ %mmio.sroa.0.3, %for.end217.loopexit ], [ %mmio.sroa.0.0, %for.cond93.preheader.if.else162.i.i873_crit_edge ]
  %io.sroa.0.1.lcssa = phi i32 [ %io.sroa.0.3, %for.end217.loopexit ], [ %io.sroa.0.0, %for.cond93.preheader.if.else162.i.i873_crit_edge ]
  %mmio_pref.sroa.0.1.lcssa = phi i32 [ %mmio_pref.sroa.0.2, %for.end217.loopexit ], [ %mmio_pref.sroa.0.0, %for.cond93.preheader.if.else162.i.i873_crit_edge ]
  %div172.i.i = udiv i32 %add.i654.pre-phi, %hotplug_bridges.1
  %add.i658 = sub i32 %sub.i565, %mmio.sroa.0.1.lcssa
  %div172.i.i763 = udiv i32 %add.i658, %hotplug_bridges.1
  %add.i769 = sub i32 %sub.i568, %mmio_pref.sroa.0.1.lcssa
  %div172.i.i874 = udiv i32 %add.i769, %hotplug_bridges.1
  %88 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %88)
  %dev.21043 = load ptr, ptr %devices, align 4
  %cmp237.not1044 = icmp eq ptr %dev.21043, %devices
  br i1 %cmp237.not1044, label %if.else162.i.i873.cleanup283_crit_edge, label %if.else162.i.i873.for.body240_crit_edge

if.else162.i.i873.for.body240_crit_edge:          ; preds = %if.else162.i.i873
  br label %for.body240

if.else162.i.i873.cleanup283_crit_edge:           ; preds = %if.else162.i.i873
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup283

for.body240:                                      ; preds = %for.inc276.for.body240_crit_edge, %if.else162.i.i873.for.body240_crit_edge
  %dev.21048 = phi ptr [ %dev.2, %for.inc276.for.body240_crit_edge ], [ %dev.21043, %if.else162.i.i873.for.body240_crit_edge ]
  %mmio_pref.sroa.0.31047 = phi i32 [ %mmio_pref.sroa.0.4, %for.inc276.for.body240_crit_edge ], [ %mmio_pref.sroa.0.1.lcssa, %if.else162.i.i873.for.body240_crit_edge ]
  %io.sroa.0.41046 = phi i32 [ %io.sroa.0.5, %for.inc276.for.body240_crit_edge ], [ %io.sroa.0.1.lcssa, %if.else162.i.i873.for.body240_crit_edge ]
  %mmio.sroa.0.41045 = phi i32 [ %mmio.sroa.0.5, %for.inc276.for.body240_crit_edge ], [ %mmio.sroa.0.1.lcssa, %if.else162.i.i873.for.body240_crit_edge ]
  %hdr_type.i878 = getelementptr inbounds %struct.pci_dev, ptr %dev.21048, i32 0, i32 13
  %89 = ptrtoint ptr %hdr_type.i878 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %hdr_type.i878, align 1
  %91 = add i8 %90, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %92 = icmp ult i8 %91, 2
  br i1 %92, label %if.else243, label %for.body240.for.inc276_crit_edge

for.body240.for.inc276_crit_edge:                 ; preds = %for.body240
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc276

if.else243:                                       ; preds = %for.body240
  %subordinate244 = getelementptr inbounds %struct.pci_dev, ptr %dev.21048, i32 0, i32 2
  %93 = ptrtoint ptr %subordinate244 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %subordinate244, align 4
  %tobool245.not = icmp eq ptr %94, null
  br i1 %tobool245.not, label %if.else243.for.inc276_crit_edge, label %lor.lhs.false

if.else243.for.inc276_crit_edge:                  ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc276

lor.lhs.false:                                    ; preds = %if.else243
  %is_hotplug_bridge246 = getelementptr inbounds %struct.pci_dev, ptr %dev.21048, i32 0, i32 49
  %95 = ptrtoint ptr %is_hotplug_bridge246 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 5)
  %bf.load247 = load i40, ptr %is_hotplug_bridge246, align 1
  %96 = and i40 %bf.load247, 32768
  %tobool251.not = icmp eq i40 %96, 0
  br i1 %tobool251.not, label %lor.lhs.false.for.inc276_crit_edge, label %if.end253

lor.lhs.false.for.inc276_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc276

if.end253:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %add255 = add i32 %io.sroa.0.41046, %div172.i.i
  %sub256 = add i32 %add255, -1
  %add259 = add i32 %mmio.sroa.0.41045, %div172.i.i763
  %sub260 = add i32 %add259, -1
  %add263 = add i32 %mmio_pref.sroa.0.31047, %div172.i.i874
  %sub264 = add i32 %add263, -1
  %.fca.0.insert491 = insertvalue [8 x i32] poison, i32 %io.sroa.0.41046, 0
  %.fca.1.insert494 = insertvalue [8 x i32] %.fca.0.insert491, i32 %sub256, 1
  %.fca.2.insert497 = insertvalue [8 x i32] %.fca.1.insert494, i32 %io.coerce.fca.2.extract.le, 2
  %.fca.3.insert500 = insertvalue [8 x i32] %.fca.2.insert497, i32 %io.coerce.fca.3.extract.le, 3
  %.fca.4.insert503 = insertvalue [8 x i32] %.fca.3.insert500, i32 %io.coerce.fca.4.extract.le, 4
  %.fca.5.insert506 = insertvalue [8 x i32] %.fca.4.insert503, i32 %io.coerce.fca.5.extract.le, 5
  %.fca.6.insert509 = insertvalue [8 x i32] %.fca.5.insert506, i32 %io.coerce.fca.6.extract.le, 6
  %.fca.7.insert512 = insertvalue [8 x i32] %.fca.6.insert509, i32 %io.coerce.fca.7.extract.le, 7
  %.fca.0.insert443 = insertvalue [8 x i32] poison, i32 %mmio.sroa.0.41045, 0
  %.fca.1.insert446 = insertvalue [8 x i32] %.fca.0.insert443, i32 %sub260, 1
  %.fca.2.insert449 = insertvalue [8 x i32] %.fca.1.insert446, i32 %mmio.coerce.fca.2.extract.le, 2
  %.fca.3.insert452 = insertvalue [8 x i32] %.fca.2.insert449, i32 %mmio.coerce.fca.3.extract.le, 3
  %.fca.4.insert455 = insertvalue [8 x i32] %.fca.3.insert452, i32 %mmio.coerce.fca.4.extract.le, 4
  %.fca.5.insert458 = insertvalue [8 x i32] %.fca.4.insert455, i32 %mmio.coerce.fca.5.extract.le, 5
  %.fca.6.insert461 = insertvalue [8 x i32] %.fca.5.insert458, i32 %mmio.coerce.fca.6.extract.le, 6
  %.fca.7.insert464 = insertvalue [8 x i32] %.fca.6.insert461, i32 %mmio.coerce.fca.7.extract.le, 7
  %.fca.0.insert395 = insertvalue [8 x i32] poison, i32 %mmio_pref.sroa.0.31047, 0
  %.fca.1.insert398 = insertvalue [8 x i32] %.fca.0.insert395, i32 %sub264, 1
  %.fca.2.insert401 = insertvalue [8 x i32] %.fca.1.insert398, i32 %mmio_pref.coerce.fca.2.extract.le, 2
  %.fca.3.insert404 = insertvalue [8 x i32] %.fca.2.insert401, i32 %mmio_pref.coerce.fca.3.extract.le, 3
  %.fca.4.insert407 = insertvalue [8 x i32] %.fca.3.insert404, i32 %mmio_pref.coerce.fca.4.extract.le, 4
  %.fca.5.insert410 = insertvalue [8 x i32] %.fca.4.insert407, i32 %mmio_pref.coerce.fca.5.extract.le, 5
  %.fca.6.insert413 = insertvalue [8 x i32] %.fca.5.insert410, i32 %mmio_pref.coerce.fca.6.extract.le, 6
  %.fca.7.insert416 = insertvalue [8 x i32] %.fca.6.insert413, i32 %mmio_pref.coerce.fca.7.extract.le, 7
  tail call fastcc void @pci_bus_distribute_available_resources(ptr noundef nonnull %94, ptr noundef %add_list, [8 x i32] %.fca.7.insert512, [8 x i32] %.fca.7.insert464, [8 x i32] %.fca.7.insert416)
  br label %for.inc276

for.inc276:                                       ; preds = %if.end253, %lor.lhs.false.for.inc276_crit_edge, %if.else243.for.inc276_crit_edge, %for.body240.for.inc276_crit_edge
  %mmio.sroa.0.5 = phi i32 [ %mmio.sroa.0.41045, %if.else243.for.inc276_crit_edge ], [ %mmio.sroa.0.41045, %lor.lhs.false.for.inc276_crit_edge ], [ %add259, %if.end253 ], [ %mmio.sroa.0.41045, %for.body240.for.inc276_crit_edge ]
  %io.sroa.0.5 = phi i32 [ %io.sroa.0.41046, %if.else243.for.inc276_crit_edge ], [ %io.sroa.0.41046, %lor.lhs.false.for.inc276_crit_edge ], [ %add255, %if.end253 ], [ %io.sroa.0.41046, %for.body240.for.inc276_crit_edge ]
  %mmio_pref.sroa.0.4 = phi i32 [ %mmio_pref.sroa.0.31047, %if.else243.for.inc276_crit_edge ], [ %mmio_pref.sroa.0.31047, %lor.lhs.false.for.inc276_crit_edge ], [ %add263, %if.end253 ], [ %mmio_pref.sroa.0.31047, %for.body240.for.inc276_crit_edge ]
  %97 = ptrtoint ptr %dev.21048 to i32
  call void @__asan_load4_noabort(i32 %97)
  %dev.2 = load ptr, ptr %dev.21048, align 4
  %cmp237.not = icmp eq ptr %dev.2, %devices
  br i1 %cmp237.not, label %for.inc276.cleanup283_crit_edge, label %for.inc276.for.body240_crit_edge

for.inc276.for.body240_crit_edge:                 ; preds = %for.inc276
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body240

for.inc276.cleanup283_crit_edge:                  ; preds = %for.inc276
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup283

cleanup283:                                       ; preds = %for.inc276.cleanup283_crit_edge, %if.else162.i.i873.cleanup283_crit_edge, %if.end84.cleanup283_crit_edge, %if.then74.cleanup283_crit_edge, %if.end52.cleanup283_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adjust_bridge_window(ptr noundef %bridge, ptr noundef %res, ptr noundef readonly %add_list, i32 noundef %new_size) unnamed_addr #0 align 64 {
entry:
  %add_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add_size) #12
  %0 = ptrtoint ptr %add_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %add_size, align 4, !annotation !162
  %end.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end.i, align 4
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  %sub.i = add i32 %2, 1
  %add.i = sub i32 %sub.i, %4
  %parent = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 5
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %tobool.not = icmp ne ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_size)
  %tobool1.not = icmp eq i32 %new_size, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %new_size)
  %cmp = icmp ult i32 %add.i, %new_size
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %new_size, %add.i
  %7 = ptrtoint ptr %add_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %add_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adjust_bridge_window.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adjust_bridge_window, %if.end35)) #12
          to label %if.then10 [label %if.end35], !srcloc !170

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adjust_bridge_window.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef %res, ptr noundef nonnull %add_size) #12
  br label %if.end35

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %new_size)
  %cmp12 = icmp ugt i32 %add.i, %new_size
  br i1 %cmp12, label %if.then13, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub14 = sub i32 %add.i, %new_size
  %8 = ptrtoint ptr %add_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub14, ptr %add_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adjust_bridge_window.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adjust_bridge_window, %if.end35)) #12
          to label %if.then29 [label %if.end35], !srcloc !170

if.then29:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %bridge, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adjust_bridge_window.__UNIQUE_ID_ddebug253, ptr noundef %dev30, ptr noundef nonnull @.str.67, ptr noundef %res, ptr noundef nonnull %add_size) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.then13, %if.else.if.end35_crit_edge, %if.then10, %if.then4
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res, align 4
  %add = add i32 %new_size, -1
  %sub36 = add i32 %add, %10
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub36, ptr %end.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end35
  %dev_res.0.in.i = phi ptr [ %add_list, %if.end35 ], [ %dev_res.0.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %dev_res.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %dev_res.0.i = load ptr, ptr %dev_res.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dev_res.0.i, %add_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %res7.i = getelementptr inbounds %struct.pci_dev_resource, ptr %dev_res.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %res7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %res7.i, align 4
  %cmp8.i = icmp eq ptr %14, %res
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_res.0.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %dev_res.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_res.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %dev_res.0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_res.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev_res.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %dev_res.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add_size) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !126, !127, !128, !129, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !151, !152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__ksymtab_pci_flags, !1, !"__ksymtab_pci_flags", i1 false, i1 false}
!1 = !{!"../drivers/pci/setup-bus.c", i32 29, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/setup-bus.c", i32 512, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @pci_setup_cardbus._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @pci_setup_cardbus._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/setup-bus.c", i32 522, i32 3}
!12 = !{ptr @pci_setup_cardbus._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @pci_setup_cardbus._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @pci_setup_cardbus._entry.8, !15, !"_entry", i1 false, i1 false}
!15 = !{!"../drivers/pci/setup-bus.c", i32 532, i32 3}
!16 = !{ptr @pci_setup_cardbus._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @pci_setup_cardbus._entry.10, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/pci/setup-bus.c", i32 542, i32 3}
!19 = !{ptr @pci_setup_cardbus._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @pci_setup_cardbus._entry.12, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/pci/setup-bus.c", i32 552, i32 3}
!22 = !{ptr @pci_setup_cardbus._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_pci_setup_cardbus, !24, !"__ksymtab_pci_setup_cardbus", i1 false, i1 false}
!24 = !{!"../drivers/pci/setup-bus.c", i32 559, i32 1}
!25 = !{ptr @__ksymtab_pci_bus_size_bridges, !26, !"__ksymtab_pci_bus_size_bridges", i1 false, i1 false}
!26 = !{!"../drivers/pci/setup-bus.c", i32 1336, i32 1}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/setup-bus.c", i32 1408, i32 4}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__pci_bus_assign_resources._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @__pci_bus_assign_resources._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_pci_bus_assign_resources, !33, !"__ksymtab_pci_bus_assign_resources", i1 false, i1 false}
!33 = !{!"../drivers/pci/setup-bus.c", i32 1419, i32 1}
!34 = !{ptr @__ksymtab_pci_bus_claim_resources, !35, !"__ksymtab_pci_bus_claim_resources", i1 false, i1 false}
!35 = !{!"../drivers/pci/setup-bus.c", i32 1486, i32 1}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/setup-bus.c", i32 1687, i32 20}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/setup-bus.c", i32 1689, i32 25}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/setup-bus.c", i32 1771, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pci_assign_unassigned_root_bus_resources._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @pci_assign_unassigned_root_bus_resources._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/setup-bus.c", i32 1799, i32 4}
!47 = !{ptr @pci_assign_unassigned_root_bus_resources._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pci_assign_unassigned_root_bus_resources._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/setup-bus.c", i32 1801, i32 4}
!51 = !{ptr @pci_assign_unassigned_root_bus_resources._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @pci_assign_unassigned_root_bus_resources._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/setup-bus.c", i32 1807, i32 2}
!55 = !{ptr @pci_assign_unassigned_root_bus_resources._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pci_assign_unassigned_root_bus_resources._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/setup-bus.c", i32 2084, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pci_assign_unassigned_bridge_resources._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @pci_assign_unassigned_bridge_resources._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/setup-bus.c", i32 2119, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @pci_assign_unassigned_bridge_resources._entry.31, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @pci_assign_unassigned_bridge_resources._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @__ksymtab_pci_assign_unassigned_bridge_resources, !68, !"__ksymtab_pci_assign_unassigned_bridge_resources", i1 false, i1 false}
!68 = !{!"../drivers/pci/setup-bus.c", i32 2122, i32 1}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/setup-bus.c", i32 2155, i32 4}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @pci_reassign_bridge_resources._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @pci_reassign_bridge_resources._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @__ksymtab_pci_assign_unassigned_bus_resources, !75, !"__ksymtab_pci_assign_unassigned_bus_resources", i1 false, i1 false}
!75 = !{!"../drivers/pci/setup-bus.c", i32 2242, i32 1}
!76 = !{ptr @pci_flags, !77, !"pci_flags", i1 false, i1 false}
!77 = !{!"../drivers/pci/setup-bus.c", i32 28, i32 14}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/setup-bus.c", i32 669, i32 2}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__pci_setup_bridge._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @__pci_setup_bridge._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/setup-bus.c", i32 597, i32 3}
!85 = !{ptr @pci_setup_bridge_io._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pci_setup_bridge_io._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/setup-bus.c", i32 623, i32 3}
!89 = !{ptr @pci_setup_bridge_mmio._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pci_setup_bridge_mmio._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/setup-bus.c", i32 654, i32 3}
!93 = !{ptr @pci_setup_bridge_mmio_pref._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pci_setup_bridge_mmio_pref._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pci/setup-bus.c", i32 930, i32 4}
!97 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @pbus_size_io._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @pbus_size_io._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/setup-bus.c", i32 942, i32 3}
!102 = !{ptr @pbus_size_io._entry.44, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @pbus_size_io._entry_ptr.46, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pci/setup-bus.c", i32 1051, i32 5}
!106 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @pbus_size_mem._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @pbus_size_mem._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @pbus_size_mem._entry.50, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/pci/setup-bus.c", i32 1083, i32 4}
!112 = !{ptr @pbus_size_mem._entry_ptr.51, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pci/setup-bus.c", i32 1093, i32 3}
!115 = !{ptr @pbus_size_mem._entry.52, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @pbus_size_mem._entry_ptr.54, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pci/setup-bus.c", i32 149, i32 4}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @pdev_sort_resources._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @pdev_sort_resources._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/setup-bus.c", i32 156, i32 10}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pci/setup-bus.c", i32 255, i32 5}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @reassign_resources_sorted._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @reassign_resources_sorted._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @pci_realloc_enable, !130, !"pci_realloc_enable", i1 false, i1 false}
!130 = !{!"../drivers/pci/setup-bus.c", i32 1684, i32 25}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pci/setup-bus.c", i32 1566, i32 3}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @pci_bridge_release_resources._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @pci_bridge_release_resources._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pci/setup-bus.c", i32 1632, i32 3}
!138 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @pci_bus_dump_res._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @pci_bus_dump_res._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pci/setup-bus.c", i32 1875, i32 3}
!143 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @adjust_bridge_window.__UNIQUE_ID_ddebug252, !142, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pci/setup-bus.c", i32 1879, i32 3}
!148 = !{ptr @adjust_bridge_window.__UNIQUE_ID_ddebug253, !147, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/setup-bus.c", i32 1513, i32 3}
!151 = !{ptr @__pci_bridge_assign_resources._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @__pci_bridge_assign_resources._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"auto-init"}
!163 = !{i32 0, i32 33}
!164 = !{i8 0, i8 2}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i64 2155251288, i64 2155251777, i64 2155251325, i64 2155251381, i64 2155251415, i64 2155251439, i64 2155251480, i64 2155251501, i64 2155251529, i64 2155251563}
!167 = !{i64 2155302528, i64 2155303017, i64 2155302565, i64 2155302621, i64 2155302655, i64 2155302679, i64 2155302720, i64 2155302741, i64 2155302769, i64 2155302803}
!168 = !{i64 2155322463, i64 2155322952, i64 2155322500, i64 2155322556, i64 2155322590, i64 2155322614, i64 2155322655, i64 2155322676, i64 2155322704, i64 2155322738}
!169 = !{i64 2155337462, i64 2155337951, i64 2155337499, i64 2155337555, i64 2155337589, i64 2155337613, i64 2155337654, i64 2155337675, i64 2155337703, i64 2155337737}
!170 = !{i64 2148749989, i64 2148749994, i64 2148750007, i64 2148750051, i64 2148750085, i64 2148750106}
