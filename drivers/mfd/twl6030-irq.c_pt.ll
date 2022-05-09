; ModuleID = '/llk/IR_all_yes/drivers/mfd/twl6030-irq.c_pt.bc'
source_filename = "../drivers/mfd/twl6030-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+twl6030_interrupt_unmask\22, \22a\22\09"
module asm "\09.weak\09__crc_twl6030_interrupt_unmask\09\09\09\09"
module asm "\09.long\09__crc_twl6030_interrupt_unmask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6030_interrupt_unmask:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6030_interrupt_unmask\22\09\09\09\09\09"
module asm "__kstrtabns_twl6030_interrupt_unmask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+twl6030_interrupt_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_twl6030_interrupt_mask\09\09\09\09"
module asm "\09.long\09__crc_twl6030_interrupt_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6030_interrupt_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6030_interrupt_mask\22\09\09\09\09\09"
module asm "__kstrtabns_twl6030_interrupt_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+twl6030_mmc_card_detect_config\22, \22a\22\09"
module asm "\09.weak\09__crc_twl6030_mmc_card_detect_config\09\09\09\09"
module asm "\09.long\09__crc_twl6030_mmc_card_detect_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6030_mmc_card_detect_config:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6030_mmc_card_detect_config\22\09\09\09\09\09"
module asm "__kstrtabns_twl6030_mmc_card_detect_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+twl6030_mmc_card_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_twl6030_mmc_card_detect\09\09\09\09"
module asm "\09.long\09__crc_twl6030_mmc_card_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6030_mmc_card_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6030_mmc_card_detect\22\09\09\09\09\09"
module asm "__kstrtabns_twl6030_mmc_card_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.twl6030_irq = type { i32, i32, i8, %struct.atomic_t, %struct.notifier_block, %struct.irq_chip, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%union.anon.84 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__kstrtab_twl6030_interrupt_unmask = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6030_interrupt_unmask = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6030_interrupt_unmask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6030_interrupt_unmask to i32), ptr @__kstrtab_twl6030_interrupt_unmask, ptr @__kstrtabns_twl6030_interrupt_unmask }, section "___ksymtab+twl6030_interrupt_unmask", align 4
@__kstrtab_twl6030_interrupt_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6030_interrupt_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6030_interrupt_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6030_interrupt_mask to i32), ptr @__kstrtab_twl6030_interrupt_mask, ptr @__kstrtabns_twl6030_interrupt_mask }, section "___ksymtab+twl6030_interrupt_mask", align 4
@twl6030_mmc_card_detect_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013twl6030: Failed to read MMCCTRL, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"twl6030_mmc_card_detect_config\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/twl6030-irq.c\00", [38 x i8] zeroinitializer }, align 32
@twl6030_mmc_card_detect_config._entry_ptr = internal global ptr @twl6030_mmc_card_detect_config._entry, section ".printk_index", align 4
@twl6030_mmc_card_detect_config._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013twl6030: Failed to write MMCCTRL, error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@twl6030_mmc_card_detect_config._entry_ptr.5 = internal global ptr @twl6030_mmc_card_detect_config._entry.3, section ".printk_index", align 4
@twl6030_mmc_card_detect_config._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013twl6030: Failed to read CFG_INPUT_PUPD3, error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@twl6030_mmc_card_detect_config._entry_ptr.8 = internal global ptr @twl6030_mmc_card_detect_config._entry.6, section ".printk_index", align 4
@twl6030_mmc_card_detect_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013twl6030: Failed to write CFG_INPUT_PUPD3, error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@twl6030_mmc_card_detect_config._entry_ptr.11 = internal global ptr @twl6030_mmc_card_detect_config._entry.9, section ".printk_index", align 4
@twl6030_irq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_twl6030_mmc_card_detect_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6030_mmc_card_detect_config = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6030_mmc_card_detect_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6030_mmc_card_detect_config to i32), ptr @__kstrtab_twl6030_mmc_card_detect_config, ptr @__kstrtabns_twl6030_mmc_card_detect_config }, section "___ksymtab+twl6030_mmc_card_detect_config", align 4
@twl6030_mmc_card_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Unknown MMC controller %d in %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"twl6030_mmc_card_detect\00", [40 x i8] zeroinitializer }, align 32
@twl6030_mmc_card_detect._entry_ptr = internal global ptr @twl6030_mmc_card_detect._entry, section ".printk_index", align 4
@__kstrtab_twl6030_mmc_card_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6030_mmc_card_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6030_mmc_card_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6030_mmc_card_detect to i32), ptr @__kstrtab_twl6030_mmc_card_detect, ptr @__kstrtabns_twl6030_mmc_card_detect }, section "___ksymtab+twl6030_mmc_card_detect", align 4
@twl6030_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twl6030_interrupt_mapping }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twl6032_interrupt_mapping }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@twl6030_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 375, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown TWL device model\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl6030_init_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl6030_init_irq._entry_ptr = internal global ptr @twl6030_init_irq._entry, section ".printk_index", align 4
@twl6030_init_irq._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 397, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"I2C err writing TWL_MODULE_PIH: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@twl6030_init_irq._entry_ptr.20 = internal global ptr @twl6030_init_irq._entry.18, section ".printk_index", align 4
@dummy_irq_chip = external dso_local local_unnamed_addr global %struct.irq_chip, align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twl6030\00", [24 x i8] zeroinitializer }, align 32
@twl6030_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @twl6030_irq_map, ptr @twl6030_irq_unmap, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@twl6030_init_irq._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 418, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't add irq_domain\0A\00", [42 x i8] zeroinitializer }, align 32
@twl6030_init_irq._entry_ptr.24 = internal global ptr @twl6030_init_irq._entry.22, section ".printk_index", align 4
@twl6030_init_irq._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.2, i32 422, ptr @.str.27, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PIH (irq %d) nested IRQs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@twl6030_init_irq._entry_ptr.28 = internal global ptr @twl6030_init_irq._entry.25, section ".printk_index", align 4
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TWL6030-PIH\00", [20 x i8] zeroinitializer }, align 32
@twl6030_init_irq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.15, ptr @.str.2, i32 428, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not claim irq %d: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@twl6030_init_irq._entry_ptr.32 = internal global ptr @twl6030_init_irq._entry.30, section ".printk_index", align 4
@twl6030_interrupt_mapping = internal global { [24 x i32], [32 x i8] } { [24 x i32] [i32 0, i32 0, i32 0, i32 11, i32 11, i32 12, i32 13, i32 13, i32 13, i32 14, i32 15, i32 16, i32 0, i32 3, i32 3, i32 17, i32 4, i32 4, i32 4, i32 10, i32 2, i32 5, i32 5, i32 0], [32 x i8] zeroinitializer }, align 32
@twl6032_interrupt_mapping = internal global { [24 x i32], [32 x i8] } { [24 x i32] [i32 0, i32 0, i32 0, i32 11, i32 11, i32 12, i32 13, i32 0, i32 0, i32 14, i32 15, i32 16, i32 3, i32 3, i32 17, i32 17, i32 4, i32 4, i32 4, i32 10, i32 2, i32 5, i32 5, i32 0], [32 x i8] zeroinitializer }, align 32
@twl6030_irq_pm_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013twl6030 IRQ wake enable failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"twl6030_irq_pm_notifier\00", [40 x i8] zeroinitializer }, align 32
@twl6030_irq_pm_notifier._entry_ptr = internal global ptr @twl6030_irq_pm_notifier._entry, section ".printk_index", align 4
@twl6030_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014twl6030_irq: I2C error %d reading PIH ISR\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl6030_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@twl6030_irq_thread._entry_ptr = internal global ptr @twl6030_irq_thread._entry, section ".printk_index", align 4
@twl6030_irq_thread._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013twl6030_irq: Unmapped PIH ISR %u detected\0A\00", [51 x i8] zeroinitializer }, align 32
@twl6030_irq_thread._entry_ptr.39 = internal global ptr @twl6030_irq_thread._entry.37, section ".printk_index", align 4
@twl6030_irq_thread.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.36, ptr @.str.2, ptr @.str.41, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl6030_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"twl6030_irq: PIH ISR %u, virq%u\0A\00", [63 x i8] zeroinitializer }, align 32
@twl6030_irq_thread._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.36, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014twl6030_irq: I2C error in clearing PIH ISR\0A\00", [50 x i8] zeroinitializer }, align 32
@twl6030_irq_thread._entry_ptr.44 = internal global ptr @twl6030_irq_thread._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 275, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 282, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 290, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 298, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"twl6030_irq\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 117, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 318, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"twl6030_of_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 359, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 375, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 397, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 406, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"twl6030_irq_domain_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 353, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 418, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 422, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 426, i32 25 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 428, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"twl6030_interrupt_mapping\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 46, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant [26 x i8] c"twl6032_interrupt_mapping\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 75, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 132, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 173, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 195, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 197, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [29 x i8] c"../drivers/mfd/twl6030-irq.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 212, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__ksymtab_twl6030_interrupt_mask, ptr @__ksymtab_twl6030_interrupt_unmask, ptr @__ksymtab_twl6030_mmc_card_detect, ptr @__ksymtab_twl6030_mmc_card_detect_config, ptr @twl6030_init_irq._entry, ptr @twl6030_init_irq._entry.18, ptr @twl6030_init_irq._entry.22, ptr @twl6030_init_irq._entry.25, ptr @twl6030_init_irq._entry.30, ptr @twl6030_init_irq._entry_ptr, ptr @twl6030_init_irq._entry_ptr.20, ptr @twl6030_init_irq._entry_ptr.24, ptr @twl6030_init_irq._entry_ptr.28, ptr @twl6030_init_irq._entry_ptr.32, ptr @twl6030_irq_pm_notifier._entry, ptr @twl6030_irq_pm_notifier._entry_ptr, ptr @twl6030_irq_thread._entry, ptr @twl6030_irq_thread._entry.37, ptr @twl6030_irq_thread._entry.42, ptr @twl6030_irq_thread._entry_ptr, ptr @twl6030_irq_thread._entry_ptr.39, ptr @twl6030_irq_thread._entry_ptr.44, ptr @twl6030_mmc_card_detect._entry, ptr @twl6030_mmc_card_detect._entry_ptr, ptr @twl6030_mmc_card_detect_config._entry, ptr @twl6030_mmc_card_detect_config._entry.3, ptr @twl6030_mmc_card_detect_config._entry.6, ptr @twl6030_mmc_card_detect_config._entry.9, ptr @twl6030_mmc_card_detect_config._entry_ptr, ptr @twl6030_mmc_card_detect_config._entry_ptr.11, ptr @twl6030_mmc_card_detect_config._entry_ptr.5, ptr @twl6030_mmc_card_detect_config._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @twl6030_irq, ptr @.str.12, ptr @.str.13, ptr @twl6030_of_match, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @twl6030_irq_domain_ops, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @twl6030_interrupt_mapping, ptr @twl6032_interrupt_mapping, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_mmc_card_detect_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_mmc_card_detect_config._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_mmc_card_detect_config._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_mmc_card_detect_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_mmc_card_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_init_irq._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_init_irq._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_init_irq._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_init_irq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_interrupt_mapping to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6032_interrupt_mapping to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_irq_pm_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_irq_thread._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_irq_thread._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl6030_interrupt_unmask(i8 noundef zeroext %bit_mask, i8 noundef zeroext %offset) #0 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %unmask_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unmask_value) #6
  %0 = ptrtoint ptr %unmask_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %unmask_value, align 1, !annotation !100
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %unmask_value, i8 noundef zeroext %offset, i32 noundef 1) #6
  %neg = xor i8 %bit_mask, -1
  %1 = ptrtoint ptr %unmask_value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %unmask_value, align 1
  %and = and i8 %2, %neg
  store i8 %and, ptr %unmask_value, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %3 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and, ptr %val.addr.i, align 1
  %call.i11 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %val.addr.i, i8 noundef zeroext %offset, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %or = or i32 %call.i11, %call.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unmask_value) #6
  ret i32 %or
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl6030_interrupt_mask(i8 noundef zeroext %bit_mask, i8 noundef zeroext %offset) #0 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %mask_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mask_value) #6
  %0 = ptrtoint ptr %mask_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mask_value, align 1, !annotation !100
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %mask_value, i8 noundef zeroext %offset, i32 noundef 1) #6
  %1 = ptrtoint ptr %mask_value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mask_value, align 1
  %or12 = or i8 %2, %bit_mask
  store i8 %or12, ptr %mask_value, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %3 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or12, ptr %val.addr.i, align 1
  %call.i13 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %val.addr.i, i8 noundef zeroext %offset, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %or9 = or i32 %call.i13, %call.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mask_value) #6
  ret i32 %or9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl6030_mmc_card_detect_config() #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %val.addr.i61 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i53 = alloca i8, align 1
  %unmask_value.i54 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %unmask_value.i = alloca i8, align 1
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #6
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg_val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unmask_value.i) #6
  %1 = ptrtoint ptr %unmask_value.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %unmask_value.i, align 1, !annotation !100
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %unmask_value.i, i8 noundef zeroext 4, i32 noundef 1) #6
  %2 = ptrtoint ptr %unmask_value.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %unmask_value.i, align 1
  %and.i = and i8 %3, -9
  store i8 %and.i, ptr %unmask_value.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %4 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %and.i, ptr %val.addr.i.i, align 1
  %call.i11.i = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 4, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unmask_value.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unmask_value.i54) #6
  %5 = ptrtoint ptr %unmask_value.i54 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %unmask_value.i54, align 1, !annotation !100
  %call.i.i55 = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %unmask_value.i54, i8 noundef zeroext 7, i32 noundef 1) #6
  %6 = ptrtoint ptr %unmask_value.i54 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %unmask_value.i54, align 1
  %and.i56 = and i8 %7, -9
  store i8 %and.i56, ptr %unmask_value.i54, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i53) #6
  %8 = ptrtoint ptr %val.addr.i.i53 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and.i56, ptr %val.addr.i.i53, align 1
  %call.i11.i57 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %val.addr.i.i53, i8 noundef zeroext 7, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i53) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unmask_value.i54) #6
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %reg_val, i8 noundef zeroext -18, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg_val, align 1
  %11 = and i8 %10, -13
  %12 = or i8 %11, 4
  store i8 %12, ptr %reg_val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %13 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %val.addr.i, align 1
  %call.i59 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext -18, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp8 = icmp slt i32 %call.i59, 0
  br i1 %cmp8, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call.i59) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call.i60 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %reg_val, i8 noundef zeroext -14, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp18 = icmp slt i32 %call.i60, 0
  br i1 %cmp18, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call.i60) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_val, align 1
  %16 = and i8 %15, -13
  store i8 %16, ptr %reg_val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i61)
  %17 = ptrtoint ptr %val.addr.i61 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %val.addr.i61, align 1
  %call.i62 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i61, i8 noundef zeroext -14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp31 = icmp slt i32 %call.i62, 0
  br i1 %cmp31, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call.i62) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end26
  %18 = load ptr, ptr @twl6030_irq, align 4
  %irq_domain = getelementptr inbounds %struct.twl6030_irq, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %irq.i, align 4, !annotation !100
  %call.i63 = call ptr @__irq_resolve_mapping(ptr noundef %20, i32 noundef 16, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i63, null
  br i1 %tobool.not.i, label %if.end39.irq_find_mapping.exit_crit_edge, label %if.then.i

if.end39.irq_find_mapping.exit_crit_edge:         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.end39.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.then.i ], [ 0, %if.end39.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  br label %cleanup

cleanup:                                          ; preds = %irq_find_mapping.exit, %do.end36, %do.end23, %do.end13, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i59, %do.end13 ], [ %call.i60, %do.end23 ], [ %call.i62, %do.end36 ], [ %retval.0.i, %irq_find_mapping.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl6030_mmc_card_detect(ptr nocapture noundef readonly %dev, i32 %slot) #0 align 64 {
entry:
  %read_reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read_reg) #6
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %read_reg, align 1
  %id = getelementptr i8, ptr %dev, i32 -12
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %2, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %read_reg, i8 noundef zeroext -18, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %read_reg, align 1
  %5 = and i8 %4, 1
  %and = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %and, %if.then4 ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read_reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl6030_init_irq(ptr noundef %dev, i32 noundef %irq_num) local_unnamed_addr #0 align 64 {
entry:
  %mask = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mask) #6
  %2 = getelementptr inbounds [3 x i8], ptr %mask, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %mask, i32 0, i32 2
  %call = tail call ptr @of_match_device(ptr noundef nonnull @twl6030_of_match, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 172, i32 noundef 3520) #6
  store ptr %call.i, ptr @twl6030_irq, align 4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %mask, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %3, align 1
  %call9 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %mask, i8 noundef zeroext 3, i32 noundef 3) #6
  %call11 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %mask, i8 noundef zeroext 6, i32 noundef 3) #6
  %or = or i32 %call11, %call9
  %call13 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %mask, i8 noundef zeroext 0, i32 noundef 3) #6
  %or14 = or i32 %or, %call13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or14)
  %cmp = icmp slt i32 %or14, 0
  br i1 %cmp, label %do.end18, label %if.end19

do.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %or14) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %9 = load ptr, ptr @twl6030_irq, align 4
  %irq_chip = getelementptr inbounds %struct.twl6030_irq, ptr %9, i32 0, i32 5
  %10 = call ptr @memcpy(ptr %irq_chip, ptr @dummy_irq_chip, i32 136)
  %name = getelementptr inbounds %struct.twl6030_irq, ptr %9, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.21, ptr %name, align 4
  %irq_set_type = getelementptr inbounds %struct.twl6030_irq, ptr %9, i32 0, i32 5, i32 13
  %12 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.twl6030_irq, ptr %9, i32 0, i32 5, i32 14
  %13 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @twl6030_irq_set_wake, ptr %irq_set_wake, align 4
  %pm_nb = getelementptr inbounds %struct.twl6030_irq, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %pm_nb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @twl6030_irq_pm_notifier, ptr %pm_nb, align 4
  %wakeirqs = getelementptr inbounds %struct.twl6030_irq, ptr %9, i32 0, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wakeirqs, i32 noundef 4) #6
  %15 = ptrtoint ptr %wakeirqs to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %wakeirqs, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = load ptr, ptr @twl6030_irq, align 4
  %irq_mapping_tbl = getelementptr inbounds %struct.twl6030_irq, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %irq_mapping_tbl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %irq_mapping_tbl, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 20, i32 noundef 20, i32 noundef 0, ptr noundef nonnull @twl6030_irq_domain_ops, ptr noundef %18) #6
  %20 = load ptr, ptr @twl6030_irq, align 4
  %irq_domain = getelementptr inbounds %struct.twl6030_irq, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool26.not = icmp eq ptr %call1.i, null
  br i1 %tobool26.not, label %do.end30, label %do.end34

do.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %cleanup

do.end34:                                         ; preds = %if.end19
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %irq_num) #9
  %22 = load ptr, ptr @twl6030_irq, align 4
  %call35 = call i32 @request_threaded_irq(i32 noundef %irq_num, ptr noundef null, ptr noundef nonnull @twl6030_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.29, ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end41

do.end40:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %irq_num, i32 noundef %call35) #9
  %23 = load ptr, ptr @twl6030_irq, align 4
  %irq_domain44 = getelementptr inbounds %struct.twl6030_irq, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %irq_domain44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_domain44, align 4
  call void @irq_domain_remove(ptr noundef %25) #6
  br label %cleanup

if.end41:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  %26 = load ptr, ptr @twl6030_irq, align 4
  %twl_irq = getelementptr inbounds %struct.twl6030_irq, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %twl_irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %irq_num, ptr %twl_irq, align 4
  %pm_nb42 = getelementptr inbounds %struct.twl6030_irq, ptr %26, i32 0, i32 4
  %call43 = call i32 @register_pm_notifier(ptr noundef %pm_nb42) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end40, %do.end30, %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %or14, %do.end18 ], [ %call35, %do.end40 ], [ 0, %if.end41 ], [ -12, %do.end30 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mask) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %wakeirqs1 = getelementptr inbounds %struct.twl6030_irq, ptr %1, i32 0, i32 3
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeirqs1, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %wakeirqs1, i32 1, i32 3, i32 1) #6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeirqs1, ptr %wakeirqs1, i32 1, ptr elementtype(i32) %wakeirqs1) #6, !srcloc !101
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeirqs1, ptr %wakeirqs1, i32 1, ptr elementtype(i32) %wakeirqs1) #6, !srcloc !102
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_irq_pm_notifier(ptr noundef %notifier, i32 noundef %pm_event, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pm_event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pm_event, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %wakeirqs = getelementptr i8, ptr %notifier, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeirqs, i32 noundef 4) #6
  %1 = ptrtoint ptr %wakeirqs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %wakeirqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %irq_wake_enabled11 = getelementptr i8, ptr %notifier, i32 -8
  %3 = ptrtoint ptr %irq_wake_enabled11 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %irq_wake_enabled11, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true10.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  br i1 %tobool12.not, label %if.then, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %twl_irq = getelementptr i8, ptr %notifier, i32 -12
  %5 = ptrtoint ptr %twl_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %twl_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #9
  br label %if.end18

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %irq_wake_enabled11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %irq_wake_enabled11, align 4
  br label %if.end18

land.lhs.true10.critedge:                         ; preds = %sw.bb
  br i1 %tobool12.not, label %land.lhs.true10.critedge.if.end18_crit_edge, label %if.then13

land.lhs.true10.critedge.if.end18_crit_edge:      ; preds = %land.lhs.true10.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then13:                                        ; preds = %land.lhs.true10.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %twl_irq14 = getelementptr i8, ptr %notifier, i32 -12
  %8 = ptrtoint ptr %twl_irq14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %twl_irq14, align 4
  %call.i31 = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 0) #6
  %10 = ptrtoint ptr %irq_wake_enabled11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %irq_wake_enabled11, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %land.lhs.true10.critedge.if.end18_crit_edge, %if.else, %do.end, %land.lhs.true.if.end18_crit_edge
  %twl_irq19 = getelementptr i8, ptr %notifier, i32 -12
  %11 = ptrtoint ptr %twl_irq19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %twl_irq19, align 4
  tail call void @disable_irq(i32 noundef %12) #6
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %twl_irq21 = getelementptr i8, ptr %notifier, i32 -12
  %13 = ptrtoint ptr %twl_irq21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %twl_irq21, align 4
  tail call void @enable_irq(i32 noundef %14) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.end18, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %irq.i = alloca i32, align 4
  %sts = alloca %union.anon.84, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts) #6
  %0 = ptrtoint ptr %sts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sts, align 4, !annotation !100
  %call = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %sts, i8 noundef zeroext 0, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x i8], ptr %sts, i32 0, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds [4 x i8], ptr %sts, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 2
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i8 %3, 8
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or, ptr %arrayidx2, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %6 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not64 = icmp eq i32 %7, 0
  br i1 %tobool9.not64, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %irq_domain = getelementptr inbounds %struct.twl6030_irq, ptr %data, i32 0, i32 6
  %irq_mapping_tbl = getelementptr inbounds %struct.twl6030_irq, ptr %data, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %int_sts.065 = phi i32 [ %8, %for.body.lr.ph ], [ %shr, %for.inc.for.body_crit_edge ]
  %and10 = and i32 %int_sts.065, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %9 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_domain, align 4
  %11 = ptrtoint ptr %irq_mapping_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_mapping_tbl, align 4
  %arrayidx13 = getelementptr i32, ptr %12, i32 %i.066
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %irq.i, align 4, !annotation !100
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %10, i32 noundef %14, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  br label %do.end19

irq_find_mapping.exit:                            ; preds = %if.then12
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %irq_find_mapping.exit.do.end19_crit_edge, label %if.then16

irq_find_mapping.exit.do.end19_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

if.then16:                                        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @handle_nested_irq(i32 noundef %17) #6
  br label %do.body23

do.end19:                                         ; preds = %irq_find_mapping.exit.do.end19_crit_edge, %irq_find_mapping.exit.thread
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %i.066) #9
  br label %do.body23

do.body23:                                        ; preds = %do.end19, %if.then16
  %retval.0.i5761 = phi i32 [ %17, %if.then16 ], [ 0, %do.end19 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_irq_thread.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_irq_thread, %if.then29)) #6
          to label %for.inc [label %if.then29], !srcloc !104

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @twl6030_irq_thread.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.41, i32 noundef %i.066, i32 noundef %retval.0.i5761) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %do.body23, %for.body.for.inc_crit_edge
  %shr = lshr i32 %int_sts.065, 1
  %inc = add nuw nsw i32 %i.066, 1
  %tobool9.not = icmp ult i32 %int_sts.065, 2
  br i1 %tobool9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %18 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %val.addr.i, align 1
  %call.i58 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool35.not = icmp eq i32 %call.i58, 0
  br i1 %tobool35.not, label %for.end.cleanup_crit_edge, label %do.end39

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %for.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl6030_exit_irq() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twl6030_irq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %twl_irq = getelementptr inbounds %struct.twl6030_irq, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %twl_irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %twl_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %pm_nb = getelementptr inbounds %struct.twl6030_irq, ptr %0, i32 0, i32 4
  %call = tail call i32 @unregister_pm_notifier(ptr noundef %pm_nb) #6
  %3 = load ptr, ptr @twl6030_irq, align 4
  %twl_irq2 = getelementptr inbounds %struct.twl6030_irq, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %twl_irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %twl_irq2, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %5, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_irq_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #6
  %irq_chip = getelementptr inbounds %struct.twl6030_irq, ptr %1, i32 0, i32 5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef %irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #6
  %twl_irq = getelementptr inbounds %struct.twl6030_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %twl_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %twl_irq, align 4
  %call1 = tail call i32 @irq_set_parent(i32 noundef %virq, i32 noundef %3) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl6030_irq_unmap(ptr nocapture noundef readnone %d, i32 noundef %virq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_parent(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__ksymtab_twl6030_interrupt_unmask, !1, !"__ksymtab_twl6030_interrupt_unmask", i1 false, i1 false}
!1 = !{!"../drivers/mfd/twl6030-irq.c", i32 243, i32 1}
!2 = !{ptr @__ksymtab_twl6030_interrupt_mask, !3, !"__ksymtab_twl6030_interrupt_mask", i1 false, i1 false}
!3 = !{!"../drivers/mfd/twl6030-irq.c", i32 257, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mfd/twl6030-irq.c", i32 275, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @twl6030_mmc_card_detect_config._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @twl6030_mmc_card_detect_config._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/twl6030-irq.c", i32 282, i32 3}
!12 = !{ptr @twl6030_mmc_card_detect_config._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @twl6030_mmc_card_detect_config._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/twl6030-irq.c", i32 290, i32 3}
!16 = !{ptr @twl6030_mmc_card_detect_config._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @twl6030_mmc_card_detect_config._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/twl6030-irq.c", i32 298, i32 3}
!20 = !{ptr @twl6030_mmc_card_detect_config._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @twl6030_mmc_card_detect_config._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_twl6030_mmc_card_detect_config, !23, !"__ksymtab_twl6030_mmc_card_detect_config", i1 false, i1 false}
!23 = !{!"../drivers/mfd/twl6030-irq.c", i32 306, i32 1}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/twl6030-irq.c", i32 318, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @twl6030_mmc_card_detect._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @twl6030_mmc_card_detect._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_twl6030_mmc_card_detect, !30, !"__ksymtab_twl6030_mmc_card_detect", i1 false, i1 false}
!30 = !{!"../drivers/mfd/twl6030-irq.c", i32 331, i32 1}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/twl6030-irq.c", i32 375, i32 3}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @twl6030_init_irq._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @twl6030_init_irq._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/twl6030-irq.c", i32 397, i32 3}
!40 = !{ptr @twl6030_init_irq._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @twl6030_init_irq._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/twl6030-irq.c", i32 406, i32 31}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/twl6030-irq.c", i32 418, i32 3}
!46 = !{ptr @twl6030_init_irq._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @twl6030_init_irq._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/twl6030-irq.c", i32 422, i32 2}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @twl6030_init_irq._entry.25, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @twl6030_init_irq._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/twl6030-irq.c", i32 426, i32 25}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/twl6030-irq.c", i32 428, i32 3}
!57 = !{ptr @twl6030_init_irq._entry.30, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @twl6030_init_irq._entry_ptr.32, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @twl6030_irq, !60, !"twl6030_irq", i1 false, i1 false}
!60 = !{!"../drivers/mfd/twl6030-irq.c", i32 117, i32 28}
!61 = !{ptr @twl6030_of_match, !62, !"twl6030_of_match", i1 false, i1 false}
!62 = !{!"../drivers/mfd/twl6030-irq.c", i32 359, i32 34}
!63 = !{ptr @twl6030_interrupt_mapping, !64, !"twl6030_interrupt_mapping", i1 false, i1 false}
!64 = !{!"../drivers/mfd/twl6030-irq.c", i32 46, i32 12}
!65 = !{ptr @twl6032_interrupt_mapping, !66, !"twl6032_interrupt_mapping", i1 false, i1 false}
!66 = !{!"../drivers/mfd/twl6030-irq.c", i32 75, i32 12}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/twl6030-irq.c", i32 132, i32 5}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @twl6030_irq_pm_notifier._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @twl6030_irq_pm_notifier._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @twl6030_irq_domain_ops, !73, !"twl6030_irq_domain_ops", i1 false, i1 false}
!73 = !{!"../drivers/mfd/twl6030-irq.c", i32 353, i32 36}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mfd/twl6030-irq.c", i32 173, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @twl6030_irq_thread._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @twl6030_irq_thread._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/twl6030-irq.c", i32 195, i32 5}
!81 = !{ptr @twl6030_irq_thread._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @twl6030_irq_thread._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mfd/twl6030-irq.c", i32 197, i32 4}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @twl6030_irq_thread.__UNIQUE_ID_ddebug288, !84, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mfd/twl6030-irq.c", i32 212, i32 3}
!89 = !{ptr @twl6030_irq_thread._entry.42, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @twl6030_irq_thread._entry_ptr.44, !88, !"_entry_ptr", i1 false, i1 false}
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
!101 = !{i64 2148246581, i64 2148246607, i64 2148246636, i64 2148246670, i64 2148246701, i64 2148246724}
!102 = !{i64 2148249046, i64 2148249072, i64 2148249101, i64 2148249135, i64 2148249166, i64 2148249189}
!103 = !{i8 0, i8 2}
!104 = !{i64 2148728396, i64 2148728401, i64 2148728414, i64 2148728458, i64 2148728492, i64 2148728513}
