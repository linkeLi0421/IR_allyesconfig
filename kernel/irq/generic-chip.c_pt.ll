; ModuleID = '/llk/IR_all_yes/kernel/irq/generic-chip.c_pt.bc'
source_filename = "../kernel/irq/generic-chip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+irq_gc_noop\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_gc_noop\09\09\09\09"
module asm "\09.long\09__crc_irq_gc_noop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_noop:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_noop\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_noop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_gc_mask_disable_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_gc_mask_disable_reg\09\09\09\09"
module asm "\09.long\09__crc_irq_gc_mask_disable_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_mask_disable_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_mask_disable_reg\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_mask_disable_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_gc_mask_set_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_gc_mask_set_bit\09\09\09\09"
module asm "\09.long\09__crc_irq_gc_mask_set_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_mask_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_mask_set_bit\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_mask_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_gc_mask_clr_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_gc_mask_clr_bit\09\09\09\09"
module asm "\09.long\09__crc_irq_gc_mask_clr_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_mask_clr_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_mask_clr_bit\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_mask_clr_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_gc_unmask_enable_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_gc_unmask_enable_reg\09\09\09\09"
module asm "\09.long\09__crc_irq_gc_unmask_enable_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_unmask_enable_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_unmask_enable_reg\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_unmask_enable_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_gc_ack_set_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_gc_ack_set_bit\09\09\09\09"
module asm "\09.long\09__crc_irq_gc_ack_set_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_ack_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_ack_set_bit\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_ack_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_gc_set_wake\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_gc_set_wake\09\09\09\09"
module asm "\09.long\09__crc_irq_gc_set_wake\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_gc_set_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_gc_set_wake\22\09\09\09\09\09"
module asm "__kstrtabns_irq_gc_set_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_alloc_generic_chip\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_alloc_generic_chip\09\09\09\09"
module asm "\09.long\09__crc_irq_alloc_generic_chip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_alloc_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_alloc_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_alloc_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__irq_alloc_domain_generic_chips\22, \22a\22\09"
module asm "\09.weak\09__crc___irq_alloc_domain_generic_chips\09\09\09\09"
module asm "\09.long\09__crc___irq_alloc_domain_generic_chips\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_alloc_domain_generic_chips:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_alloc_domain_generic_chips\22\09\09\09\09\09"
module asm "__kstrtabns___irq_alloc_domain_generic_chips:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_get_domain_generic_chip\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_get_domain_generic_chip\09\09\09\09"
module asm "\09.long\09__crc_irq_get_domain_generic_chip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_get_domain_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_get_domain_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_get_domain_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_generic_chip_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_generic_chip_ops\09\09\09\09"
module asm "\09.long\09__crc_irq_generic_chip_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_generic_chip_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_generic_chip_ops\22\09\09\09\09\09"
module asm "__kstrtabns_irq_generic_chip_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_setup_generic_chip\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_setup_generic_chip\09\09\09\09"
module asm "\09.long\09__crc_irq_setup_generic_chip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_setup_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_setup_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_setup_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_setup_alt_chip\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_setup_alt_chip\09\09\09\09"
module asm "\09.long\09__crc_irq_setup_alt_chip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_setup_alt_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_setup_alt_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_setup_alt_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_remove_generic_chip\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_remove_generic_chip\09\09\09\09"
module asm "\09.long\09__crc_irq_remove_generic_chip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_remove_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_remove_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_remove_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x ptr] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@__kstrtab_irq_gc_noop = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_noop = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_noop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_noop to i32), ptr @__kstrtab_irq_gc_noop, ptr @__kstrtabns_irq_gc_noop }, section "___ksymtab_gpl+irq_gc_noop", align 4
@__kstrtab_irq_gc_mask_disable_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_mask_disable_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_mask_disable_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_mask_disable_reg to i32), ptr @__kstrtab_irq_gc_mask_disable_reg, ptr @__kstrtabns_irq_gc_mask_disable_reg }, section "___ksymtab_gpl+irq_gc_mask_disable_reg", align 4
@__kstrtab_irq_gc_mask_set_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_mask_set_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_mask_set_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_mask_set_bit to i32), ptr @__kstrtab_irq_gc_mask_set_bit, ptr @__kstrtabns_irq_gc_mask_set_bit }, section "___ksymtab_gpl+irq_gc_mask_set_bit", align 4
@__kstrtab_irq_gc_mask_clr_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_mask_clr_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_mask_clr_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_mask_clr_bit to i32), ptr @__kstrtab_irq_gc_mask_clr_bit, ptr @__kstrtabns_irq_gc_mask_clr_bit }, section "___ksymtab_gpl+irq_gc_mask_clr_bit", align 4
@__kstrtab_irq_gc_unmask_enable_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_unmask_enable_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_unmask_enable_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_unmask_enable_reg to i32), ptr @__kstrtab_irq_gc_unmask_enable_reg, ptr @__kstrtabns_irq_gc_unmask_enable_reg }, section "___ksymtab_gpl+irq_gc_unmask_enable_reg", align 4
@__kstrtab_irq_gc_ack_set_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_ack_set_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_ack_set_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_ack_set_bit to i32), ptr @__kstrtab_irq_gc_ack_set_bit, ptr @__kstrtabns_irq_gc_ack_set_bit }, section "___ksymtab_gpl+irq_gc_ack_set_bit", align 4
@__kstrtab_irq_gc_set_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_gc_set_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_gc_set_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_gc_set_wake to i32), ptr @__kstrtab_irq_gc_set_wake, ptr @__kstrtabns_irq_gc_set_wake }, section "___ksymtab_gpl+irq_gc_set_wake", align 4
@irq_init_generic_chip.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&gc->lock\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_irq_alloc_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_alloc_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_alloc_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_alloc_generic_chip to i32), ptr @__kstrtab_irq_alloc_generic_chip, ptr @__kstrtabns_irq_alloc_generic_chip }, section "___ksymtab_gpl+irq_alloc_generic_chip", align 4
@gc_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@gc_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @gc_list, ptr @gc_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab___irq_alloc_domain_generic_chips = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_alloc_domain_generic_chips = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_alloc_domain_generic_chips = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_alloc_domain_generic_chips to i32), ptr @__kstrtab___irq_alloc_domain_generic_chips, ptr @__kstrtabns___irq_alloc_domain_generic_chips }, section "___ksymtab_gpl+__irq_alloc_domain_generic_chips", align 4
@__kstrtab_irq_get_domain_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_get_domain_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_get_domain_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_get_domain_generic_chip to i32), ptr @__kstrtab_irq_get_domain_generic_chip, ptr @__kstrtabns_irq_get_domain_generic_chip }, section "___ksymtab_gpl+irq_get_domain_generic_chip", align 4
@irq_nested_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@irq_nested_request_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@irq_generic_chip_ops = dso_local constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @irq_map_generic_chip, ptr @irq_unmap_generic_chip, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_irq_generic_chip_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_generic_chip_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_generic_chip_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_generic_chip_ops to i32), ptr @__kstrtab_irq_generic_chip_ops, ptr @__kstrtabns_irq_generic_chip_ops }, section "___ksymtab_gpl+irq_generic_chip_ops", align 4
@__kstrtab_irq_setup_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_setup_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_setup_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_setup_generic_chip to i32), ptr @__kstrtab_irq_setup_generic_chip, ptr @__kstrtabns_irq_setup_generic_chip }, section "___ksymtab_gpl+irq_setup_generic_chip", align 4
@__kstrtab_irq_setup_alt_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_setup_alt_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_setup_alt_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_setup_alt_chip to i32), ptr @__kstrtab_irq_setup_alt_chip, ptr @__kstrtabns_irq_setup_alt_chip }, section "___ksymtab_gpl+irq_setup_alt_chip", align 4
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@__kstrtab_irq_remove_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_remove_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_remove_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_remove_generic_chip to i32), ptr @__kstrtab_irq_remove_generic_chip, ptr @__kstrtabns_irq_remove_generic_chip }, section "___ksymtab_gpl+irq_remove_generic_chip", align 4
@__initcall__kmod_generic_chip__228_655_irq_gc_init_ops6 = internal global ptr @irq_gc_init_ops, section ".initcall6.init", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gc_lock\00", [24 x i8] zeroinitializer }, align 32
@irq_gc_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @irq_gc_suspend, ptr @irq_gc_resume, ptr @irq_gc_shutdown }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 222, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [8 x i8] c"gc_lock\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [8 x i8] c"gc_list\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 18, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"irq_nested_lock_class\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 378, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [25 x i8] c"irq_nested_request_class\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 379, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"irq_generic_chip_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 454, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 19, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"irq_gc_syscore_ops\00", align 1
@___asan_gen_.27 = private constant [29 x i8] c"../kernel/irq/generic-chip.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 644, i32 27 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__initcall__kmod_generic_chip__228_655_irq_gc_init_ops6, ptr @__ksymtab___irq_alloc_domain_generic_chips, ptr @__ksymtab_irq_alloc_generic_chip, ptr @__ksymtab_irq_gc_ack_set_bit, ptr @__ksymtab_irq_gc_mask_clr_bit, ptr @__ksymtab_irq_gc_mask_disable_reg, ptr @__ksymtab_irq_gc_mask_set_bit, ptr @__ksymtab_irq_gc_noop, ptr @__ksymtab_irq_gc_set_wake, ptr @__ksymtab_irq_gc_unmask_enable_reg, ptr @__ksymtab_irq_generic_chip_ops, ptr @__ksymtab_irq_get_domain_generic_chip, ptr @__ksymtab_irq_remove_generic_chip, ptr @__ksymtab_irq_setup_alt_chip, ptr @__ksymtab_irq_setup_generic_chip, ptr @irq_init_generic_chip.__key, ptr @.str, ptr @gc_lock, ptr @gc_list, ptr @irq_nested_lock_class, ptr @irq_nested_request_class, ptr @irq_generic_chip_ops, ptr @.str.1, ptr @irq_gc_syscore_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_init_generic_chip.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_nested_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_nested_request_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_generic_chip_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_gc_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @irq_gc_noop(ptr nocapture %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_gc_mask_disable_reg(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %disable = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disable, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  tail call void %9(i32 noundef %5, ptr noundef %add.ptr.i) #9
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #9, !srcloc !56
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %neg = xor i32 %5, -1
  %mask_cache = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mask_cache, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and = and i32 %18, %neg
  store i32 %and, ptr %16, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_gc_mask_set_bit(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %mask_cache = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mask_cache, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %or = or i32 %9, %5
  store i32 %or, ptr %7, align 4
  %10 = load ptr, ptr %mask_cache, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %mask4 = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask4, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %14
  tail call void %16(i32 noundef %12, ptr noundef %add.ptr.i) #9
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %21, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #9, !srcloc !56
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_gc_mask_clr_bit(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %neg = xor i32 %5, -1
  %mask_cache = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mask_cache, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %7, align 4
  %10 = load ptr, ptr %mask_cache, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %mask4 = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask4, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %14
  tail call void %16(i32 noundef %12, ptr noundef %add.ptr.i) #9
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %21, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #9, !srcloc !56
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_gc_unmask_enable_reg(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %regs = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regs, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  tail call void %9(i32 noundef %5, ptr noundef %add.ptr.i) #9
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #9, !srcloc !56
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %mask_cache = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mask_cache, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %or = or i32 %18, %5
  store i32 %or, ptr %16, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_gc_ack_set_bit(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %ack = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ack, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  tail call void %9(i32 noundef %5, ptr noundef %add.ptr.i) #9
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #9, !srcloc !56
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_gc_ack_clr_bit(ptr nocapture noundef readonly %d) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  %neg = xor i32 %5, -1
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %ack = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ack, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  tail call void %9(i32 noundef %neg, ptr noundef %add.ptr.i) #9
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %neg) #9
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #9, !srcloc !56
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_gc_mask_disable_and_ack_set(ptr nocapture noundef readonly %d) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %disable = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disable, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  tail call void %9(i32 noundef %5, ptr noundef %add.ptr.i) #9
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #9, !srcloc !56
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %neg = xor i32 %5, -1
  %mask_cache = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mask_cache, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and = and i32 %18, %neg
  store i32 %and, ptr %16, align 4
  %ack = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ack, align 4
  %21 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i14 = icmp eq ptr %22, null
  br i1 %tobool.not.i14, label %do.body.i20, label %if.then.i17

if.then.i17:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i15 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %reg_base.i15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %24, i32 %20
  tail call void %22(i32 noundef %5, ptr noundef %add.ptr.i16) #9
  br label %irq_reg_writel.exit21

do.body.i20:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %reg_base2.i18 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %reg_base2.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base2.i18, align 4
  %add.ptr3.i19 = getelementptr i8, ptr %27, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i19, i32 %25) #9, !srcloc !56
  br label %irq_reg_writel.exit21

irq_reg_writel.exit21:                            ; preds = %do.body.i20, %if.then.i17
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_gc_eoi(ptr nocapture noundef readonly %d) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %eoi = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %eoi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eoi, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  tail call void %9(i32 noundef %5, ptr noundef %add.ptr.i) #9
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #9, !srcloc !56
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_gc_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d, align 4
  %wake_enabled = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wake_enabled, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool2.not = icmp eq i32 %on, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wake_active, align 4
  %or = or i32 %7, %3
  store i32 %or, ptr %wake_active, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %3, -1
  %wake_active4 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %wake_active4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wake_active4, align 4
  %and5 = and i32 %9, %neg
  store i32 %and5, ptr %wake_active4, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_init_generic_chip(ptr noundef %gc, ptr noundef %name, i32 noundef %num_ct, i32 noundef %irq_base, ptr noundef %reg_base, ptr noundef %handler) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %gc, ptr noundef nonnull @.str, ptr noundef nonnull @irq_init_generic_chip.__key, i16 noundef signext 2) #9
  %num_ct1 = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 13
  %0 = ptrtoint ptr %num_ct1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %num_ct, ptr %num_ct1, align 4
  %irq_base2 = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 6
  %1 = ptrtoint ptr %irq_base2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %irq_base, ptr %irq_base2, align 4
  %reg_base3 = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reg_base, ptr %reg_base3, align 4
  %name4 = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name4, align 4
  %handler7 = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 2, i32 1
  %4 = ptrtoint ptr %handler7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %handler, ptr %handler7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irq_alloc_generic_chip(ptr noundef %name, i32 noundef %num_ct, i32 noundef %irq_base, ptr noundef %reg_base, ptr noundef %handler) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_ct, i32 180) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 120) #9
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @irq_init_generic_chip.__key, i16 noundef signext 2) #9
  %num_ct1.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call9.i.i, i32 0, i32 13
  %3 = ptrtoint ptr %num_ct1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num_ct, ptr %num_ct1.i, align 4
  %irq_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call9.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %irq_base2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq_base, ptr %irq_base2.i, align 64
  %reg_base3.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call9.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %reg_base3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %reg_base, ptr %reg_base3.i, align 4
  %name4.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call9.i.i, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %name4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %name4.i, align 4
  %handler7.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call9.i.i, i32 2, i32 1
  %7 = ptrtoint ptr %handler7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %handler, ptr %handler7.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef %d, i32 noundef %irqs_per_chip, i32 noundef %num_ct, ptr noundef %name, ptr noundef %handler, i32 noundef %clr, i32 noundef %set, i32 noundef %gcflags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gc1 = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %gc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %revmap_size = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 11
  %2 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revmap_size, align 4
  %add = add i32 %irqs_per_chip, -1
  %sub = add i32 %add, %3
  %div = udiv i32 %sub, %irqs_per_chip
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %irqs_per_chip)
  %tobool2.not = icmp ult i32 %sub, %irqs_per_chip
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_ct, i32 180) #9
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 120) #9
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 4) #9
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i68 = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 20) #9
  %retval.0.i69 = select i1 %8, i32 -1, i32 %spec.select.i68
  %mul = mul i32 %div, %retval.0.i
  %add6 = add i32 %retval.0.i69, %mul
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6, i32 noundef 3520) #12
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %irqs_per_chip, ptr %call9.i.i, align 128
  %num_chips = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %num_chips to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %num_chips, align 4
  %irq_flags_to_set = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %call9.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %irq_flags_to_set to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %set, ptr %irq_flags_to_set, align 4
  %irq_flags_to_clear = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %call9.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %irq_flags_to_clear to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %clr, ptr %irq_flags_to_clear, align 8
  %gc_flags = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %call9.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %gc_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %gcflags, ptr %gc_flags, align 16
  %15 = ptrtoint ptr %gc1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %gc1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp74 = icmp sgt i32 %div, 0
  br i1 %cmp74, label %for.body.lr.ph, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %retval.0.i69
  %and = and i32 %gcflags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %tmp.076 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr29, %list_add_tail.exit.for.body_crit_edge ]
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.irq_domain_chip_generic, ptr %call9.i.i, i32 0, i32 5, i32 %i.075
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tmp.076, ptr %arrayidx, align 4
  %mul14 = mul i32 %i.075, %irqs_per_chip
  tail call void @__raw_spin_lock_init(ptr noundef %tmp.076, ptr noundef nonnull @.str, ptr noundef nonnull @irq_init_generic_chip.__key, i16 noundef signext 2) #9
  %num_ct1.i = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 0, i32 13
  %17 = ptrtoint ptr %num_ct1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %num_ct, ptr %num_ct1.i, align 4
  %irq_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 0, i32 6
  %18 = ptrtoint ptr %irq_base2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul14, ptr %irq_base2.i, align 4
  %reg_base3.i = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 0, i32 1
  %19 = ptrtoint ptr %reg_base3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %reg_base3.i, align 4
  %name4.i = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %name4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %name, ptr %name4.i, align 4
  %handler7.i = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 2, i32 1
  %21 = ptrtoint ptr %handler7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %handler, ptr %handler7.i, align 4
  %domain = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 0, i32 17
  %22 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %d, ptr %domain, align 4
  br i1 %tobool15.not, label %for.body.do.body_crit_edge, label %if.then16

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %reg_readl = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 0, i32 2
  %23 = ptrtoint ptr %reg_readl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @irq_readl_be, ptr %reg_readl, align 4
  %reg_writel = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 0, i32 3
  %24 = ptrtoint ptr %reg_writel to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @irq_writel_be, ptr %reg_writel, align 4
  br label %do.body

do.body:                                          ; preds = %if.then16, %for.body.do.body_crit_edge
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gc_lock) #9
  %list = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 0, i32 18
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %25, ptr noundef nonnull @gc_list) #9
  br i1 %call.i.i, label %if.end.i.i70, label %do.body.list_add_tail.exit_crit_edge

do.body.list_add_tail.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i70:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @gc_list, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @gc_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %tmp.076, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i70, %do.body.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gc_lock, i32 noundef %call20) #9
  %add.ptr29 = getelementptr i8, ptr %tmp.076, i32 %retval.0.i
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_readl_be(ptr noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_writel_be(i32 noundef %val, ptr noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %val) #9, !srcloc !56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @irq_get_domain_generic_chip(ptr nocapture noundef readonly %d, i32 noundef %hw_irq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gc.i = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %gc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.__irq_get_domain_generic_chip.exit_crit_edge, label %if.end.i

entry.__irq_get_domain_generic_chip.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__irq_get_domain_generic_chip.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %div.i = udiv i32 %hw_irq, %3
  %num_chips.i = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %num_chips.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_chips.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %5)
  %cmp.not.i = icmp ult i32 %div.i, %5
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.__irq_get_domain_generic_chip.exit_crit_edge

if.end.i.__irq_get_domain_generic_chip.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__irq_get_domain_generic_chip.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 5, i32 %div.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  br label %__irq_get_domain_generic_chip.exit

__irq_get_domain_generic_chip.exit:               ; preds = %if.end3.i, %if.end.i.__irq_get_domain_generic_chip.exit_crit_edge, %entry.__irq_get_domain_generic_chip.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end3.i ], [ inttoptr (i32 -19 to ptr), %entry.__irq_get_domain_generic_chip.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.__irq_get_domain_generic_chip.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %retval.0.i
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_map_generic_chip(ptr noundef %d, i32 noundef %virq, i32 noundef %hw_irq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %d, i32 noundef %virq) #9
  %gc = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %div.i = udiv i32 %hw_irq, %3
  %num_chips.i = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %num_chips.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_chips.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %5)
  %cmp.not.i = icmp ult i32 %div.i, %5
  br i1 %cmp.not.i, label %__irq_get_domain_generic_chip.exit, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

__irq_get_domain_generic_chip.exit:               ; preds = %if.end.i
  %arrayidx.i76 = getelementptr %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 5, i32 %div.i
  %6 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i76, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %__irq_get_domain_generic_chip.exit.if.then_crit_edge, label %if.end

__irq_get_domain_generic_chip.exit.if.then_crit_edge: ; preds = %__irq_get_domain_generic_chip.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %__irq_get_domain_generic_chip.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i83 = phi ptr [ %7, %__irq_get_domain_generic_chip.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.if.then_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i83 to i32
  br label %cleanup

if.end:                                           ; preds = %__irq_get_domain_generic_chip.exit
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %rem = urem i32 %hw_irq, %10
  %unused = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 0, i32 16
  %div3.i = lshr i32 %rem, 5
  %arrayidx.i = getelementptr i32, ptr %unused, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %rem, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %13, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %installed = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 0, i32 15
  %arrayidx.i72 = getelementptr i32, ptr %installed, i32 %div3.i
  %15 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i72, align 4
  %17 = and i32 %16, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %chip_types = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 0, i32 19
  %18 = ptrtoint ptr %installed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %installed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %do.body, label %if.end11.if.end26_crit_edge

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.body:                                          ; preds = %if.end11
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %num_ct.i = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 0, i32 13
  %20 = ptrtoint ptr %num_ct.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_ct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp22.not.i = icmp eq i32 %21, 0
  br i1 %cmp22.not.i, label %do.body.irq_gc_init_mask_cache.exit_crit_edge, label %for.body.lr.ph.i

do.body.irq_gc_init_mask_cache.exit_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_gc_init_mask_cache.exit

for.body.lr.ph.i:                                 ; preds = %do.body
  %gc_flags = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %gc_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gc_flags, align 4
  %mask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 2, i32 0, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask.i, align 4
  %mask_cache.i = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 0, i32 8
  %and.i77 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  %and6.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %reg_readl.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 0, i32 2
  %reg_base2.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mskreg.024.i = phi i32 [ %25, %for.body.lr.ph.i ], [ %mskreg.1.i, %for.inc.i.for.body.i_crit_edge ]
  %mskptr.023.i = phi ptr [ %mask_cache.i, %for.body.lr.ph.i ], [ %mskptr.1.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i78, label %for.body.i.if.end.i79_crit_edge, label %if.then.i

for.body.i.if.end.i79_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i79

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask_cache_priv.i = getelementptr %struct.irq_chip_type, ptr %chip_types, i32 %i.025.i, i32 4
  %mask3.i = getelementptr %struct.irq_chip_type, ptr %chip_types, i32 %i.025.i, i32 1, i32 2
  %26 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask3.i, align 4
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.then.i, %for.body.i.if.end.i79_crit_edge
  %mskptr.1.i = phi ptr [ %mask_cache_priv.i, %if.then.i ], [ %mskptr.023.i, %for.body.i.if.end.i79_crit_edge ]
  %mskreg.1.i = phi i32 [ %27, %if.then.i ], [ %mskreg.024.i, %for.body.i.if.end.i79_crit_edge ]
  %mask_cache5.i = getelementptr %struct.irq_chip_type, ptr %chip_types, i32 %i.025.i, i32 5
  %28 = ptrtoint ptr %mask_cache5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mskptr.1.i, ptr %mask_cache5.i, align 4
  br i1 %tobool7.not.i, label %if.end.i79.for.inc.i_crit_edge, label %if.then8.i

if.end.i79.for.inc.i_crit_edge:                   ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end.i79
  %29 = ptrtoint ptr %reg_readl.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_readl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  %31 = ptrtoint ptr %reg_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base2.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %32, i32 %mskreg.1.i
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %30(ptr noundef %add.ptr3.i.i) #9
  br label %irq_reg_readl.exit.i

if.else.i.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !57
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !60
  br label %irq_reg_readl.exit.i

irq_reg_readl.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %34, %if.else.i.i ]
  %35 = ptrtoint ptr %mskptr.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %mskptr.1.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %irq_reg_readl.exit.i, %if.end.i79.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %36 = ptrtoint ptr %num_ct.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_ct.i, align 4
  %cmp.i80 = icmp ult i32 %inc.i, %37
  br i1 %cmp.i80, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.irq_gc_init_mask_cache.exit_crit_edge

for.inc.i.irq_gc_init_mask_cache.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_gc_init_mask_cache.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

irq_gc_init_mask_cache.exit:                      ; preds = %for.inc.i.irq_gc_init_mask_cache.exit_crit_edge, %do.body.irq_gc_init_mask_cache.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call16) #9
  br label %if.end26

if.end26:                                         ; preds = %irq_gc_init_mask_cache.exit, %if.end11.if.end26_crit_edge
  tail call void @_set_bit(i32 noundef %rem, ptr noundef %installed) #9
  %gc_flags28 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %gc_flags28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gc_flags28, align 4
  %and = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__irq_set_lockdep_class(i32 noundef %virq, ptr noundef nonnull @irq_nested_lock_class, ptr noundef nonnull @irq_nested_request_class) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge
  %irq_calc_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 1, i32 10
  %40 = ptrtoint ptr %irq_calc_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_calc_mask, align 4
  %tobool32.not = icmp eq ptr %41, null
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %41(ptr noundef %call) #9
  br label %if.end35

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %rem
  %42 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl, ptr %call, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then33
  %handler = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 2, i32 1
  %43 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %handler, align 4
  tail call void @irq_domain_set_info(ptr noundef %d, i32 noundef %virq, i32 noundef %hw_irq, ptr noundef %chip_types, ptr noundef %7, ptr noundef %44, ptr noundef null, ptr noundef null) #9
  %irq_flags_to_clear = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %irq_flags_to_clear to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq_flags_to_clear, align 4
  %irq_flags_to_set = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %irq_flags_to_set to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq_flags_to_set, align 4
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef %46, i32 noundef %48) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %if.end35 ], [ -524, %if.end.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_unmap_generic_chip(ptr noundef %d, i32 noundef %virq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %d, i32 noundef %virq) #9
  %gc = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %div.i.i = udiv i32 %3, %5
  %num_chips.i.i = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %num_chips.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_chips.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %7)
  %cmp.not.i.i = icmp ult i32 %div.i.i, %7
  br i1 %cmp.not.i.i, label %irq_get_domain_generic_chip.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

irq_get_domain_generic_chip.exit:                 ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.irq_domain_chip_generic, ptr %1, i32 0, i32 5, i32 %div.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %tobool.not14 = icmp eq ptr %9, null
  %tobool.not = or i1 %cmp.i.i, %tobool.not14
  br i1 %tobool.not, label %irq_get_domain_generic_chip.exit.cleanup_crit_edge, label %if.end

irq_get_domain_generic_chip.exit.cleanup_crit_edge: ; preds = %irq_get_domain_generic_chip.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %irq_get_domain_generic_chip.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %rem = urem i32 %3, %11
  %installed = getelementptr inbounds %struct.irq_chip_generic, ptr %9, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef %rem, ptr noundef %installed) #9
  tail call void @irq_domain_set_info(ptr noundef %d, i32 noundef %virq, i32 noundef %3, ptr noundef nonnull @no_irq_chip, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %irq_get_domain_generic_chip.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_setup_generic_chip(ptr noundef %gc, i32 noundef %msk, i32 noundef %flags, i32 noundef %clr, i32 noundef %set) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_types = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef nonnull @gc_lock) #9
  %list = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 18
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %0, ptr noundef nonnull @gc_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @gc_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @gc_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gc_lock) #9
  %num_ct.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 13
  %4 = ptrtoint ptr %num_ct.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22.not.i = icmp eq i32 %5, 0
  br i1 %cmp22.not.i, label %list_add_tail.exit.irq_gc_init_mask_cache.exit_crit_edge, label %for.body.lr.ph.i

list_add_tail.exit.irq_gc_init_mask_cache.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_gc_init_mask_cache.exit

for.body.lr.ph.i:                                 ; preds = %list_add_tail.exit
  %mask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 2, i32 0, i32 4, i32 1, i32 1
  %6 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask.i, align 4
  %mask_cache.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 8
  %and.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and6.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %reg_readl.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 2
  %reg_base2.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mskreg.024.i = phi i32 [ %7, %for.body.lr.ph.i ], [ %mskreg.1.i, %for.inc.i.for.body.i_crit_edge ]
  %mskptr.023.i = phi ptr [ %mask_cache.i, %for.body.lr.ph.i ], [ %mskptr.1.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask_cache_priv.i = getelementptr %struct.irq_chip_type, ptr %chip_types, i32 %i.025.i, i32 4
  %mask3.i = getelementptr %struct.irq_chip_type, ptr %chip_types, i32 %i.025.i, i32 1, i32 2
  %8 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %mskptr.1.i = phi ptr [ %mask_cache_priv.i, %if.then.i ], [ %mskptr.023.i, %for.body.i.if.end.i_crit_edge ]
  %mskreg.1.i = phi i32 [ %9, %if.then.i ], [ %mskreg.024.i, %for.body.i.if.end.i_crit_edge ]
  %mask_cache5.i = getelementptr %struct.irq_chip_type, ptr %chip_types, i32 %i.025.i, i32 5
  %10 = ptrtoint ptr %mask_cache5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mskptr.1.i, ptr %mask_cache5.i, align 4
  br i1 %tobool7.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then8.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %reg_readl.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_readl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  %13 = ptrtoint ptr %reg_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base2.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %14, i32 %mskreg.1.i
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i41 = tail call i32 %12(ptr noundef %add.ptr3.i.i) #9
  br label %irq_reg_readl.exit.i

if.else.i.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !57
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !60
  br label %irq_reg_readl.exit.i

irq_reg_readl.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i41, %if.then.i.i ], [ %16, %if.else.i.i ]
  %17 = ptrtoint ptr %mskptr.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i.i, ptr %mskptr.1.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %irq_reg_readl.exit.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %18 = ptrtoint ptr %num_ct.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_ct.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.irq_gc_init_mask_cache.exit_crit_edge

for.inc.i.irq_gc_init_mask_cache.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_gc_init_mask_cache.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

irq_gc_init_mask_cache.exit:                      ; preds = %for.inc.i.irq_gc_init_mask_cache.exit_crit_edge, %list_add_tail.exit.irq_gc_init_mask_cache.exit_crit_edge
  %irq_base = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 6
  %20 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msk)
  %tobool.not42 = icmp eq i32 %msk, 0
  br i1 %tobool.not42, label %irq_gc_init_mask_cache.exit.for.end_crit_edge, label %for.body.lr.ph

irq_gc_init_mask_cache.exit.for.end_crit_edge:    ; preds = %irq_gc_init_mask_cache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %irq_gc_init_mask_cache.exit
  %and3 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and7 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %irq_calc_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 1, i32 10
  %handler = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ %21, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %msk.addr.043 = phi i32 [ %msk, %for.body.lr.ph ], [ %shr, %for.inc.for.body_crit_edge ]
  %and = and i32 %msk.addr.043, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__irq_set_lockdep_class(i32 noundef %i.044, ptr noundef nonnull @irq_nested_lock_class, ptr noundef nonnull @irq_nested_request_class) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  %call = tail call ptr @irq_get_irq_data(i32 noundef %i.044) #9
  %22 = ptrtoint ptr %irq_calc_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_calc_mask, align 4
  %tobool10.not = icmp eq ptr %23, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %call) #9
  br label %if.end15

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %i.044, %25
  %shl = shl nuw i32 1, %sub
  %26 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl, ptr %call, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11, %if.end6.if.end15_crit_edge
  %27 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handler, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %i.044, ptr noundef %chip_types, ptr noundef %28, ptr noundef null) #9
  %call16 = tail call i32 @irq_set_chip_data(i32 noundef %i.044, ptr noundef %gc) #9
  tail call void @irq_modify_status(i32 noundef %i.044, i32 noundef %clr, i32 noundef %set) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %shr = lshr i32 %msk.addr.043, 1
  %inc = add i32 %i.044, 1
  %tobool.not = icmp ult i32 %msk.addr.043, 2
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %irq_gc_init_mask_cache.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %21, %irq_gc_init_mask_cache.exit.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %29 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_base, align 4
  %sub18 = sub i32 %i.0.lcssa, %30
  %irq_cnt = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 7
  %31 = ptrtoint ptr %irq_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub18, ptr %irq_cnt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_setup_alt_chip(ptr nocapture noundef %d, i32 noundef %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %num_ct = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %num_ct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ct, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %chip_types = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ct.015 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %chip_types, %for.body.preheader ]
  %type1 = getelementptr inbounds %struct.irq_chip_type, ptr %ct.015, i32 0, i32 3
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type1, align 4
  %and = and i32 %5, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %chip2 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %6 = ptrtoint ptr %chip2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ct.015, ptr %chip2, align 4
  %handler = getelementptr inbounds %struct.irq_chip_type, ptr %ct.015, i32 0, i32 2
  %7 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handler, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %9 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i, align 4
  %handle_irq = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %handle_irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %handle_irq, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.016, 1
  %incdec.ptr = getelementptr %struct.irq_chip_type, ptr %ct.015, i32 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_remove_generic_chip(ptr noundef %gc, i32 noundef %msk, i32 noundef %clr, i32 noundef %set) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_base = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 6
  %0 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_base, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @gc_lock) #9
  %list = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 18, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gc_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msk)
  %tobool.not10 = icmp eq i32 %msk, 0
  br i1 %tobool.not10, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %1, %list_del.exit.for.body_crit_edge ]
  %msk.addr.011 = phi i32 [ %shr, %for.inc.for.body_crit_edge ], [ %msk, %list_del.exit.for.body_crit_edge ]
  %and = and i32 %msk.addr.011, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__irq_set_handler(i32 noundef %i.012, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  %call = tail call i32 @irq_set_chip(i32 noundef %i.012, ptr noundef nonnull @no_irq_chip) #9
  %call2 = tail call i32 @irq_set_chip_data(i32 noundef %i.012, ptr noundef null) #9
  tail call void @irq_modify_status(i32 noundef %i.012, i32 noundef %clr, i32 noundef %set) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %shr = lshr i32 %msk.addr.011, 1
  %inc = add i32 %i.012, 1
  %tobool.not = icmp ult i32 %msk.addr.011, 2
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_gc_init_ops() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_syscore_ops(ptr noundef nonnull @irq_gc_syscore_ops) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_lockdep_class(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_gc_suspend() #1 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn24 = load ptr, ptr @gc_list, align 4
  %cmp.not26 = icmp eq ptr %.pn24, @gc_list
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %if.end9.for.body_crit_edge ], [ %.pn24, %entry.for.body_crit_edge ]
  %gc.028 = getelementptr i8, ptr %.pn27, i32 -112
  %irq_suspend = getelementptr i8, ptr %.pn27, i32 76
  %0 = ptrtoint ptr %irq_suspend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_suspend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end5_crit_edge, label %if.then

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %for.body
  %domain.i = getelementptr i8, ptr %.pn27, i32 -4
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %irq_base.i = getelementptr i8, ptr %.pn27, i32 -48
  %4 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i, align 4
  br label %irq_gc_get_irq_data.exit

if.end.i:                                         ; preds = %if.then
  %installed.i = getelementptr i8, ptr %.pn27, i32 -12
  %6 = ptrtoint ptr %installed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %installed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end5_crit_edge, label %if.end3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end3.i:                                        ; preds = %if.end.i
  %irq_base5.i = getelementptr i8, ptr %.pn27, i32 -48
  %8 = ptrtoint ptr %irq_base5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_base5.i, align 4
  %10 = call i32 @llvm.cttz.i32(i32 %7, i1 true) #9, !range !61
  %add.i = add i32 %9, %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #9
  %11 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !62
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef nonnull %3, i32 noundef %add.i, ptr noundef nonnull %irq.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %irq_find_mapping.exit.thread.i, label %irq_find_mapping.exit.i

irq_find_mapping.exit.thread.i:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #9
  br label %if.end5

irq_find_mapping.exit.i:                          ; preds = %if.end3.i
  %12 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not.i = icmp eq i32 %13, 0
  br i1 %tobool9.not.i, label %irq_find_mapping.exit.i.if.end5_crit_edge, label %irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge

irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge: ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_gc_get_irq_data.exit

irq_find_mapping.exit.i.if.end5_crit_edge:        ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

irq_gc_get_irq_data.exit:                         ; preds = %irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge, %if.then.i
  %.sink = phi i32 [ %5, %if.then.i ], [ %13, %irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge ]
  %call.i = call ptr @irq_get_irq_data(i32 noundef %.sink) #9
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %irq_gc_get_irq_data.exit.if.end5_crit_edge, label %if.then2

irq_gc_get_irq_data.exit.if.end5_crit_edge:       ; preds = %irq_gc_get_irq_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %irq_gc_get_irq_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %irq_suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_suspend, align 4
  call void %15(ptr noundef nonnull %call.i) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %irq_gc_get_irq_data.exit.if.end5_crit_edge, %irq_find_mapping.exit.i.if.end5_crit_edge, %irq_find_mapping.exit.thread.i, %if.end.i.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %suspend = getelementptr i8, ptr %.pn27, i32 -56
  %16 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %suspend, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void %17(ptr noundef %gc.028) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %18 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp.not = icmp eq ptr %.pn, @gc_list
  br i1 %cmp.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_gc_resume() #1 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn24 = load ptr, ptr @gc_list, align 4
  %cmp.not26 = icmp eq ptr %.pn24, @gc_list
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %if.end9.for.body_crit_edge ], [ %.pn24, %entry.for.body_crit_edge ]
  %resume = getelementptr i8, ptr %.pn27, i32 -52
  %0 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resume, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %gc.028 = getelementptr i8, ptr %.pn27, i32 -112
  call void %1(ptr noundef %gc.028) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %irq_resume = getelementptr i8, ptr %.pn27, i32 80
  %2 = ptrtoint ptr %irq_resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_resume, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %domain.i = getelementptr i8, ptr %.pn27, i32 -4
  %4 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %irq_base.i = getelementptr i8, ptr %.pn27, i32 -48
  %6 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base.i, align 4
  br label %irq_gc_get_irq_data.exit

if.end.i:                                         ; preds = %if.then3
  %installed.i = getelementptr i8, ptr %.pn27, i32 -12
  %8 = ptrtoint ptr %installed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %installed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end9_crit_edge, label %if.end3.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end3.i:                                        ; preds = %if.end.i
  %irq_base5.i = getelementptr i8, ptr %.pn27, i32 -48
  %10 = ptrtoint ptr %irq_base5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_base5.i, align 4
  %12 = call i32 @llvm.cttz.i32(i32 %9, i1 true) #9, !range !61
  %add.i = add i32 %11, %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #9
  %13 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !62
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef nonnull %5, i32 noundef %add.i, ptr noundef nonnull %irq.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %irq_find_mapping.exit.thread.i, label %irq_find_mapping.exit.i

irq_find_mapping.exit.thread.i:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #9
  br label %if.end9

irq_find_mapping.exit.i:                          ; preds = %if.end3.i
  %14 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not.i = icmp eq i32 %15, 0
  br i1 %tobool9.not.i, label %irq_find_mapping.exit.i.if.end9_crit_edge, label %irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge

irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge: ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_gc_get_irq_data.exit

irq_find_mapping.exit.i.if.end9_crit_edge:        ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

irq_gc_get_irq_data.exit:                         ; preds = %irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge, %if.then.i
  %.sink = phi i32 [ %7, %if.then.i ], [ %15, %irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge ]
  %call.i = call ptr @irq_get_irq_data(i32 noundef %.sink) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %irq_gc_get_irq_data.exit.if.end9_crit_edge, label %if.then5

irq_gc_get_irq_data.exit.if.end9_crit_edge:       ; preds = %irq_gc_get_irq_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then5:                                         ; preds = %irq_gc_get_irq_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %irq_resume to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_resume, align 4
  call void %17(ptr noundef nonnull %call.i) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %irq_gc_get_irq_data.exit.if.end9_crit_edge, %irq_find_mapping.exit.i.if.end9_crit_edge, %irq_find_mapping.exit.thread.i, %if.end.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %18 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp.not = icmp eq ptr %.pn, @gc_list
  br i1 %cmp.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_gc_shutdown() #1 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn17 = load ptr, ptr @gc_list, align 4
  %cmp.not18 = icmp eq ptr %.pn17, @gc_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn19 = phi ptr [ %.pn, %if.end5.for.body_crit_edge ], [ %.pn17, %entry.for.body_crit_edge ]
  %irq_pm_shutdown = getelementptr i8, ptr %.pn19, i32 84
  %0 = ptrtoint ptr %irq_pm_shutdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_pm_shutdown, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end5_crit_edge, label %if.then

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %for.body
  %domain.i = getelementptr i8, ptr %.pn19, i32 -4
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %irq_base.i = getelementptr i8, ptr %.pn19, i32 -48
  %4 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i, align 4
  br label %irq_gc_get_irq_data.exit

if.end.i:                                         ; preds = %if.then
  %installed.i = getelementptr i8, ptr %.pn19, i32 -12
  %6 = ptrtoint ptr %installed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %installed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end5_crit_edge, label %if.end3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end3.i:                                        ; preds = %if.end.i
  %irq_base5.i = getelementptr i8, ptr %.pn19, i32 -48
  %8 = ptrtoint ptr %irq_base5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_base5.i, align 4
  %10 = call i32 @llvm.cttz.i32(i32 %7, i1 true) #9, !range !61
  %add.i = add i32 %9, %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #9
  %11 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !62
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef nonnull %3, i32 noundef %add.i, ptr noundef nonnull %irq.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %irq_find_mapping.exit.thread.i, label %irq_find_mapping.exit.i

irq_find_mapping.exit.thread.i:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #9
  br label %if.end5

irq_find_mapping.exit.i:                          ; preds = %if.end3.i
  %12 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not.i = icmp eq i32 %13, 0
  br i1 %tobool9.not.i, label %irq_find_mapping.exit.i.if.end5_crit_edge, label %irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge

irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge: ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_gc_get_irq_data.exit

irq_find_mapping.exit.i.if.end5_crit_edge:        ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

irq_gc_get_irq_data.exit:                         ; preds = %irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge, %if.then.i
  %.sink = phi i32 [ %5, %if.then.i ], [ %13, %irq_find_mapping.exit.i.irq_gc_get_irq_data.exit_crit_edge ]
  %call.i = call ptr @irq_get_irq_data(i32 noundef %.sink) #9
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %irq_gc_get_irq_data.exit.if.end5_crit_edge, label %if.then2

irq_gc_get_irq_data.exit.if.end5_crit_edge:       ; preds = %irq_gc_get_irq_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %irq_gc_get_irq_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %irq_pm_shutdown to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_pm_shutdown, align 4
  call void %15(ptr noundef nonnull %call.i) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %irq_gc_get_irq_data.exit.if.end5_crit_edge, %irq_find_mapping.exit.i.if.end5_crit_edge, %irq_find_mapping.exit.thread.i, %if.end.i.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %16 = ptrtoint ptr %.pn19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn19, align 4
  %cmp.not = icmp eq ptr %.pn, @gc_list
  br i1 %cmp.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__ksymtab_irq_gc_noop, !1, !"__ksymtab_irq_gc_noop", i1 false, i1 false}
!1 = !{!"../kernel/irq/generic-chip.c", i32 28, i32 1}
!2 = !{ptr @__ksymtab_irq_gc_mask_disable_reg, !3, !"__ksymtab_irq_gc_mask_disable_reg", i1 false, i1 false}
!3 = !{!"../kernel/irq/generic-chip.c", i32 48, i32 1}
!4 = !{ptr @__ksymtab_irq_gc_mask_set_bit, !5, !"__ksymtab_irq_gc_mask_set_bit", i1 false, i1 false}
!5 = !{!"../kernel/irq/generic-chip.c", i32 68, i32 1}
!6 = !{ptr @__ksymtab_irq_gc_mask_clr_bit, !7, !"__ksymtab_irq_gc_mask_clr_bit", i1 false, i1 false}
!7 = !{!"../kernel/irq/generic-chip.c", i32 88, i32 1}
!8 = !{ptr @__ksymtab_irq_gc_unmask_enable_reg, !9, !"__ksymtab_irq_gc_unmask_enable_reg", i1 false, i1 false}
!9 = !{!"../kernel/irq/generic-chip.c", i32 108, i32 1}
!10 = !{ptr @__ksymtab_irq_gc_ack_set_bit, !11, !"__ksymtab_irq_gc_ack_set_bit", i1 false, i1 false}
!11 = !{!"../kernel/irq/generic-chip.c", i32 124, i32 1}
!12 = !{ptr @__ksymtab_irq_gc_set_wake, !13, !"__ksymtab_irq_gc_set_wake", i1 false, i1 false}
!13 = !{!"../kernel/irq/generic-chip.c", i32 206, i32 1}
!14 = !{ptr @irq_init_generic_chip.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../kernel/irq/generic-chip.c", i32 222, i32 2}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_irq_alloc_generic_chip, !18, !"__ksymtab_irq_alloc_generic_chip", i1 false, i1 false}
!18 = !{!"../kernel/irq/generic-chip.c", i32 254, i32 1}
!19 = !{ptr @__ksymtab___irq_alloc_domain_generic_chips, !20, !"__ksymtab___irq_alloc_domain_generic_chips", i1 false, i1 false}
!20 = !{!"../kernel/irq/generic-chip.c", i32 344, i32 1}
!21 = !{ptr @__ksymtab_irq_get_domain_generic_chip, !22, !"__ksymtab_irq_get_domain_generic_chip", i1 false, i1 false}
!22 = !{!"../kernel/irq/generic-chip.c", i32 372, i32 1}
!23 = !{ptr @irq_generic_chip_ops, !24, !"irq_generic_chip_ops", i1 false, i1 false}
!24 = !{!"../kernel/irq/generic-chip.c", i32 454, i32 29}
!25 = !{ptr @__ksymtab_irq_generic_chip_ops, !26, !"__ksymtab_irq_generic_chip_ops", i1 false, i1 false}
!26 = !{!"../kernel/irq/generic-chip.c", i32 459, i32 1}
!27 = !{ptr @__ksymtab_irq_setup_generic_chip, !28, !"__ksymtab_irq_setup_generic_chip", i1 false, i1 false}
!28 = !{!"../kernel/irq/generic-chip.c", i32 509, i32 1}
!29 = !{ptr @__ksymtab_irq_setup_alt_chip, !30, !"__ksymtab_irq_setup_alt_chip", i1 false, i1 false}
!30 = !{!"../kernel/irq/generic-chip.c", i32 533, i32 1}
!31 = !{ptr @__ksymtab_irq_remove_generic_chip, !32, !"__ksymtab_irq_remove_generic_chip", i1 false, i1 false}
!32 = !{!"../kernel/irq/generic-chip.c", i32 564, i32 1}
!33 = !{ptr @__initcall__kmod_generic_chip__228_655_irq_gc_init_ops6, !34, !"__initcall__kmod_generic_chip__228_655_irq_gc_init_ops6", i1 false, i1 false}
!34 = !{!"../kernel/irq/generic-chip.c", i32 655, i32 1}
!35 = !{ptr @irq_nested_lock_class, !36, !"irq_nested_lock_class", i1 false, i1 false}
!36 = !{!"../kernel/irq/generic-chip.c", i32 378, i32 30}
!37 = !{ptr @irq_nested_request_class, !38, !"irq_nested_request_class", i1 false, i1 false}
!38 = !{!"../kernel/irq/generic-chip.c", i32 379, i32 30}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/irq/generic-chip.c", i32 19, i32 8}
!41 = !{ptr @gc_lock, !40, !"gc_lock", i1 false, i1 false}
!42 = !{ptr @gc_list, !43, !"gc_list", i1 false, i1 false}
!43 = !{!"../kernel/irq/generic-chip.c", i32 18, i32 8}
!44 = !{ptr @irq_gc_syscore_ops, !45, !"irq_gc_syscore_ops", i1 false, i1 false}
!45 = !{!"../kernel/irq/generic-chip.c", i32 644, i32 27}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2152440455}
!56 = !{i64 699918}
!57 = !{i64 700336}
!58 = !{i64 2153989392}
!59 = !{i64 2153989620}
!60 = !{i64 2152441325}
!61 = !{i32 0, i32 33}
!62 = !{!"auto-init"}
