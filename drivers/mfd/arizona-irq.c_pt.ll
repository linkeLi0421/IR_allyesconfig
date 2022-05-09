; ModuleID = '/llk/IR_all_yes/drivers/mfd/arizona-irq.c_pt.bc'
source_filename = "../drivers/mfd/arizona-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+arizona_request_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_request_irq\09\09\09\09"
module asm "\09.long\09__crc_arizona_request_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_request_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_request_irq\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_request_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arizona_free_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_free_irq\09\09\09\09"
module asm "\09.long\09__crc_arizona_free_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arizona_set_irq_wake\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_set_irq_wake\09\09\09\09"
module asm "\09.long\09__crc_arizona_set_irq_wake\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_set_irq_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_set_irq_wake\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_set_irq_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_irq_chip = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i16, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.arizona = type { ptr, ptr, i32, i32, i32, [2 x %struct.regulator_bulk_data], ptr, i8, %struct.arizona_pdata, i8, i32, ptr, ptr, ptr, i8, i32, %struct.mutex, i32, [2 x ptr], i8, ptr, [3 x i32], [3 x i32], i16, i8, %struct.mutex, %struct.blocking_notifier_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.arizona_pdata = type { ptr, %struct.arizona_micsupp_pdata, %struct.arizona_ldo1_pdata, i32, i32, i32, [5 x i32], [3 x i32], i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, ptr, i32, ptr, i32, [4 x i32], [3 x %struct.arizona_micbias], [4 x i32], [6 x i32], [12 x i32], [2 x i32], [2 x i32], i32, i32, i32 }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micbias = type { i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__kstrtab_arizona_request_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_request_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_request_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_request_irq to i32), ptr @__kstrtab_arizona_request_irq, ptr @__kstrtabns_arizona_request_irq }, section "___ksymtab_gpl+arizona_request_irq", align 4
@__kstrtab_arizona_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_free_irq to i32), ptr @__kstrtab_arizona_free_irq, ptr @__kstrtabns_arizona_free_irq }, section "___ksymtab_gpl+arizona_free_irq", align 4
@__kstrtab_arizona_set_irq_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_set_irq_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_set_irq_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_set_irq_wake to i32), ptr @__kstrtab_arizona_set_irq_wake, ptr @__kstrtabns_arizona_set_irq_wake }, section "___ksymtab_gpl+arizona_set_irq_wake", align 4
@wm5102_aod = external dso_local constant %struct.regmap_irq_chip, align 4
@wm5102_irq = external dso_local constant %struct.regmap_irq_chip, align 4
@wm5110_aod = external dso_local constant %struct.regmap_irq_chip, align 4
@wm5110_irq = external dso_local constant %struct.regmap_irq_chip, align 4
@wm5110_revd_irq = external dso_local constant %struct.regmap_irq_chip, align 4
@cs47l24_irq = external dso_local constant %struct.regmap_irq_chip, align 4
@wm8997_aod = external dso_local constant %struct.regmap_irq_chip, align 4
@wm8997_irq = external dso_local constant %struct.regmap_irq_chip, align 4
@wm8998_aod = external dso_local global %struct.regmap_irq_chip, align 4
@wm8998_irq = external dso_local global %struct.regmap_irq_chip, align 4
@arizona_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid IRQ: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arizona_irq_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/arizona-irq.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr = internal global ptr @arizona_irq_init._entry, section ".printk_index", align 4
@arizona_irq_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't set IRQ polarity: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.7 = internal global ptr @arizona_irq_init._entry.5, section ".printk_index", align 4
@arizona_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @arizona_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to add core IRQ domain\0A\00", [33 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.10 = internal global ptr @arizona_irq_init._entry.8, section ".printk_index", align 4
@arizona_irq_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 326, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to map AOD IRQs\0A\00", [40 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.13 = internal global ptr @arizona_irq_init._entry.11, section ".printk_index", align 4
@arizona_irq_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add AOD IRQs: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.16 = internal global ptr @arizona_irq_init._entry.14, section ".printk_index", align 4
@arizona_irq_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 342, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map main IRQs\0A\00", [39 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.19 = internal global ptr @arizona_irq_init._entry.17, section ".printk_index", align 4
@arizona_irq_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add main IRQs: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.22 = internal global ptr @arizona_irq_init._entry.20, section ".printk_index", align 4
@arizona_irq_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 359, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IRQ %d is not GPIO %d (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.26 = internal global ptr @arizona_irq_init._entry.23, section ".printk_index", align 4
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arizona IRQ\00", [20 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 369, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request IRQ GPIO %d:: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.30 = internal global ptr @arizona_irq_init._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arizona\00", [24 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request primary IRQ %d: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.34 = internal global ptr @arizona_irq_init._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Boot done\00", [22 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 388, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request boot done %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.38 = internal global ptr @arizona_irq_init._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Control interface error\00", [40 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request CTRLIF_ERR %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arizona_irq_init._entry_ptr.42 = internal global ptr @arizona_irq_init._entry.40, section ".printk_index", align 4
@arizona_irq_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@arizona_irq_request_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@arizona_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.31, ptr null, ptr null, ptr @arizona_irq_enable, ptr @arizona_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arizona_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@arizona_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to resume device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arizona_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@arizona_irq_thread._entry_ptr = internal global ptr @arizona_irq_thread._entry, section ".printk_index", align 4
@arizona_irq_thread._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 121, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read AOD IRQ1 %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arizona_irq_thread._entry_ptr.47 = internal global ptr @arizona_irq_thread._entry.45, section ".printk_index", align 4
@arizona_irq_thread._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read main IRQ status: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_irq_thread._entry_ptr.50 = internal global ptr @arizona_irq_thread._entry.48, section ".printk_index", align 4
@arizona_boot_done.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arizona_boot_done\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Boot done\0A\00", [21 x i8] zeroinitializer }, align 32
@arizona_ctrlif_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Control interface error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arizona_ctrlif_err\00", [45 x i8] zeroinitializer }, align 32
@arizona_ctrlif_err._entry_ptr = internal global ptr @arizona_ctrlif_err._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 280, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 306, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"arizona_domain_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 201, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 318, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 326, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 334, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 342, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 350, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 357, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 365, i32 20 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 367, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 375, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 378, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 384, i32 60 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 387, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 395, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 398, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [23 x i8] c"arizona_irq_lock_class\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 183, i32 30 }
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"arizona_irq_request_class\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 184, i32 30 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"arizona_irq_chip\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 176, i32 24 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 105, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 120, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 136, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 78, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [29 x i8] c"../drivers/mfd/arizona-irq.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 91, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__ksymtab_arizona_free_irq, ptr @__ksymtab_arizona_request_irq, ptr @__ksymtab_arizona_set_irq_wake, ptr @arizona_ctrlif_err._entry, ptr @arizona_ctrlif_err._entry_ptr, ptr @arizona_irq_init._entry, ptr @arizona_irq_init._entry.11, ptr @arizona_irq_init._entry.14, ptr @arizona_irq_init._entry.17, ptr @arizona_irq_init._entry.20, ptr @arizona_irq_init._entry.23, ptr @arizona_irq_init._entry.28, ptr @arizona_irq_init._entry.32, ptr @arizona_irq_init._entry.36, ptr @arizona_irq_init._entry.40, ptr @arizona_irq_init._entry.5, ptr @arizona_irq_init._entry.8, ptr @arizona_irq_init._entry_ptr, ptr @arizona_irq_init._entry_ptr.10, ptr @arizona_irq_init._entry_ptr.13, ptr @arizona_irq_init._entry_ptr.16, ptr @arizona_irq_init._entry_ptr.19, ptr @arizona_irq_init._entry_ptr.22, ptr @arizona_irq_init._entry_ptr.26, ptr @arizona_irq_init._entry_ptr.30, ptr @arizona_irq_init._entry_ptr.34, ptr @arizona_irq_init._entry_ptr.38, ptr @arizona_irq_init._entry_ptr.42, ptr @arizona_irq_init._entry_ptr.7, ptr @arizona_irq_thread._entry, ptr @arizona_irq_thread._entry.45, ptr @arizona_irq_thread._entry.48, ptr @arizona_irq_thread._entry_ptr, ptr @arizona_irq_thread._entry_ptr.47, ptr @arizona_irq_thread._entry_ptr.50, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @arizona_domain_ops, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @arizona_irq_lock_class, ptr @arizona_irq_request_class, ptr @arizona_irq_chip, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_request_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_thread._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_irq_thread._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ctrlif_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_request_irq(ptr nocapture noundef readonly %arizona, i32 noundef %irq, ptr noundef %name, ptr noundef %handler, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aod_irq_chip.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 12
  %0 = ptrtoint ptr %aod_irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aod_irq_chip.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.arizona_map_irq.exit_crit_edge, label %if.then.i

entry.arizona_map_irq.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %1, i32 noundef %irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i.if.end_crit_edge, label %if.then.i.arizona_map_irq.exit_crit_edge

if.then.i.arizona_map_irq.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

arizona_map_irq.exit:                             ; preds = %if.then.i.arizona_map_irq.exit_crit_edge, %entry.arizona_map_irq.exit_crit_edge
  %irq_chip.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 13
  %2 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_chip.i, align 4
  %call4.i = tail call i32 @regmap_irq_get_virq(ptr noundef %3, i32 noundef %irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %arizona_map_irq.exit.return_crit_edge, label %arizona_map_irq.exit.if.end_crit_edge

arizona_map_irq.exit.if.end_crit_edge:            ; preds = %arizona_map_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

arizona_map_irq.exit.return_crit_edge:            ; preds = %arizona_map_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %arizona_map_irq.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %retval.0.i7 = phi i32 [ %call4.i, %arizona_map_irq.exit.if.end_crit_edge ], [ %call.i, %if.then.i.if.end_crit_edge ]
  %call1 = tail call i32 @request_threaded_irq(i32 noundef %retval.0.i7, ptr noundef null, ptr noundef %handler, i32 noundef 8192, ptr noundef %name, ptr noundef %data) #6
  br label %return

return:                                           ; preds = %if.end, %arizona_map_irq.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call4.i, %arizona_map_irq.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arizona_free_irq(ptr nocapture noundef readonly %arizona, i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aod_irq_chip.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 12
  %0 = ptrtoint ptr %aod_irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aod_irq_chip.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.arizona_map_irq.exit_crit_edge, label %if.then.i

entry.arizona_map_irq.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %1, i32 noundef %irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i.if.end_crit_edge, label %if.then.i.arizona_map_irq.exit_crit_edge

if.then.i.arizona_map_irq.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

arizona_map_irq.exit:                             ; preds = %if.then.i.arizona_map_irq.exit_crit_edge, %entry.arizona_map_irq.exit_crit_edge
  %irq_chip.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 13
  %2 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_chip.i, align 4
  %call4.i = tail call i32 @regmap_irq_get_virq(ptr noundef %3, i32 noundef %irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %arizona_map_irq.exit.return_crit_edge, label %arizona_map_irq.exit.if.end_crit_edge

arizona_map_irq.exit.if.end_crit_edge:            ; preds = %arizona_map_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

arizona_map_irq.exit.return_crit_edge:            ; preds = %arizona_map_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %arizona_map_irq.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %retval.0.i6 = phi i32 [ %call4.i, %arizona_map_irq.exit.if.end_crit_edge ], [ %call.i, %if.then.i.if.end_crit_edge ]
  %call1 = tail call ptr @free_irq(i32 noundef %retval.0.i6, ptr noundef %data) #6
  br label %return

return:                                           ; preds = %if.end, %arizona_map_irq.exit.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_set_irq_wake(ptr nocapture noundef readonly %arizona, i32 noundef %irq, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aod_irq_chip.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 12
  %0 = ptrtoint ptr %aod_irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aod_irq_chip.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.arizona_map_irq.exit_crit_edge, label %if.then.i

entry.arizona_map_irq.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %1, i32 noundef %irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i.if.end_crit_edge, label %if.then.i.arizona_map_irq.exit_crit_edge

if.then.i.arizona_map_irq.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

arizona_map_irq.exit:                             ; preds = %if.then.i.arizona_map_irq.exit_crit_edge, %entry.arizona_map_irq.exit_crit_edge
  %irq_chip.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 13
  %2 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_chip.i, align 4
  %call4.i = tail call i32 @regmap_irq_get_virq(ptr noundef %3, i32 noundef %irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %arizona_map_irq.exit.return_crit_edge, label %arizona_map_irq.exit.if.end_crit_edge

arizona_map_irq.exit.if.end_crit_edge:            ; preds = %arizona_map_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

arizona_map_irq.exit.return_crit_edge:            ; preds = %arizona_map_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %arizona_map_irq.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %retval.0.i7 = phi i32 [ %call4.i, %arizona_map_irq.exit.if.end_crit_edge ], [ %call.i, %if.then.i.if.end_crit_edge ]
  %call1 = tail call i32 @irq_set_irq_wake(i32 noundef %retval.0.i7, i32 noundef %on) #6
  br label %return

return:                                           ; preds = %if.end, %arizona_map_irq.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call4.i, %arizona_map_irq.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_irq_init(ptr noundef %arizona) local_unnamed_addr #0 align 64 {
entry:
  %irq.i327 = alloca i32, align 4
  %irq.i321 = alloca i32, align 4
  %irq.i315 = alloca i32, align 4
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlif_error = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 19
  %0 = ptrtoint ptr %ctrlif_error to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ctrlif_error, align 4
  %type = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 2
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog12_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge339
    i32 7, label %entry.sw.bb5_crit_edge
    i32 8, label %entry.sw.bb5_crit_edge340
    i32 3, label %sw.bb7
    i32 5, label %entry.sw.bb9_crit_edge
    i32 6, label %entry.sw.bb9_crit_edge341
  ]

entry.sw.bb9_crit_edge341:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb5_crit_edge340:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb2_crit_edge339:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog12_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge339
  %rev = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 3
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %switch = icmp ult i32 %5, 3
  %wm5110_irq.wm5110_revd_irq = select i1 %switch, ptr @wm5110_irq, ptr @wm5110_revd_irq
  br label %sw.epilog12

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge340
  br label %sw.epilog12

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog12

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge341
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb2, %entry.sw.epilog12_crit_edge
  %tobool58.not = phi i1 [ false, %sw.bb9 ], [ false, %sw.bb7 ], [ true, %sw.bb5 ], [ false, %sw.bb2 ], [ false, %entry.sw.epilog12_crit_edge ]
  %aod.0 = phi ptr [ @wm8998_aod, %sw.bb9 ], [ @wm8997_aod, %sw.bb7 ], [ null, %sw.bb5 ], [ @wm5110_aod, %sw.bb2 ], [ @wm5102_aod, %entry.sw.epilog12_crit_edge ]
  %irq.1 = phi ptr [ @wm8998_irq, %sw.bb9 ], [ @wm8997_irq, %sw.bb7 ], [ @cs47l24_irq, %sw.bb5 ], [ %wm5110_irq.wm5110_revd_irq, %sw.bb2 ], [ @wm5102_irq, %entry.sw.epilog12_crit_edge ]
  %6 = ptrtoint ptr %ctrlif_error to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ctrlif_error, align 4
  %7 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arizona, align 4
  %call = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 64, i32 noundef 0) #6
  %irq_flags = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 8, i32 4
  %9 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog12.if.end32_crit_edge

sw.epilog12.if.end32_crit_edge:                   ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then:                                          ; preds = %sw.epilog12
  %irq13 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 10
  %11 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq13, align 4
  %call14 = tail call ptr @irq_get_irq_data(i32 noundef %12) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end

do.end19:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %16) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call14, i32 0, i32 3
  %17 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %common.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and.i = and i32 %20, 15
  %21 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %irq_flags, align 4
  %22 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and.i, label %sw.default28 [
    i32 8, label %if.end.if.end32_crit_edge
    i32 4, label %if.end.if.end32_crit_edge342
    i32 1, label %if.end.if.end32_crit_edge343
    i32 2, label %if.end.if.end32_crit_edge344
  ]

if.end.if.end32_crit_edge344:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end.if.end32_crit_edge343:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end.if.end32_crit_edge342:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.default28:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %irq_flags, align 4
  br label %if.end32

if.end32:                                         ; preds = %sw.default28, %if.end.if.end32_crit_edge, %if.end.if.end32_crit_edge342, %if.end.if.end32_crit_edge343, %if.end.if.end32_crit_edge344, %sw.epilog12.if.end32_crit_edge
  %24 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_flags, align 4
  %and = and i32 %25, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end32.if.end45_crit_edge, label %if.then36

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then36:                                        ; preds = %if.end32
  %26 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arizona, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 3087, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.then36.if.end45_crit_edge, label %do.end42

if.then36.if.end45_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %dev43 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %28 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6, i32 noundef %call.i) #9
  br label %cleanup

if.end45:                                         ; preds = %if.then36.if.end45_crit_edge, %if.end32.if.end45_crit_edge
  %30 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq_flags, align 4
  %or = or i32 %31, 8192
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @arizona_domain_ops, ptr noundef %arizona) #6
  %virq49 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 11
  %32 = ptrtoint ptr %virq49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1.i, ptr %virq49, align 4
  %tobool51.not = icmp eq ptr %call1.i, null
  br i1 %tobool51.not, label %do.end55, label %if.end57

do.end55:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %dev56 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %33 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end45
  br i1 %tobool58.not, label %if.end57.if.end78_crit_edge, label %if.then59

if.end57.if.end78_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then59:                                        ; preds = %if.end57
  %call.i279 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %call1.i, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %tobool62.not = icmp eq i32 %call.i279, 0
  br i1 %tobool62.not, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %dev67 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %35 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.12) #9
  br label %err_domain

if.end68:                                         ; preds = %if.then59
  %37 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arizona, align 4
  %aod_irq_chip = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 12
  %call70 = tail call i32 @regmap_add_irq_chip(ptr noundef %38, i32 noundef %call.i279, i32 noundef 8192, i32 noundef 0, ptr noundef %aod.0, ptr noundef %aod_irq_chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %if.end68.if.end78_crit_edge, label %do.end75

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %dev76 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %39 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.15, i32 noundef %call70) #9
  br label %err_map_aod

if.end78:                                         ; preds = %if.end68.if.end78_crit_edge, %if.end57.if.end78_crit_edge
  %41 = ptrtoint ptr %virq49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virq49, align 4
  %call.i280 = tail call i32 @irq_create_mapping_affinity(ptr noundef %42, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %tobool81.not = icmp eq i32 %call.i280, 0
  br i1 %tobool81.not, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %dev86 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %43 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.18) #9
  br label %err_aod

if.end87:                                         ; preds = %if.end78
  %45 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arizona, align 4
  %irq_chip = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 13
  %call89 = tail call i32 @regmap_add_irq_chip(ptr noundef %46, i32 noundef %call.i280, i32 noundef 8192, i32 noundef 0, ptr noundef nonnull %irq.1, ptr noundef %irq_chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %dev95 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %47 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.21, i32 noundef %call89) #9
  br label %err_map_main_irq

if.end96:                                         ; preds = %if.end87
  %irq_gpio = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 8, i32 35
  %49 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool98.not = icmp eq i32 %50, 0
  br i1 %tobool98.not, label %if.end96.if.end136_crit_edge, label %if.then99

if.end96.if.end136_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then99:                                        ; preds = %if.end96
  %call.i281 = tail call ptr @gpio_to_desc(i32 noundef %50) #6
  %call1.i282 = tail call i32 @gpiod_to_irq(ptr noundef %call.i281) #6
  %irq103 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 10
  %51 = ptrtoint ptr %irq103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i282, i32 %52)
  %cmp104.not = icmp eq i32 %call1.i282, %52
  br i1 %cmp104.not, label %if.then99.if.end120_crit_edge, label %do.end108

if.then99.if.end120_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

do.end108:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  %dev109 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %53 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev109, align 4
  %55 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq_gpio, align 4
  %call.i283 = tail call ptr @gpio_to_desc(i32 noundef %56) #6
  %call1.i284 = tail call i32 @gpiod_to_irq(ptr noundef %call.i283) #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.24, i32 noundef %52, i32 noundef %56, i32 noundef %call1.i284) #9
  %57 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq_gpio, align 4
  %call.i285 = tail call ptr @gpio_to_desc(i32 noundef %58) #6
  %call1.i286 = tail call i32 @gpiod_to_irq(ptr noundef %call.i285) #6
  %59 = ptrtoint ptr %irq103 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call1.i286, ptr %irq103, align 4
  br label %if.end120

if.end120:                                        ; preds = %do.end108, %if.then99.if.end120_crit_edge
  %dev121 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %60 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev121, align 4
  %62 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq_gpio, align 4
  %call124 = tail call i32 @devm_gpio_request_one(ptr noundef %61, i32 noundef %63, i32 noundef 1, ptr noundef nonnull @.str.27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125.not = icmp eq i32 %call124, 0
  br i1 %cmp125.not, label %if.end120.if.end136_crit_edge, label %do.end129

if.end120.if.end136_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

do.end129:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev121, align 4
  %66 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq_gpio, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.29, i32 noundef %67, i32 noundef %call124) #9
  %68 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %irq_gpio, align 4
  br label %if.end136

if.end136:                                        ; preds = %do.end129, %if.end120.if.end136_crit_edge, %if.end96.if.end136_crit_edge
  %irq137 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 10
  %69 = ptrtoint ptr %irq137 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq137, align 4
  %call138 = tail call i32 @request_threaded_irq(i32 noundef %70, ptr noundef null, ptr noundef nonnull @arizona_irq_thread, i32 noundef %or, ptr noundef nonnull @.str.31, ptr noundef %arizona) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139.not = icmp eq i32 %call138, 0
  br i1 %cmp139.not, label %if.end146, label %do.end143

do.end143:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %dev144 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %71 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev144, align 4
  %73 = ptrtoint ptr %irq137 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq137, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.33, i32 noundef %74, i32 noundef %call138) #9
  br label %err_main_irq

if.end146:                                        ; preds = %if.end136
  %aod_irq_chip.i.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 12
  %75 = ptrtoint ptr %aod_irq_chip.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %aod_irq_chip.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i, label %if.end146.arizona_map_irq.exit.i_crit_edge, label %if.then.i.i

if.end146.arizona_map_irq.exit.i_crit_edge:       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i

if.then.i.i:                                      ; preds = %if.end146
  %call.i.i = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %76, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i.arizona_request_irq.exit_crit_edge, label %if.then.i.i.arizona_map_irq.exit.i_crit_edge

if.then.i.i.arizona_map_irq.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i

if.then.i.i.arizona_request_irq.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_request_irq.exit

arizona_map_irq.exit.i:                           ; preds = %if.then.i.i.arizona_map_irq.exit.i_crit_edge, %if.end146.arizona_map_irq.exit.i_crit_edge
  %77 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %irq_chip, align 4
  %call4.i.i = tail call i32 @regmap_irq_get_virq(ptr noundef %78, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i, label %arizona_map_irq.exit.i.do.end152_crit_edge, label %arizona_map_irq.exit.i.arizona_request_irq.exit_crit_edge

arizona_map_irq.exit.i.arizona_request_irq.exit_crit_edge: ; preds = %arizona_map_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_request_irq.exit

arizona_map_irq.exit.i.do.end152_crit_edge:       ; preds = %arizona_map_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end152

arizona_request_irq.exit:                         ; preds = %arizona_map_irq.exit.i.arizona_request_irq.exit_crit_edge, %if.then.i.i.arizona_request_irq.exit_crit_edge
  %retval.0.i7.i = phi i32 [ %call4.i.i, %arizona_map_irq.exit.i.arizona_request_irq.exit_crit_edge ], [ %call.i.i, %if.then.i.i.arizona_request_irq.exit_crit_edge ]
  %call1.i287 = tail call i32 @request_threaded_irq(i32 noundef %retval.0.i7.i, ptr noundef null, ptr noundef nonnull @arizona_boot_done, i32 noundef 8192, ptr noundef nonnull @.str.35, ptr noundef %arizona) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i287)
  %cmp148.not = icmp eq i32 %call1.i287, 0
  br i1 %cmp148.not, label %if.end155, label %arizona_request_irq.exit.do.end152_crit_edge

arizona_request_irq.exit.do.end152_crit_edge:     ; preds = %arizona_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end152

do.end152:                                        ; preds = %arizona_request_irq.exit.do.end152_crit_edge, %arizona_map_irq.exit.i.do.end152_crit_edge
  %retval.0.i335 = phi i32 [ %call1.i287, %arizona_request_irq.exit.do.end152_crit_edge ], [ %call4.i.i, %arizona_map_irq.exit.i.do.end152_crit_edge ]
  %dev153 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %79 = ptrtoint ptr %dev153 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev153, align 4
  %81 = ptrtoint ptr %irq137 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %irq137, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.37, i32 noundef %82, i32 noundef %retval.0.i335) #9
  br label %err_boot_done

if.end155:                                        ; preds = %arizona_request_irq.exit
  %83 = ptrtoint ptr %ctrlif_error to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ctrlif_error, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool157.not = icmp eq i8 %84, 0
  br i1 %tobool157.not, label %if.end155.cleanup_crit_edge, label %if.then158

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then158:                                       ; preds = %if.end155
  %85 = ptrtoint ptr %aod_irq_chip.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %aod_irq_chip.i.i, align 4
  %tobool.not.i.i289 = icmp eq ptr %86, null
  br i1 %tobool.not.i.i289, label %if.then158.arizona_map_irq.exit.i296_crit_edge, label %if.then.i.i292

if.then158.arizona_map_irq.exit.i296_crit_edge:   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i296

if.then.i.i292:                                   ; preds = %if.then158
  %call.i.i290 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %86, i32 noundef 39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i290)
  %cmp.i.i291 = icmp sgt i32 %call.i.i290, -1
  br i1 %cmp.i.i291, label %if.then.i.i292.arizona_request_irq.exit301_crit_edge, label %if.then.i.i292.arizona_map_irq.exit.i296_crit_edge

if.then.i.i292.arizona_map_irq.exit.i296_crit_edge: ; preds = %if.then.i.i292
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i296

if.then.i.i292.arizona_request_irq.exit301_crit_edge: ; preds = %if.then.i.i292
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_request_irq.exit301

arizona_map_irq.exit.i296:                        ; preds = %if.then.i.i292.arizona_map_irq.exit.i296_crit_edge, %if.then158.arizona_map_irq.exit.i296_crit_edge
  %87 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %irq_chip, align 4
  %call4.i.i294 = tail call i32 @regmap_irq_get_virq(ptr noundef %88, i32 noundef 39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i294)
  %cmp.i295 = icmp slt i32 %call4.i.i294, 0
  br i1 %cmp.i295, label %arizona_map_irq.exit.i296.do.end164_crit_edge, label %arizona_map_irq.exit.i296.arizona_request_irq.exit301_crit_edge

arizona_map_irq.exit.i296.arizona_request_irq.exit301_crit_edge: ; preds = %arizona_map_irq.exit.i296
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_request_irq.exit301

arizona_map_irq.exit.i296.do.end164_crit_edge:    ; preds = %arizona_map_irq.exit.i296
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end164

arizona_request_irq.exit301:                      ; preds = %arizona_map_irq.exit.i296.arizona_request_irq.exit301_crit_edge, %if.then.i.i292.arizona_request_irq.exit301_crit_edge
  %retval.0.i7.i297 = phi i32 [ %call4.i.i294, %arizona_map_irq.exit.i296.arizona_request_irq.exit301_crit_edge ], [ %call.i.i290, %if.then.i.i292.arizona_request_irq.exit301_crit_edge ]
  %call1.i298 = tail call i32 @request_threaded_irq(i32 noundef %retval.0.i7.i297, ptr noundef null, ptr noundef nonnull @arizona_ctrlif_err, i32 noundef 8192, ptr noundef nonnull @.str.39, ptr noundef %arizona) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i298)
  %cmp160.not = icmp eq i32 %call1.i298, 0
  br i1 %cmp160.not, label %arizona_request_irq.exit301.cleanup_crit_edge, label %arizona_request_irq.exit301.do.end164_crit_edge

arizona_request_irq.exit301.do.end164_crit_edge:  ; preds = %arizona_request_irq.exit301
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end164

arizona_request_irq.exit301.cleanup_crit_edge:    ; preds = %arizona_request_irq.exit301
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end164:                                        ; preds = %arizona_request_irq.exit301.do.end164_crit_edge, %arizona_map_irq.exit.i296.do.end164_crit_edge
  %retval.0.i300338 = phi i32 [ %call1.i298, %arizona_request_irq.exit301.do.end164_crit_edge ], [ %call4.i.i294, %arizona_map_irq.exit.i296.do.end164_crit_edge ]
  %dev165 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %89 = ptrtoint ptr %dev165 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev165, align 4
  %91 = ptrtoint ptr %irq137 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq137, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.41, i32 noundef %92, i32 noundef %retval.0.i300338) #9
  %93 = ptrtoint ptr %aod_irq_chip.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %aod_irq_chip.i.i, align 4
  %tobool.not.i.i303 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i303, label %do.end164.arizona_map_irq.exit.i310_crit_edge, label %if.then.i.i306

do.end164.arizona_map_irq.exit.i310_crit_edge:    ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i310

if.then.i.i306:                                   ; preds = %do.end164
  %call.i.i304 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %94, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i304)
  %cmp.i.i305 = icmp sgt i32 %call.i.i304, -1
  br i1 %cmp.i.i305, label %if.then.i.i306.if.end.i312_crit_edge, label %if.then.i.i306.arizona_map_irq.exit.i310_crit_edge

if.then.i.i306.arizona_map_irq.exit.i310_crit_edge: ; preds = %if.then.i.i306
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i310

if.then.i.i306.if.end.i312_crit_edge:             ; preds = %if.then.i.i306
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i312

arizona_map_irq.exit.i310:                        ; preds = %if.then.i.i306.arizona_map_irq.exit.i310_crit_edge, %do.end164.arizona_map_irq.exit.i310_crit_edge
  %95 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %irq_chip, align 4
  %call4.i.i308 = tail call i32 @regmap_irq_get_virq(ptr noundef %96, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i308)
  %cmp.i309 = icmp slt i32 %call4.i.i308, 0
  br i1 %cmp.i309, label %arizona_map_irq.exit.i310.err_boot_done_crit_edge, label %arizona_map_irq.exit.i310.if.end.i312_crit_edge

arizona_map_irq.exit.i310.if.end.i312_crit_edge:  ; preds = %arizona_map_irq.exit.i310
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i312

arizona_map_irq.exit.i310.err_boot_done_crit_edge: ; preds = %arizona_map_irq.exit.i310
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_boot_done

if.end.i312:                                      ; preds = %arizona_map_irq.exit.i310.if.end.i312_crit_edge, %if.then.i.i306.if.end.i312_crit_edge
  %retval.0.i6.i = phi i32 [ %call4.i.i308, %arizona_map_irq.exit.i310.if.end.i312_crit_edge ], [ %call.i.i304, %if.then.i.i306.if.end.i312_crit_edge ]
  %call1.i311 = tail call ptr @free_irq(i32 noundef %retval.0.i6.i, ptr noundef %arizona) #6
  br label %err_boot_done

err_boot_done:                                    ; preds = %if.end.i312, %arizona_map_irq.exit.i310.err_boot_done_crit_edge, %do.end152
  %ret.0 = phi i32 [ %retval.0.i335, %do.end152 ], [ %retval.0.i300338, %arizona_map_irq.exit.i310.err_boot_done_crit_edge ], [ %retval.0.i300338, %if.end.i312 ]
  %97 = ptrtoint ptr %irq137 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq137, align 4
  %call170 = tail call ptr @free_irq(i32 noundef %98, ptr noundef %arizona) #6
  br label %err_main_irq

err_main_irq:                                     ; preds = %err_boot_done, %do.end143
  %ret.1 = phi i32 [ %call138, %do.end143 ], [ %ret.0, %err_boot_done ]
  %99 = ptrtoint ptr %virq49 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %virq49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %101 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %irq.i, align 4, !annotation !107
  %call.i313 = call ptr @__irq_resolve_mapping(ptr noundef %100, i32 noundef 1, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i313, null
  br i1 %tobool.not.i, label %err_main_irq.irq_find_mapping.exit_crit_edge, label %if.then.i

err_main_irq.irq_find_mapping.exit_crit_edge:     ; preds = %err_main_irq
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %err_main_irq
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %err_main_irq.irq_find_mapping.exit_crit_edge
  %retval.0.i314 = phi i32 [ %103, %if.then.i ], [ 0, %err_main_irq.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  %104 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %irq_chip, align 4
  call void @regmap_del_irq_chip(i32 noundef %retval.0.i314, ptr noundef %105) #6
  br label %err_map_main_irq

err_map_main_irq:                                 ; preds = %irq_find_mapping.exit, %do.end94
  %ret.2 = phi i32 [ %call89, %do.end94 ], [ %ret.1, %irq_find_mapping.exit ]
  %106 = ptrtoint ptr %virq49 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %virq49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i315) #6
  %108 = ptrtoint ptr %irq.i315 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %irq.i315, align 4, !annotation !107
  %call.i316 = call ptr @__irq_resolve_mapping(ptr noundef %107, i32 noundef 1, ptr noundef nonnull %irq.i315) #6
  %tobool.not.i317 = icmp eq ptr %call.i316, null
  br i1 %tobool.not.i317, label %err_map_main_irq.irq_find_mapping.exit320_crit_edge, label %if.then.i318

err_map_main_irq.irq_find_mapping.exit320_crit_edge: ; preds = %err_map_main_irq
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit320

if.then.i318:                                     ; preds = %err_map_main_irq
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %irq.i315 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %irq.i315, align 4
  br label %irq_find_mapping.exit320

irq_find_mapping.exit320:                         ; preds = %if.then.i318, %err_map_main_irq.irq_find_mapping.exit320_crit_edge
  %retval.0.i319 = phi i32 [ %110, %if.then.i318 ], [ 0, %err_map_main_irq.irq_find_mapping.exit320_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i315) #6
  call void @irq_dispose_mapping(i32 noundef %retval.0.i319) #6
  br label %err_aod

err_aod:                                          ; preds = %irq_find_mapping.exit320, %do.end85
  %ret.3 = phi i32 [ %ret.2, %irq_find_mapping.exit320 ], [ -22, %do.end85 ]
  %111 = ptrtoint ptr %virq49 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %virq49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i321) #6
  %113 = ptrtoint ptr %irq.i321 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %irq.i321, align 4, !annotation !107
  %call.i322 = call ptr @__irq_resolve_mapping(ptr noundef %112, i32 noundef 0, ptr noundef nonnull %irq.i321) #6
  %tobool.not.i323 = icmp eq ptr %call.i322, null
  br i1 %tobool.not.i323, label %err_aod.irq_find_mapping.exit326_crit_edge, label %if.then.i324

err_aod.irq_find_mapping.exit326_crit_edge:       ; preds = %err_aod
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit326

if.then.i324:                                     ; preds = %err_aod
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %irq.i321 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %irq.i321, align 4
  br label %irq_find_mapping.exit326

irq_find_mapping.exit326:                         ; preds = %if.then.i324, %err_aod.irq_find_mapping.exit326_crit_edge
  %retval.0.i325 = phi i32 [ %115, %if.then.i324 ], [ 0, %err_aod.irq_find_mapping.exit326_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i321) #6
  %aod_irq_chip178 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 12
  %116 = ptrtoint ptr %aod_irq_chip178 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %aod_irq_chip178, align 4
  call void @regmap_del_irq_chip(i32 noundef %retval.0.i325, ptr noundef %117) #6
  br label %err_map_aod

err_map_aod:                                      ; preds = %irq_find_mapping.exit326, %do.end75
  %ret.4 = phi i32 [ %call70, %do.end75 ], [ %ret.3, %irq_find_mapping.exit326 ]
  %118 = ptrtoint ptr %virq49 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %virq49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i327) #6
  %120 = ptrtoint ptr %irq.i327 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %irq.i327, align 4, !annotation !107
  %call.i328 = call ptr @__irq_resolve_mapping(ptr noundef %119, i32 noundef 0, ptr noundef nonnull %irq.i327) #6
  %tobool.not.i329 = icmp eq ptr %call.i328, null
  br i1 %tobool.not.i329, label %err_map_aod.irq_find_mapping.exit332_crit_edge, label %if.then.i330

err_map_aod.irq_find_mapping.exit332_crit_edge:   ; preds = %err_map_aod
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit332

if.then.i330:                                     ; preds = %err_map_aod
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %irq.i327 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq.i327, align 4
  br label %irq_find_mapping.exit332

irq_find_mapping.exit332:                         ; preds = %if.then.i330, %err_map_aod.irq_find_mapping.exit332_crit_edge
  %retval.0.i331 = phi i32 [ %122, %if.then.i330 ], [ 0, %err_map_aod.irq_find_mapping.exit332_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i327) #6
  call void @irq_dispose_mapping(i32 noundef %retval.0.i331) #6
  br label %err_domain

err_domain:                                       ; preds = %irq_find_mapping.exit332, %do.end66
  %ret.5 = phi i32 [ %ret.4, %irq_find_mapping.exit332 ], [ -22, %do.end66 ]
  %123 = ptrtoint ptr %virq49 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %virq49, align 4
  call void @irq_domain_remove(ptr noundef %124) #6
  br label %cleanup

cleanup:                                          ; preds = %err_domain, %arizona_request_irq.exit301.cleanup_crit_edge, %if.end155.cleanup_crit_edge, %do.end55, %do.end42, %do.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end19 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %arizona_request_irq.exit301.cleanup_crit_edge ], [ 0, %if.end155.cleanup_crit_edge ], [ %call.i, %do.end42 ], [ %ret.5, %err_domain ], [ -22, %do.end55 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irq.i92 = alloca i32, align 4
  %irq.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !107
  %dev = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body2.preheader

do.body2.preheader:                               ; preds = %entry
  %aod_irq_chip = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 12
  %virq = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 11
  %irq_gpio = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 8, i32 35
  %irq_flags = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 8, i32 4
  br label %do.body2

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !110
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.43, i32 noundef %call.i) #9
  br label %cleanup

do.body2:                                         ; preds = %do.body2.backedge, %do.body2.preheader
  %6 = ptrtoint ptr %aod_irq_chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aod_irq_chip, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body2.if.end16_crit_edge, label %if.then3

do.body2.if.end16_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then3:                                         ; preds = %do.body2
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call4 = call i32 @regmap_read(ptr noundef %9, i32 noundef 3409, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %do.end9

do.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.46, i32 noundef %call4) #9
  br label %if.end16

if.else:                                          ; preds = %if.then3
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.else.if.end16_crit_edge, label %if.then12

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %if.else
  %14 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %irq.i, align 4, !annotation !107
  %call.i89 = call ptr @__irq_resolve_mapping(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i89, null
  br i1 %tobool.not.i, label %if.then12.irq_find_mapping.exit_crit_edge, label %if.then.i90

if.then12.irq_find_mapping.exit_crit_edge:        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i90:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i90, %if.then12.irq_find_mapping.exit_crit_edge
  %retval.0.i91 = phi i32 [ %18, %if.then.i90 ], [ 0, %if.then12.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i91) #6
  br label %if.end16

if.end16:                                         ; preds = %irq_find_mapping.exit, %if.else.if.end16_crit_edge, %do.end9, %do.body2.if.end16_crit_edge
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %call18 = call i32 @regmap_read(ptr noundef %20, i32 noundef 3392, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cond = icmp eq i32 %call18, 0
  br i1 %cond, label %land.lhs.true, label %do.end29

land.lhs.true:                                    ; preds = %if.end16
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end32_crit_edge, label %if.then21

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then21:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i92) #6
  %25 = ptrtoint ptr %irq.i92 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %irq.i92, align 4, !annotation !107
  %call.i93 = call ptr @__irq_resolve_mapping(ptr noundef %24, i32 noundef 1, ptr noundef nonnull %irq.i92) #6
  %tobool.not.i94 = icmp eq ptr %call.i93, null
  br i1 %tobool.not.i94, label %if.then21.irq_find_mapping.exit97_crit_edge, label %if.then.i95

if.then21.irq_find_mapping.exit97_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit97

if.then.i95:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %irq.i92 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i92, align 4
  br label %irq_find_mapping.exit97

irq_find_mapping.exit97:                          ; preds = %if.then.i95, %if.then21.irq_find_mapping.exit97_crit_edge
  %retval.0.i96 = phi i32 [ %27, %if.then.i95 ], [ 0, %if.then21.irq_find_mapping.exit97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i92) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i96) #6
  br label %if.end32

do.end29:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.49, i32 noundef %call18) #9
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %irq_find_mapping.exit97, %land.lhs.true.if.end32_crit_edge
  %30 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool33.not = icmp eq i32 %31, 0
  br i1 %tobool33.not, label %if.end32.do.end61_crit_edge, label %if.else35

if.end32.do.end61_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61

if.else35:                                        ; preds = %if.end32
  %32 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq_flags, align 4
  %and37 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else35.if.else45_crit_edge, label %land.lhs.true39

if.else35.if.else45_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else45

land.lhs.true39:                                  ; preds = %if.else35
  %call.i98 = call ptr @gpio_to_desc(i32 noundef %31) #6
  %call1.i = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %call.i98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool43.not = icmp eq i32 %call1.i, 0
  br i1 %tobool43.not, label %land.lhs.true39.if.else45_crit_edge, label %land.lhs.true39.do.body2.backedge_crit_edge

land.lhs.true39.do.body2.backedge_crit_edge:      ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.backedge

land.lhs.true39.if.else45_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else45

if.else45:                                        ; preds = %land.lhs.true39.if.else45_crit_edge, %if.else35.if.else45_crit_edge
  %34 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq_flags, align 4
  %and48 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else45.do.end61_crit_edge, label %land.lhs.true50

if.else45.do.end61_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61

land.lhs.true50:                                  ; preds = %if.else45
  %36 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq_gpio, align 4
  %call.i99 = call ptr @gpio_to_desc(i32 noundef %37) #6
  %call1.i100 = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %call.i99) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool54.not = icmp eq i32 %call1.i100, 0
  br i1 %tobool54.not, label %land.lhs.true50.do.body2.backedge_crit_edge, label %land.lhs.true50.do.end61_crit_edge

land.lhs.true50.do.end61_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61

land.lhs.true50.do.body2.backedge_crit_edge:      ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.backedge

do.body2.backedge:                                ; preds = %land.lhs.true50.do.body2.backedge_crit_edge, %land.lhs.true39.do.body2.backedge_crit_edge
  br label %do.body2

do.end61:                                         ; preds = %land.lhs.true50.do.end61_crit_edge, %if.else45.do.end61_crit_edge, %if.end32.do.end61_crit_edge
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %call.i101 = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 12, i32 22
  %40 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store volatile i64 %call.i101, ptr %last_busy.i, align 8
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %call.i102 = call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %do.end61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_boot_done(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_boot_done.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_boot_done, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_boot_done.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.52) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_ctrlif_err(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.53) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_irq_exit(ptr noundef %arizona) local_unnamed_addr #0 align 64 {
entry:
  %irq.i33 = alloca i32, align 4
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlif_error = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 19
  %0 = ptrtoint ptr %ctrlif_error to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrlif_error, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %aod_irq_chip.i.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 12
  %2 = ptrtoint ptr %aod_irq_chip.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aod_irq_chip.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.arizona_map_irq.exit.i_crit_edge, label %if.then.i.i

if.then.arizona_map_irq.exit.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i

if.then.i.i:                                      ; preds = %if.then
  %call.i.i = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %3, i32 noundef 39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i.if.end.i_crit_edge, label %if.then.i.i.arizona_map_irq.exit.i_crit_edge

if.then.i.i.arizona_map_irq.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

arizona_map_irq.exit.i:                           ; preds = %if.then.i.i.arizona_map_irq.exit.i_crit_edge, %if.then.arizona_map_irq.exit.i_crit_edge
  %irq_chip.i.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 13
  %4 = ptrtoint ptr %irq_chip.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_chip.i.i, align 4
  %call4.i.i = tail call i32 @regmap_irq_get_virq(ptr noundef %5, i32 noundef 39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i, label %arizona_map_irq.exit.i.if.end_crit_edge, label %arizona_map_irq.exit.i.if.end.i_crit_edge

arizona_map_irq.exit.i.if.end.i_crit_edge:        ; preds = %arizona_map_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

arizona_map_irq.exit.i.if.end_crit_edge:          ; preds = %arizona_map_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %arizona_map_irq.exit.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge
  %retval.0.i6.i = phi i32 [ %call4.i.i, %arizona_map_irq.exit.i.if.end.i_crit_edge ], [ %call.i.i, %if.then.i.i.if.end.i_crit_edge ]
  %call1.i = tail call ptr @free_irq(i32 noundef %retval.0.i6.i, ptr noundef %arizona) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %arizona_map_irq.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %aod_irq_chip.i.i20 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 12
  %6 = ptrtoint ptr %aod_irq_chip.i.i20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aod_irq_chip.i.i20, align 4
  %tobool.not.i.i21 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i21, label %if.end.arizona_map_irq.exit.i28_crit_edge, label %if.then.i.i24

if.end.arizona_map_irq.exit.i28_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i28

if.then.i.i24:                                    ; preds = %if.end
  %call.i.i22 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %7, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i22)
  %cmp.i.i23 = icmp sgt i32 %call.i.i22, -1
  br i1 %cmp.i.i23, label %if.then.i.i24.if.end.i31_crit_edge, label %if.then.i.i24.arizona_map_irq.exit.i28_crit_edge

if.then.i.i24.arizona_map_irq.exit.i28_crit_edge: ; preds = %if.then.i.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_map_irq.exit.i28

if.then.i.i24.if.end.i31_crit_edge:               ; preds = %if.then.i.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i31

arizona_map_irq.exit.i28:                         ; preds = %if.then.i.i24.arizona_map_irq.exit.i28_crit_edge, %if.end.arizona_map_irq.exit.i28_crit_edge
  %irq_chip.i.i25 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 13
  %8 = ptrtoint ptr %irq_chip.i.i25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_chip.i.i25, align 4
  %call4.i.i26 = tail call i32 @regmap_irq_get_virq(ptr noundef %9, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i26)
  %cmp.i27 = icmp slt i32 %call4.i.i26, 0
  br i1 %cmp.i27, label %arizona_map_irq.exit.i28.arizona_free_irq.exit32_crit_edge, label %arizona_map_irq.exit.i28.if.end.i31_crit_edge

arizona_map_irq.exit.i28.if.end.i31_crit_edge:    ; preds = %arizona_map_irq.exit.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i31

arizona_map_irq.exit.i28.arizona_free_irq.exit32_crit_edge: ; preds = %arizona_map_irq.exit.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_free_irq.exit32

if.end.i31:                                       ; preds = %arizona_map_irq.exit.i28.if.end.i31_crit_edge, %if.then.i.i24.if.end.i31_crit_edge
  %retval.0.i6.i29 = phi i32 [ %call4.i.i26, %arizona_map_irq.exit.i28.if.end.i31_crit_edge ], [ %call.i.i22, %if.then.i.i24.if.end.i31_crit_edge ]
  %call1.i30 = tail call ptr @free_irq(i32 noundef %retval.0.i6.i29, ptr noundef %arizona) #6
  br label %arizona_free_irq.exit32

arizona_free_irq.exit32:                          ; preds = %if.end.i31, %arizona_map_irq.exit.i28.arizona_free_irq.exit32_crit_edge
  %virq1 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 11
  %10 = ptrtoint ptr %virq1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virq1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq.i, align 4, !annotation !107
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %11, i32 noundef 1, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %arizona_free_irq.exit32.irq_find_mapping.exit_crit_edge, label %if.then.i

arizona_free_irq.exit32.irq_find_mapping.exit_crit_edge: ; preds = %arizona_free_irq.exit32
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %arizona_free_irq.exit32
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %arizona_free_irq.exit32.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %arizona_free_irq.exit32.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  %irq_chip = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 13
  %15 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_chip, align 4
  call void @regmap_del_irq_chip(i32 noundef %retval.0.i, ptr noundef %16) #6
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #6
  %17 = ptrtoint ptr %virq1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virq1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i33) #6
  %19 = ptrtoint ptr %irq.i33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %irq.i33, align 4, !annotation !107
  %call.i34 = call ptr @__irq_resolve_mapping(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %irq.i33) #6
  %tobool.not.i35 = icmp eq ptr %call.i34, null
  br i1 %tobool.not.i35, label %irq_find_mapping.exit.irq_find_mapping.exit38_crit_edge, label %if.then.i36

irq_find_mapping.exit.irq_find_mapping.exit38_crit_edge: ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit38

if.then.i36:                                      ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %irq.i33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i33, align 4
  br label %irq_find_mapping.exit38

irq_find_mapping.exit38:                          ; preds = %if.then.i36, %irq_find_mapping.exit.irq_find_mapping.exit38_crit_edge
  %retval.0.i37 = phi i32 [ %21, %if.then.i36 ], [ 0, %irq_find_mapping.exit.irq_find_mapping.exit38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i33) #6
  %22 = ptrtoint ptr %aod_irq_chip.i.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aod_irq_chip.i.i20, align 4
  call void @regmap_del_irq_chip(i32 noundef %retval.0.i37, ptr noundef %23) #6
  call void @irq_dispose_mapping(i32 noundef %retval.0.i37) #6
  %24 = ptrtoint ptr %virq1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virq1, align 4
  call void @irq_domain_remove(ptr noundef %25) #6
  %irq = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 10
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %call5 = call ptr @free_irq(i32 noundef %27, ptr noundef %arizona) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #6
  tail call void @__irq_set_lockdep_class(i32 noundef %virq, ptr noundef nonnull @arizona_irq_lock_class, ptr noundef nonnull @arizona_irq_request_class) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @arizona_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_lockdep_class(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @arizona_irq_enable(ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @arizona_irq_disable(ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_irq_set_wake(ptr nocapture noundef readonly %data, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %on) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__ksymtab_arizona_request_irq, !1, !"__ksymtab_arizona_request_irq", i1 false, i1 false}
!1 = !{!"../drivers/mfd/arizona-irq.c", i32 52, i32 1}
!2 = !{ptr @__ksymtab_arizona_free_irq, !3, !"__ksymtab_arizona_free_irq", i1 false, i1 false}
!3 = !{!"../drivers/mfd/arizona-irq.c", i32 62, i32 1}
!4 = !{ptr @__ksymtab_arizona_set_irq_wake, !5, !"__ksymtab_arizona_set_irq_wake", i1 false, i1 false}
!5 = !{!"../drivers/mfd/arizona-irq.c", i32 72, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/arizona-irq.c", i32 280, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @arizona_irq_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @arizona_irq_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/arizona-irq.c", i32 306, i32 4}
!16 = !{ptr @arizona_irq_init._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @arizona_irq_init._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/arizona-irq.c", i32 318, i32 3}
!20 = !{ptr @arizona_irq_init._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @arizona_irq_init._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/arizona-irq.c", i32 326, i32 4}
!24 = !{ptr @arizona_irq_init._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @arizona_irq_init._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/arizona-irq.c", i32 334, i32 4}
!28 = !{ptr @arizona_irq_init._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @arizona_irq_init._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/arizona-irq.c", i32 342, i32 3}
!32 = !{ptr @arizona_irq_init._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @arizona_irq_init._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/arizona-irq.c", i32 350, i32 3}
!36 = !{ptr @arizona_irq_init._entry.20, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @arizona_irq_init._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/arizona-irq.c", i32 357, i32 4}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @arizona_irq_init._entry.23, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @arizona_irq_init._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/arizona-irq.c", i32 365, i32 20}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/arizona-irq.c", i32 367, i32 4}
!47 = !{ptr @arizona_irq_init._entry.28, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @arizona_irq_init._entry_ptr.30, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/arizona-irq.c", i32 375, i32 15}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/arizona-irq.c", i32 378, i32 3}
!53 = !{ptr @arizona_irq_init._entry.32, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @arizona_irq_init._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/arizona-irq.c", i32 384, i32 60}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/arizona-irq.c", i32 387, i32 3}
!59 = !{ptr @arizona_irq_init._entry.36, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @arizona_irq_init._entry_ptr.38, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/arizona-irq.c", i32 395, i32 8}
!63 = !{ptr @.str.41, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/arizona-irq.c", i32 398, i32 4}
!65 = !{ptr @arizona_irq_init._entry.40, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @arizona_irq_init._entry_ptr.42, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @arizona_domain_ops, !68, !"arizona_domain_ops", i1 false, i1 false}
!68 = !{!"../drivers/mfd/arizona-irq.c", i32 201, i32 36}
!69 = !{ptr @arizona_irq_lock_class, !70, !"arizona_irq_lock_class", i1 false, i1 false}
!70 = !{!"../drivers/mfd/arizona-irq.c", i32 183, i32 30}
!71 = !{ptr @arizona_irq_request_class, !72, !"arizona_irq_request_class", i1 false, i1 false}
!72 = !{!"../drivers/mfd/arizona-irq.c", i32 184, i32 30}
!73 = !{ptr @arizona_irq_chip, !74, !"arizona_irq_chip", i1 false, i1 false}
!74 = !{!"../drivers/mfd/arizona-irq.c", i32 176, i32 24}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/arizona-irq.c", i32 105, i32 3}
!77 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @arizona_irq_thread._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @arizona_irq_thread._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/arizona-irq.c", i32 120, i32 5}
!82 = !{ptr @arizona_irq_thread._entry.45, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @arizona_irq_thread._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/arizona-irq.c", i32 136, i32 4}
!86 = !{ptr @arizona_irq_thread._entry.48, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @arizona_irq_thread._entry_ptr.50, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/arizona-irq.c", i32 78, i32 2}
!90 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @arizona_boot_done.__UNIQUE_ID_ddebug289, !89, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/arizona-irq.c", i32 91, i32 2}
!94 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @arizona_ctrlif_err._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @arizona_ctrlif_err._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
!107 = !{!"auto-init"}
!108 = !{i64 2148197295}
!109 = !{i64 682118, i64 682143, i64 682165, i64 682181, i64 682193, i64 682213, i64 682237, i64 682253, i64 682265}
!110 = !{i64 2148197483}
!111 = !{i64 2148765541, i64 2148765546, i64 2148765559, i64 2148765603, i64 2148765637, i64 2148765658}
