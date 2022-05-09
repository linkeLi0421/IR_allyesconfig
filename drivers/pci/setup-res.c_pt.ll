; ModuleID = '/llk/IR_all_yes/drivers/pci/setup-res.c_pt.bc'
source_filename = "../drivers/pci/setup-res.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pci_claim_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_claim_resource\09\09\09\09"
module asm "\09.long\09__crc_pci_claim_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_claim_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_claim_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_claim_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_assign_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_assign_resource\09\09\09\09"
module asm "\09.long\09__crc_pci_assign_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_assign_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_assign_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_assign_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_release_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_release_resource\09\09\09\09"
module asm "\09.long\09__crc_pci_release_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_release_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_release_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_release_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_resize_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_resize_resource\09\09\09\09"
module asm "\09.long\09__crc_pci_resize_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_resize_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_resize_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_resize_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }

@pci_claim_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"can't claim BAR %d %pR: no address assigned\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_claim_resource\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pci/setup-res.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_claim_resource._entry_ptr = internal global ptr @pci_claim_resource._entry, section ".printk_index", align 4
@pci_claim_resource._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"can't claim BAR %d %pR: no compatible bridge window\0A\00", [43 x i8] zeroinitializer }, align 32
@pci_claim_resource._entry_ptr.7 = internal global ptr @pci_claim_resource._entry.5, section ".printk_index", align 4
@pci_claim_resource._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"can't claim BAR %d %pR: address conflict with %s %pR\0A\00", [42 x i8] zeroinitializer }, align 32
@pci_claim_resource._entry_ptr.10 = internal global ptr @pci_claim_resource._entry.8, section ".printk_index", align 4
@__kstrtab_pci_claim_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_claim_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_claim_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_claim_resource to i32), ptr @__kstrtab_pci_claim_resource, ptr @__kstrtabns_pci_claim_resource }, section "___ksymtab+pci_claim_resource", align 4
@pci_assign_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 327, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BAR %d: can't assign %pR (bogus alignment)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci_assign_resource\00", [44 x i8] zeroinitializer }, align 32
@pci_assign_resource._entry_ptr = internal global ptr @pci_assign_resource._entry, section ".printk_index", align 4
@pci_assign_resource._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BAR %d: no space for %pR\0A\00", [38 x i8] zeroinitializer }, align 32
@pci_assign_resource._entry_ptr.15 = internal global ptr @pci_assign_resource._entry.13, section ".printk_index", align 4
@pci_assign_resource._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 345, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BAR %d: failed to assign %pR\0A\00", [34 x i8] zeroinitializer }, align 32
@pci_assign_resource._entry_ptr.18 = internal global ptr @pci_assign_resource._entry.16, section ".printk_index", align 4
@pci_assign_resource._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BAR %d: assigned %pR\0A\00", [42 x i8] zeroinitializer }, align 32
@pci_assign_resource._entry_ptr.21 = internal global ptr @pci_assign_resource._entry.19, section ".printk_index", align 4
@__kstrtab_pci_assign_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_assign_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_assign_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_assign_resource to i32), ptr @__kstrtab_pci_assign_resource, ptr @__kstrtabns_pci_assign_resource }, section "___ksymtab+pci_assign_resource", align 4
@pci_reassign_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"BAR %d: can't reassign an unassigned resource %pR\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_reassign_resource\00", [42 x i8] zeroinitializer }, align 32
@pci_reassign_resource._entry_ptr = internal global ptr @pci_reassign_resource._entry, section ".printk_index", align 4
@pci_reassign_resource._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BAR %d: %pR (failed to expand by %#llx)\0A\00", [55 x i8] zeroinitializer }, align 32
@pci_reassign_resource._entry_ptr.26 = internal global ptr @pci_reassign_resource._entry.24, section ".printk_index", align 4
@pci_reassign_resource._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BAR %d: reassigned %pR (expanded by %#llx)\0A\00", [52 x i8] zeroinitializer }, align 32
@pci_reassign_resource._entry_ptr.29 = internal global ptr @pci_reassign_resource._entry.27, section ".printk_index", align 4
@pci_release_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 402, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BAR %d: releasing %pR\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci_release_resource\00", [43 x i8] zeroinitializer }, align 32
@pci_release_resource._entry_ptr = internal global ptr @pci_release_resource._entry, section ".printk_index", align 4
@__kstrtab_pci_release_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_release_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_release_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_release_resource to i32), ptr @__kstrtab_pci_release_resource, ptr @__kstrtabns_pci_release_resource }, section "___ksymtab+pci_release_resource", align 4
@__kstrtab_pci_resize_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_resize_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_resize_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_resize_resource to i32), ptr @__kstrtab_pci_resize_resource, ptr @__kstrtabns_pci_resize_resource }, section "___ksymtab+pci_resize_resource", align 4
@pci_enable_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 490, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"can't enable device: BAR %d %pR not assigned\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci_enable_resources\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pci_enable_resources._entry_ptr = internal global ptr @pci_enable_resources._entry, section ".printk_index", align 4
@pci_enable_resources._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 496, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"can't enable device: BAR %d %pR not claimed\0A\00", [51 x i8] zeroinitializer }, align 32
@pci_enable_resources._entry_ptr.37 = internal global ptr @pci_enable_resources._entry.35, section ".printk_index", align 4
@pci_enable_resources._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.2, i32 507, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"enabling device (%04x -> %04x)\0A\00", [32 x i8] zeroinitializer }, align 32
@pci_enable_resources._entry_ptr.40 = internal global ptr @pci_enable_resources._entry.38, section ".printk_index", align 4
@pci_std_update_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 108, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BAR %d: error updating (%#08x != %#08x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_std_update_resource\00", [40 x i8] zeroinitializer }, align 32
@pci_std_update_resource._entry_ptr = internal global ptr @pci_std_update_resource._entry, section ".printk_index", align 4
@pci_std_update_resource._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 117, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"BAR %d: error updating (high %#08x != %#08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@pci_std_update_resource._entry_ptr.45 = internal global ptr @pci_std_update_resource._entry.43, section ".printk_index", align 4
@pcibios_min_io = external dso_local local_unnamed_addr global i32, align 4
@pcibios_min_mem = external dso_local local_unnamed_addr global i32, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@pci_revert_fw_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BAR %d: trying firmware assignment %pR\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_revert_fw_address\00", [42 x i8] zeroinitializer }, align 32
@pci_revert_fw_address._entry_ptr = internal global ptr @pci_revert_fw_address._entry, section ".printk_index", align 4
@pci_revert_fw_address._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BAR %d: %pR conflicts with %s %pR\0A\00", [61 x i8] zeroinitializer }, align 32
@pci_revert_fw_address._entry_ptr.50 = internal global ptr @pci_revert_fw_address._entry.48, section ".printk_index", align 4
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 141, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 156, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 164, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 326, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 340, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 345, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 351, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 373, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 383, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 390, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 402, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 489, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 495, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 507, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 107, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 116, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 223, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [27 x i8] c"../drivers/pci/setup-res.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 227, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__ksymtab_pci_assign_resource, ptr @__ksymtab_pci_claim_resource, ptr @__ksymtab_pci_release_resource, ptr @__ksymtab_pci_resize_resource, ptr @pci_assign_resource._entry, ptr @pci_assign_resource._entry.13, ptr @pci_assign_resource._entry.16, ptr @pci_assign_resource._entry.19, ptr @pci_assign_resource._entry_ptr, ptr @pci_assign_resource._entry_ptr.15, ptr @pci_assign_resource._entry_ptr.18, ptr @pci_assign_resource._entry_ptr.21, ptr @pci_claim_resource._entry, ptr @pci_claim_resource._entry.5, ptr @pci_claim_resource._entry.8, ptr @pci_claim_resource._entry_ptr, ptr @pci_claim_resource._entry_ptr.10, ptr @pci_claim_resource._entry_ptr.7, ptr @pci_enable_resources._entry, ptr @pci_enable_resources._entry.35, ptr @pci_enable_resources._entry.38, ptr @pci_enable_resources._entry_ptr, ptr @pci_enable_resources._entry_ptr.37, ptr @pci_enable_resources._entry_ptr.40, ptr @pci_reassign_resource._entry, ptr @pci_reassign_resource._entry.24, ptr @pci_reassign_resource._entry.27, ptr @pci_reassign_resource._entry_ptr, ptr @pci_reassign_resource._entry_ptr.26, ptr @pci_reassign_resource._entry_ptr.29, ptr @pci_release_resource._entry, ptr @pci_release_resource._entry_ptr, ptr @pci_revert_fw_address._entry, ptr @pci_revert_fw_address._entry.48, ptr @pci_revert_fw_address._entry_ptr, ptr @pci_revert_fw_address._entry_ptr.50, ptr @pci_std_update_resource._entry, ptr @pci_std_update_resource._entry.43, ptr @pci_std_update_resource._entry_ptr, ptr @pci_std_update_resource._entry_ptr.45, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_claim_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_claim_resource._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_claim_resource._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_resource._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_resource._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_assign_resource._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_reassign_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_reassign_resource._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_reassign_resource._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_release_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_enable_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_enable_resources._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_enable_resources._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_std_update_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_std_update_resource._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_revert_fw_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_revert_fw_address._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_update_resource(ptr noundef %dev, i32 noundef %resno) local_unnamed_addr #0 align 64 {
entry:
  %region.i = alloca %struct.pci_bus_region, align 4
  %cmd.i = alloca i16, align 2
  %check.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %resno)
  %cmp = icmp slt i32 %resno, 7
  br i1 %cmp, label %if.then, label %land.lhs.true

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region.i) #4
  %0 = ptrtoint ptr %region.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region.i, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %region.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #4
  %3 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %cmd.i, align 2, !annotation !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %check.i) #4
  %4 = ptrtoint ptr %check.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %check.i, align 4, !annotation !100
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %add.ptr.i = getelementptr %struct.resource, ptr %resource.i, i32 %resno
  %is_virtfn.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %5 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 5)
  %bf.load.i = load i40, ptr %is_virtfn.i, align 1
  %6 = and i40 %bf.load.i, 65536
  %tobool.not.i = icmp eq i40 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.pci_std_update_resource.exit_crit_edge

if.then.pci_std_update_resource.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_std_update_resource.exit

if.end.i:                                         ; preds = %if.then
  %flags.i = getelementptr %struct.resource, ptr %resource.i, i32 %resno, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp ne i32 %8, 0
  %9 = and i32 %8, 536870928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %tobool1.not.i, %10
  br i1 %11, label %if.end12.i, label %if.end.i.pci_std_update_resource.exit_crit_edge

if.end.i.pci_std_update_resource.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_std_update_resource.exit

if.end12.i:                                       ; preds = %if.end.i
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  call void @pcibios_resource_to_bus(ptr noundef %13, ptr noundef nonnull %region.i, ptr noundef %add.ptr.i) #4
  %14 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %region.i, align 4
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and14.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.end25.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %resno)
  %cmp.i = icmp eq i32 %resno, 6
  br i1 %cmp.i, label %if.else.i.if.then30.i_crit_edge, label %if.end25.i.thread

if.else.i.if.then30.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30.i

if.end25.i.thread:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %and22.i12 = and i32 %17, 15
  %new.0.i13 = or i32 %and22.i12, %15
  br label %if.then27.i

if.end25.i:                                       ; preds = %if.end12.i
  %and22.i = and i32 %17, 3
  %new.0.i = or i32 %and22.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %resno)
  %cmp26.i = icmp slt i32 %resno, 6
  br i1 %cmp26.i, label %if.end25.i.if.then27.i_crit_edge, label %if.end25.i.if.then30.i_crit_edge

if.end25.i.if.then30.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30.i

if.end25.i.if.then27.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.end25.i.if.then27.i_crit_edge, %if.end25.i.thread
  %new.0.i16 = phi i32 [ %new.0.i13, %if.end25.i.thread ], [ %new.0.i, %if.end25.i.if.then27.i_crit_edge ]
  %mask.0.i15 = phi i32 [ -16, %if.end25.i.thread ], [ -4, %if.end25.i.if.then27.i_crit_edge ]
  %mul.i = shl i32 %resno, 2
  %add.i = add i32 %mul.i, 16
  br label %if.end49.i

if.then30.i:                                      ; preds = %if.end25.i.if.then30.i_crit_edge, %if.else.i.if.then30.i_crit_edge
  %mask.0150.i = phi i32 [ -4, %if.end25.i.if.then30.i_crit_edge ], [ -2048, %if.else.i.if.then30.i_crit_edge ]
  %new.0148.i = phi i32 [ %new.0.i, %if.end25.i.if.then30.i_crit_edge ], [ %15, %if.else.i.if.then30.i_crit_edge ]
  %and32.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %land.lhs.true.i, label %if.then30.i.if.end40.i_crit_edge

if.then30.i.if.end40.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40.i

land.lhs.true.i:                                  ; preds = %if.then30.i
  %18 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 5)
  %bf.load34.i = load i40, ptr %is_virtfn.i, align 1
  %19 = and i40 %bf.load34.i, 4
  %tobool38.not.i = icmp eq i40 %19, 0
  br i1 %tobool38.not.i, label %land.lhs.true.i.pci_std_update_resource.exit_crit_edge, label %land.lhs.true.i.if.end40.i_crit_edge

land.lhs.true.i.if.end40.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40.i

land.lhs.true.i.pci_std_update_resource.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_std_update_resource.exit

if.end40.i:                                       ; preds = %land.lhs.true.i.if.end40.i_crit_edge, %if.then30.i.if.end40.i_crit_edge
  %rom_base_reg.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 23
  %20 = ptrtoint ptr %rom_base_reg.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rom_base_reg.i, align 4
  %conv.i = zext i8 %21 to i32
  %22 = or i32 %new.0148.i, %and32.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end40.i, %if.then27.i
  %mask.0149.i = phi i32 [ %mask.0.i15, %if.then27.i ], [ %mask.0150.i, %if.end40.i ]
  %new.1.i = phi i32 [ %new.0.i16, %if.then27.i ], [ %22, %if.end40.i ]
  %reg.0.i = phi i32 [ %add.i, %if.then27.i ], [ %conv.i, %if.end40.i ]
  %and51.i = and i32 %17, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end49.i.if.end63.i_crit_edge, label %land.end.i

if.end49.i.if.end63.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63.i

land.end.i:                                       ; preds = %if.end49.i
  %mmio_always_on.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 33
  %23 = ptrtoint ptr %mmio_always_on.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load53.i = load i32, ptr %mmio_always_on.i, align 2
  %24 = and i32 %bf.load53.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool56.not.i = icmp eq i32 %24, 0
  br i1 %tobool56.not.i, label %if.then58.i, label %land.end.i.if.end63.i_crit_edge

land.end.i.if.end63.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63.i

if.then58.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %cmd.i) #4
  %25 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cmd.i, align 2
  %27 = and i16 %26, -3
  %call62.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %27) #4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then58.i, %land.end.i.if.end63.i_crit_edge, %if.end49.i.if.end63.i_crit_edge
  %28 = phi i1 [ true, %if.then58.i ], [ false, %land.end.i.if.end63.i_crit_edge ], [ false, %if.end49.i.if.end63.i_crit_edge ]
  %call64.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %reg.0.i, i32 noundef %new.1.i) #4
  %call65.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %reg.0.i, ptr noundef nonnull %check.i) #4
  %29 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %check.i, align 4
  %xor.i = xor i32 %30, %new.1.i
  %and66.i = and i32 %xor.i, %mask.0149.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end63.i.if.end70.i_crit_edge, label %do.end.i

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70.i

do.end.i:                                         ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev69.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69.i, ptr noundef nonnull @.str.41, i32 noundef %resno, i32 noundef %new.1.i, i32 noundef %30) #7
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end.i, %if.end63.i.if.end70.i_crit_edge
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 4
  %and72.i = and i32 %32, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.end70.i.if.end89.i_crit_edge, label %if.then74.i

if.end70.i.if.end89.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.i

if.then74.i:                                      ; preds = %if.end70.i
  %add77.i = add i32 %reg.0.i, 4
  %call78.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add77.i, i32 noundef 0) #4
  %call80.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add77.i, ptr noundef nonnull %check.i) #4
  %33 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %check.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp81.not.i = icmp eq i32 %34, 0
  br i1 %cmp81.not.i, label %if.then74.i.if.end89.i_crit_edge, label %do.end86.i

if.then74.i.if.end89.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.i

do.end86.i:                                       ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev87.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87.i, ptr noundef nonnull @.str.44, i32 noundef %resno, i32 noundef 0, i32 noundef %34) #7
  br label %if.end89.i

if.end89.i:                                       ; preds = %do.end86.i, %if.then74.i.if.end89.i_crit_edge, %if.end70.i.if.end89.i_crit_edge
  br i1 %28, label %if.then91.i, label %if.end89.i.pci_std_update_resource.exit_crit_edge

if.end89.i.pci_std_update_resource.exit_crit_edge: ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_std_update_resource.exit

if.then91.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cmd.i, align 2
  %call92.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %36) #4
  br label %pci_std_update_resource.exit

pci_std_update_resource.exit:                     ; preds = %if.then91.i, %if.end89.i.pci_std_update_resource.exit_crit_edge, %land.lhs.true.i.pci_std_update_resource.exit_crit_edge, %if.end.i.pci_std_update_resource.exit_crit_edge, %if.then.pci_std_update_resource.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %check.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i) #4
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %resno)
  %cmp2 = icmp ult i32 %resno, 13
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_iov_update_resource(ptr noundef %dev, i32 noundef %resno) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %pci_std_update_resource.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iov_update_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_claim_resource(ptr noundef %dev, i32 noundef %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %resource
  %flags = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %resource, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str, i32 noundef %resource, ptr noundef %arrayidx) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call = tail call ptr @pci_find_parent_resource(ptr noundef %dev, ptr noundef %arrayidx) #4
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.6, i32 noundef %resource, ptr noundef %arrayidx) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 536870912
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = tail call ptr @request_resource_conflict(ptr noundef nonnull %call, ptr noundef %arrayidx) #4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %do.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %name = getelementptr inbounds %struct.resource, ptr %call16, i32 0, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.9, i32 noundef %resource, ptr noundef %arrayidx, ptr noundef %5, ptr noundef nonnull %call16) #7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or24 = or i32 %7, 536870912
  store i32 %or24, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end15.cleanup_crit_edge, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end21 ], [ -22, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_parent_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_resource_conflict(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_disable_bridge_window(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 32, i32 noundef 65520) #4
  %call1 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 44, i32 noundef 0) #4
  %call2 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 36, i32 noundef 65520) #4
  %call3 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 40, i32 noundef -1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_retrieve_fw_addr(ptr noundef %dev, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_align_resource(ptr noundef %data, ptr noundef %res, i32 noundef %size, i32 noundef %align) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_assign_resource(ptr noundef %dev, i32 noundef %resno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %add.ptr = getelementptr %struct.resource, ptr %resource, i32 %resno
  %flags = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %1, 536870912
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %flags, align 4
  %add.ptr.idx = shl i32 %resno, 5
  %3 = add i32 %add.ptr.idx, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %3)
  %4 = icmp ult i32 %3, 223
  br i1 %4, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.div13.i = and i32 %resno, 134217727
  %call.i = tail call i32 @pci_sriov_resource_alignment(ptr noundef %dev, i32 noundef %sub.ptr.div13.i) #4
  br label %pci_resource_alignment.exit

if.end.i:                                         ; preds = %if.end
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %5 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %class.i, align 8
  %shr.mask.i = and i32 %6, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %shr.mask.i)
  %cmp2.i = icmp eq i32 %shr.mask.i, 395008
  br i1 %cmp2.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 @pci_cardbus_resource_alignment(ptr noundef %add.ptr) #4
  br label %pci_resource_alignment.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = tail call i32 @resource_alignment(ptr noundef %add.ptr) #4
  br label %pci_resource_alignment.exit

pci_resource_alignment.exit:                      ; preds = %if.end5.i, %if.then3.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call4.i, %if.then3.i ], [ %call6.i, %if.end5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %pci_resource_alignment.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.11, i32 noundef %resno, ptr noundef %add.ptr) #7
  br label %cleanup

if.end5:                                          ; preds = %pci_resource_alignment.exit
  %end.i = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %sub.i = add i32 %8, 1
  %add.i = sub i32 %sub.i, %10
  %call7 = tail call fastcc i32 @_pci_assign_resource(ptr noundef %dev, i32 noundef %resno, i32 noundef %add.i, i32 noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end14, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.end14:                                         ; preds = %if.end5
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.14, i32 noundef %resno, ptr noundef %add.ptr) #7
  %call13 = tail call fastcc i32 @pci_revert_fw_address(ptr noundef %add.ptr, ptr noundef %dev, i32 noundef %resno, i32 noundef %add.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp15 = icmp slt i32 %call13, 0
  br i1 %cmp15, label %do.end19, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.17, i32 noundef %resno, ptr noundef %add.ptr) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end14.if.end21_crit_edge, %if.end5.if.end21_crit_edge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and25 = and i32 %12, -537395201
  store i32 %and25, ptr %flags, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29, ptr noundef nonnull @.str.20, i32 noundef %resno, ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %resno)
  %cmp30 = icmp slt i32 %resno, 13
  br i1 %cmp30, label %if.then31, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_update_resource(ptr noundef %dev, i32 noundef %resno)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end21.cleanup_crit_edge, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %do.end19 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_pci_assign_resource(ptr noundef %dev, i32 noundef %resno, i32 noundef %size, i32 noundef %min_align) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %add.ptr.i = getelementptr %struct.resource, ptr %resource.i, i32 %resno
  %flags.i = getelementptr %struct.resource, ptr %resource.i, i32 %resno, i32 3
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false.while.cond_crit_edge, %entry
  %bus.0 = phi ptr [ %1, %entry ], [ %9, %lor.lhs.false.while.cond_crit_edge ]
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcibios_min_mem to i32))
  %pcibios_min_mem.val.i = load i32, ptr @pcibios_min_mem, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcibios_min_io to i32))
  %pcibios_min_io.val.i = load i32, ptr @pcibios_min_io, align 4
  %cond.i = select i1 %tobool.not.i, i32 %pcibios_min_mem.val.i, i32 %pcibios_min_io.val.i
  %call.i = tail call i32 @pci_bus_alloc_resource(ptr noundef %bus.0, ptr noundef %add.ptr.i, i32 noundef %size, i32 noundef %min_align, i32 noundef %cond.i, i32 noundef 1056768, ptr noundef nonnull @pcibios_align_resource, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %while.cond.while.end_crit_edge, label %if.end.i

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.i:                                         ; preds = %while.cond
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %5, 1056768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056768, i32 %and2.i)
  %cmp3.i = icmp eq i32 %and2.i, 1056768
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = tail call i32 @pci_bus_alloc_resource(ptr noundef %bus.0, ptr noundef %add.ptr.i, i32 noundef %size, i32 noundef %min_align, i32 noundef %cond.i, i32 noundef 8192, ptr noundef nonnull @pcibios_align_resource, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then4.i.while.end_crit_edge, label %if.then4.i.if.end9.i_crit_edge

if.then4.i.if.end9.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

if.then4.i.while.end_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end9.i:                                        ; preds = %if.then4.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %if.then4.i.if.end9.i_crit_edge ], [ %call.i, %if.end.i.if.end9.i_crit_edge ]
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and11.i = and i32 %7, 1056768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.while.body_crit_edge, label %__pci_assign_resource.exit

if.end9.i.while.body_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

__pci_assign_resource.exit:                       ; preds = %if.end9.i
  %call14.i = tail call i32 @pci_bus_alloc_resource(ptr noundef %bus.0, ptr noundef %add.ptr.i, i32 noundef %size, i32 noundef %min_align, i32 noundef %cond.i, i32 noundef 0, ptr noundef nonnull @pcibios_align_resource, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not = icmp eq i32 %call14.i, 0
  br i1 %tobool.not, label %__pci_assign_resource.exit.while.end_crit_edge, label %__pci_assign_resource.exit.while.body_crit_edge

__pci_assign_resource.exit.while.body_crit_edge:  ; preds = %__pci_assign_resource.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

__pci_assign_resource.exit.while.end_crit_edge:   ; preds = %__pci_assign_resource.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %__pci_assign_resource.exit.while.body_crit_edge, %if.end9.i.while.body_crit_edge
  %retval.0.i15 = phi i32 [ %call14.i, %__pci_assign_resource.exit.while.body_crit_edge ], [ %ret.0.i, %if.end9.i.while.body_crit_edge ]
  %parent = getelementptr inbounds %struct.pci_bus, ptr %bus.0, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %lor.lhs.false

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

lor.lhs.false:                                    ; preds = %while.body
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus.0, i32 0, i32 4
  %10 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %self, align 4
  %transparent = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 49
  %12 = ptrtoint ptr %transparent to i32
  call void @__asan_loadN_noabort(i32 %12, i32 5)
  %bf.load = load i40, ptr %transparent, align 1
  %tobool3.not = icmp sgt i40 %bf.load, -1
  br i1 %tobool3.not, label %lor.lhs.false.while.end_crit_edge, label %lor.lhs.false.while.cond_crit_edge

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %lor.lhs.false.while.end_crit_edge, %while.body.while.end_crit_edge, %__pci_assign_resource.exit.while.end_crit_edge, %if.then4.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  %retval.0.i11 = phi i32 [ %retval.0.i15, %while.body.while.end_crit_edge ], [ %retval.0.i15, %lor.lhs.false.while.end_crit_edge ], [ 0, %__pci_assign_resource.exit.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ], [ 0, %if.then4.i.while.end_crit_edge ]
  ret i32 %retval.0.i11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_revert_fw_address(ptr noundef %res, ptr noundef %dev, i32 noundef %resno, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcibios_retrieve_fw_addr(ptr noundef %dev, i32 noundef %resno)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  %end2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %end2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end2, align 4
  store i32 %call, ptr %res, align 4
  %add = add i32 %size, -1
  %sub = add i32 %add, %call
  store i32 %sub, ptr %end2, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -536870913
  store i32 %and, ptr %flags, align 4
  %call6 = tail call ptr @pci_find_parent_resource(ptr noundef %dev, ptr noundef %res) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and10 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %iomem_resource.ioport_resource = select i1 %tobool11.not, ptr @iomem_resource, ptr @ioport_resource
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end.do.end_crit_edge
  %root.0 = phi ptr [ %call6, %if.end.do.end_crit_edge ], [ %iomem_resource.ioport_resource, %if.then8 ]
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.46, i32 noundef %resno, ptr noundef %res) #7
  %call16 = tail call ptr @request_resource_conflict(ptr noundef %root.0, ptr noundef %res) #4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %do.end21

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.resource, ptr %call16, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.49, i32 noundef %resno, ptr noundef %res, ptr noundef %9, ptr noundef nonnull %call16) #7
  %10 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %res, align 4
  %11 = ptrtoint ptr %end2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %3, ptr %end2, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 536870912
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end21 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_reassign_resource(ptr noundef %dev, i32 noundef %resno, i32 noundef %addsize, i32 noundef %min_align) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %add.ptr = getelementptr %struct.resource, ptr %resource, i32 %resno
  %flags1 = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 3
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %1, 536870912
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %flags1, align 4
  %parent = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 5
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.22, i32 noundef %resno, ptr noundef %add.ptr) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %end.i = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %sub.i = add i32 %addsize, 1
  %add.i = add i32 %sub.i, %6
  %add = sub i32 %add.i, %8
  %call8 = tail call fastcc i32 @_pci_assign_resource(ptr noundef %dev, i32 noundef %resno, i32 noundef %add, i32 noundef %min_align)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %flags1, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %conv = zext i32 %addsize to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.25, i32 noundef %resno, ptr noundef %add.ptr, i64 noundef %conv) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1, align 4
  %and20 = and i32 %11, -537395201
  store i32 %and20, ptr %flags1, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %conv25 = zext i32 %addsize to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.28, i32 noundef %resno, ptr noundef %add.ptr, i64 noundef %conv25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %resno)
  %cmp = icmp slt i32 %resno, 13
  br i1 %cmp, label %if.then27, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_update_resource(ptr noundef %dev, i32 noundef %resno)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end16.cleanup_crit_edge, %if.then10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_release_resource(ptr noundef %dev, i32 noundef %resno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %add.ptr = getelementptr %struct.resource, ptr %resource, i32 %resno
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %resno, ptr noundef %add.ptr) #7
  %parent = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 5
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @release_resource(ptr noundef %add.ptr) #4
  %end.i = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %sub = sub i32 %3, %5
  store i32 %sub, ptr %end.i, align 4
  store i32 0, ptr %add.ptr, align 4
  %flags = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 536870912
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_resize_resource(ptr noundef %dev, i32 noundef %resno, i32 noundef %size) #0 align 64 {
entry:
  %cmd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %add.ptr = getelementptr %struct.resource, ptr %resource, i32 %resno
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd, align 2, !annotation !100
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_find_host_bridge(ptr noundef %2) #4
  %preserve_config = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %preserve_config to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %preserve_config, align 8
  %4 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %cmd) #4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cmd, align 2
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not = icmp eq i16 %9, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = call i32 @pci_rebar_get_possible_sizes(ptr noundef %dev, i32 noundef %resno) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %shl = shl nuw i32 1, %size
  %and13 = and i32 %call9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @pci_rebar_get_current_size(ptr noundef %dev, i32 noundef %resno) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @pci_rebar_set_size(ptr noundef %dev, i32 noundef %resno, i32 noundef %size) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %add.i = add i32 %size, 20
  %sh_prom.i = zext i32 %add.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %12 = trunc i64 %shl.i to i32
  %13 = add i32 %12, -1
  %conv27 = add i32 %13, %11
  %end = getelementptr %struct.resource, ptr %resource, i32 %resno, i32 1
  %14 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv27, ptr %end, align 4
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %self, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %if.end24.cleanup_crit_edge, label %if.then30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then30:                                        ; preds = %if.end24
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %call34 = call i32 @pci_reassign_bridge_resources(ptr noundef nonnull %18, i32 noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then30.cleanup_crit_edge, label %error_resize

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

error_resize:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = call i32 @pci_rebar_set_size(ptr noundef %dev, i32 noundef %resno, i32 noundef %call17) #4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 4
  %add.i78 = add nuw i32 %call17, 20
  %sh_prom.i79 = zext i32 %add.i78 to i64
  %shl.i80 = shl nuw i64 1, %sh_prom.i79
  %23 = trunc i64 %shl.i80 to i32
  %24 = add i32 %23, -1
  %conv45 = add i32 %24, %22
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv45, ptr %end, align 4
  br label %cleanup

cleanup:                                          ; preds = %error_resize, %if.then30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %error_resize ], [ -524, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ], [ -524, %if.end8.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ 0, %if.then30.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rebar_get_possible_sizes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rebar_get_current_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rebar_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reassign_bridge_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_enable_resources(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd, align 2, !annotation !100
  %call = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %cmd) #4
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cmd, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.078 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = phi i16 [ %2, %entry ], [ %15, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.078
  %and = and i32 %shl, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %flags = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %i.078, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and1 = and i32 %5, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.end4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.078)
  %cmp5 = icmp eq i32 %i.078, 6
  %and7 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %cmp5, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.end4.for.inc_crit_edge, label %if.end10

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end10:                                         ; preds = %if.end4
  %and12 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.le76 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %i.078
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.32, i32 noundef %i.078, ptr noundef %arrayidx.le76) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %parent = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %i.078, i32 5
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.le = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %i.078
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.36, i32 noundef %i.078, ptr noundef %arrayidx.le) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %8 = trunc i32 %5 to i16
  %9 = lshr i16 %8, 8
  %10 = and i16 %9, 2
  %11 = and i16 %9, 1
  %12 = or i16 %3, %11
  %13 = or i16 %10, %12
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %cmd, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %if.end4.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = phi i16 [ %3, %if.end4.for.inc_crit_edge ], [ %3, %if.end.for.inc_crit_edge ], [ %3, %for.body.for.inc_crit_edge ], [ %13, %if.end23 ]
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cmd, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %2)
  %cmp40.not = icmp eq i16 %17, %2
  br i1 %cmp40.not, label %for.end.cleanup_crit_edge, label %do.end45

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv39 = zext i16 %2 to i32
  %conv38 = zext i16 %17 to i32
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev46, ptr noundef nonnull @.str.39, i32 noundef %conv39, i32 noundef %conv38) #7
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cmd, align 2
  %call49 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %19) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %for.end.cleanup_crit_edge, %do.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end21 ], [ 0, %do.end45 ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_sriov_resource_alignment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_cardbus_resource_alignment(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_alignment(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_alloc_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/setup-res.c", i32 141, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pci_claim_resource._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pci_claim_resource._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/setup-res.c", i32 156, i32 3}
!10 = !{ptr @pci_claim_resource._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @pci_claim_resource._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/setup-res.c", i32 164, i32 3}
!14 = !{ptr @pci_claim_resource._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @pci_claim_resource._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_pci_claim_resource, !17, !"__ksymtab_pci_claim_resource", i1 false, i1 false}
!17 = !{!"../drivers/pci/setup-res.c", i32 172, i32 1}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/setup-res.c", i32 326, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pci_assign_resource._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @pci_assign_resource._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/setup-res.c", i32 340, i32 3}
!25 = !{ptr @pci_assign_resource._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @pci_assign_resource._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/setup-res.c", i32 345, i32 3}
!29 = !{ptr @pci_assign_resource._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pci_assign_resource._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/setup-res.c", i32 351, i32 2}
!33 = !{ptr @pci_assign_resource._entry.19, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pci_assign_resource._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab_pci_assign_resource, !36, !"__ksymtab_pci_assign_resource", i1 false, i1 false}
!36 = !{!"../drivers/pci/setup-res.c", i32 357, i32 1}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/setup-res.c", i32 373, i32 3}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pci_reassign_resource._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pci_reassign_resource._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/setup-res.c", i32 383, i32 3}
!44 = !{ptr @pci_reassign_resource._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pci_reassign_resource._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/setup-res.c", i32 390, i32 2}
!48 = !{ptr @pci_reassign_resource._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pci_reassign_resource._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/setup-res.c", i32 402, i32 2}
!52 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pci_release_resource._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @pci_release_resource._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @__ksymtab_pci_release_resource, !56, !"__ksymtab_pci_release_resource", i1 false, i1 false}
!56 = !{!"../drivers/pci/setup-res.c", i32 412, i32 1}
!57 = !{ptr @__ksymtab_pci_resize_resource, !58, !"__ksymtab_pci_resize_resource", i1 false, i1 false}
!58 = !{!"../drivers/pci/setup-res.c", i32 465, i32 1}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pci/setup-res.c", i32 489, i32 4}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pci_enable_resources._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @pci_enable_resources._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/setup-res.c", i32 495, i32 4}
!67 = !{ptr @pci_enable_resources._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @pci_enable_resources._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/setup-res.c", i32 507, i32 3}
!71 = !{ptr @pci_enable_resources._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @pci_enable_resources._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/setup-res.c", i32 107, i32 3}
!75 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pci_std_update_resource._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @pci_std_update_resource._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/setup-res.c", i32 116, i32 4}
!80 = !{ptr @pci_std_update_resource._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @pci_std_update_resource._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/setup-res.c", i32 223, i32 2}
!84 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @pci_revert_fw_address._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @pci_revert_fw_address._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/setup-res.c", i32 227, i32 3}
!89 = !{ptr @pci_revert_fw_address._entry.48, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pci_revert_fw_address._entry_ptr.50, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
