; ModuleID = '/llk/IR_all_yes/drivers/pci/msi/msi.c_pt.bc'
source_filename = "../drivers/pci/msi/msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_msi_mask_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_msi_mask_irq\09\09\09\09"
module asm "\09.long\09__crc_pci_msi_mask_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_mask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_mask_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_mask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_msi_unmask_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_msi_unmask_irq\09\09\09\09"
module asm "\09.long\09__crc_pci_msi_unmask_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_unmask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_unmask_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_unmask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_write_msi_msg\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_write_msi_msg\09\09\09\09"
module asm "\09.long\09__crc_pci_write_msi_msg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_write_msi_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_write_msi_msg\22\09\09\09\09\09"
module asm "__kstrtabns_pci_write_msi_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_restore_msi_state\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_restore_msi_state\09\09\09\09"
module asm "\09.long\09__crc_pci_restore_msi_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_restore_msi_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_restore_msi_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_restore_msi_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_msi_vec_count\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_msi_vec_count\09\09\09\09"
module asm "\09.long\09__crc_pci_msi_vec_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_vec_count:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_vec_count\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_vec_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_disable_msi\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_disable_msi\09\09\09\09"
module asm "\09.long\09__crc_pci_disable_msi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_msi\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_msix_vec_count\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_msix_vec_count\09\09\09\09"
module asm "\09.long\09__crc_pci_msix_vec_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msix_vec_count:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msix_vec_count\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msix_vec_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_disable_msix\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_disable_msix\09\09\09\09"
module asm "\09.long\09__crc_pci_disable_msix\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_msix:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_msix\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_msix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_enable_msi\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_enable_msi\09\09\09\09"
module asm "\09.long\09__crc_pci_enable_msi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_msi\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_enable_msix_range\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_enable_msix_range\09\09\09\09"
module asm "\09.long\09__crc_pci_enable_msix_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_msix_range:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_msix_range\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_msix_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_alloc_irq_vectors_affinity\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_alloc_irq_vectors_affinity\09\09\09\09"
module asm "\09.long\09__crc_pci_alloc_irq_vectors_affinity\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_alloc_irq_vectors_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_alloc_irq_vectors_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_pci_alloc_irq_vectors_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_free_irq_vectors\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_free_irq_vectors\09\09\09\09"
module asm "\09.long\09__crc_pci_free_irq_vectors\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_free_irq_vectors:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_free_irq_vectors\22\09\09\09\09\09"
module asm "__kstrtabns_pci_free_irq_vectors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_irq_vector\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_irq_vector\09\09\09\09"
module asm "\09.long\09__crc_pci_irq_vector\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_irq_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_irq_vector\22\09\09\09\09\09"
module asm "__kstrtabns_pci_irq_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_irq_get_affinity\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_irq_get_affinity\09\09\09\09"
module asm "\09.long\09__crc_pci_irq_get_affinity\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_irq_get_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_irq_get_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_pci_irq_get_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+msi_desc_to_pci_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_msi_desc_to_pci_dev\09\09\09\09"
module asm "\09.long\09__crc_msi_desc_to_pci_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_desc_to_pci_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_desc_to_pci_dev\22\09\09\09\09\09"
module asm "__kstrtabns_msi_desc_to_pci_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_msi_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_msi_enabled\09\09\09\09"
module asm "\09.long\09__crc_pci_msi_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.70, %struct.anon.71, %union.anon.72 }
%union.anon.70 = type { i32 }
%struct.anon.71 = type { i16, i32 }
%union.anon.72 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.77, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.77 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.msix_entry = type { i32, i16 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }

@__kstrtab_pci_msi_mask_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_mask_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_mask_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_mask_irq to i32), ptr @__kstrtab_pci_msi_mask_irq, ptr @__kstrtabns_pci_msi_mask_irq }, section "___ksymtab_gpl+pci_msi_mask_irq", align 4
@__kstrtab_pci_msi_unmask_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_unmask_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_unmask_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_unmask_irq to i32), ptr @__kstrtab_pci_msi_unmask_irq, ptr @__kstrtabns_pci_msi_unmask_irq }, section "___ksymtab_gpl+pci_msi_unmask_irq", align 4
@__pci_read_msi_msg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/pci/msi/msi.c\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_pci_write_msi_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_write_msi_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_write_msi_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_write_msi_msg to i32), ptr @__kstrtab_pci_write_msi_msg, ptr @__kstrtabns_pci_write_msi_msg }, section "___ksymtab_gpl+pci_write_msi_msg", align 4
@__kstrtab_pci_restore_msi_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_restore_msi_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_restore_msi_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_restore_msi_state to i32), ptr @__kstrtab_pci_restore_msi_state, ptr @__kstrtabns_pci_restore_msi_state }, section "___ksymtab_gpl+pci_restore_msi_state", align 4
@__kstrtab_pci_msi_vec_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_vec_count = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_vec_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_vec_count to i32), ptr @__kstrtab_pci_msi_vec_count, ptr @__kstrtabns_pci_msi_vec_count }, section "___ksymtab+pci_msi_vec_count", align 4
@pci_msi_enable = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_pci_disable_msi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_msi = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_msi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_msi to i32), ptr @__kstrtab_pci_disable_msi, ptr @__kstrtabns_pci_disable_msi }, section "___ksymtab+pci_disable_msi", align 4
@__kstrtab_pci_msix_vec_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msix_vec_count = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msix_vec_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msix_vec_count to i32), ptr @__kstrtab_pci_msix_vec_count, ptr @__kstrtabns_pci_msix_vec_count }, section "___ksymtab+pci_msix_vec_count", align 4
@__kstrtab_pci_disable_msix = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_msix = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_msix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_msix to i32), ptr @__kstrtab_pci_disable_msix, ptr @__kstrtabns_pci_disable_msix }, section "___ksymtab+pci_disable_msix", align 4
@__kstrtab_pci_enable_msi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_msi = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_msi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_msi to i32), ptr @__kstrtab_pci_enable_msi, ptr @__kstrtabns_pci_enable_msi }, section "___ksymtab+pci_enable_msi", align 4
@__kstrtab_pci_enable_msix_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_msix_range = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_msix_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_msix_range to i32), ptr @__kstrtab_pci_enable_msix_range, ptr @__kstrtabns_pci_enable_msix_range }, section "___ksymtab+pci_enable_msix_range", align 4
@__kstrtab_pci_alloc_irq_vectors_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_alloc_irq_vectors_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_alloc_irq_vectors_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_alloc_irq_vectors_affinity to i32), ptr @__kstrtab_pci_alloc_irq_vectors_affinity, ptr @__kstrtabns_pci_alloc_irq_vectors_affinity }, section "___ksymtab+pci_alloc_irq_vectors_affinity", align 4
@__kstrtab_pci_free_irq_vectors = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_free_irq_vectors = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_free_irq_vectors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_free_irq_vectors to i32), ptr @__kstrtab_pci_free_irq_vectors, ptr @__kstrtabns_pci_free_irq_vectors }, section "___ksymtab+pci_free_irq_vectors", align 4
@__kstrtab_pci_irq_vector = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_irq_vector = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_irq_vector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_irq_vector to i32), ptr @__kstrtab_pci_irq_vector, ptr @__kstrtabns_pci_irq_vector }, section "___ksymtab+pci_irq_vector", align 4
@pci_irq_get_affinity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_pci_irq_get_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_irq_get_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_irq_get_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_irq_get_affinity to i32), ptr @__kstrtab_pci_irq_get_affinity, ptr @__kstrtabns_pci_irq_get_affinity }, section "___ksymtab+pci_irq_get_affinity", align 4
@__kstrtab_msi_desc_to_pci_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_desc_to_pci_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_desc_to_pci_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_desc_to_pci_dev to i32), ptr @__kstrtab_msi_desc_to_pci_dev, ptr @__kstrtabns_msi_desc_to_pci_dev }, section "___ksymtab+msi_desc_to_pci_dev", align 4
@__kstrtab_pci_msi_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_enabled to i32), ptr @__kstrtab_pci_msi_enabled, ptr @__kstrtabns_pci_msi_enabled }, section "___ksymtab+pci_msi_enabled", align 4
@pci_msi_ignore_mask = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@pci_msi_shutdown.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__pci_enable_msi_range._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 875, ptr @.str.3, ptr @.str.4 }, align 1
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can't enable MSI (MSI-X already enabled)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__pci_enable_msi_range\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__pci_enable_msi_range._entry_ptr = internal global ptr @__pci_enable_msi_range._entry, section ".printk_index", align 4
@__pci_enable_msi_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@msi_verify_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 411, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"arch assigned 64-bit MSI address %#x%08x but device only supports 32 bits\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msi_verify_entries\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@msi_verify_entries._entry_ptr = internal global ptr @msi_verify_entries._entry, section ".printk_index", align 4
@__pci_enable_msix_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__pci_enable_msix._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 824, ptr @.str.3, ptr @.str.4 }, align 1
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"can't enable MSI-X (MSI IRQ already assigned)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__pci_enable_msix\00", [46 x i8] zeroinitializer }, align 32
@__pci_enable_msix._entry_ptr = internal global ptr @__pci_enable_msix._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 127, i32 7 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"pci_msi_enable\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"pci_msi_ignore_mask\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 17, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 875, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 410, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [25 x i8] c"../drivers/pci/msi/msi.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 824, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_msi_desc_to_pci_dev, ptr @__ksymtab_pci_alloc_irq_vectors_affinity, ptr @__ksymtab_pci_disable_msi, ptr @__ksymtab_pci_disable_msix, ptr @__ksymtab_pci_enable_msi, ptr @__ksymtab_pci_enable_msix_range, ptr @__ksymtab_pci_free_irq_vectors, ptr @__ksymtab_pci_irq_get_affinity, ptr @__ksymtab_pci_irq_vector, ptr @__ksymtab_pci_msi_enabled, ptr @__ksymtab_pci_msi_mask_irq, ptr @__ksymtab_pci_msi_unmask_irq, ptr @__ksymtab_pci_msi_vec_count, ptr @__ksymtab_pci_msix_vec_count, ptr @__ksymtab_pci_restore_msi_state, ptr @__ksymtab_pci_write_msi_msg, ptr @__pci_enable_msi_range._entry, ptr @__pci_enable_msi_range._entry_ptr, ptr @__pci_enable_msix._entry, ptr @__pci_enable_msix._entry_ptr, ptr @msi_verify_entries._entry, ptr @msi_verify_entries._entry_ptr, ptr @.str, ptr @pci_msi_enable, ptr @pci_msi_ignore_mask, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_msi_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_msi_ignore_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_verify_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_msi_mask_irq(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_desc.i, align 4
  %msi_attrib.i = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %msi_attrib.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %msi_attrib.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %pci.i.i = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pci.i.i, align 4
  %or.i.i = or i32 %6, 1
  store i32 %or.i.i, ptr %pci.i.i, align 4
  %7 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.pci_msix_mask.exit.i_crit_edge, label %do.body.i.i.i

if.then.i.pci_msix_mask.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_msix_mask.exit.i

do.body.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %msi_index.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %msi_index.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msi_index.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %12 to i32
  %mul.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 %mul.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #9, !srcloc !75
  br label %pci_msix_mask.exit.i

pci_msix_mask.exit.i:                             ; preds = %do.body.i.i.i, %if.then.i.pci_msix_mask.exit.i_crit_edge
  %14 = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  br label %__pci_msi_mask_desc.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %sub = sub i32 %19, %21
  %shl = shl nuw i32 1, %sub
  tail call fastcc void @pci_msi_update_mask(ptr noundef %3, i32 noundef 0, i32 noundef %shl) #9
  br label %__pci_msi_mask_desc.exit

__pci_msi_mask_desc.exit:                         ; preds = %if.else.i, %pci_msix_mask.exit.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_msi_unmask_irq(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_desc.i, align 4
  %msi_attrib.i = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %msi_attrib.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %msi_attrib.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %pci.i.i = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pci.i.i, align 4
  %and.i.i = and i32 %6, -2
  store i32 %and.i.i, ptr %pci.i.i, align 4
  %7 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.__pci_msi_unmask_desc.exit_crit_edge, label %do.body.i.i.i

if.then.i.__pci_msi_unmask_desc.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pci_msi_unmask_desc.exit

do.body.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %msi_index.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %msi_index.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msi_index.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %12 to i32
  %mul.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 %mul.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #9, !srcloc !75
  br label %__pci_msi_unmask_desc.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %sub = sub i32 %15, %17
  %shl = shl nuw i32 1, %sub
  tail call fastcc void @pci_msi_update_mask(ptr noundef %3, i32 noundef %shl, i32 noundef 0) #9
  br label %__pci_msi_unmask_desc.exit

__pci_msi_unmask_desc.exit:                       ; preds = %if.else.i, %do.body.i.i.i, %if.then.i.__pci_msi_unmask_desc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pci_read_msi_msg(ptr nocapture noundef readonly %entry1, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -136
  %current_state = getelementptr i8, ptr %1, i32 -36
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !78

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/msi/msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #9, !srcloc !79
  unreachable

do.end8:                                          ; preds = %entry
  %msi_attrib = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %msi_attrib to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %msi_attrib, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool9.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end8
  %5 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool17.not = icmp eq i16 %5, 0
  br i1 %tobool17.not, label %if.end67, label %land.rhs

land.rhs:                                         ; preds = %if.then10
  %.b127 = load i1, ptr @__pci_read_msi_msg.__already_done, align 1
  br i1 %.b127, label %land.rhs.cleanup102_crit_edge, label %if.then32, !prof !78

land.rhs.cleanup102_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup102

if.then32:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__pci_read_msi_msg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef null) #9
  br label %cleanup102

if.end67:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %6 = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %msi_index.i = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 8
  %9 = ptrtoint ptr %msi_index.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %msi_index.i, align 4
  %conv.i = zext i16 %10 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %add.ptr.i130 = getelementptr i8, ptr %8, i32 %mul.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #9, !srcloc !76
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %msg, align 4
  %add.ptr73 = getelementptr i8, ptr %add.ptr.i130, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #9, !srcloc !76
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  %16 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %16, align 4
  %add.ptr79 = getelementptr i8, ptr %add.ptr.i130, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #9, !srcloc !76
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %20 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %20, align 4
  br label %cleanup102

if.else:                                          ; preds = %do.end8
  %msi_cap = getelementptr i8, ptr %1, i32 -71
  %22 = ptrtoint ptr %msi_cap to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %msi_cap, align 1
  %conv = zext i8 %23 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #9
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %data, align 2, !annotation !83
  %add = add nuw nsw i32 %conv, 4
  %call83 = tail call i32 @pci_read_config_dword(ptr noundef %add.ptr.i, i32 noundef %add, ptr noundef %msg) #9
  %25 = ptrtoint ptr %msi_attrib to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load86 = load i16, ptr %msi_attrib, align 4
  %26 = and i16 %bf.load86, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool90.not = icmp eq i16 %26, 0
  br i1 %tobool90.not, label %if.else96, label %if.then91

if.then91:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add92 = add nuw nsw i32 %conv, 8
  %27 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %call93 = tail call i32 @pci_read_config_dword(ptr noundef %add.ptr.i, i32 noundef %add92, ptr noundef %27) #9
  br label %if.end99

if.else96:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %28 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %28, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.then91
  %.sink = phi i32 [ 8, %if.else96 ], [ 12, %if.then91 ]
  %add97 = add nuw nsw i32 %.sink, %conv
  %call98 = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef %add97, ptr noundef nonnull %data) #9
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data, align 2
  %conv100 = zext i16 %31 to i32
  %32 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv100, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #9
  br label %cleanup102

cleanup102:                                       ; preds = %if.end99, %if.end67, %if.then32, %land.rhs.cleanup102_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @msi_desc_to_pci_dev(ptr nocapture noundef readonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  ret ptr %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pci_write_msi_msg(ptr noundef %entry1, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  %msgctl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -136
  %current_state = getelementptr i8, ptr %1, i32 -36
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.skip_crit_edge

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

lor.lhs.false:                                    ; preds = %entry
  %error_state.i = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp eq i32 %5, 3
  br i1 %cmp.i, label %lor.lhs.false.skip_crit_edge, label %if.else

lor.lhs.false.skip_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

if.else:                                          ; preds = %lor.lhs.false
  %msi_attrib = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %msi_attrib to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %msi_attrib, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.else33, label %if.then3

if.then3:                                         ; preds = %if.else
  %pci = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 9
  %7 = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %msi_index.i = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 8
  %10 = ptrtoint ptr %msi_index.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msi_index.i, align 4
  %conv.i = zext i16 %11 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %add.ptr.i121 = getelementptr i8, ptr %9, i32 %mul.i
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %14 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool12.not = icmp eq i16 %14, 0
  br i1 %tobool12.not, label %if.end, label %if.then3.skip_crit_edge

if.then3.skip_crit_edge:                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

if.end:                                           ; preds = %if.then3
  br i1 %tobool6.not, label %if.then15, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %13, 1
  tail call fastcc void @pci_msix_write_vector_ctrl(ptr noundef %entry1, i32 noundef %or)
  br label %do.body

do.body:                                          ; preds = %if.then15, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %17) #9, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %18 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add.ptr20 = getelementptr i8, ptr %add.ptr.i121, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %21) #9, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void @arm_heavy_mb() #9
  %22 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %add.ptr24 = getelementptr i8, ptr %add.ptr.i121, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %25) #9, !srcloc !75
  br i1 %tobool6.not, label %if.then26, label %do.body.if.end27_crit_edge

do.body.if.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pci_msix_write_vector_ctrl(ptr noundef %entry1, i32 noundef %13)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %do.body.if.end27_crit_edge
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %skip

if.else33:                                        ; preds = %if.else
  %msi_cap = getelementptr i8, ptr %1, i32 -71
  %27 = ptrtoint ptr %msi_cap to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %msi_cap, align 1
  %conv = zext i8 %28 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msgctl) #9
  %29 = ptrtoint ptr %msgctl to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %msgctl, align 2, !annotation !83
  %add = add nuw nsw i32 %conv, 2
  %call34 = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef %add, ptr noundef nonnull %msgctl) #9
  %30 = ptrtoint ptr %msgctl to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %msgctl, align 2
  %32 = and i16 %31, -113
  %33 = ptrtoint ptr %msi_attrib to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load40 = load i16, ptr %msi_attrib, align 4
  %34 = lshr i16 %bf.load40, 8
  %35 = and i16 %34, 112
  %or46120 = or i16 %35, %32
  store i16 %or46120, ptr %msgctl, align 2
  %call49 = call i32 @pci_write_config_word(ptr noundef %add.ptr.i, i32 noundef %add, i16 noundef zeroext %or46120) #9
  %add50 = add nuw nsw i32 %conv, 4
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg, align 4
  %call51 = call i32 @pci_write_config_dword(ptr noundef %add.ptr.i, i32 noundef %add50, i32 noundef %37) #9
  %38 = ptrtoint ptr %msi_attrib to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load54 = load i16, ptr %msi_attrib, align 4
  %39 = and i16 %bf.load54, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool58.not = icmp eq i16 %39, 0
  %add66 = add nuw nsw i32 %conv, 8
  br i1 %tobool58.not, label %if.else33.if.end69_crit_edge, label %if.then59

if.else33.if.end69_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then59:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  %40 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %call61 = call i32 @pci_write_config_dword(ptr noundef %add.ptr.i, i32 noundef %add66, i32 noundef %42) #9
  %add62 = add nuw nsw i32 %conv, 12
  br label %if.end69

if.end69:                                         ; preds = %if.then59, %if.else33.if.end69_crit_edge
  %add66.sink = phi i32 [ %add62, %if.then59 ], [ %add66, %if.else33.if.end69_crit_edge ]
  %43 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %conv67 = trunc i32 %45 to i16
  %call68 = call i32 @pci_write_config_word(ptr noundef %add.ptr.i, i32 noundef %add66.sink, i16 noundef zeroext %conv67) #9
  %call71 = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef %add, ptr noundef nonnull %msgctl) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msgctl) #9
  br label %skip

skip:                                             ; preds = %if.end69, %if.end27, %if.then3.skip_crit_edge, %lor.lhs.false.skip_crit_edge, %entry.skip_crit_edge
  %msg74 = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 3
  %46 = call ptr @memcpy(ptr %msg74, ptr %msg, i32 12)
  %write_msi_msg = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 6
  %47 = ptrtoint ptr %write_msi_msg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_msi_msg, align 4
  %tobool75.not = icmp eq ptr %48, null
  br i1 %tobool75.not, label %skip.if.end78_crit_edge, label %if.then76

skip.if.end78_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then76:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #11
  %write_msi_msg_data = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 7
  %49 = ptrtoint ptr %write_msi_msg_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_msi_msg_data, align 4
  call void %48(ptr noundef %entry1, ptr noundef %50) #9
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %skip.if.end78_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_msix_write_vector_ctrl(ptr nocapture noundef readonly %desc, i32 noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_attrib = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %msi_attrib to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %msi_attrib, align 4
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %msi_index.i = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 8
  %5 = ptrtoint ptr %msi_index.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msi_index.i, align 4
  %conv.i = zext i16 %6 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %ctrl)
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #9, !srcloc !75
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_write_msi_msg(i32 noundef %irq, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %irq) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_msi_desc.exit_crit_edge, label %cond.true.i

entry.irq_get_msi_desc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_get_msi_desc.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_desc.i, align 4
  br label %irq_get_msi_desc.exit

irq_get_msi_desc.exit:                            ; preds = %cond.true.i, %entry.irq_get_msi_desc.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.irq_get_msi_desc.exit_crit_edge ]
  tail call void @__pci_write_msi_msg(ptr noundef %cond.i, ptr noundef %msg)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_restore_msi_irqs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_restore_msi_state(ptr noundef %dev) #0 align 64 {
entry:
  %ctrl.i26.i = alloca i16, align 2
  %ctrl.i.i = alloca i16, align 2
  %control.i.i = alloca i16, align 2
  %control.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i) #9
  %0 = ptrtoint ptr %control.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %control.i, align 2, !annotation !83
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %1 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 5)
  %bf.load.i = load i40, ptr %msi_enabled.i, align 1
  %2 = and i40 %bf.load.i, 134217728
  %tobool.not.i = icmp eq i40 %2, 0
  br i1 %tobool.not.i, label %entry.__pci_restore_msi_state.exit_crit_edge, label %if.end.i

entry.__pci_restore_msi_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pci_restore_msi_state.exit

if.end.i:                                         ; preds = %entry
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call ptr @irq_get_irq_data(i32 noundef %4) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.irq_get_msi_desc.exit.i_crit_edge, label %cond.true.i.i

if.end.i.irq_get_msi_desc.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_get_msi_desc.exit.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common.i.i, align 4
  %msi_desc.i.i = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %msi_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msi_desc.i.i, align 4
  br label %irq_get_msi_desc.exit.i

irq_get_msi_desc.exit.i:                          ; preds = %cond.true.i.i, %if.end.i.irq_get_msi_desc.exit.i_crit_edge
  %cond.i.i = phi ptr [ %8, %cond.true.i.i ], [ null, %if.end.i.irq_get_msi_desc.exit.i_crit_edge ]
  %dev_flags.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 50
  %9 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dev_flags.i.i, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i33.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i33.i, label %if.then.i.i, label %irq_get_msi_desc.exit.i.pci_intx_for_msi.exit.i_crit_edge

irq_get_msi_desc.exit.i.pci_intx_for_msi.exit.i_crit_edge: ; preds = %irq_get_msi_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_intx_for_msi.exit.i

if.then.i.i:                                      ; preds = %irq_get_msi_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_intx(ptr noundef %dev, i32 noundef 0) #9
  br label %pci_intx_for_msi.exit.i

pci_intx_for_msi.exit.i:                          ; preds = %if.then.i.i, %irq_get_msi_desc.exit.i.pci_intx_for_msi.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i.i) #9
  %12 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %control.i.i, align 2, !annotation !83
  %msi_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msi_cap.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  %call.i34.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i.i, ptr noundef nonnull %control.i.i) #9
  %15 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %control.i.i, align 2
  %17 = and i16 %16, -2
  store i16 %17, ptr %control.i.i, align 2
  %18 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msi_cap.i.i, align 1
  %conv6.i.i = zext i8 %19 to i32
  %add7.i.i = add nuw nsw i32 %conv6.i.i, 2
  %call8.i.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add7.i.i, i16 noundef zeroext %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i) #9
  %call2.i = call zeroext i1 @arch_restore_msi_irqs(ptr noundef %dev) #9
  br i1 %call2.i, label %if.then3.i, label %pci_intx_for_msi.exit.i.if.end4.i_crit_edge

pci_intx_for_msi.exit.i.if.end4.i_crit_edge:      ; preds = %pci_intx_for_msi.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %pci_intx_for_msi.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %msg.i = getelementptr inbounds %struct.msi_desc, ptr %cond.i.i, i32 0, i32 3
  call void @__pci_write_msi_msg(ptr noundef %cond.i.i, ptr noundef %msg.i) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %pci_intx_for_msi.exit.i.if.end4.i_crit_edge
  %20 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %msi_cap.i.i, align 1
  %conv.i = zext i8 %21 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %call5.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i, ptr noundef nonnull %control.i) #9
  call fastcc void @pci_msi_update_mask(ptr noundef %cond.i.i, i32 noundef 0, i32 noundef 0) #9
  %22 = ptrtoint ptr %control.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %control.i, align 2
  %24 = and i16 %23, -114
  %msi_attrib.i = getelementptr inbounds %struct.msi_desc, ptr %cond.i.i, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %msi_attrib.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load8.i = load i16, ptr %msi_attrib.i, align 4
  %26 = lshr i16 %bf.load8.i, 8
  %27 = and i16 %26, 112
  %28 = or i16 %24, %27
  %or1432.i = or i16 %28, 1
  store i16 %or1432.i, ptr %control.i, align 2
  %29 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %msi_cap.i.i, align 1
  %conv17.i = zext i8 %30 to i32
  %add18.i = add nuw nsw i32 %conv17.i, 2
  %call19.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add18.i, i16 noundef zeroext %or1432.i) #9
  br label %__pci_restore_msi_state.exit

__pci_restore_msi_state.exit:                     ; preds = %if.end4.i, %entry.__pci_restore_msi_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i) #9
  %31 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 5)
  %bf.load.i2 = load i40, ptr %msi_enabled.i, align 1
  %32 = and i40 %bf.load.i2, 67108864
  %tobool.not.i3 = icmp eq i40 %32, 0
  br i1 %tobool.not.i3, label %__pci_restore_msi_state.exit.__pci_restore_msix_state.exit_crit_edge, label %if.end.i6

__pci_restore_msi_state.exit.__pci_restore_msix_state.exit_crit_edge: ; preds = %__pci_restore_msi_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pci_restore_msix_state.exit

if.end.i6:                                        ; preds = %__pci_restore_msi_state.exit
  %dev_flags.i.i4 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 50
  %33 = ptrtoint ptr %dev_flags.i.i4 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dev_flags.i.i4, align 2
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i.i5 = icmp eq i16 %35, 0
  br i1 %tobool.not.i.i5, label %if.then.i.i7, label %if.end.i6.pci_intx_for_msi.exit.i11_crit_edge

if.end.i6.pci_intx_for_msi.exit.i11_crit_edge:    ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_intx_for_msi.exit.i11

if.then.i.i7:                                     ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_intx(ptr noundef %dev, i32 noundef 0) #9
  br label %pci_intx_for_msi.exit.i11

pci_intx_for_msi.exit.i11:                        ; preds = %if.then.i.i7, %if.end.i6.pci_intx_for_msi.exit.i11_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i.i) #9
  %36 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %ctrl.i.i, align 2, !annotation !83
  %msix_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 21
  %37 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %msix_cap.i.i, align 2
  %conv.i.i8 = zext i8 %38 to i32
  %add.i.i9 = add nuw nsw i32 %conv.i.i8, 2
  %call.i.i10 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i.i9, ptr noundef nonnull %ctrl.i.i) #9
  %39 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ctrl.i.i, align 2
  %or14.i.i = or i16 %40, -16384
  store i16 %or14.i.i, ptr %ctrl.i.i, align 2
  %41 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %msix_cap.i.i, align 2
  %conv8.i.i = zext i8 %42 to i32
  %add9.i.i = add nuw nsw i32 %conv8.i.i, 2
  %call10.i.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add9.i.i, i16 noundef zeroext %or14.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i.i) #9
  %call.i = call zeroext i1 @arch_restore_msi_irqs(ptr noundef %dev) #9
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void @msi_lock_descs(ptr noundef %dev2.i) #9
  %call4.i = call ptr @msi_first_desc(ptr noundef %dev2.i, i32 noundef 0) #9
  %tobool5.not34.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not34.i, label %pci_intx_for_msi.exit.i11.for.end.i_crit_edge, label %pci_intx_for_msi.exit.i11.for.body.i_crit_edge

pci_intx_for_msi.exit.i11.for.body.i_crit_edge:   ; preds = %pci_intx_for_msi.exit.i11
  br label %for.body.i

pci_intx_for_msi.exit.i11.for.end.i_crit_edge:    ; preds = %pci_intx_for_msi.exit.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %pci_msix_write_vector_ctrl.exit.i.for.body.i_crit_edge, %pci_intx_for_msi.exit.i11.for.body.i_crit_edge
  %entry1.035.i = phi ptr [ %call10.i, %pci_msix_write_vector_ctrl.exit.i.for.body.i_crit_edge ], [ %call4.i, %pci_intx_for_msi.exit.i11.for.body.i_crit_edge ]
  br i1 %call.i, label %if.then7.i, label %for.body.i.if.end8.i_crit_edge

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %msg.i12 = getelementptr inbounds %struct.msi_desc, ptr %entry1.035.i, i32 0, i32 3
  call void @__pci_write_msi_msg(ptr noundef nonnull %entry1.035.i, ptr noundef %msg.i12) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %for.body.i.if.end8.i_crit_edge
  %msi_attrib.i.i = getelementptr inbounds %struct.msi_desc, ptr %entry1.035.i, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %msi_attrib.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i.i = load i16, ptr %msi_attrib.i.i, align 4
  %44 = and i16 %bf.load.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.not.i25.i = icmp eq i16 %44, 0
  br i1 %tobool.not.i25.i, label %if.end8.i.pci_msix_write_vector_ctrl.exit.i_crit_edge, label %do.body.i.i

if.end8.i.pci_msix_write_vector_ctrl.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_msix_write_vector_ctrl.exit.i

do.body.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %pci.i = getelementptr inbounds %struct.msi_desc, ptr %entry1.035.i, i32 0, i32 9
  %45 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pci.i, align 4
  %47 = getelementptr inbounds %struct.msi_desc, ptr %entry1.035.i, i32 0, i32 9, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %msi_index.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %entry1.035.i, i32 0, i32 8
  %50 = ptrtoint ptr %msi_index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %msi_index.i.i.i, align 4
  %conv.i.i.i = zext i16 %51 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @arm_heavy_mb() #9
  %52 = call i32 @llvm.bswap.i32(i32 %46) #9
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %52) #9, !srcloc !75
  br label %pci_msix_write_vector_ctrl.exit.i

pci_msix_write_vector_ctrl.exit.i:                ; preds = %do.body.i.i, %if.end8.i.pci_msix_write_vector_ctrl.exit.i_crit_edge
  %call10.i = call ptr @msi_next_desc(ptr noundef %dev2.i, i32 noundef 0) #9
  %tobool5.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool5.not.i, label %pci_msix_write_vector_ctrl.exit.i.for.end.i_crit_edge, label %pci_msix_write_vector_ctrl.exit.i.for.body.i_crit_edge

pci_msix_write_vector_ctrl.exit.i.for.body.i_crit_edge: ; preds = %pci_msix_write_vector_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pci_msix_write_vector_ctrl.exit.i.for.end.i_crit_edge: ; preds = %pci_msix_write_vector_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %pci_msix_write_vector_ctrl.exit.i.for.end.i_crit_edge, %pci_intx_for_msi.exit.i11.for.end.i_crit_edge
  call void @msi_unlock_descs(ptr noundef %dev2.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i26.i) #9
  %53 = ptrtoint ptr %ctrl.i26.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -1, ptr %ctrl.i26.i, align 2, !annotation !83
  %54 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %msix_cap.i.i, align 2
  %conv.i28.i = zext i8 %55 to i32
  %add.i29.i = add nuw nsw i32 %conv.i28.i, 2
  %call.i30.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i29.i, ptr noundef nonnull %ctrl.i26.i) #9
  %56 = ptrtoint ptr %ctrl.i26.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ctrl.i26.i, align 2
  %and.i.i = and i16 %57, -16385
  store i16 %and.i.i, ptr %ctrl.i26.i, align 2
  %58 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %msix_cap.i.i, align 2
  %conv8.i31.i = zext i8 %59 to i32
  %add9.i32.i = add nuw nsw i32 %conv8.i31.i, 2
  %call10.i33.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add9.i32.i, i16 noundef zeroext %and.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i26.i) #9
  br label %__pci_restore_msix_state.exit

__pci_restore_msix_state.exit:                    ; preds = %for.end.i, %__pci_restore_msi_state.exit.__pci_restore_msix_state.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_msi_vec_count(ptr noundef %dev) #0 align 64 {
entry:
  %msgctl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msgctl) #9
  %0 = ptrtoint ptr %msgctl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %msgctl, align 2, !annotation !83
  %msi_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %msi_cap to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %msi_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %2 to i32
  %add = add nuw nsw i32 %conv, 2
  %call = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %msgctl) #9
  %3 = ptrtoint ptr %msgctl to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %msgctl, align 2
  %5 = lshr i16 %4, 1
  %6 = and i16 %5, 7
  %7 = zext i16 %6 to i32
  %shl = shl nuw nsw i32 1, %7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shl, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msgctl) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_disable_msi(ptr noundef %dev) #0 align 64 {
entry:
  %control.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @pci_msi_enable, align 4
  %tobool1.not = icmp eq ptr %dev, null
  %or.cond = or i1 %tobool1.not, %.b
  br i1 %or.cond, label %entry.return_crit_edge, label %lor.lhs.false2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false2:                                   ; preds = %entry
  %msi_enabled = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %msi_enabled, align 1
  %1 = and i40 %bf.load, 134217728
  %tobool3.not = icmp eq i40 %1, 0
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @msi_lock_descs(ptr noundef %dev4) #9
  %.b.i = load i1, ptr @pci_msi_enable, align 4
  br i1 %.b.i, label %if.end.pci_msi_shutdown.exit_crit_edge, label %lor.lhs.false2.i

if.end.pci_msi_shutdown.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_msi_shutdown.exit

lor.lhs.false2.i:                                 ; preds = %if.end
  %2 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i = load i40, ptr %msi_enabled, align 1
  %3 = and i40 %bf.load.i, 134217728
  %tobool3.not.i = icmp eq i40 %3, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.pci_msi_shutdown.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.pci_msi_shutdown.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_msi_shutdown.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i.i) #9
  %4 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %control.i.i, align 2, !annotation !83
  %msi_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 20
  %5 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msi_cap.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  %call.i.i = call i32 @pci_read_config_word(ptr noundef nonnull %dev, i32 noundef %add.i.i, ptr noundef nonnull %control.i.i) #9
  %7 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %control.i.i, align 2
  %9 = and i16 %8, -2
  store i16 %9, ptr %control.i.i, align 2
  %10 = ptrtoint ptr %msi_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msi_cap.i.i, align 1
  %conv6.i.i = zext i8 %11 to i32
  %add7.i.i = add nuw nsw i32 %conv6.i.i, 2
  %call8.i.i = call i32 @pci_write_config_word(ptr noundef nonnull %dev, i32 noundef %add7.i.i, i16 noundef zeroext %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i) #9
  %dev_flags.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 50
  %12 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dev_flags.i.i, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.pci_intx_for_msi.exit.i_crit_edge

if.end.i.pci_intx_for_msi.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_intx_for_msi.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_intx(ptr noundef nonnull %dev, i32 noundef 1) #9
  br label %pci_intx_for_msi.exit.i

pci_intx_for_msi.exit.i:                          ; preds = %if.then.i.i, %if.end.i.pci_intx_for_msi.exit.i_crit_edge
  %15 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %15, i32 5)
  %bf.load5.i = load i40, ptr %msi_enabled, align 1
  %bf.clear6.i = and i40 %bf.load5.i, -134217729
  store i40 %bf.clear6.i, ptr %msi_enabled, align 1
  %call.i = call ptr @msi_first_desc(ptr noundef %dev4, i32 noundef 0) #9
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %land.rhs.i, label %if.then48.critedge.i

land.rhs.i:                                       ; preds = %pci_intx_for_msi.exit.i
  %.b6465.i = load i1, ptr @pci_msi_shutdown.__already_done, align 1
  br i1 %.b6465.i, label %land.rhs.i.if.end50.i_crit_edge, label %if.then17.i, !prof !78

land.rhs.i.if.end50.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then17.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @pci_msi_shutdown.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 755, i32 noundef 9, ptr noundef null) #9
  br label %if.end50.i

if.then48.critedge.i:                             ; preds = %pci_intx_for_msi.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %msi_attrib.i.i = getelementptr inbounds %struct.msi_desc, ptr %call.i, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %msi_attrib.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i = load i16, ptr %msi_attrib.i.i, align 4
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %17 = and i16 %bf.lshr.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp.i.i = icmp ugt i16 %17, 4
  %bf.cast.i.i = zext i16 %17 to i32
  %shl.i.i = shl nuw nsw i32 1, %bf.cast.i.i
  %notmask.i.i = shl nsw i32 -1, %shl.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %retval.0.i.i = select i1 %cmp.i.i, i32 -1, i32 %sub.i.i
  call fastcc void @pci_msi_update_mask(ptr noundef nonnull %call.i, i32 noundef %retval.0.i.i, i32 noundef 0) #9
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.critedge.i, %if.then17.i, %land.rhs.i.if.end50.i_crit_edge
  %default_irq.i = getelementptr inbounds %struct.msi_desc, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %18 = ptrtoint ptr %default_irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %default_irq.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq.i, align 4
  %call51.i = call i32 @pcibios_alloc_irq(ptr noundef nonnull %dev) #9
  br label %pci_msi_shutdown.exit

pci_msi_shutdown.exit:                            ; preds = %if.end50.i, %lor.lhs.false2.i.pci_msi_shutdown.exit_crit_edge, %if.end.pci_msi_shutdown.exit_crit_edge
  call void @pci_msi_teardown_msi_irqs(ptr noundef nonnull %dev) #9
  %msix_base.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 60
  %21 = ptrtoint ptr %msix_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msix_base.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %pci_msi_shutdown.exit.free_msi_irqs.exit_crit_edge, label %if.then.i

pci_msi_shutdown.exit.free_msi_irqs.exit_crit_edge: ; preds = %pci_msi_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_msi_irqs.exit

if.then.i:                                        ; preds = %pci_msi_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @iounmap(ptr noundef nonnull %22) #9
  %23 = ptrtoint ptr %msix_base.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %msix_base.i, align 8
  br label %free_msi_irqs.exit

free_msi_irqs.exit:                               ; preds = %if.then.i, %pci_msi_shutdown.exit.free_msi_irqs.exit_crit_edge
  call void @msi_unlock_descs(ptr noundef %dev4) #9
  br label %return

return:                                           ; preds = %free_msi_irqs.exit, %lor.lhs.false2.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_lock_descs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_unlock_descs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_msix_vec_count(ptr noundef %dev) #0 align 64 {
entry:
  %control = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control) #9
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %control, align 2, !annotation !83
  %msix_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %msix_cap to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %msix_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %2 to i32
  %add = add nuw nsw i32 %conv, 2
  %call = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %control) #9
  %3 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %control, align 2
  %5 = and i16 %4, 2047
  %narrow = add nuw nsw i16 %5, 1
  %add3 = zext i16 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_disable_msix(ptr noundef %dev) #0 align 64 {
entry:
  %ctrl.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @pci_msi_enable, align 4
  %tobool1.not = icmp eq ptr %dev, null
  %or.cond = or i1 %tobool1.not, %.b
  br i1 %or.cond, label %entry.return_crit_edge, label %lor.lhs.false2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false2:                                   ; preds = %entry
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %1 = and i40 %bf.load, 67108864
  %tobool3.not = icmp eq i40 %1, 0
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @msi_lock_descs(ptr noundef %dev4) #9
  %.b.i = load i1, ptr @pci_msi_enable, align 4
  br i1 %.b.i, label %if.end.pci_msix_shutdown.exit_crit_edge, label %lor.lhs.false2.i

if.end.pci_msix_shutdown.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_msix_shutdown.exit

lor.lhs.false2.i:                                 ; preds = %if.end
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i = load i40, ptr %msix_enabled, align 1
  %3 = and i40 %bf.load.i, 67108864
  %tobool3.not.i = icmp eq i40 %3, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.pci_msix_shutdown.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.pci_msix_shutdown.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_msix_shutdown.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %error_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 43
  %4 = ptrtoint ptr %error_state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 3
  br i1 %cmp.i.i, label %if.then4.i, label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear7.i = and i40 %bf.load.i, -67108865
  %6 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_storeN_noabort(i32 %6, i32 5)
  store i40 %bf.clear7.i, ptr %msix_enabled, align 1
  br label %pci_msix_shutdown.exit

if.end8.i:                                        ; preds = %if.end.i
  %call10.i = tail call ptr @msi_first_desc(ptr noundef %dev4, i32 noundef 0) #9
  %tobool11.not29.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not29.i, label %if.end8.i.for.end.i_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %pci_msix_mask.exit.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %desc.030.i = phi ptr [ %call13.i, %pci_msix_mask.exit.i.for.body.i_crit_edge ], [ %call10.i, %if.end8.i.for.body.i_crit_edge ]
  %pci.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.030.i, i32 0, i32 9
  %7 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pci.i.i, align 4
  %or.i.i = or i32 %8, 1
  store i32 %or.i.i, ptr %pci.i.i, align 4
  %msi_attrib.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.030.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %msi_attrib.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i.i.i = load i16, ptr %msi_attrib.i.i.i, align 4
  %10 = and i16 %bf.load.i.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.pci_msix_mask.exit.i_crit_edge, label %do.body.i.i.i

for.body.i.pci_msix_mask.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_msix_mask.exit.i

do.body.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = getelementptr inbounds %struct.msi_desc, ptr %desc.030.i, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %msi_index.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.030.i, i32 0, i32 8
  %14 = ptrtoint ptr %msi_index.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %msi_index.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %15 to i32
  %mul.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %16) #9, !srcloc !75
  br label %pci_msix_mask.exit.i

pci_msix_mask.exit.i:                             ; preds = %do.body.i.i.i, %for.body.i.pci_msix_mask.exit.i_crit_edge
  %17 = getelementptr inbounds %struct.msi_desc, ptr %desc.030.i, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call13.i = tail call ptr @msi_next_desc(ptr noundef %dev4, i32 noundef 0) #9
  %tobool11.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool11.not.i, label %pci_msix_mask.exit.i.for.end.i_crit_edge, label %pci_msix_mask.exit.i.for.body.i_crit_edge

pci_msix_mask.exit.i.for.body.i_crit_edge:        ; preds = %pci_msix_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pci_msix_mask.exit.i.for.end.i_crit_edge:         ; preds = %pci_msix_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %pci_msix_mask.exit.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i.i) #9
  %21 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %ctrl.i.i, align 2, !annotation !83
  %msix_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 21
  %22 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %msix_cap.i.i, align 2
  %conv.i.i = zext i8 %23 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i.i, ptr noundef nonnull %ctrl.i.i) #9
  %24 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ctrl.i.i, align 2
  %and.i.i = and i16 %25, 32767
  store i16 %and.i.i, ptr %ctrl.i.i, align 2
  %26 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %msix_cap.i.i, align 2
  %conv8.i.i = zext i8 %27 to i32
  %add9.i.i = add nuw nsw i32 %conv8.i.i, 2
  %call10.i.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add9.i.i, i16 noundef zeroext %and.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i.i) #9
  %dev_flags.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 50
  %28 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dev_flags.i.i, align 2
  %30 = and i16 %29, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.end.i.pci_intx_for_msi.exit.i_crit_edge

for.end.i.pci_intx_for_msi.exit.i_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_intx_for_msi.exit.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_intx(ptr noundef %dev, i32 noundef 1) #9
  br label %pci_intx_for_msi.exit.i

pci_intx_for_msi.exit.i:                          ; preds = %if.then.i.i, %for.end.i.pci_intx_for_msi.exit.i_crit_edge
  %31 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %31, i32 5)
  %bf.load15.i = load i40, ptr %msix_enabled, align 1
  %bf.clear16.i = and i40 %bf.load15.i, -67108865
  store i40 %bf.clear16.i, ptr %msix_enabled, align 1
  %call18.i = call i32 @pcibios_alloc_irq(ptr noundef nonnull %dev) #9
  br label %pci_msix_shutdown.exit

pci_msix_shutdown.exit:                           ; preds = %pci_intx_for_msi.exit.i, %if.then4.i, %lor.lhs.false2.i.pci_msix_shutdown.exit_crit_edge, %if.end.pci_msix_shutdown.exit_crit_edge
  call void @pci_msi_teardown_msi_irqs(ptr noundef %dev) #9
  %msix_base.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 60
  %32 = ptrtoint ptr %msix_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msix_base.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %pci_msix_shutdown.exit.free_msi_irqs.exit_crit_edge, label %if.then.i

pci_msix_shutdown.exit.free_msi_irqs.exit_crit_edge: ; preds = %pci_msix_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_msi_irqs.exit

if.then.i:                                        ; preds = %pci_msix_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @iounmap(ptr noundef nonnull %33) #9
  %34 = ptrtoint ptr %msix_base.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %msix_base.i, align 8
  br label %free_msi_irqs.exit

free_msi_irqs.exit:                               ; preds = %if.then.i, %pci_msix_shutdown.exit.free_msi_irqs.exit_crit_edge
  call void @msi_unlock_descs(ptr noundef %dev4) #9
  br label %return

return:                                           ; preds = %free_msi_irqs.exit, %lor.lhs.false2.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_enable_msi(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__pci_enable_msi_range(ptr noundef %dev, i32 noundef 1, i32 noundef 1, ptr noundef null)
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__pci_enable_msi_range(ptr noundef %dev, i32 noundef %minvec, i32 noundef %maxvec, ptr noundef %affd) unnamed_addr #0 align 64 {
entry:
  %control.i68.i = alloca i16, align 2
  %desc.i.i = alloca %struct.msi_desc, align 4
  %control.i49.i = alloca i16, align 2
  %control.i.i = alloca i16, align 2
  %msgctl.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @pci_msi_enable, align 4
  %tobool1.not.i = icmp eq ptr %dev, null
  %or.cond.i = or i1 %tobool1.not.i, %.b.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %no_msi.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %no_msi.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load.i = load i40, ptr %no_msi.i, align 1
  %1 = and i40 %bf.load.i, 8589934592
  %tobool2.not.i = icmp ne i40 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %minvec)
  %cmp.i = icmp slt i32 %minvec, 1
  %or.cond17.i = or i1 %cmp.i, %tobool2.not.i
  br i1 %or.cond17.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end6.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %bus7.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %bus7.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bus.018.i = load ptr, ptr %bus7.i, align 8
  %tobool8.not19.i = icmp eq ptr %bus.018.i, null
  br i1 %tobool8.not19.i, label %if.end6.i.lor.lhs.false_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.lor.lhs.false_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.cond.i:                                       ; preds = %for.body.i
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus.020.i, i32 0, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bus.0.i = load ptr, ptr %parent.i, align 8
  %tobool8.not.i = icmp eq ptr %bus.0.i, null
  br i1 %tobool8.not.i, label %for.cond.i.lor.lhs.false_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.lor.lhs.false_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %bus.020.i = phi ptr [ %bus.0.i, %for.cond.i.for.body.i_crit_edge ], [ %bus.018.i, %if.end6.i.for.body.i_crit_edge ]
  %bus_flags.i = getelementptr inbounds %struct.pci_bus, ptr %bus.020.i, i32 0, i32 19
  %4 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus_flags.i, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool9.not.i = icmp eq i16 %6, 0
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.cond.i.lor.lhs.false_crit_edge, %if.end6.i.lor.lhs.false_crit_edge
  %current_state = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 30
  %7 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %no_msi.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load = load i40, ptr %no_msi.i, align 1
  %10 = and i40 %bf.load, 67108864
  %tobool1.not = icmp eq i40 %10, 0
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %maxvec, i32 %minvec)
  %cmp5 = icmp slt i32 %maxvec, %minvec
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %11 = and i40 %bf.load, 134217728
  %tobool12.not = icmp eq i40 %11, 0
  br i1 %tobool12.not, label %if.end55, label %land.rhs

land.rhs:                                         ; preds = %if.end7
  %.b119 = load i1, ptr @__pci_enable_msi_range.__already_done, align 1
  br i1 %.b119, label %land.rhs.cleanup_crit_edge, label %if.then20, !prof !78

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__pci_enable_msi_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 882, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msgctl.i) #9
  %12 = ptrtoint ptr %msgctl.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %msgctl.i, align 2, !annotation !83
  %msi_cap.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %msi_cap.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msi_cap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %pci_msi_vec_count.exit.thread, label %pci_msi_vec_count.exit

pci_msi_vec_count.exit.thread:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msgctl.i) #9
  br label %cleanup

pci_msi_vec_count.exit:                           ; preds = %if.end55
  %conv.i = zext i8 %14 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %call.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i, ptr noundef nonnull %msgctl.i) #9
  %15 = ptrtoint ptr %msgctl.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %msgctl.i, align 2
  %17 = lshr i16 %16, 1
  %18 = and i16 %17, 7
  %19 = zext i16 %18 to i32
  %shl.i = shl nuw nsw i32 1, %19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msgctl.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %minvec)
  %cmp60 = icmp slt i32 %shl.i, %minvec
  br i1 %cmp60, label %pci_msi_vec_count.exit.cleanup_crit_edge, label %if.end62

pci_msi_vec_count.exit.cleanup_crit_edge:         ; preds = %pci_msi_vec_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %pci_msi_vec_count.exit
  %call66 = call fastcc i32 @pci_setup_msi_context(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %for.cond.preheader, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end62
  %20 = call i32 @llvm.smin.i32(i32 %shl.i, i32 %maxvec)
  %tobool70.not = icmp eq ptr %affd, null
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %dev_flags.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 50
  %nvec_used.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i, i32 0, i32 1
  %pci.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i, i32 0, i32 9
  %msi_attrib.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i, i32 0, i32 9, i32 1
  %irq.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %default_irq.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i, i32 0, i32 9, i32 1, i32 1
  %affinity.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i, i32 0, i32 4
  %21 = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i, i32 0, i32 9, i32 2
  %msix_base.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 60
  br label %for.cond

for.cond:                                         ; preds = %if.end83.for.cond_crit_edge, %for.cond.preheader
  %nvec.1 = phi i32 [ %ret.2.i, %if.end83.for.cond_crit_edge ], [ %20, %for.cond.preheader ]
  br i1 %tobool70.not, label %for.cond.if.end76_crit_edge, label %if.then71

for.cond.if.end76_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then71:                                        ; preds = %for.cond
  %call72 = call i32 @irq_calc_affinity_vectors(i32 noundef %minvec, i32 noundef %nvec.1, ptr noundef nonnull %affd) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call72, i32 %minvec)
  %cmp73 = icmp slt i32 %call72, %minvec
  br i1 %cmp73, label %if.then71.cleanup_crit_edge, label %if.then71.if.end76_crit_edge

if.then71.if.end76_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end76:                                         ; preds = %if.then71.if.end76_crit_edge, %for.cond.if.end76_crit_edge
  %nvec.2 = phi i32 [ %call72, %if.then71.if.end76_crit_edge ], [ %nvec.1, %for.cond.if.end76_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i.i) #9
  %22 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %control.i.i, align 2, !annotation !83
  %23 = ptrtoint ptr %msi_cap.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %msi_cap.i, align 1
  %conv.i.i = zext i8 %24 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i.i, ptr noundef nonnull %control.i.i) #9
  %25 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %control.i.i, align 2
  %27 = and i16 %26, -2
  store i16 %27, ptr %control.i.i, align 2
  %28 = ptrtoint ptr %msi_cap.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %msi_cap.i, align 1
  %conv6.i.i = zext i8 %29 to i32
  %add7.i.i = add nuw nsw i32 %conv6.i.i, 2
  %call8.i.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add7.i.i, i16 noundef zeroext %27) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i) #9
  %30 = ptrtoint ptr %no_msi.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 5)
  %bf.load.i122 = load i40, ptr %no_msi.i, align 1
  %bf.set.i = or i40 %bf.load.i122, 134217728
  store i40 %bf.set.i, ptr %no_msi.i, align 1
  br i1 %tobool70.not, label %if.end76.if.end.i125_crit_edge, label %if.then.i

if.end76.if.end.i125_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i125

if.then.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %call.i124 = call ptr @irq_create_affinity_masks(i32 noundef %nvec.2, ptr noundef nonnull %affd) #9
  br label %if.end.i125

if.end.i125:                                      ; preds = %if.then.i, %if.end76.if.end.i125_crit_edge
  %masks.0.i = phi ptr [ %call.i124, %if.then.i ], [ null, %if.end76.if.end.i125_crit_edge ]
  call void @msi_lock_descs(ptr noundef %dev2.i) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %desc.i.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i49.i) #9
  %31 = ptrtoint ptr %control.i49.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %control.i49.i, align 2, !annotation !83
  %32 = call ptr @memset(ptr %desc.i.i, i32 0, i32 60)
  %33 = ptrtoint ptr %msi_cap.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %msi_cap.i, align 1
  %conv.i51.i = zext i8 %34 to i32
  %add.i52.i = add nuw nsw i32 %conv.i51.i, 2
  %call.i53.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i52.i, ptr noundef nonnull %control.i49.i) #9
  %35 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dev_flags.i.i, align 2
  %37 = and i16 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i.i, label %if.end.i125.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i125.if.end.i.i_crit_edge:                 ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %control.i49.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %control.i49.i, align 2
  %40 = or i16 %39, 256
  store i16 %40, ptr %control.i49.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i125.if.end.i.i_crit_edge
  %41 = load i32, ptr @pci_msi_ignore_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool4.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %control.i49.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %control.i49.i, align 2
  %44 = and i16 %43, -257
  store i16 %44, ptr %control.i49.i, align 2
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end9.i.i_crit_edge
  %45 = ptrtoint ptr %nvec_used.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %nvec.2, ptr %nvec_used.i.i, align 4
  %46 = ptrtoint ptr %control.i49.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %control.i49.i, align 2
  %48 = ptrtoint ptr %msi_attrib.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i.i = load i16, ptr %msi_attrib.i.i, align 4
  %bf.shl.i.i = and i16 %47, 128
  %bf.clear.i.i = and i16 %bf.load.i.i, -32641
  %49 = and i16 %47, 256
  %bf.set.i.i = and i16 %47, 384
  %bf.set29.i.i = or i16 %bf.set.i.i, %bf.clear.i.i
  %50 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq.i.i, align 4
  %52 = ptrtoint ptr %default_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %default_irq.i.i, align 4
  %53 = trunc i16 %47 to i8
  %54 = lshr i8 %53, 1
  %55 = and i8 %54, 7
  %bf.value39.i.i = zext i8 %55 to i16
  %bf.shl40.i.i = shl nuw nsw i16 %bf.value39.i.i, 9
  %bf.set42.i.i = or i16 %bf.shl40.i.i, %bf.set29.i.i
  %sub.i.i.i = add i32 %nvec.2, -1
  %56 = call i32 @llvm.ctlz.i32(i32 %sub.i.i.i, i1 true) #9, !range !88
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %56
  %sub.i.i.op.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %57 = call i32 @llvm.ctlz.i32(i32 %sub.i.i.op.i.i.i, i1 true), !range !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %sub.i.i.i, 0
  %58 = trunc i32 %57 to i16
  %59 = xor i16 %58, -1
  %.op = shl i16 %59, 12
  %.op.op = and i16 %.op, 28672
  %bf.shl60.i.i = select i1 %tobool.not.i.i.i.i.i, i16 0, i16 %.op.op
  %bf.set62.i.i = or i16 %bf.shl60.i.i, %bf.set42.i.i
  %60 = ptrtoint ptr %msi_attrib.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %bf.set62.i.i, ptr %msi_attrib.i.i, align 4
  %61 = ptrtoint ptr %affinity.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %masks.0.i, ptr %affinity.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.shl.i.i)
  %tobool66.not.i.i = icmp eq i16 %bf.shl.i.i, 0
  %62 = ptrtoint ptr %msi_cap.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %msi_cap.i, align 1
  %..i.i = select i1 %tobool66.not.i.i, i8 12, i8 16
  %add75.i.i = add i8 %63, %..i.i
  %64 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %add75.i.i, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool83.not.i.i = icmp eq i16 %49, 0
  br i1 %tobool83.not.i.i, label %if.end9.i.i.msi_setup_msi_desc.exit.i_crit_edge, label %if.then84.i.i

if.end9.i.i.msi_setup_msi_desc.exit.i_crit_edge:  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msi_setup_msi_desc.exit.i

if.then84.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv86.i.i = zext i8 %add75.i.i to i32
  %call88.i.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %conv86.i.i, ptr noundef %pci.i.i) #9
  br label %msi_setup_msi_desc.exit.i

msi_setup_msi_desc.exit.i:                        ; preds = %if.then84.i.i, %if.end9.i.i.msi_setup_msi_desc.exit.i_crit_edge
  %call91.i.i = call i32 @msi_add_msi_desc(ptr noundef %dev2.i, ptr noundef nonnull %desc.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i49.i) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %desc.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i.i)
  %tobool4.not.i = icmp eq i32 %call91.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i126, label %msi_setup_msi_desc.exit.i.fail.i_crit_edge

msi_setup_msi_desc.exit.i.fail.i_crit_edge:       ; preds = %msi_setup_msi_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.i

if.end6.i126:                                     ; preds = %msi_setup_msi_desc.exit.i
  %call8.i = call ptr @msi_first_desc(ptr noundef %dev2.i, i32 noundef 0) #9
  %msi_attrib.i54.i = getelementptr inbounds %struct.msi_desc, ptr %call8.i, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %msi_attrib.i54.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i55.i = load i16, ptr %msi_attrib.i54.i, align 4
  %bf.lshr.i.i = lshr i16 %bf.load.i55.i, 9
  %66 = and i16 %bf.lshr.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %66)
  %cmp.i56.i = icmp ugt i16 %66, 4
  %bf.cast.i.i = zext i16 %66 to i32
  %shl.i.i = shl nuw nsw i32 1, %bf.cast.i.i
  %notmask.i.i = shl nsw i32 -1, %shl.i.i
  %sub.i57.i = xor i32 %notmask.i.i, -1
  %retval.0.i.i = select i1 %cmp.i56.i, i32 -1, i32 %sub.i57.i
  call fastcc void @pci_msi_update_mask(ptr noundef %call8.i, i32 noundef 0, i32 noundef %retval.0.i.i) #9
  %call10.i = call i32 @pci_msi_setup_msi_irqs(ptr noundef %dev, i32 noundef %nvec.2, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i126.err.i_crit_edge

if.end6.i126.err.i_crit_edge:                     ; preds = %if.end6.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end13.i:                                       ; preds = %if.end6.i126
  %67 = ptrtoint ptr %no_msi.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 5)
  %bf.load.i58.i = load i40, ptr %no_msi.i, align 1
  %68 = and i40 %bf.load.i58.i, 4294967296
  %tobool.not.i59.i = icmp eq i40 %68, 0
  br i1 %tobool.not.i59.i, label %if.end13.i.if.end17.i_crit_edge, label %if.end.i61.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.end.i61.i:                                     ; preds = %if.end13.i
  %call.i60.i = call ptr @msi_first_desc(ptr noundef %dev2.i, i32 noundef 0) #9
  %tobool3.not22.i.i = icmp eq ptr %call.i60.i, null
  br i1 %tobool3.not22.i.i, label %if.end.i61.i.if.end17.i_crit_edge, label %if.end.i61.i.for.body.i.i_crit_edge

if.end.i61.i.for.body.i.i_crit_edge:              ; preds = %if.end.i61.i
  br label %for.body.i.i

if.end.i61.i.if.end17.i_crit_edge:                ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i61.i.for.body.i.i_crit_edge
  %entry1.023.i.i = phi ptr [ %call11.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i60.i, %if.end.i61.i.for.body.i.i_crit_edge ]
  %69 = getelementptr inbounds %struct.msi_desc, ptr %entry1.023.i.i, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool4.not.i62.i = icmp eq i32 %71, 0
  br i1 %tobool4.not.i62.i, label %for.inc.i.i, label %msi_verify_entries.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %call11.i.i = call ptr @msi_next_desc(ptr noundef %dev2.i, i32 noundef 0) #9
  %tobool3.not.i.i = icmp eq ptr %call11.i.i, null
  br i1 %tobool3.not.i.i, label %for.inc.i.i.if.end17.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end17.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

msi_verify_entries.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %msg.i.i = getelementptr inbounds %struct.msi_desc, ptr %entry1.023.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.5, i32 noundef %71, i32 noundef %73) #12
  br label %err.i

if.end17.i:                                       ; preds = %for.inc.i.i.if.end17.i_crit_edge, %if.end.i61.i.if.end17.i_crit_edge, %if.end13.i.if.end17.i_crit_edge
  %74 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %dev_flags.i.i, align 2
  %76 = and i16 %75, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not.i65.i = icmp eq i16 %76, 0
  br i1 %tobool.not.i65.i, label %if.then.i66.i, label %if.end17.i.pci_intx_for_msi.exit.i_crit_edge

if.end17.i.pci_intx_for_msi.exit.i_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_intx_for_msi.exit.i

if.then.i66.i:                                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_intx(ptr noundef %dev, i32 noundef 0) #9
  br label %pci_intx_for_msi.exit.i

pci_intx_for_msi.exit.i:                          ; preds = %if.then.i66.i, %if.end17.i.pci_intx_for_msi.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i68.i) #9
  %77 = ptrtoint ptr %control.i68.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %control.i68.i, align 2, !annotation !83
  %78 = ptrtoint ptr %msi_cap.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %msi_cap.i, align 1
  %conv.i70.i = zext i8 %79 to i32
  %add.i71.i = add nuw nsw i32 %conv.i70.i, 2
  %call.i72.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i71.i, ptr noundef nonnull %control.i68.i) #9
  %80 = ptrtoint ptr %control.i68.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %control.i68.i, align 2
  %spec.select.i.i = or i16 %81, 1
  store i16 %spec.select.i.i, ptr %control.i68.i, align 2
  %82 = ptrtoint ptr %msi_cap.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %msi_cap.i, align 1
  %conv6.i73.i = zext i8 %83 to i32
  %add7.i74.i = add nuw nsw i32 %conv6.i73.i, 2
  %call8.i75.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add7.i74.i, i16 noundef zeroext %spec.select.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i68.i) #9
  call void @pcibios_free_irq(ptr noundef %dev) #9
  %84 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %call8.i, align 4
  %86 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %irq.i.i, align 4
  br label %msi_capability_init.exit

err.i:                                            ; preds = %msi_verify_entries.exit.i, %if.end6.i126.err.i_crit_edge
  %ret.0.i = phi i32 [ %call10.i, %if.end6.i126.err.i_crit_edge ], [ -5, %msi_verify_entries.exit.i ]
  call fastcc void @pci_msi_update_mask(ptr noundef %call8.i, i32 noundef %retval.0.i.i, i32 noundef 0) #9
  call void @pci_msi_teardown_msi_irqs(ptr noundef %dev) #9
  %87 = ptrtoint ptr %msix_base.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %msix_base.i.i, align 8
  %tobool.not.i76.i = icmp eq ptr %88, null
  br i1 %tobool.not.i76.i, label %err.i.fail.i_crit_edge, label %if.then.i77.i

err.i.fail.i_crit_edge:                           ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.i

if.then.i77.i:                                    ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @iounmap(ptr noundef nonnull %88) #9
  %89 = ptrtoint ptr %msix_base.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %msix_base.i.i, align 8
  br label %fail.i

fail.i:                                           ; preds = %if.then.i77.i, %err.i.fail.i_crit_edge, %msi_setup_msi_desc.exit.i.fail.i_crit_edge
  %ret.1.i = phi i32 [ %call91.i.i, %msi_setup_msi_desc.exit.i.fail.i_crit_edge ], [ %ret.0.i, %err.i.fail.i_crit_edge ], [ %ret.0.i, %if.then.i77.i ]
  %90 = ptrtoint ptr %no_msi.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 5)
  %bf.load21.i = load i40, ptr %no_msi.i, align 1
  %bf.clear22.i = and i40 %bf.load21.i, -134217729
  store i40 %bf.clear22.i, ptr %no_msi.i, align 1
  br label %msi_capability_init.exit

msi_capability_init.exit:                         ; preds = %fail.i, %pci_intx_for_msi.exit.i
  %ret.2.i = phi i32 [ %ret.1.i, %fail.i ], [ 0, %pci_intx_for_msi.exit.i ]
  call void @msi_unlock_descs(ptr noundef %dev2.i) #9
  call void @kfree(ptr noundef %masks.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp78 = icmp eq i32 %ret.2.i, 0
  br i1 %cmp78, label %msi_capability_init.exit.cleanup_crit_edge, label %if.end80

msi_capability_init.exit.cleanup_crit_edge:       ; preds = %msi_capability_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end80:                                         ; preds = %msi_capability_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp81 = icmp slt i32 %ret.2.i, 0
  br i1 %cmp81, label %if.end80.cleanup_crit_edge, label %if.end83

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end83:                                         ; preds = %if.end80
  %cmp84 = icmp slt i32 %ret.2.i, %minvec
  br i1 %cmp84, label %if.end83.cleanup_crit_edge, label %if.end83.for.cond_crit_edge

if.end83.for.cond_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end83.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %msi_capability_init.exit.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %pci_msi_vec_count.exit.cleanup_crit_edge, %pci_msi_vec_count.exit.thread, %if.then20, %land.rhs.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -34, %if.end4.cleanup_crit_edge ], [ -22, %if.then20 ], [ -28, %pci_msi_vec_count.exit.cleanup_crit_edge ], [ %call66, %if.end62.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %pci_msi_vec_count.exit.thread ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -28, %if.end83.cleanup_crit_edge ], [ %ret.2.i, %if.end80.cleanup_crit_edge ], [ %nvec.2, %msi_capability_init.exit.cleanup_crit_edge ], [ -28, %if.then71.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_enable_msix_range(ptr noundef %dev, ptr noundef %entries, i32 noundef %minvec, i32 noundef %maxvec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__pci_enable_msix_range(ptr noundef %dev, ptr noundef %entries, i32 noundef %minvec, i32 noundef %maxvec, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__pci_enable_msix_range(ptr noundef %dev, ptr noundef %entries, i32 noundef %minvec, i32 noundef %maxvec, ptr noundef %affd, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %ctrl.i52.i.i = alloca i16, align 2
  %ctrl.i44.i.i = alloca i16, align 2
  %control.i.i.i.i.i = alloca i16, align 2
  %desc.i.i.i.i = alloca %struct.msi_desc, align 4
  %table_offset.i.i.i = alloca i32, align 4
  %ctrl.i.i.i = alloca i16, align 2
  %control.i66.i = alloca i16, align 2
  %control.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %maxvec, i32 %minvec)
  %cmp = icmp slt i32 %maxvec, %minvec
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %1 = and i40 %bf.load, 67108864
  %tobool.not = icmp eq i40 %1, 0
  br i1 %tobool.not, label %if.end40, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b81 = load i1, ptr @__pci_enable_msix_range.__already_done, align 1
  br i1 %.b81, label %land.rhs.cleanup_crit_edge, label %if.then8, !prof !78

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__pci_enable_msix_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 938, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call i32 @msi_setup_device_data(ptr noundef %dev1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end40
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i = load i40, ptr %msix_enabled, align 1
  %3 = and i40 %bf.load.i.i.i, 3145728
  %4 = icmp eq i40 %3, 2097152
  br i1 %4, label %if.end.i.i, label %if.then.i.pci_setup_msi_context.exit_crit_edge

if.then.i.pci_setup_msi_context.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_setup_msi_context.exit

if.end.i.i:                                       ; preds = %if.then.i
  %call3.i.i = tail call i32 @devm_add_action(ptr noundef %dev1.i, ptr noundef nonnull @pcim_msi_release, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %5, i32 5)
  %bf.load7.i.i = load i40, ptr %msix_enabled, align 1
  %bf.set.i.i = or i40 %bf.load7.i.i, 1048576
  store i40 %bf.set.i.i, ptr %msix_enabled, align 1
  br label %pci_setup_msi_context.exit

pci_setup_msi_context.exit:                       ; preds = %if.then5.i.i, %if.then.i.pci_setup_msi_context.exit_crit_edge
  %tobool44.not = icmp eq ptr %affd, null
  %tobool1.not.i.i = icmp eq ptr %dev, null
  %bus7.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %current_state.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 30
  %msix_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 21
  %and.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  %tobool9.not.i = icmp eq ptr %entries, null
  %msix_base.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 60
  %nvec_used.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i.i.i, i32 0, i32 1
  %pci.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i.i.i, i32 0, i32 9
  %msi_attrib.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i.i.i, i32 0, i32 9, i32 1
  %irq.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %default_irq.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i.i.i, i32 0, i32 9, i32 1, i32 1
  %6 = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i.i.i, i32 0, i32 9, i32 2
  %msi_index.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i.i.i, i32 0, i32 8
  %affinity.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %desc.i.i.i.i, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.end57.for.cond_crit_edge, %pci_setup_msi_context.exit
  %nvec.0 = phi i32 [ %maxvec, %pci_setup_msi_context.exit ], [ %retval.0.i8897, %if.end57.for.cond_crit_edge ]
  br i1 %tobool44.not, label %for.cond.if.end50_crit_edge, label %if.then45

for.cond.if.end50_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then45:                                        ; preds = %for.cond
  %call46 = call i32 @irq_calc_affinity_vectors(i32 noundef %minvec, i32 noundef %nvec.0, ptr noundef nonnull %affd) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %minvec)
  %cmp47 = icmp slt i32 %call46, %minvec
  br i1 %cmp47, label %if.then45.cleanup_crit_edge, label %if.then45.if.end50_crit_edge

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.then45.if.end50_crit_edge, %for.cond.if.end50_crit_edge
  %nvec.1 = phi i32 [ %call46, %if.then45.if.end50_crit_edge ], [ %nvec.0, %for.cond.if.end50_crit_edge ]
  %.b.i.i = load i1, ptr @pci_msi_enable, align 4
  %or.cond.i.i = or i1 %tobool1.not.i.i, %.b.i.i
  br i1 %or.cond.i.i, label %if.end50.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end50
  %7 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %7, i32 5)
  %bf.load.i.i = load i40, ptr %msix_enabled, align 1
  %8 = and i40 %bf.load.i.i, 8589934592
  %tobool2.not.i.i = icmp ne i40 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nvec.1)
  %cmp.i.i = icmp slt i32 %nvec.1, 1
  %or.cond17.i.i = or i1 %cmp.i.i, %tobool2.not.i.i
  br i1 %or.cond17.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %if.end6.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i
  %9 = ptrtoint ptr %bus7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bus.018.i.i = load ptr, ptr %bus7.i.i, align 8
  %tobool8.not19.i.i = icmp eq ptr %bus.018.i.i, null
  br i1 %tobool8.not19.i.i, label %if.end6.i.i.lor.lhs.false.i_crit_edge, label %if.end6.i.i.for.body.i.i_crit_edge

if.end6.i.i.for.body.i.i_crit_edge:               ; preds = %if.end6.i.i
  br label %for.body.i.i

if.end6.i.i.lor.lhs.false.i_crit_edge:            ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus.020.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bus.0.i.i = load ptr, ptr %parent.i.i, align 8
  %tobool8.not.i.i = icmp eq ptr %bus.0.i.i, null
  br i1 %tobool8.not.i.i, label %for.cond.i.i.lor.lhs.false.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.i.i.lor.lhs.false.i_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end6.i.i.for.body.i.i_crit_edge
  %bus.020.i.i = phi ptr [ %bus.0.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %bus.018.i.i, %if.end6.i.i.for.body.i.i_crit_edge ]
  %bus_flags.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus.020.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %bus_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bus_flags.i.i, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool9.not.i.i, label %for.cond.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %for.cond.i.i.lor.lhs.false.i_crit_edge, %if.end6.i.i.lor.lhs.false.i_crit_edge
  %14 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i.i) #9
  %16 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %control.i.i, align 2, !annotation !83
  %17 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %msix_cap.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %pci_msix_vec_count.exit.thread.i, label %pci_msix_vec_count.exit.i

pci_msix_vec_count.exit.thread.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i) #9
  br label %cleanup

pci_msix_vec_count.exit.i:                        ; preds = %if.end.i
  %conv.i.i = zext i8 %18 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i.i, ptr noundef nonnull %control.i.i) #9
  %19 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %control.i.i, align 2
  %21 = and i16 %20, 2047
  %narrow.i.i = add nuw nsw i16 %21, 1
  %add3.i.i = zext i16 %narrow.i.i to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %nvec.1, i32 %add3.i.i)
  %cmp5.i = icmp sgt i32 %nvec.1, %add3.i.i
  %or.cond.i = and i1 %tobool6.not.i, %cmp5.i
  br i1 %or.cond.i, label %pci_msix_vec_count.exit.i.if.end57_crit_edge, label %if.end8.i

pci_msix_vec_count.exit.i.if.end57_crit_edge:     ; preds = %pci_msix_vec_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end8.i:                                        ; preds = %pci_msix_vec_count.exit.i
  br i1 %tobool9.not.i, label %if.end8.i.if.end34.i_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.if.end34.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.cond.loopexit.i:                              ; preds = %for.cond17.i.for.cond.loopexit.i_crit_edge, %if.end16.i.for.cond.loopexit.i_crit_edge
  %exitcond94.not.i = icmp eq i32 %add.i, %nvec.1
  br i1 %exitcond94.not.i, label %for.cond.loopexit.i.if.end34.i_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.loopexit.i.if.end34.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %i.087.i = phi i32 [ %add.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %entry12.i = getelementptr %struct.msix_entry, ptr %entries, i32 %i.087.i, i32 1
  %22 = ptrtoint ptr %entry12.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %entry12.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp13.not.not.i = icmp ult i16 %21, %23
  br i1 %cmp13.not.not.i, label %for.body.i.cleanup_crit_edge, label %if.end16.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i:                                       ; preds = %for.body.i
  %add.i = add nuw nsw i32 %i.087.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %nvec.1)
  %cmp1884.i = icmp slt i32 %add.i, %nvec.1
  br i1 %cmp1884.i, label %if.end16.i.for.body20.i_crit_edge, label %if.end16.i.for.cond.loopexit.i_crit_edge

if.end16.i.for.cond.loopexit.i_crit_edge:         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i

if.end16.i.for.body20.i_crit_edge:                ; preds = %if.end16.i
  br label %for.body20.i

for.cond17.i:                                     ; preds = %for.body20.i
  %inc.i = add nuw i32 %j.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nvec.1
  br i1 %exitcond.not.i, label %for.cond17.i.for.cond.loopexit.i_crit_edge, label %for.cond17.i.for.body20.i_crit_edge

for.cond17.i.for.body20.i_crit_edge:              ; preds = %for.cond17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20.i

for.cond17.i.for.cond.loopexit.i_crit_edge:       ; preds = %for.cond17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i

for.body20.i:                                     ; preds = %for.cond17.i.for.body20.i_crit_edge, %if.end16.i.for.body20.i_crit_edge
  %j.085.i = phi i32 [ %inc.i, %for.cond17.i.for.body20.i_crit_edge ], [ %add.i, %if.end16.i.for.body20.i_crit_edge ]
  %entry25.i = getelementptr %struct.msix_entry, ptr %entries, i32 %j.085.i, i32 1
  %24 = ptrtoint ptr %entry25.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %entry25.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp27.i = icmp eq i16 %23, %25
  br i1 %cmp27.i, label %for.body20.i.cleanup_crit_edge, label %for.cond17.i

for.body20.i.cleanup_crit_edge:                   ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34.i:                                       ; preds = %for.cond.loopexit.i.if.end34.i_crit_edge, %if.end8.i.if.end34.i_crit_edge
  %26 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %26, i32 5)
  %bf.load.i = load i40, ptr %msix_enabled, align 1
  %27 = and i40 %bf.load.i, 134217728
  %tobool35.not.i = icmp eq i40 %27, 0
  br i1 %tobool35.not.i, label %if.end38.i, label %do.end.i

do.end.i:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end38.i:                                       ; preds = %if.end34.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i66.i) #9
  %28 = ptrtoint ptr %control.i66.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %control.i66.i, align 2, !annotation !83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i.i.i) #9
  %29 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %ctrl.i.i.i, align 2, !annotation !83
  %30 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %msix_cap.i.i, align 2
  %conv.i.i.i = zext i8 %31 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 2
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i.i.i, ptr noundef nonnull %ctrl.i.i.i) #9
  %32 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ctrl.i.i.i, align 2
  %or14.i.i.i = or i16 %33, -16384
  store i16 %or14.i.i.i, ptr %ctrl.i.i.i, align 2
  %34 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %msix_cap.i.i, align 2
  %conv8.i.i.i = zext i8 %35 to i32
  %add9.i.i.i = add nuw nsw i32 %conv8.i.i.i, 2
  %call10.i.i.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add9.i.i.i, i16 noundef zeroext %or14.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i.i.i) #9
  %36 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %36, i32 5)
  %bf.load.i67.i = load i40, ptr %msix_enabled, align 1
  %bf.set.i.i83 = or i40 %bf.load.i67.i, 67108864
  store i40 %bf.set.i.i83, ptr %msix_enabled, align 1
  %37 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %msix_cap.i.i, align 2
  %conv.i68.i = zext i8 %38 to i32
  %add.i69.i = add nuw nsw i32 %conv.i68.i, 2
  %call.i70.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i69.i, ptr noundef nonnull %control.i66.i) #9
  %39 = ptrtoint ptr %control.i66.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %control.i66.i, align 2
  %41 = and i16 %40, 2047
  %narrow.i71.i = add nuw nsw i16 %41, 1
  %add2.i.i = zext i16 %narrow.i71.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table_offset.i.i.i) #9
  %42 = ptrtoint ptr %table_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %table_offset.i.i.i, align 4, !annotation !83
  %43 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %msix_cap.i.i, align 2
  %conv.i32.i.i = zext i8 %44 to i32
  %add.i33.i.i = add nuw nsw i32 %conv.i32.i.i, 4
  %call.i34.i.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add.i33.i.i, ptr noundef nonnull %table_offset.i.i.i) #9
  %45 = ptrtoint ptr %table_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %table_offset.i.i.i, align 4
  %conv1.i.i.i = and i32 %46, 7
  %flags2.i.i.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %conv1.i.i.i, i32 3
  %47 = ptrtoint ptr %flags2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i.i = icmp ne i32 %48, 0
  %and3.i.i.i = and i32 %48, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  %or.cond.i.i.i = and i1 %tobool.not.i.i.i, %tobool4.not.i.i.i
  br i1 %or.cond.i.i.i, label %msix_map_region.exit.i.i, label %msix_map_region.exit.thread.i.i

msix_map_region.exit.thread.i.i:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table_offset.i.i.i) #9
  br label %if.end54

msix_map_region.exit.i.i:                         ; preds = %if.end38.i
  %arrayidx.i.i.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %conv1.i.i.i
  %and5.i.i.i = and i32 %46, -8
  %49 = ptrtoint ptr %table_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and5.i.i.i, ptr %table_offset.i.i.i, align 4
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i, align 8
  %add9.i35.i.i = add i32 %51, %and5.i.i.i
  %mul.i.i.i = shl nuw nsw i32 %add2.i.i, 4
  %call10.i36.i.i = call ptr @ioremap(i32 noundef %add9.i35.i.i, i32 noundef %mul.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table_offset.i.i.i) #9
  %tobool.not.i72.i = icmp eq ptr %call10.i36.i.i, null
  br i1 %tobool.not.i72.i, label %msix_map_region.exit.i.i.if.end54_crit_edge, label %if.end.i73.i

msix_map_region.exit.i.i.if.end54_crit_edge:      ; preds = %msix_map_region.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end.i73.i:                                     ; preds = %msix_map_region.exit.i.i
  %52 = ptrtoint ptr %msix_base.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call10.i36.i.i, ptr %msix_base.i.i, align 8
  br i1 %tobool44.not, label %if.end.i73.i.if.end.i39.i.i_crit_edge, label %if.then.i.i.i

if.end.i73.i.if.end.i39.i.i_crit_edge:            ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i39.i.i

if.then.i.i.i:                                    ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i38.i.i = call ptr @irq_create_affinity_masks(i32 noundef %nvec.1, ptr noundef nonnull %affd) #9
  br label %if.end.i39.i.i

if.end.i39.i.i:                                   ; preds = %if.then.i.i.i, %if.end.i73.i.if.end.i39.i.i_crit_edge
  %masks.0.i.i.i = phi ptr [ %call.i38.i.i, %if.then.i.i.i ], [ null, %if.end.i73.i.if.end.i39.i.i_crit_edge ]
  call void @msi_lock_descs(ptr noundef %dev1.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i.i.i.i.i) #9
  %53 = ptrtoint ptr %control.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -1, ptr %control.i.i.i.i.i, align 2, !annotation !83
  %54 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %msix_cap.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i.i.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i39.i.i.pci_msix_vec_count.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.end.i39.i.i.pci_msix_vec_count.exit.i.i.i.i_crit_edge: ; preds = %if.end.i39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_msix_vec_count.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i8 %55 to i32
  %add.i.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i.i, 2
  %call.i.i.i.i.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i.i.i.i.i, ptr noundef nonnull %control.i.i.i.i.i) #9
  %56 = ptrtoint ptr %control.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %control.i.i.i.i.i, align 2
  %58 = and i16 %57, 2047
  %narrow.i.i.i.i.i = add nuw nsw i16 %58, 1
  %add3.i.i.i.i.i = zext i16 %narrow.i.i.i.i.i to i32
  br label %pci_msix_vec_count.exit.i.i.i.i

pci_msix_vec_count.exit.i.i.i.i:                  ; preds = %if.end.i.i.i.i.i, %if.end.i39.i.i.pci_msix_vec_count.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %add3.i.i.i.i.i, %if.end.i.i.i.i.i ], [ -22, %if.end.i39.i.i.pci_msix_vec_count.exit.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i.i.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %desc.i.i.i.i) #9
  %59 = call ptr @memset(ptr %desc.i.i.i.i, i32 0, i32 52)
  %60 = ptrtoint ptr %nvec_used.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %nvec_used.i.i.i.i, align 4
  %61 = ptrtoint ptr %msi_attrib.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -32640, ptr %msi_attrib.i.i.i.i, align 4
  %62 = ptrtoint ptr %irq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq.i.i.i.i, align 4
  %64 = ptrtoint ptr %default_irq.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %default_irq.i.i.i.i, align 4
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call10.i36.i.i, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvec.1)
  %cmp67.i.i.i.i = icmp sgt i32 %nvec.1, 0
  br i1 %cmp67.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %pci_msix_vec_count.exit.i.i.i.i.if.end5.i.i.i_crit_edge

pci_msix_vec_count.exit.i.i.i.i.if.end5.i.i.i_crit_edge: ; preds = %pci_msix_vec_count.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %pci_msix_vec_count.exit.i.i.i.i
  %tobool11.not.i.i.i.i = icmp eq ptr %masks.0.i.i.i, null
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.069.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %curmsk.068.i.i.i.i = phi ptr [ %masks.0.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  br i1 %tobool9.not.i, label %for.body.i.i.i.i.cond.end.i.i.i.i_crit_edge, label %cond.true.i.i.i.i

for.body.i.i.i.i.cond.end.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %entry9.i.i.i.i = getelementptr %struct.msix_entry, ptr %entries, i32 %i.069.i.i.i.i, i32 1
  %66 = ptrtoint ptr %entry9.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %entry9.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %67 to i32
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %cond.true.i.i.i.i, %for.body.i.i.i.i.cond.end.i.i.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %conv.i.i.i.i, %cond.true.i.i.i.i ], [ %i.069.i.i.i.i, %for.body.i.i.i.i.cond.end.i.i.i.i_crit_edge ]
  %conv10.i.i.i.i = trunc i32 %cond.i.i.i.i to i16
  %68 = ptrtoint ptr %msi_index.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv10.i.i.i.i, ptr %msi_index.i.i.i.i, align 4
  %spec.select.i.i.i.i = select i1 %tobool11.not.i.i.i.i, ptr null, ptr %curmsk.068.i.i.i.i
  %69 = ptrtoint ptr %affinity.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %spec.select.i.i.i.i, ptr %affinity.i.i.i.i, align 4
  %conv17.i.i.i.i = and i32 %cond.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i.i, i32 %conv17.i.i.i.i)
  %cmp18.not.i.i.i.i = icmp sgt i32 %retval.0.i.i.i.i.i, %conv17.i.i.i.i
  %70 = ptrtoint ptr %msi_attrib.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load23.i.i.i.i = load i16, ptr %msi_attrib.i.i.i.i, align 4
  %bf.shl.i.i.i.i = select i1 %cmp18.not.i.i.i.i, i16 0, i16 64
  %bf.clear24.i.i.i.i = and i16 %bf.load23.i.i.i.i, -321
  %bf.set25.i.i.i.i = or i16 %bf.clear24.i.i.i.i, %bf.shl.i.i.i.i
  %71 = load i32, ptr @pci_msi_ignore_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool26.not.i.i.i.i = icmp eq i32 %71, 0
  %72 = select i1 %tobool26.not.i.i.i.i, i1 %cmp18.not.i.i.i.i, i1 false
  %bf.shl37.i.i.i.i = select i1 %72, i16 256, i16 0
  %bf.set39.i.i.i.i = or i16 %bf.set25.i.i.i.i, %bf.shl37.i.i.i.i
  %73 = ptrtoint ptr %msi_attrib.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %bf.set39.i.i.i.i, ptr %msi_attrib.i.i.i.i, align 4
  br i1 %72, label %cond.end.i.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

cond.end.i.i.i.i.if.end.i.i.i.i_crit_edge:        ; preds = %cond.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %cond.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %6, align 4
  %mul.i.i.i.i.i = shl nuw nsw i32 %conv17.i.i.i.i, 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %75, i32 12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !76
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %78 = ptrtoint ptr %pci.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %pci.i.i.i.i, align 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %cond.end.i.i.i.i.if.end.i.i.i.i_crit_edge
  %call53.i.i.i.i = call i32 @msi_add_msi_desc(ptr noundef %dev1.i, ptr noundef nonnull %desc.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i.i)
  %tobool54.not.i.i.i.i = icmp eq i32 %call53.i.i.i.i, 0
  br i1 %tobool54.not.i.i.i.i, label %for.inc.i.i.i.i, label %msix_setup_msi_descs.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.069.i.i.i.i, 1
  %incdec.ptr.i.i.i.i = getelementptr %struct.irq_affinity_desc, ptr %curmsk.068.i.i.i.i, i32 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %nvec.1
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.if.end5.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.if.end5.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i.i

msix_setup_msi_descs.exit.i.i.i:                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %desc.i.i.i.i) #9
  br label %out_free.i.i.i

if.end5.i.i.i:                                    ; preds = %for.inc.i.i.i.i.if.end5.i.i.i_crit_edge, %pci_msix_vec_count.exit.i.i.i.i.if.end5.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %desc.i.i.i.i) #9
  %call6.i.i.i = call i32 @pci_msi_setup_msi_irqs(ptr noundef %dev, i32 noundef %nvec.1, i32 noundef 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end9.i.i.i, label %if.end5.i.i.i.out_free.i.i.i_crit_edge

if.end5.i.i.i.out_free.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free.i.i.i

if.end9.i.i.i:                                    ; preds = %if.end5.i.i.i
  %79 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %79, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %msix_enabled, align 1
  %80 = and i40 %bf.load.i.i.i.i, 4294967296
  %tobool.not.i29.i.i.i = icmp eq i40 %80, 0
  br i1 %tobool.not.i29.i.i.i, label %if.end9.i.i.i.if.end13.i.i.i_crit_edge, label %if.end.i30.i.i.i

if.end9.i.i.i.if.end13.i.i.i_crit_edge:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

if.end.i30.i.i.i:                                 ; preds = %if.end9.i.i.i
  %call.i.i.i.i = call ptr @msi_first_desc(ptr noundef %dev1.i, i32 noundef 0) #9
  %tobool3.not22.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool3.not22.i.i.i.i, label %if.end.i30.i.i.i.if.end13.i.i.i_crit_edge, label %if.end.i30.i.i.i.for.body.i31.i.i.i_crit_edge

if.end.i30.i.i.i.for.body.i31.i.i.i_crit_edge:    ; preds = %if.end.i30.i.i.i
  br label %for.body.i31.i.i.i

if.end.i30.i.i.i.if.end13.i.i.i_crit_edge:        ; preds = %if.end.i30.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

for.body.i31.i.i.i:                               ; preds = %for.inc.i32.i.i.i.for.body.i31.i.i.i_crit_edge, %if.end.i30.i.i.i.for.body.i31.i.i.i_crit_edge
  %entry1.023.i.i.i.i = phi ptr [ %call11.i.i.i.i, %for.inc.i32.i.i.i.for.body.i31.i.i.i_crit_edge ], [ %call.i.i.i.i, %if.end.i30.i.i.i.for.body.i31.i.i.i_crit_edge ]
  %81 = getelementptr inbounds %struct.msi_desc, ptr %entry1.023.i.i.i.i, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool4.not.i.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool4.not.i.i.i.i, label %for.inc.i32.i.i.i, label %msi_verify_entries.exit.i.i.i

for.inc.i32.i.i.i:                                ; preds = %for.body.i31.i.i.i
  %call11.i.i.i.i = call ptr @msi_next_desc(ptr noundef %dev1.i, i32 noundef 0) #9
  %tobool3.not.i.i.i.i = icmp eq ptr %call11.i.i.i.i, null
  br i1 %tobool3.not.i.i.i.i, label %for.inc.i32.i.i.i.if.end13.i.i.i_crit_edge, label %for.inc.i32.i.i.i.for.body.i31.i.i.i_crit_edge

for.inc.i32.i.i.i.for.body.i31.i.i.i_crit_edge:   ; preds = %for.inc.i32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i31.i.i.i

for.inc.i32.i.i.i.if.end13.i.i.i_crit_edge:       ; preds = %for.inc.i32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

msi_verify_entries.exit.i.i.i:                    ; preds = %for.body.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %msg.i.i.i.i = getelementptr inbounds %struct.msi_desc, ptr %entry1.023.i.i.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.5, i32 noundef %83, i32 noundef %85) #12
  br label %out_free.i.i.i

if.end13.i.i.i:                                   ; preds = %for.inc.i32.i.i.i.if.end13.i.i.i_crit_edge, %if.end.i30.i.i.i.if.end13.i.i.i_crit_edge, %if.end9.i.i.i.if.end13.i.i.i_crit_edge
  br i1 %tobool9.not.i, label %if.end13.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge, label %if.then.i35.i.i.i

if.end13.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msix_setup_interrupts.exit.i.i

if.then.i35.i.i.i:                                ; preds = %if.end13.i.i.i
  %call.i34.i.i.i = call ptr @msi_first_desc(ptr noundef %dev1.i, i32 noundef 0) #9
  %tobool2.not9.i.i.i.i = icmp eq ptr %call.i34.i.i.i, null
  br i1 %tobool2.not9.i.i.i.i, label %if.then.i35.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge, label %if.then.i35.i.i.i.for.body.i37.i.i.i_crit_edge

if.then.i35.i.i.i.for.body.i37.i.i.i_crit_edge:   ; preds = %if.then.i35.i.i.i
  br label %for.body.i37.i.i.i

if.then.i35.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge: ; preds = %if.then.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msix_setup_interrupts.exit.i.i

for.body.i37.i.i.i:                               ; preds = %for.body.i37.i.i.i.for.body.i37.i.i.i_crit_edge, %if.then.i35.i.i.i.for.body.i37.i.i.i_crit_edge
  %desc.011.i.i.i.i = phi ptr [ %call4.i.i.i.i, %for.body.i37.i.i.i.for.body.i37.i.i.i_crit_edge ], [ %call.i34.i.i.i, %if.then.i35.i.i.i.for.body.i37.i.i.i_crit_edge ]
  %entries.addr.010.i.i.i.i = phi ptr [ %incdec.ptr.i36.i.i.i, %for.body.i37.i.i.i.for.body.i37.i.i.i_crit_edge ], [ %entries, %if.then.i35.i.i.i.for.body.i37.i.i.i_crit_edge ]
  %86 = ptrtoint ptr %desc.011.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %desc.011.i.i.i.i, align 4
  %88 = ptrtoint ptr %entries.addr.010.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %entries.addr.010.i.i.i.i, align 4
  %incdec.ptr.i36.i.i.i = getelementptr %struct.msix_entry, ptr %entries.addr.010.i.i.i.i, i32 1
  %call4.i.i.i.i = call ptr @msi_next_desc(ptr noundef %dev1.i, i32 noundef 0) #9
  %tobool2.not.i.i.i.i = icmp eq ptr %call4.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i, label %for.body.i37.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge, label %for.body.i37.i.i.i.for.body.i37.i.i.i_crit_edge

for.body.i37.i.i.i.for.body.i37.i.i.i_crit_edge:  ; preds = %for.body.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i37.i.i.i

for.body.i37.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge: ; preds = %for.body.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msix_setup_interrupts.exit.i.i

out_free.i.i.i:                                   ; preds = %msi_verify_entries.exit.i.i.i, %if.end5.i.i.i.out_free.i.i.i_crit_edge, %msix_setup_msi_descs.exit.i.i.i
  %ret.0.i.i.i = phi i32 [ %call53.i.i.i.i, %msix_setup_msi_descs.exit.i.i.i ], [ %call6.i.i.i, %if.end5.i.i.i.out_free.i.i.i_crit_edge ], [ -5, %msi_verify_entries.exit.i.i.i ]
  call void @pci_msi_teardown_msi_irqs(ptr noundef %dev) #9
  %89 = ptrtoint ptr %msix_base.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %msix_base.i.i, align 8
  %tobool.not.i39.i.i.i = icmp eq ptr %90, null
  br i1 %tobool.not.i39.i.i.i, label %out_free.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge, label %if.then.i40.i.i.i

out_free.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge: ; preds = %out_free.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msix_setup_interrupts.exit.i.i

if.then.i40.i.i.i:                                ; preds = %out_free.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @iounmap(ptr noundef nonnull %90) #9
  %91 = ptrtoint ptr %msix_base.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %msix_base.i.i, align 8
  br label %msix_setup_interrupts.exit.i.i

msix_setup_interrupts.exit.i.i:                   ; preds = %if.then.i40.i.i.i, %out_free.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge, %for.body.i37.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge, %if.then.i35.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge, %if.end13.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge
  %ret.1.i.i.i = phi i32 [ 0, %if.end13.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge ], [ 0, %if.then.i35.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge ], [ %ret.0.i.i.i, %out_free.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge ], [ %ret.0.i.i.i, %if.then.i40.i.i.i ], [ 0, %for.body.i37.i.i.i.msix_setup_interrupts.exit.i.i_crit_edge ]
  call void @msi_unlock_descs(ptr noundef %dev1.i) #9
  call void @kfree(ptr noundef %masks.0.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i.i)
  %tobool5.not.i.i = icmp eq i32 %ret.1.i.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %msix_setup_interrupts.exit.i.i.if.end54_crit_edge

msix_setup_interrupts.exit.i.i.if.end54_crit_edge: ; preds = %msix_setup_interrupts.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end7.i.i:                                      ; preds = %msix_setup_interrupts.exit.i.i
  %dev_flags.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 50
  %92 = ptrtoint ptr %dev_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %dev_flags.i.i.i, align 2
  %94 = and i16 %93, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool.not.i40.i.i = icmp eq i16 %94, 0
  br i1 %tobool.not.i40.i.i, label %if.then.i41.i.i, label %if.end7.i.i.pci_intx_for_msi.exit.i.i_crit_edge

if.end7.i.i.pci_intx_for_msi.exit.i.i_crit_edge:  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_intx_for_msi.exit.i.i

if.then.i41.i.i:                                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_intx(ptr noundef %dev, i32 noundef 0) #9
  br label %pci_intx_for_msi.exit.i.i

pci_intx_for_msi.exit.i.i:                        ; preds = %if.then.i41.i.i, %if.end7.i.i.pci_intx_for_msi.exit.i.i_crit_edge
  %95 = load i32, ptr @pci_msi_ignore_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i43.i.i = icmp eq i32 %95, 0
  br i1 %tobool.not.i43.i.i, label %pci_intx_for_msi.exit.i.i.do.body.i.i.i_crit_edge, label %pci_intx_for_msi.exit.i.i.__pci_enable_msix.exit.thread89_crit_edge

pci_intx_for_msi.exit.i.i.__pci_enable_msix.exit.thread89_crit_edge: ; preds = %pci_intx_for_msi.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pci_enable_msix.exit.thread89

pci_intx_for_msi.exit.i.i.do.body.i.i.i_crit_edge: ; preds = %pci_intx_for_msi.exit.i.i
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %pci_intx_for_msi.exit.i.i.do.body.i.i.i_crit_edge
  %i.07.i.i.i = phi i32 [ %inc.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ 0, %pci_intx_for_msi.exit.i.i.do.body.i.i.i_crit_edge ]
  %base.addr.06.i.i.i = phi ptr [ %add.ptr1.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %call10.i36.i.i, %pci_intx_for_msi.exit.i.i.do.body.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %base.addr.06.i.i.i, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !75
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %add.ptr1.i.i.i = getelementptr i8, ptr %base.addr.06.i.i.i, i32 16
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %add2.i.i
  br i1 %exitcond.not.i.i.i, label %do.body.i.i.i.__pci_enable_msix.exit.thread89_crit_edge, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

do.body.i.i.i.__pci_enable_msix.exit.thread89_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pci_enable_msix.exit.thread89

__pci_enable_msix.exit.thread89:                  ; preds = %do.body.i.i.i.__pci_enable_msix.exit.thread89_crit_edge, %pci_intx_for_msi.exit.i.i.__pci_enable_msix.exit.thread89_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i44.i.i) #9
  %96 = ptrtoint ptr %ctrl.i44.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -1, ptr %ctrl.i44.i.i, align 2, !annotation !83
  %97 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %msix_cap.i.i, align 2
  %conv.i46.i.i = zext i8 %98 to i32
  %add.i47.i.i = add nuw nsw i32 %conv.i46.i.i, 2
  %call.i48.i.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i47.i.i, ptr noundef nonnull %ctrl.i44.i.i) #9
  %99 = ptrtoint ptr %ctrl.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %ctrl.i44.i.i, align 2
  %and.i.i.i = and i16 %100, -16385
  store i16 %and.i.i.i, ptr %ctrl.i44.i.i, align 2
  %101 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %msix_cap.i.i, align 2
  %conv8.i49.i.i = zext i8 %102 to i32
  %add9.i50.i.i = add nuw nsw i32 %conv8.i49.i.i, 2
  %call10.i51.i.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add9.i50.i.i, i16 noundef zeroext %and.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i44.i.i) #9
  call void @pcibios_free_irq(ptr noundef %dev) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i66.i) #9
  br label %cleanup

if.end54:                                         ; preds = %msix_setup_interrupts.exit.i.i.if.end54_crit_edge, %msix_map_region.exit.i.i.if.end54_crit_edge, %msix_map_region.exit.thread.i.i
  %ret.0.i.i = phi i32 [ %ret.1.i.i.i, %msix_setup_interrupts.exit.i.i.if.end54_crit_edge ], [ -12, %msix_map_region.exit.i.i.if.end54_crit_edge ], [ -12, %msix_map_region.exit.thread.i.i ]
  %103 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %103, i32 5)
  %bf.load9.i.i = load i40, ptr %msix_enabled, align 1
  %bf.clear10.i.i = and i40 %bf.load9.i.i, -67108865
  store i40 %bf.clear10.i.i, ptr %msix_enabled, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i52.i.i) #9
  %104 = ptrtoint ptr %ctrl.i52.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %ctrl.i52.i.i, align 2, !annotation !83
  %105 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %msix_cap.i.i, align 2
  %conv.i54.i.i = zext i8 %106 to i32
  %add.i55.i.i = add nuw nsw i32 %conv.i54.i.i, 2
  %call.i56.i.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add.i55.i.i, ptr noundef nonnull %ctrl.i52.i.i) #9
  %107 = ptrtoint ptr %ctrl.i52.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %ctrl.i52.i.i, align 2
  %and.i57.i.i = and i16 %108, 16383
  store i16 %and.i57.i.i, ptr %ctrl.i52.i.i, align 2
  %109 = ptrtoint ptr %msix_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %msix_cap.i.i, align 2
  %conv8.i58.i.i = zext i8 %110 to i32
  %add9.i59.i.i = add nuw nsw i32 %conv8.i58.i.i, 2
  %call10.i60.i.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add9.i59.i.i, i16 noundef zeroext %and.i57.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i52.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i66.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp55 = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp55, label %if.end54.cleanup_crit_edge, label %if.end54.if.end57_crit_edge

if.end54.if.end57_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %if.end54.if.end57_crit_edge, %pci_msix_vec_count.exit.i.if.end57_crit_edge
  %retval.0.i8897 = phi i32 [ %ret.0.i.i, %if.end54.if.end57_crit_edge ], [ %add3.i.i, %pci_msix_vec_count.exit.i.if.end57_crit_edge ]
  %cmp58 = icmp slt i32 %retval.0.i8897, %minvec
  br i1 %cmp58, label %if.end57.cleanup_crit_edge, label %if.end57.for.cond_crit_edge

if.end57.for.cond_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end57.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %__pci_enable_msix.exit.thread89, %do.end.i, %for.body20.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %pci_msix_vec_count.exit.thread.i, %lor.lhs.false.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then8, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ -22, %if.then8 ], [ -22, %land.rhs.cleanup_crit_edge ], [ %nvec.1, %__pci_enable_msix.exit.thread89 ], [ %call3.i.i, %if.end.i.i.cleanup_crit_edge ], [ %call.i, %if.end40.cleanup_crit_edge ], [ -22, %pci_msix_vec_count.exit.thread.i ], [ -22, %do.end.i ], [ -22, %for.body20.i.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ], [ -22, %for.body.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end50.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -28, %if.end57.cleanup_crit_edge ], [ %ret.0.i.i, %if.end54.cleanup_crit_edge ], [ -28, %if.then45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef %dev, i32 noundef %min_vecs, i32 noundef %max_vecs, i32 noundef %flags, ptr noundef %affd) #0 align 64 {
entry:
  %msi_default_affd = alloca %struct.irq_affinity, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %msi_default_affd) #9
  %0 = call ptr @memset(ptr %msi_default_affd, i32 0, i32 36)
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool3.not = icmp eq ptr %affd, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spec.store.select = select i1 %tobool3.not, ptr %msi_default_affd, ptr %affd
  br label %if.end28

if.else:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.else.if.end28_crit_edge, label %do.end, !prof !78

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.else.if.end28_crit_edge, %if.then
  %affd.addr.0 = phi ptr [ %spec.store.select, %if.then ], [ null, %do.end ], [ null, %if.else.if.end28_crit_edge ]
  %and29 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  %call = call fastcc i32 @__pci_enable_msix_range(ptr noundef %dev, ptr noundef null, i32 noundef %min_vecs, i32 noundef %max_vecs, ptr noundef %affd.addr.0, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then31.cleanup_crit_edge, label %if.then31.if.end34_crit_edge

if.then31.if.end34_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.then31.if.end34_crit_edge, %if.end28.if.end34_crit_edge
  %nvecs.0 = phi i32 [ %call, %if.then31.if.end34_crit_edge ], [ -28, %if.end28.if.end34_crit_edge ]
  %and35 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %if.then37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then37:                                        ; preds = %if.end34
  %call38 = call fastcc i32 @__pci_enable_msi_range(ptr noundef %dev, i32 noundef %min_vecs, i32 noundef %max_vecs, ptr noundef %affd.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp sgt i32 %call38, 0
  br i1 %cmp39, label %if.then37.cleanup_crit_edge, label %if.then37.if.end42_crit_edge

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.then37.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  %nvecs.1 = phi i32 [ %call38, %if.then37.if.end42_crit_edge ], [ %nvecs.0, %if.end34.if.end42_crit_edge ]
  %and43 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp ne i32 %and43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %min_vecs)
  %cmp46 = icmp eq i32 %min_vecs, 1
  %or.cond = and i1 %cmp46, %tobool44.not
  br i1 %or.cond, label %land.lhs.true, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end42
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool47.not = icmp eq i32 %2, 0
  br i1 %tobool47.not, label %land.lhs.true.cleanup_crit_edge, label %if.then48

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48:                                        ; preds = %land.lhs.true
  %tobool49.not = icmp eq ptr %affd.addr.0, null
  br i1 %tobool49.not, label %if.then48.if.end52_crit_edge, label %if.then50

if.then48.if.end52_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = call ptr @irq_create_affinity_masks(i32 noundef 1, ptr noundef nonnull %affd.addr.0) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then48.if.end52_crit_edge
  call void @pci_intx(ptr noundef %dev, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %land.lhs.true.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then31.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end52 ], [ %call, %if.then31.cleanup_crit_edge ], [ %call38, %if.then37.cleanup_crit_edge ], [ %nvecs.1, %land.lhs.true.cleanup_crit_edge ], [ %nvecs.1, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %msi_default_affd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_create_affinity_masks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_free_irq_vectors(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_disable_msix(ptr noundef %dev)
  tail call void @pci_disable_msi(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_irq_vector(ptr noundef %dev, i32 noundef %nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_enabled = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %msi_enabled, align 1
  %1 = and i40 %bf.load, 201326592
  %2 = icmp eq i40 %1, 0
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool6.not = icmp eq i32 %nr, 0
  br i1 %tobool6.not, label %cond.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %irq7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %3 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq7, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = tail call i32 @msi_get_virq(ptr noundef %dev8, i32 noundef %nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool9.not, i32 -22, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.true, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %4, %cond.true ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_irq_get_affinity(ptr noundef %dev, i32 noundef %nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load.i = load i40, ptr %msi_enabled.i, align 1
  %1 = and i40 %bf.load.i, 201326592
  %2 = icmp eq i40 %1, 0
  br i1 %2, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool6.not.i = icmp eq i32 %nr, 0
  br i1 %tobool6.not.i, label %cond.true.i, label %if.then.i.land.rhs_crit_edge

if.then.i.land.rhs_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq7.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %3 = ptrtoint ptr %irq7.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq7.i, align 4
  br label %pci_irq_vector.exit

if.end.i:                                         ; preds = %entry
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call i32 @msi_get_virq(ptr noundef %dev8.i, i32 noundef %nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.end.i.land.rhs_crit_edge, label %if.end.i.pci_irq_vector.exit_crit_edge

if.end.i.pci_irq_vector.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_irq_vector.exit

if.end.i.land.rhs_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

pci_irq_vector.exit:                              ; preds = %if.end.i.pci_irq_vector.exit_crit_edge, %cond.true.i
  %retval.0.i = phi i32 [ %call.i, %if.end.i.pci_irq_vector.exit_crit_edge ], [ %4, %cond.true.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %pci_irq_vector.exit.land.rhs_crit_edge, label %if.end37

pci_irq_vector.exit.land.rhs_crit_edge:           ; preds = %pci_irq_vector.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %pci_irq_vector.exit.land.rhs_crit_edge, %if.end.i.land.rhs_crit_edge, %if.then.i.land.rhs_crit_edge
  %.b56 = load i1, ptr @pci_irq_get_affinity.__already_done, align 1
  br i1 %.b56, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !78

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @pci_irq_get_affinity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1106, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end37:                                         ; preds = %pci_irq_vector.exit
  %call.i58 = tail call ptr @irq_get_irq_data(i32 noundef %retval.0.i) #9
  %tobool.not.i = icmp eq ptr %call.i58, null
  br i1 %tobool.not.i, label %if.end37.cleanup_crit_edge, label %irq_get_msi_desc.exit

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

irq_get_msi_desc.exit:                            ; preds = %if.end37
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i58, i32 0, i32 3
  %5 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msi_desc.i, align 4
  %tobool39.not = icmp eq ptr %8, null
  br i1 %tobool39.not, label %irq_get_msi_desc.exit.cleanup_crit_edge, label %if.end41

irq_get_msi_desc.exit.cleanup_crit_edge:          ; preds = %irq_get_msi_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %irq_get_msi_desc.exit
  %affinity = getelementptr inbounds %struct.msi_desc, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %affinity to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %affinity, align 4
  %tobool42.not = icmp eq ptr %10, null
  br i1 %tobool42.not, label %if.end41.cleanup_crit_edge, label %if.end44

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 5)
  %bf.load = load i40, ptr %msi_enabled.i, align 1
  %12 = and i40 %bf.load, 134217728
  %tobool45.not = icmp eq i40 %12, 0
  %spec.select = select i1 %tobool45.not, i32 0, i32 %nr
  %arrayidx = getelementptr %struct.irq_affinity_desc, ptr %10, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end41.cleanup_crit_edge, %irq_get_msi_desc.exit.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.end44 ], [ null, %if.then ], [ @__cpu_possible_mask, %irq_get_msi_desc.exit.cleanup_crit_edge ], [ null, %if.end41.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ], [ @__cpu_possible_mask, %if.end37.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pci_no_msi() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @pci_msi_enable, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pci_msi_enabled() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @pci_msi_enable, align 4
  %not..b = xor i1 %.b, true
  %0 = zext i1 %not..b to i32
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_msi_update_mask(ptr nocapture noundef %desc, i32 noundef %clear, i32 noundef %set) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_attrib = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %msi_attrib to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %msi_attrib, align 4
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pci = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 9
  %dev = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %msi_lock = getelementptr i8, ptr %3, i32 1708
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %msi_lock) #9
  %neg = xor i32 %clear, -1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pci, align 4
  %and = and i32 %5, %neg
  %or = or i32 %and, %set
  store i32 %or, ptr %pci, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 -136
  %8 = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv6 = zext i8 %10 to i32
  %call8 = tail call i32 @pci_write_config_dword(ptr noundef %add.ptr.i, i32 noundef %conv6, i32 noundef %or) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %msi_lock, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_first_desc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_next_desc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcibios_alloc_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_teardown_msi_irqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_setup_msi_context(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = tail call i32 @msi_setup_device_data(ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %is_managed.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %is_managed.i.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load.i.i = load i40, ptr %is_managed.i.i, align 1
  %1 = and i40 %bf.load.i.i, 3145728
  %2 = icmp eq i40 %1, 2097152
  br i1 %2, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call3.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @pcim_msi_release, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %is_managed.i.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 5)
  %bf.load7.i = load i40, ptr %is_managed.i.i, align 1
  %bf.set.i = or i40 %bf.load7.i, 1048576
  store i40 %bf.set.i, ptr %is_managed.i.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %if.then5.i ], [ %call3.i, %if.end.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_calc_affinity_vectors(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_setup_device_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcim_msi_release(ptr noundef %pcidev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_msi_managed = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 49
  %0 = ptrtoint ptr %is_msi_managed to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %is_msi_managed, align 1
  %bf.clear = and i40 %bf.load, -1048577
  store i40 %bf.clear, ptr %is_msi_managed, align 1
  tail call void @pci_disable_msix(ptr noundef %pcidev) #9
  tail call void @pci_disable_msi(ptr noundef %pcidev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_setup_msi_irqs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_free_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_add_msi_desc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !49, !50, !52, !54, !55, !56, !57, !58, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__ksymtab_pci_msi_mask_irq, !1, !"__ksymtab_pci_msi_mask_irq", i1 false, i1 false}
!1 = !{!"../drivers/pci/msi/msi.c", i32 104, i32 1}
!2 = !{ptr @__ksymtab_pci_msi_unmask_irq, !3, !"__ksymtab_pci_msi_unmask_irq", i1 false, i1 false}
!3 = !{!"../drivers/pci/msi/msi.c", i32 116, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/pci/msi/msi.c", i32 127, i32 7}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_pci_write_msi_msg, !8, !"__ksymtab_pci_write_msi_msg", i1 false, i1 false}
!8 = !{!"../drivers/pci/msi/msi.c", i32 223, i32 1}
!9 = !{ptr @__ksymtab_pci_restore_msi_state, !10, !"__ksymtab_pci_restore_msi_state", i1 false, i1 false}
!10 = !{!"../drivers/pci/msi/msi.c", i32 324, i32 1}
!11 = !{ptr @__ksymtab_pci_msi_vec_count, !12, !"__ksymtab_pci_msi_vec_count", i1 false, i1 false}
!12 = !{!"../drivers/pci/msi/msi.c", i32 740, i32 1}
!13 = !{ptr @__ksymtab_pci_disable_msi, !14, !"__ksymtab_pci_disable_msi", i1 false, i1 false}
!14 = !{!"../drivers/pci/msi/msi.c", i32 773, i32 1}
!15 = !{ptr @__ksymtab_pci_msix_vec_count, !16, !"__ksymtab_pci_msix_vec_count", i1 false, i1 false}
!16 = !{!"../drivers/pci/msi/msi.c", i32 793, i32 1}
!17 = !{ptr @__ksymtab_pci_disable_msix, !18, !"__ksymtab_pci_disable_msix", i1 false, i1 false}
!18 = !{!"../drivers/pci/msi/msi.c", i32 862, i32 1}
!19 = !{ptr @__ksymtab_pci_enable_msi, !20, !"__ksymtab_pci_enable_msi", i1 false, i1 false}
!20 = !{!"../drivers/pci/msi/msi.c", i32 926, i32 1}
!21 = !{ptr @__ksymtab_pci_enable_msix_range, !22, !"__ksymtab_pci_enable_msix_range", i1 false, i1 false}
!22 = !{!"../drivers/pci/msi/msi.c", i32 985, i32 1}
!23 = !{ptr @__ksymtab_pci_alloc_irq_vectors_affinity, !24, !"__ksymtab_pci_alloc_irq_vectors_affinity", i1 false, i1 false}
!24 = !{!"../drivers/pci/msi/msi.c", i32 1050, i32 1}
!25 = !{ptr @__ksymtab_pci_free_irq_vectors, !26, !"__ksymtab_pci_free_irq_vectors", i1 false, i1 false}
!26 = !{!"../drivers/pci/msi/msi.c", i32 1063, i32 1}
!27 = !{ptr @__ksymtab_pci_irq_vector, !28, !"__ksymtab_pci_irq_vector", i1 false, i1 false}
!28 = !{!"../drivers/pci/msi/msi.c", i32 1087, i32 1}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/pci/msi/msi.c", i32 1106, i32 6}
!31 = !{ptr @__ksymtab_pci_irq_get_affinity, !32, !"__ksymtab_pci_irq_get_affinity", i1 false, i1 false}
!32 = !{!"../drivers/pci/msi/msi.c", i32 1125, i32 1}
!33 = !{ptr @__ksymtab_msi_desc_to_pci_dev, !34, !"__ksymtab_msi_desc_to_pci_dev", i1 false, i1 false}
!34 = !{!"../drivers/pci/msi/msi.c", i32 1131, i32 1}
!35 = !{ptr @__ksymtab_pci_msi_enabled, !36, !"__ksymtab_pci_msi_enabled", i1 false, i1 false}
!36 = !{!"../drivers/pci/msi/msi.c", i32 1148, i32 1}
!37 = !{ptr @pci_msi_ignore_mask, !38, !"pci_msi_ignore_mask", i1 false, i1 false}
!38 = !{!"../drivers/pci/msi/msi.c", i32 17, i32 5}
!39 = distinct !{null, !40, !"pci_msi_enable", i1 false, i1 false}
!40 = !{!"../drivers/pci/msi/msi.c", i32 16, i32 12}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/pci/msi/msi.c", i32 755, i32 7}
!43 = !{ptr @.str.1, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/msi/msi.c", i32 875, i32 3}
!45 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__pci_enable_msi_range._entry, !44, !"_entry", i1 false, i1 false}
!49 = !{ptr @__pci_enable_msi_range._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/pci/msi/msi.c", i32 882, i32 6}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/msi/msi.c", i32 410, i32 4}
!54 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @msi_verify_entries._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @msi_verify_entries._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/pci/msi/msi.c", i32 938, i32 6}
!60 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/msi/msi.c", i32 824, i32 3}
!62 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__pci_enable_msix._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @__pci_enable_msix._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2154498178}
!75 = !{i64 3657380}
!76 = !{i64 3657798}
!77 = !{i64 2154499028}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2154502824, i64 2154503310, i64 2154502861, i64 2154502917, i64 2154502951, i64 2154502975, i64 2154503016, i64 2154503037, i64 2154503065, i64 2154503099}
!80 = !{i64 2154505566}
!81 = !{i64 2154506028}
!82 = !{i64 2154506490}
!83 = !{!"auto-init"}
!84 = !{i64 2154506781}
!85 = !{i64 2154507208}
!86 = !{i64 2154507629}
!87 = !{i64 2154508277}
!88 = !{i32 0, i32 33}
!89 = !{i64 2154515170}
!90 = !{i64 2154515561}
