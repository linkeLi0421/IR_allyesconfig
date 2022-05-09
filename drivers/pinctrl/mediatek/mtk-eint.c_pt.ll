; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/mediatek/mtk-eint.c_pt.bc'
source_filename = "../drivers/pinctrl/mediatek/mtk-eint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_eint_do_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_eint_do_suspend\09\09\09\09"
module asm "\09.long\09__crc_mtk_eint_do_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_do_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_do_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_do_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_eint_do_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_eint_do_resume\09\09\09\09"
module asm "\09.long\09__crc_mtk_eint_do_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_do_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_do_resume\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_do_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_eint_set_debounce\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_eint_set_debounce\09\09\09\09"
module asm "\09.long\09__crc_mtk_eint_set_debounce\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_set_debounce:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_set_debounce\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_set_debounce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_eint_find_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_eint_find_irq\09\09\09\09"
module asm "\09.long\09__crc_mtk_eint_find_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_find_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_find_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_find_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_eint_do_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_eint_do_init\09\09\09\09"
module asm "\09.long\09__crc_mtk_eint_do_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_do_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_do_init\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_do_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtk_eint_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_eint = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_eint_hw = type { i8, i8, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_eint_xt = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_mtk_eint_do_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_do_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_do_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_do_suspend to i32), ptr @__kstrtab_mtk_eint_do_suspend, ptr @__kstrtabns_mtk_eint_do_suspend }, section "___ksymtab_gpl+mtk_eint_do_suspend", align 4
@__kstrtab_mtk_eint_do_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_do_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_do_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_do_resume to i32), ptr @__kstrtab_mtk_eint_do_resume, ptr @__kstrtabns_mtk_eint_do_resume }, section "___ksymtab_gpl+mtk_eint_do_resume", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_mtk_eint_set_debounce = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_set_debounce = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_set_debounce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_set_debounce to i32), ptr @__kstrtab_mtk_eint_set_debounce, ptr @__kstrtabns_mtk_eint_set_debounce }, section "___ksymtab_gpl+mtk_eint_set_debounce", align 4
@__kstrtab_mtk_eint_find_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_find_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_find_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_find_irq to i32), ptr @__kstrtab_mtk_eint_find_irq, ptr @__kstrtabns_mtk_eint_find_irq }, section "___ksymtab_gpl+mtk_eint_find_irq", align 4
@mtk_generic_eint_regs = internal constant { %struct.mtk_eint_regs, [56 x i8] } { %struct.mtk_eint_regs { i32 0, i32 64, i32 128, i32 192, i32 256, i32 320, i32 384, i32 448, i32 512, i32 576, i32 640, i32 768, i32 832, i32 896, i32 1024, i32 1280, i32 1536, i32 1792 }, [56 x i8] zeroinitializer }, align 32
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@mtk_eint_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr @mtk_eint_mask, ptr @mtk_eint_ack, ptr @mtk_eint_mask, ptr null, ptr @mtk_eint_unmask, ptr null, ptr null, ptr null, ptr @mtk_eint_set_type, ptr @mtk_eint_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_eint_irq_request_resources, ptr @mtk_eint_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_eint_do_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_do_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_do_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_do_init to i32), ptr @__kstrtab_mtk_eint_do_init, ptr @__kstrtabns_mtk_eint_do_init }, section "___ksymtab_gpl+mtk_eint_do_init", align 4
@__UNIQUE_ID_file223 = internal constant [48 x i8] c"mtk_eint.file=drivers/pinctrl/mediatek/mtk-eint\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [24 x i8] c"mtk_eint.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [42 x i8] c"mtk_eint.description=MediaTek EINT Driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt-eint\00", [24 x i8] zeroinitializer }, align 32
@mtk_eint_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Can't configure IRQ%d (EINT%lu) for type 0x%X\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_eint_set_type\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/pinctrl/mediatek/mtk-eint.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_eint_set_type._entry_ptr = internal global ptr @mtk_eint_set_type._entry, section ".printk_index", align 4
@mtk_eint_irq_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Can not find pin\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mtk_eint_irq_request_resources\00", [33 x i8] zeroinitializer }, align 32
@mtk_eint_irq_request_resources._entry_ptr = internal global ptr @mtk_eint_irq_request_resources._entry, section ".printk_index", align 4
@mtk_eint_irq_request_resources._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_eint_irq_request_resources._entry_ptr.10 = internal global ptr @mtk_eint_irq_request_resources._entry.8, section ".printk_index", align 4
@mtk_eint_irq_request_resources._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can not eint mode\0A\00", [45 x i8] zeroinitializer }, align 32
@mtk_eint_irq_request_resources._entry_ptr.13 = internal global ptr @mtk_eint_irq_request_resources._entry.11, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"mtk_generic_eint_regs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 30, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"mtk_eint_irq_chip\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 276, i32 24 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 277, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 166, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 244, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 250, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [39 x i8] c"../drivers/pinctrl/mediatek/mtk-eint.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 257, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__ksymtab_mtk_eint_do_init, ptr @__ksymtab_mtk_eint_do_resume, ptr @__ksymtab_mtk_eint_do_suspend, ptr @__ksymtab_mtk_eint_find_irq, ptr @__ksymtab_mtk_eint_set_debounce, ptr @mtk_eint_irq_request_resources._entry, ptr @mtk_eint_irq_request_resources._entry.11, ptr @mtk_eint_irq_request_resources._entry.8, ptr @mtk_eint_irq_request_resources._entry_ptr, ptr @mtk_eint_irq_request_resources._entry_ptr.10, ptr @mtk_eint_irq_request_resources._entry_ptr.13, ptr @mtk_eint_set_type._entry, ptr @mtk_eint_set_type._entry_ptr, ptr @mtk_generic_eint_regs, ptr @mtk_eint_irq_chip, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_generic_eint_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eint_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eint_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eint_irq_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eint_irq_request_resources._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eint_irq_request_resources._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_do_suspend(ptr nocapture noundef readonly %eint) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %wake_mask = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 5
  %2 = ptrtoint ptr %wake_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wake_mask, align 4
  %hw.i = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 7
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  %ports14.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports14.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ports14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp16.not.i = icmp eq i8 %7, 0
  br i1 %cmp16.not.i, label %entry.mtk_eint_chip_write_mask.exit_crit_edge, label %for.body.lr.ph.i

entry.mtk_eint_chip_write_mask.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_eint_chip_write_mask.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %regs.i = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %port.017.i, 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %arrayidx.i = getelementptr i32, ptr %3, i32 %port.017.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %neg.i = xor i32 %9, -1
  %10 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #6
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %mask_set.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mask_set.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask_set.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %10) #6, !srcloc !53
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %mask_clr.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %mask_clr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask_clr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %17) #6, !srcloc !53
  %inc.i = add nuw nsw i32 %port.017.i, 1
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 4
  %ports.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ports.i, align 1
  %conv.i = zext i8 %25 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mtk_eint_chip_write_mask.exit_crit_edge

for.body.i.mtk_eint_chip_write_mask.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_eint_chip_write_mask.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

mtk_eint_chip_write_mask.exit:                    ; preds = %for.body.i.mtk_eint_chip_write_mask.exit_crit_edge, %entry.mtk_eint_chip_write_mask.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_do_resume(ptr nocapture noundef readonly %eint) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %cur_mask = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 6
  %2 = ptrtoint ptr %cur_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_mask, align 4
  %hw.i = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 7
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  %ports14.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports14.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ports14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp16.not.i = icmp eq i8 %7, 0
  br i1 %cmp16.not.i, label %entry.mtk_eint_chip_write_mask.exit_crit_edge, label %for.body.lr.ph.i

entry.mtk_eint_chip_write_mask.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_eint_chip_write_mask.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %regs.i = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %port.017.i, 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %arrayidx.i = getelementptr i32, ptr %3, i32 %port.017.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %neg.i = xor i32 %9, -1
  %10 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #6
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %mask_set.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mask_set.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask_set.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %10) #6, !srcloc !53
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %mask_clr.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %mask_clr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask_clr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %17) #6, !srcloc !53
  %inc.i = add nuw nsw i32 %port.017.i, 1
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 4
  %ports.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ports.i, align 1
  %conv.i = zext i8 %25 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mtk_eint_chip_write_mask.exit_crit_edge

for.body.i.mtk_eint_chip_write_mask.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_eint_chip_write_mask.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

mtk_eint_chip_write_mask.exit:                    ; preds = %for.body.i.mtk_eint_chip_write_mask.exit_crit_edge, %entry.mtk_eint_chip_write_mask.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_set_debounce(ptr nocapture noundef readonly %eint, i32 noundef %eint_num, i32 noundef %debounce) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 2
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !54
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef %eint_num, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  %rem = shl i32 %eint_num, 3
  %mul = and i32 %rem, 24
  %call1 = call ptr @irq_get_irq_data(i32 noundef %retval.0.i) #6
  %div54 = and i32 %eint_num, -4
  %regs = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %dbnc_set = getelementptr inbounds %struct.mtk_eint_regs, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %dbnc_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dbnc_set, align 4
  %add = add i32 %8, %div54
  %dbnc_clr = getelementptr inbounds %struct.mtk_eint_regs, ptr %6, i32 0, i32 17
  %9 = ptrtoint ptr %dbnc_clr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dbnc_clr, align 4
  %add6 = add i32 %10, %div54
  %rem.i = and i32 %eint_num, 31
  %shl.i = shl nuw i32 1, %rem.i
  %sens1.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %sens1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sens1.i, align 4
  %hw.i.i = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 7
  %13 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i.i, align 4
  %ap_num.i.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ap_num.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ap_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %eint_num)
  %cmp.not.i.i = icmp ugt i32 %16, %eint_num
  %spec.select.i.i = select i1 %cmp.not.i.i, i32 0, i32 %16
  %base.i.i = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %12
  %sub.i.i = sub i32 %eint_num, %spec.select.i.i
  %19 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %19, 536870908
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #6, !srcloc !55
  %21 = call i32 @llvm.bswap.i32(i32 %20) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %and.i = and i32 %21, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i56 = icmp eq i32 %and.i, 0
  %22 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i.i, align 4
  %db_cnt.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %db_cnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %db_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %eint_num)
  %cmp.i = icmp ule i32 %25, %eint_num
  %brmerge.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i56
  br i1 %brmerge.i, label %irq_find_mapping.exit.cleanup_crit_edge, label %for.body.preheader

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %debounce)
  %cmp8.not = icmp ugt i32 %debounce, 500
  br i1 %cmp8.not, label %for.inc, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %debounce)
  %cmp8.not.1 = icmp ugt i32 %debounce, 1000
  br i1 %cmp8.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %debounce)
  %cmp8.not.2 = icmp ugt i32 %debounce, 16000
  br i1 %cmp8.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %debounce)
  %cmp8.not.3 = icmp ugt i32 %debounce, 32000
  br i1 %cmp8.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %debounce)
  %cmp8.not.4 = icmp ugt i32 %debounce, 64000
  br i1 %cmp8.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %debounce)
  %cmp8.not.5 = icmp ugt i32 %debounce, 128000
  br i1 %cmp8.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %debounce)
  %cmp8.not.6 = icmp ugt i32 %debounce, 256000
  %spec.select = select i1 %cmp8.not.6, i32 115, i32 99
  br label %for.end

for.end:                                          ; preds = %for.inc.5, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %dbnc.0 = phi i32 [ 3, %for.body.preheader.for.end_crit_edge ], [ 19, %for.inc.for.end_crit_edge ], [ 35, %for.inc.1.for.end_crit_edge ], [ 51, %for.inc.2.for.end_crit_edge ], [ 67, %for.inc.3.for.end_crit_edge ], [ 83, %for.inc.4.for.end_crit_edge ], [ %spec.select, %for.inc.5 ]
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %mask.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask.i, align 4
  %ap_num.i.i61 = getelementptr inbounds %struct.mtk_eint_hw, ptr %23, i32 0, i32 2
  %30 = ptrtoint ptr %ap_num.i.i61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ap_num.i.i61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %eint_num)
  %cmp.not.i.i62 = icmp ugt i32 %31, %eint_num
  %spec.select.i.i63 = select i1 %cmp.not.i.i62, i32 0, i32 %31
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %33, i32 %29
  %sub.i.i66 = sub i32 %eint_num, %spec.select.i.i63
  %34 = lshr i32 %sub.i.i66, 3
  %mul.i.i67 = and i32 %34, 536870908
  %add.ptr3.i.i68 = getelementptr i8, ptr %add.ptr.i.i65, i32 %mul.i.i67
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i68) #6, !srcloc !55
  %36 = call i32 @llvm.bswap.i32(i32 %35) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %37 = and i32 %36, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool12.not = icmp eq i32 %37, 0
  br i1 %tobool12.not, label %if.then13, label %for.end.if.end14_crit_edge

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %call1, i32 0, i32 7
  %38 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %call1, i32 0, i32 2
  %40 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hwirq.i, align 4
  %and.i69 = and i32 %41, 31
  %shl.i70 = shl nuw i32 1, %and.i69
  %regs.i71 = getelementptr inbounds %struct.mtk_eint, ptr %39, i32 0, i32 8
  %42 = ptrtoint ptr %regs.i71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i71, align 4
  %mask_set.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %mask_set.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask_set.i, align 4
  %hw.i.i72 = getelementptr inbounds %struct.mtk_eint, ptr %39, i32 0, i32 7
  %46 = ptrtoint ptr %hw.i.i72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw.i.i72, align 4
  %ap_num.i.i73 = getelementptr inbounds %struct.mtk_eint_hw, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %ap_num.i.i73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ap_num.i.i73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %41)
  %cmp.not.i.i74 = icmp ugt i32 %49, %41
  %spec.select.i.i75 = select i1 %cmp.not.i.i74, i32 0, i32 %49
  %base.i.i76 = getelementptr inbounds %struct.mtk_eint, ptr %39, i32 0, i32 1
  %50 = ptrtoint ptr %base.i.i76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i76, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %51, i32 %45
  %sub.i.i78 = sub i32 %41, %spec.select.i.i75
  %52 = lshr i32 %sub.i.i78, 3
  %mul.i.i79 = and i32 %52, 536870908
  %add.ptr3.i.i80 = getelementptr i8, ptr %add.ptr.i.i77, i32 %mul.i.i79
  %neg.i = xor i32 %shl.i70, -1
  %cur_mask.i = getelementptr inbounds %struct.mtk_eint, ptr %39, i32 0, i32 6
  %53 = ptrtoint ptr %cur_mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_mask.i, align 4
  %shr.i = lshr i32 %41, 5
  %arrayidx.i = getelementptr i32, ptr %54, i32 %shr.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i, align 4
  %and4.i = and i32 %56, %neg.i
  store i32 %and4.i, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %57 = call i32 @llvm.bswap.i32(i32 %shl.i70) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i80, i32 %57) #6, !srcloc !53
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end.if.end14_crit_edge
  %shl = shl nuw i32 255, %mul
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  call void @arm_heavy_mb() #6
  %58 = call i32 @llvm.bswap.i32(i32 %shl)
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr = getelementptr i8, ptr %60, i32 %add6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %58) #6, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %or21 = shl nuw nsw i32 %dbnc.0, %mul
  %61 = call i32 @llvm.bswap.i32(i32 %or21)
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 4
  %add.ptr23 = getelementptr i8, ptr %63, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %61) #6, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748) #6
  br i1 %tobool12.not, label %if.then25, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @mtk_eint_unmask(ptr noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end14.cleanup_crit_edge, %irq_find_mapping.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %irq_find_mapping.exit.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_eint_mask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  %regs = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %mask_set = getelementptr inbounds %struct.mtk_eint_regs, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mask_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_set, align 4
  %hw.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 4
  %ap_num.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ap_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ap_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp.not.i = icmp ugt i32 %11, %3
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %11
  %base.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %7
  %sub.i = sub i32 %3, %spec.select.i
  %14 = lshr i32 %sub.i, 3
  %mul.i = and i32 %14, 536870908
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %neg = xor i32 %shl, -1
  %cur_mask = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %cur_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_mask, align 4
  %shr = lshr i32 %3, 5
  %arrayidx = getelementptr i32, ptr %16, i32 %shr
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %and4 = and i32 %18, %neg
  store i32 %and4, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #6, !srcloc !53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_eint_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  %regs = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %mask_clr = getelementptr inbounds %struct.mtk_eint_regs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %mask_clr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_clr, align 4
  %hw.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 4
  %ap_num.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ap_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ap_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp.not.i = icmp ugt i32 %11, %3
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %11
  %base.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %7
  %sub.i = sub i32 %3, %spec.select.i
  %14 = lshr i32 %sub.i, 3
  %mul.i = and i32 %14, 536870908
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %cur_mask = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %cur_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_mask, align 4
  %shr = lshr i32 %3, 5
  %arrayidx = getelementptr i32, ptr %16, i32 %shr
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %or = or i32 %18, %shl
  store i32 %or, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #6, !srcloc !53
  %dual_edge = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %dual_edge to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dual_edge, align 4
  %22 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwirq, align 4
  %arrayidx5 = getelementptr i32, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %and.i = and i32 %23, 31
  %shl.i = shl nuw i32 1, %and.i
  %26 = lshr i32 %23, 5
  %27 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv.i = zext i8 %30 to i32
  %and1.i = and i32 %26, %conv.i
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %shl2.i = shl nuw nsw i32 %and1.i, 2
  %add.ptr.i20 = getelementptr i8, ptr %32, i32 %shl2.i
  %gpio_xlate.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %gpio_xlate.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gpio_xlate.i, align 4
  %get_gpio_state.i = getelementptr inbounds %struct.mtk_eint_xt, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %get_gpio_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_gpio_state.i, align 4
  %pctl.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pctl.i, align 4
  %call.i = tail call i32 %36(ptr noundef %38, i32 noundef %23) #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %curr_level.0.i = phi i32 [ %call.i, %if.then ], [ %call9.i, %do.body.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curr_level.0.i)
  %tobool.not.i = icmp eq i32 %curr_level.0.i, 0
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %pol_clr.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %41, i32 0, i32 13
  %pol_set.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %41, i32 0, i32 12
  %reg_offset.0.in.i = select i1 %tobool.not.i, ptr %pol_set.i, ptr %pol_clr.i
  %42 = ptrtoint ptr %reg_offset.0.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %reg_offset.0.i = load i32, ptr %reg_offset.0.in.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i20, i32 %reg_offset.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %39) #6, !srcloc !53
  %43 = ptrtoint ptr %gpio_xlate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpio_xlate.i, align 4
  %get_gpio_state7.i = getelementptr inbounds %struct.mtk_eint_xt, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %get_gpio_state7.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_gpio_state7.i, align 4
  %47 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pctl.i, align 4
  %call9.i = tail call i32 %46(ptr noundef %48, i32 noundef %23) #6
  %cmp.not.i21 = icmp eq i32 %curr_level.0.i, %call9.i
  br i1 %cmp.not.i21, label %do.body.i.if.end_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_find_irq(ptr nocapture noundef readonly %eint, i32 noundef %eint_n) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 2
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !54
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef %eint_n, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  br label %5

irq_find_mapping.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %irq_find_mapping.exit._crit_edge, label %irq_find_mapping.exit._crit_edge4

irq_find_mapping.exit._crit_edge4:                ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %6

irq_find_mapping.exit._crit_edge:                 ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %5

5:                                                ; preds = %irq_find_mapping.exit._crit_edge, %irq_find_mapping.exit.thread
  br label %6

6:                                                ; preds = %5, %irq_find_mapping.exit._crit_edge4
  %7 = phi i32 [ -22, %5 ], [ %4, %irq_find_mapping.exit._crit_edge4 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_do_init(ptr noundef %eint) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mtk_generic_eint_regs, ptr %regs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 7
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %ports = getelementptr inbounds %struct.mtk_eint_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ports, align 1
  %conv = zext i8 %6 to i32
  %7 = shl nuw nsw i32 %conv, 2
  %8 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eint, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %7, i32 noundef 3520) #6
  %wake_mask = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 5
  %10 = ptrtoint ptr %wake_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %wake_mask, align 4
  %tobool3.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit66

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kcalloc.exit66:                              ; preds = %if.end
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %ports8 = getelementptr inbounds %struct.mtk_eint_hw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ports8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ports8, align 1
  %conv9 = zext i8 %14 to i32
  %15 = shl nuw nsw i32 %conv9, 2
  %16 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eint, align 4
  %call5.i.i63 = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef %15, i32 noundef 3520) #6
  %cur_mask = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 6
  %18 = ptrtoint ptr %cur_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i63, ptr %cur_mask, align 4
  %tobool12.not = icmp eq ptr %call5.i.i63, null
  br i1 %tobool12.not, label %devm_kcalloc.exit66.cleanup_crit_edge, label %if.end14

devm_kcalloc.exit66.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %devm_kcalloc.exit66
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %ap_num = getelementptr inbounds %struct.mtk_eint_hw, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ap_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ap_num, align 4
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #6
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %devm_kcalloc.exit70.thread, label %devm_kcalloc.exit70, !prof !63

devm_kcalloc.exit70.thread:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dual_edge78 = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 4
  %25 = ptrtoint ptr %dual_edge78 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dual_edge78, align 4
  br label %cleanup

devm_kcalloc.exit70:                              ; preds = %if.end14
  %26 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eint, align 4
  %28 = extractvalue { i32, i1 } %23, 0
  %call5.i.i67 = tail call noalias ptr @devm_kmalloc(ptr noundef %27, i32 noundef %28, i32 noundef 3520) #6
  %dual_edge = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 4
  %29 = ptrtoint ptr %dual_edge to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i.i67, ptr %dual_edge, align 4
  %tobool19.not = icmp eq ptr %call5.i.i67, null
  br i1 %tobool19.not, label %devm_kcalloc.exit70.cleanup_crit_edge, label %if.end21

devm_kcalloc.exit70.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %devm_kcalloc.exit70
  %30 = ptrtoint ptr %eint to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %eint, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %ap_num24 = getelementptr inbounds %struct.mtk_eint_hw, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ap_num24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ap_num24, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %33, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %37, i32 noundef %37, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #6
  %domain = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 2
  %38 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call1.i, ptr %domain, align 4
  %tobool27.not = icmp eq ptr %call1.i, null
  br i1 %tobool27.not, label %if.end21.cleanup_crit_edge, label %if.end29

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %ap_num1.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ap_num1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ap_num1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp2.not.i = icmp eq i32 %42, 0
  br i1 %cmp2.not.i, label %if.end29.mtk_eint_hw_init.exit_crit_edge, label %do.body.preheader.i

if.end29.mtk_eint_hw_init.exit_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_eint_hw_init.exit

do.body.preheader.i:                              ; preds = %if.end29
  %base.i = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 1
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %dom_en.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %dom_en.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dom_en.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 %48
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %i.04.i = phi i32 [ %add.i, %do.body.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %reg.03.i = phi ptr [ %add.ptr1.i, %do.body.i.do.body.i_crit_edge ], [ %add.ptr.i, %do.body.preheader.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.03.i, i32 -1) #6, !srcloc !53
  %add.ptr1.i = getelementptr i8, ptr %reg.03.i, i32 4
  %add.i = add i32 %i.04.i, 32
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %ap_num.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %ap_num.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ap_num.i, align 4
  %cmp.i = icmp ult i32 %add.i, %52
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.mtk_eint_hw_init.exit_crit_edge

do.body.i.mtk_eint_hw_init.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_eint_hw_init.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

mtk_eint_hw_init.exit:                            ; preds = %do.body.i.mtk_eint_hw_init.exit_crit_edge, %if.end29.mtk_eint_hw_init.exit_crit_edge
  %53 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw, align 4
  %ap_num3280 = getelementptr inbounds %struct.mtk_eint_hw, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %ap_num3280 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ap_num3280, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp81.not = icmp eq i32 %56, 0
  br i1 %cmp81.not, label %mtk_eint_hw_init.exit.for.end_crit_edge, label %mtk_eint_hw_init.exit.for.body_crit_edge

mtk_eint_hw_init.exit.for.body_crit_edge:         ; preds = %mtk_eint_hw_init.exit
  br label %for.body

mtk_eint_hw_init.exit.for.end_crit_edge:          ; preds = %mtk_eint_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mtk_eint_hw_init.exit.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mtk_eint_hw_init.exit.for.body_crit_edge ]
  %57 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %58, i32 noundef %i.082, ptr noundef null) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %call.i, ptr noundef nonnull @mtk_eint_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call36 = tail call i32 @irq_set_chip_data(i32 noundef %call.i, ptr noundef %eint) #6
  %inc = add nuw i32 %i.082, 1
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %ap_num32 = getelementptr inbounds %struct.mtk_eint_hw, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %ap_num32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ap_num32, align 4
  %cmp = icmp ult i32 %inc, %62
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mtk_eint_hw_init.exit.for.end_crit_edge
  %irq = getelementptr inbounds %struct.mtk_eint, ptr %eint, i32 0, i32 3
  %63 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %64, ptr noundef nonnull @mtk_eint_irq_handler, ptr noundef %eint) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end21.cleanup_crit_edge, %devm_kcalloc.exit70.cleanup_crit_edge, %devm_kcalloc.exit70.thread, %devm_kcalloc.exit66.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit66.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit70.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit70.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_eint_irq_handler(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %regs = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %hw.i = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 7
  %base.i = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %13(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %15(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %ap_num122 = getelementptr inbounds %struct.mtk_eint_hw, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ap_num122 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ap_num122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp123.not = icmp eq i32 %21, 0
  br i1 %cmp123.not, label %chained_irq_enter.exit.for.end_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %wake_mask = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 5
  %cur_mask = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 6
  %dual_edge18 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 4
  %gpio_xlate = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 10
  %pctl = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 9
  %domain = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %eint_num.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %add53, %for.inc.for.body_crit_edge ]
  %reg.0124 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr54, %for.inc.for.body_crit_edge ]
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0124) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not119 = icmp eq i32 %22, 0
  br i1 %tobool.not119, label %for.body.for.inc_crit_edge, label %while.body.lr.ph

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body.lr.ph:                                 ; preds = %for.body
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %shr = lshr exact i32 %eint_num.0126, 5
  br label %while.body

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %while.body.lr.ph
  %status.0121 = phi i32 [ %23, %while.body.lr.ph ], [ %and, %if.end52.while.body_crit_edge ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %status.0121, i1 true) #6, !range !66
  %add = or i32 %24, %eint_num.0126
  %shl = shl nuw i32 1, %24
  %neg = xor i32 %shl, -1
  %and = and i32 %status.0121, %neg
  %25 = ptrtoint ptr %wake_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wake_mask, align 4
  %arrayidx = getelementptr i32, ptr %26, i32 %shr
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %and7 = and i32 %28, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %29 = ptrtoint ptr %cur_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur_mask, align 4
  %arrayidx9 = getelementptr i32, ptr %30, i32 %shr
  %31 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx9, align 4
  %and11 = and i32 %32, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %idx.neg = sub i32 0, %37
  %add.ptr = getelementptr i8, ptr %reg.0124, i32 %idx.neg
  %mask_set = getelementptr inbounds %struct.mtk_eint_regs, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %mask_set to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask_set, align 4
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %33) #6, !srcloc !53
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %40 = ptrtoint ptr %dual_edge18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dual_edge18, align 4
  %arrayidx19 = getelementptr i32, ptr %41, i32 %add
  %42 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool20.not = icmp eq i32 %43, 0
  br i1 %tobool20.not, label %if.end30.thread, label %if.then33

if.end30.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %domain, align 4
  %call31117 = tail call i32 @generic_handle_domain_irq(ptr noundef %45, i32 noundef %add) #6
  br label %if.end48

if.then33:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %46 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %idx.neg25 = sub i32 0, %50
  %add.ptr26 = getelementptr i8, ptr %reg.0124, i32 %idx.neg25
  %soft_clr = getelementptr inbounds %struct.mtk_eint_regs, ptr %48, i32 0, i32 10
  %51 = ptrtoint ptr %soft_clr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %soft_clr, align 4
  %add.ptr28 = getelementptr i8, ptr %add.ptr26, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %46) #6, !srcloc !53
  %53 = ptrtoint ptr %gpio_xlate to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gpio_xlate, align 4
  %get_gpio_state = getelementptr inbounds %struct.mtk_eint_xt, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %get_gpio_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %get_gpio_state, align 4
  %57 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pctl, align 4
  %call29 = tail call i32 %56(ptr noundef %58, i32 noundef %add) #6
  %59 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %domain, align 4
  %call31 = tail call i32 @generic_handle_domain_irq(ptr noundef %60, i32 noundef %add) #6
  %61 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 4
  %conv.i = zext i8 %64 to i32
  %and1.i = and i32 %shr, %conv.i
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %shl2.i = shl nuw nsw i32 %and1.i, 2
  %add.ptr.i100 = getelementptr i8, ptr %66, i32 %shl2.i
  %67 = ptrtoint ptr %gpio_xlate to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %gpio_xlate, align 4
  %get_gpio_state.i = getelementptr inbounds %struct.mtk_eint_xt, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %get_gpio_state.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_gpio_state.i, align 4
  %71 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pctl, align 4
  %call.i = tail call i32 %70(ptr noundef %72, i32 noundef %add) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then33
  %curr_level.0.i = phi i32 [ %call.i, %if.then33 ], [ %call9.i, %do.body.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curr_level.0.i)
  %tobool.not.i101 = icmp eq i32 %curr_level.0.i, 0
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %pol_clr.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %74, i32 0, i32 13
  %pol_set.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %74, i32 0, i32 12
  %reg_offset.0.in.i = select i1 %tobool.not.i101, ptr %pol_set.i, ptr %pol_clr.i
  %75 = ptrtoint ptr %reg_offset.0.in.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %reg_offset.0.i = load i32, ptr %reg_offset.0.in.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i100, i32 %reg_offset.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %46) #6, !srcloc !53
  %76 = ptrtoint ptr %gpio_xlate to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gpio_xlate, align 4
  %get_gpio_state7.i = getelementptr inbounds %struct.mtk_eint_xt, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %get_gpio_state7.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_gpio_state7.i, align 4
  %80 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pctl, align 4
  %call9.i = tail call i32 %79(ptr noundef %81, i32 noundef %add) #6
  %cmp.not.i102 = icmp eq i32 %curr_level.0.i, %call9.i
  br i1 %cmp.not.i102, label %mtk_eint_flip_edge.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

mtk_eint_flip_edge.exit:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %curr_level.0.i)
  %cmp35.not = icmp eq i32 %call29, %curr_level.0.i
  br i1 %cmp35.not, label %mtk_eint_flip_edge.exit.if.end48_crit_edge, label %do.body37

mtk_eint_flip_edge.exit.if.end48_crit_edge:       ; preds = %mtk_eint_flip_edge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.body37:                                        ; preds = %mtk_eint_flip_edge.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %idx.neg43 = sub i32 0, %85
  %add.ptr44 = getelementptr i8, ptr %reg.0124, i32 %idx.neg43
  %soft_set = getelementptr inbounds %struct.mtk_eint_regs, ptr %83, i32 0, i32 9
  %86 = ptrtoint ptr %soft_set to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %soft_set, align 4
  %add.ptr46 = getelementptr i8, ptr %add.ptr44, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %46) #6, !srcloc !53
  br label %if.end48

if.end48:                                         ; preds = %do.body37, %mtk_eint_flip_edge.exit.if.end48_crit_edge, %if.end30.thread
  %88 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw.i, align 4
  %db_cnt = getelementptr inbounds %struct.mtk_eint_hw, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %db_cnt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %db_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %91)
  %cmp50 = icmp ult i32 %add, %91
  br i1 %cmp50, label %if.then51, label %if.end48.if.end52_crit_edge

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  %add.frozen = freeze i32 %add
  %div.i = sdiv i32 %add.frozen, 4
  %mul.i103 = shl nsw i32 %div.i, 2
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %dbnc_ctrl.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %dbnc_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dbnc_ctrl.i, align 4
  %add.i = add i32 %95, %mul.i103
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %97, i32 %add.i
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #6, !srcloc !55
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %100 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %add.frozen, %100
  %mul2.i = shl nsw i32 %rem.i.decomposed, 3
  %shl.i107 = shl nuw i32 1, %mul2.i
  %and.i108 = and i32 %99, %shl.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %cmp.not.i109 = icmp eq i32 %and.i108, 0
  br i1 %cmp.not.i109, label %if.then51.if.end52_crit_edge, label %if.then.i

if.then51.if.end52_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then.i:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 4
  %dbnc_set.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %102, i32 0, i32 16
  %103 = ptrtoint ptr %dbnc_set.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dbnc_set.i, align 4
  %add6.i = add i32 %104, %mul.i103
  %shl9.i = shl i32 2, %mul2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %105 = tail call i32 @llvm.bswap.i32(i32 %shl9.i) #6
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %107, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %105) #6, !srcloc !53
  br label %if.end52

if.end52:                                         ; preds = %if.then.i, %if.then51.if.end52_crit_edge, %if.end48.if.end52_crit_edge
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end52.for.inc_crit_edge, label %if.end52.while.body_crit_edge

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end52.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add53 = add i32 %eint_num.0126, 32
  %add.ptr54 = getelementptr i8, ptr %reg.0124, i32 4
  %108 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw.i, align 4
  %ap_num = getelementptr inbounds %struct.mtk_eint_hw, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %ap_num to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ap_num, align 4
  %cmp = icmp ult i32 %add53, %111
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %112 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i112 = icmp eq ptr %113, null
  br i1 %tobool.not.i112, label %if.else.i113, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i113:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %114 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i113, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %115, %if.else.i113 ], [ %113, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_eint_ack(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  %regs = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %ack = getelementptr inbounds %struct.mtk_eint_regs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ack, align 4
  %hw.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 4
  %ap_num.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ap_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ap_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp.not.i = icmp ugt i32 %11, %3
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %11
  %base.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %7
  %sub.i = sub i32 %3, %spec.select.i
  %14 = lshr i32 %sub.i, 3
  %mul.i = and i32 %14, 536870908
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #6, !srcloc !53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_eint_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  %and1 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %and2 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = or i1 %tobool.not, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and2)
  %cmp = icmp ne i32 %and2, 12
  %4 = and i1 %cmp, %or.cond
  br i1 %4, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %8, i32 noundef %3, i32 noundef %type) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1)
  %cmp7 = icmp eq i32 %and1, 3
  %dual_edge = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %dual_edge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dual_edge, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %3
  %. = zext i1 %cmp7 to i32
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %., ptr %arrayidx, align 4
  %12 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq, align 4
  %rem.i = and i32 %13, 31
  %regs.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %mask.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask.i, align 4
  %hw.i.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i.i, align 4
  %ap_num.i.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ap_num.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ap_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %13)
  %cmp.not.i.i = icmp ugt i32 %21, %13
  %spec.select.i.i = select i1 %cmp.not.i.i, i32 0, i32 %21
  %base.i.i = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %17
  %sub.i.i = sub i32 %13, %spec.select.i.i
  %24 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %24, 536870908
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #6, !srcloc !55
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %27 = shl nuw i32 1, %rem.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not = icmp eq i32 %28, 0
  br i1 %tobool16.not, label %if.then17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip_data.i, align 4
  %31 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwirq, align 4
  %and.i = and i32 %32, 31
  %shl.i = shl nuw i32 1, %and.i
  %regs.i96 = getelementptr inbounds %struct.mtk_eint, ptr %30, i32 0, i32 8
  %33 = ptrtoint ptr %regs.i96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i96, align 4
  %mask_set.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %mask_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask_set.i, align 4
  %hw.i.i97 = getelementptr inbounds %struct.mtk_eint, ptr %30, i32 0, i32 7
  %37 = ptrtoint ptr %hw.i.i97 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw.i.i97, align 4
  %ap_num.i.i98 = getelementptr inbounds %struct.mtk_eint_hw, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ap_num.i.i98 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ap_num.i.i98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %32)
  %cmp.not.i.i99 = icmp ugt i32 %40, %32
  %spec.select.i.i100 = select i1 %cmp.not.i.i99, i32 0, i32 %40
  %base.i.i101 = getelementptr inbounds %struct.mtk_eint, ptr %30, i32 0, i32 1
  %41 = ptrtoint ptr %base.i.i101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i101, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %42, i32 %36
  %sub.i.i103 = sub i32 %32, %spec.select.i.i100
  %43 = lshr i32 %sub.i.i103, 3
  %mul.i.i104 = and i32 %43, 536870908
  %add.ptr3.i.i105 = getelementptr i8, ptr %add.ptr.i.i102, i32 %mul.i.i104
  %neg.i = xor i32 %shl.i, -1
  %cur_mask.i = getelementptr inbounds %struct.mtk_eint, ptr %30, i32 0, i32 6
  %44 = ptrtoint ptr %cur_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_mask.i, align 4
  %shr.i = lshr i32 %32, 5
  %arrayidx.i = getelementptr i32, ptr %45, i32 %shr.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %and4.i = and i32 %47, %neg.i
  store i32 %and4.i, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i105, i32 %48) #6, !srcloc !53
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %and20 = and i32 %type, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %49 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hwirq, align 4
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  br i1 %tobool21.not, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %pol_clr = getelementptr inbounds %struct.mtk_eint_regs, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %pol_clr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pol_clr, align 4
  %55 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw.i.i, align 4
  %ap_num.i = getelementptr inbounds %struct.mtk_eint_hw, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %ap_num.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ap_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %50)
  %cmp.not.i = icmp ugt i32 %58, %50
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %58
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %60, i32 %54
  %sub.i = sub i32 %50, %spec.select.i
  %61 = lshr i32 %sub.i, 3
  %mul.i = and i32 %61, 536870908
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %62 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %62) #6, !srcloc !53
  br label %if.end35

if.else28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %pol_set = getelementptr inbounds %struct.mtk_eint_regs, ptr %52, i32 0, i32 12
  %63 = ptrtoint ptr %pol_set to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pol_set, align 4
  %65 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw.i.i, align 4
  %ap_num.i107 = getelementptr inbounds %struct.mtk_eint_hw, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ap_num.i107 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ap_num.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %50)
  %cmp.not.i108 = icmp ugt i32 %68, %50
  %spec.select.i109 = select i1 %cmp.not.i108, i32 0, i32 %68
  %69 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %70, i32 %64
  %sub.i112 = sub i32 %50, %spec.select.i109
  %71 = lshr i32 %sub.i112, 3
  %mul.i113 = and i32 %71, 536870908
  %add.ptr3.i114 = getelementptr i8, ptr %add.ptr.i111, i32 %mul.i113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %72 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i114, i32 %72) #6, !srcloc !53
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %if.then22
  %73 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hwirq, align 4
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  br i1 %tobool.not, label %if.else45, label %if.then38

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %sens_clr = getelementptr inbounds %struct.mtk_eint_regs, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %sens_clr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sens_clr, align 4
  %79 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw.i.i, align 4
  %ap_num.i116 = getelementptr inbounds %struct.mtk_eint_hw, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %ap_num.i116 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ap_num.i116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %74)
  %cmp.not.i117 = icmp ugt i32 %82, %74
  %spec.select.i118 = select i1 %cmp.not.i117, i32 0, i32 %82
  %83 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %84, i32 %78
  %sub.i121 = sub i32 %74, %spec.select.i118
  %85 = lshr i32 %sub.i121, 3
  %mul.i122 = and i32 %85, 536870908
  %add.ptr3.i123 = getelementptr i8, ptr %add.ptr.i120, i32 %mul.i122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %86 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i123, i32 %86) #6, !srcloc !53
  br label %if.end52

if.else45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %sens_set = getelementptr inbounds %struct.mtk_eint_regs, ptr %76, i32 0, i32 6
  %87 = ptrtoint ptr %sens_set to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sens_set, align 4
  %89 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw.i.i, align 4
  %ap_num.i125 = getelementptr inbounds %struct.mtk_eint_hw, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %ap_num.i125 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ap_num.i125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %74)
  %cmp.not.i126 = icmp ugt i32 %92, %74
  %spec.select.i127 = select i1 %cmp.not.i126, i32 0, i32 %92
  %93 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %94, i32 %88
  %sub.i130 = sub i32 %74, %spec.select.i127
  %95 = lshr i32 %sub.i130, 3
  %mul.i131 = and i32 %95, 536870908
  %add.ptr3.i132 = getelementptr i8, ptr %add.ptr.i129, i32 %mul.i131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %96 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i132, i32 %96) #6, !srcloc !53
  br label %if.end52

if.end52:                                         ; preds = %if.else45, %if.then38
  %97 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chip_data.i, align 4
  %99 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hwirq, align 4
  %and.i135 = and i32 %100, 31
  %shl.i136 = shl nuw i32 1, %and.i135
  %regs.i137 = getelementptr inbounds %struct.mtk_eint, ptr %98, i32 0, i32 8
  %101 = ptrtoint ptr %regs.i137 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i137, align 4
  %ack.i = getelementptr inbounds %struct.mtk_eint_regs, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ack.i, align 4
  %hw.i.i138 = getelementptr inbounds %struct.mtk_eint, ptr %98, i32 0, i32 7
  %105 = ptrtoint ptr %hw.i.i138 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw.i.i138, align 4
  %ap_num.i.i139 = getelementptr inbounds %struct.mtk_eint_hw, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %ap_num.i.i139 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ap_num.i.i139, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %100)
  %cmp.not.i.i140 = icmp ugt i32 %108, %100
  %spec.select.i.i141 = select i1 %cmp.not.i.i140, i32 0, i32 %108
  %base.i.i142 = getelementptr inbounds %struct.mtk_eint, ptr %98, i32 0, i32 1
  %109 = ptrtoint ptr %base.i.i142 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i.i142, align 4
  %add.ptr.i.i143 = getelementptr i8, ptr %110, i32 %104
  %sub.i.i144 = sub i32 %100, %spec.select.i.i141
  %111 = lshr i32 %sub.i.i144, 3
  %mul.i.i145 = and i32 %111, 536870908
  %add.ptr3.i.i146 = getelementptr i8, ptr %add.ptr.i.i143, i32 %mul.i.i145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %112 = tail call i32 @llvm.bswap.i32(i32 %shl.i136) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i146, i32 %112) #6, !srcloc !53
  br i1 %tobool16.not, label %if.then54, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mtk_eint_unmask(ptr noundef %d)
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end52.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then54 ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_eint_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 31
  %shr = lshr i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %shl2 = shl nuw i32 1, %and
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wake_mask = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %wake_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wake_mask, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %shr
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %or = or i32 %7, %shl2
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl2, -1
  %wake_mask3 = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %wake_mask3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wake_mask3, align 4
  %arrayidx4 = getelementptr i32, ptr %9, i32 %shr
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %and5 = and i32 %11, %neg
  store i32 %and5, ptr %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_eint_irq_request_resources(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  %gpio_c = alloca ptr, align 4
  %gpio_n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_c) #6
  %2 = ptrtoint ptr %gpio_c to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %gpio_c, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_n) #6
  %3 = ptrtoint ptr %gpio_n to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %gpio_n, align 4, !annotation !54
  %gpio_xlate = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %gpio_xlate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_xlate, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %pctl = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pctl, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %call1 = call i32 %7(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %gpio_n, ptr noundef nonnull %gpio_c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %gpio_c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_c, align 4
  %16 = ptrtoint ptr %gpio_n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_n, align 4
  %call2 = call i32 @gpiochip_lock_as_irq(ptr noundef %15, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwirq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.9, i32 noundef %21) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %22 = ptrtoint ptr %gpio_xlate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpio_xlate, align 4
  %set_gpio_as_eint = getelementptr inbounds %struct.mtk_eint_xt, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %set_gpio_as_eint to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_gpio_as_eint, align 4
  %26 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pctl, align 4
  %28 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hwirq, align 4
  %call14 = call i32 %25(ptr noundef %27, i32 noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.12) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end10.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call2, %do.end7 ], [ %call14, %do.end19 ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_c) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_eint_irq_release_resources(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  %gpio_c = alloca ptr, align 4
  %gpio_n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_c) #6
  %2 = ptrtoint ptr %gpio_c to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %gpio_c, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_n) #6
  %3 = ptrtoint ptr %gpio_n to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %gpio_n, align 4, !annotation !54
  %gpio_xlate = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %gpio_xlate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_xlate, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %pctl = getelementptr inbounds %struct.mtk_eint, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pctl, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %call1 = call i32 %7(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %gpio_n, ptr noundef nonnull %gpio_c) #6
  %12 = ptrtoint ptr %gpio_c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_c, align 4
  %14 = ptrtoint ptr %gpio_n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_n, align 4
  call void @gpiochip_unlock_as_irq(ptr noundef %13, i32 noundef %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_c) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__ksymtab_mtk_eint_do_suspend, !1, !"__ksymtab_mtk_eint_do_suspend", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 391, i32 1}
!2 = !{ptr @__ksymtab_mtk_eint_do_resume, !3, !"__ksymtab_mtk_eint_do_resume", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 399, i32 1}
!4 = distinct !{null, !5, !"debounce_time", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 407, i32 28}
!6 = !{ptr @__ksymtab_mtk_eint_set_debounce, !7, !"__ksymtab_mtk_eint_set_debounce", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 454, i32 1}
!8 = !{ptr @__ksymtab_mtk_eint_find_irq, !9, !"__ksymtab_mtk_eint_find_irq", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 466, i32 1}
!10 = !{ptr @__ksymtab_mtk_eint_do_init, !11, !"__ksymtab_mtk_eint_do_init", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 511, i32 1}
!12 = !{ptr @__UNIQUE_ID_file223, !13, !"__UNIQUE_ID_file223", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 513, i32 1}
!14 = !{ptr @__UNIQUE_ID_license224, !13, !"__UNIQUE_ID_license224", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description225, !16, !"__UNIQUE_ID_description225", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 514, i32 1}
!17 = !{ptr @mtk_generic_eint_regs, !18, !"mtk_generic_eint_regs", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 30, i32 35}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 277, i32 10}
!21 = !{ptr @mtk_eint_irq_chip, !22, !"mtk_eint_irq_chip", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 276, i32 24}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 166, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mtk_eint_set_type._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @mtk_eint_set_type._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 244, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mtk_eint_irq_request_resources._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtk_eint_irq_request_resources._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 250, i32 3}
!38 = !{ptr @mtk_eint_irq_request_resources._entry.8, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtk_eint_irq_request_resources._entry_ptr.10, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/mediatek/mtk-eint.c", i32 257, i32 3}
!42 = !{ptr @mtk_eint_irq_request_resources._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtk_eint_irq_request_resources._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 4857640}
!54 = !{!"auto-init"}
!55 = !{i64 4858058}
!56 = !{i64 2153806276}
!57 = !{i64 2153808184}
!58 = !{i64 2153807049}
!59 = !{i64 2153825427}
!60 = !{i64 2153825870}
!61 = !{i64 2153807503}
!62 = !{i64 2153806582}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2153817653}
!65 = !{i64 2153819373}
!66 = !{i32 0, i32 33}
!67 = !{i64 2153820355}
!68 = !{i64 2153821031}
!69 = !{i64 2153818518}
!70 = !{i64 2153818761}
!71 = !{i64 2153808474}
!72 = !{i64 2153810785}
!73 = !{i64 2153811150}
!74 = !{i64 2153811515}
!75 = !{i64 2153811880}
