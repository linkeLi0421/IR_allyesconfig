; ModuleID = '/llk/IR_all_yes/drivers/mfd/arizona-core.c_pt.bc'
source_filename = "../drivers/mfd/arizona-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+arizona_clk32k_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_clk32k_enable\09\09\09\09"
module asm "\09.long\09__crc_arizona_clk32k_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_clk32k_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_clk32k_enable\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_clk32k_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arizona_clk32k_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_clk32k_disable\09\09\09\09"
module asm "\09.long\09__crc_arizona_clk32k_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_clk32k_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_clk32k_disable\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_clk32k_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arizona_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_arizona_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arizona_dev_init\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_dev_init\09\09\09\09"
module asm "\09.long\09__crc_arizona_dev_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_dev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_dev_init\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_dev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arizona_dev_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_dev_exit\09\09\09\09"
module asm "\09.long\09__crc_arizona_dev_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_dev_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_dev_exit\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_dev_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.arizona_sysclk_state = type { i32, i32 }

@__kstrtab_arizona_clk32k_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_clk32k_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_clk32k_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_clk32k_enable to i32), ptr @__kstrtab_arizona_clk32k_enable, ptr @__kstrtabns_arizona_clk32k_enable }, section "___ksymtab_gpl+arizona_clk32k_enable", align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mfd/arizona-core.c\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_arizona_clk32k_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_clk32k_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_clk32k_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_clk32k_disable to i32), ptr @__kstrtab_arizona_clk32k_disable, ptr @__kstrtabns_arizona_clk32k_disable }, section "___ksymtab_gpl+arizona_clk32k_disable", align 4
@arizona_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @arizona_suspend, ptr @arizona_resume, ptr @arizona_suspend, ptr @arizona_resume, ptr @arizona_suspend, ptr @arizona_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arizona_suspend_noirq, ptr @arizona_resume_noirq, ptr @arizona_suspend_noirq, ptr @arizona_resume_noirq, ptr @arizona_suspend_noirq, ptr @arizona_resume_noirq, ptr @arizona_runtime_suspend, ptr @arizona_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_arizona_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_pm_ops to i32), ptr @__kstrtab_arizona_pm_ops, ptr @__kstrtabns_arizona_pm_ops }, section "___ksymtab_gpl+arizona_pm_ops", align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk1\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk2\00", [26 x i8] zeroinitializer }, align 32
@arizona_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&arizona->clk_lock\00", [45 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 967, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get %s: %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arizona_dev_init\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr = internal global ptr @arizona_dev_init._entry, section ".printk_index", align 4
@arizona_dev_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str, i32 990, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown device type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.11 = internal global ptr @arizona_dev_init._entry.8, section ".printk_index", align 4
@early_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.152, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str, i32 1005, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to add early children: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.14 = internal global ptr @arizona_dev_init._entry.12, section ".printk_index", align 4
@arizona_dev_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str, i32 1015, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request core supplies: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.17 = internal global ptr @arizona_dev_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str, i32 1028, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request DCVDD: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.21 = internal global ptr @arizona_dev_init._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str, i32 1042, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Reset GPIO missing/malformed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.25 = internal global ptr @arizona_dev_init._entry.23, section ".printk_index", align 4
@arizona_dev_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str, i32 1052, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.28 = internal global ptr @arizona_dev_init._entry.26, section ".printk_index", align 4
@arizona_dev_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str, i32 1058, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable DCVDD: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.31 = internal global ptr @arizona_dev_init._entry.29, section ".printk_index", align 4
@arizona_dev_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str, i32 1069, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read ID register: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.34 = internal global ptr @arizona_dev_init._entry.32, section ".printk_index", align 4
@arizona_dev_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.5, ptr @.str, i32 1081, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown device ID: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.37 = internal global ptr @arizona_dev_init._entry.35, section ".printk_index", align 4
@arizona_dev_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.5, ptr @.str, i32 1090, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.40 = internal global ptr @arizona_dev_init._entry.38, section ".printk_index", align 4
@arizona_dev_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.5, ptr @.str, i32 1105, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to check write sequencer state: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.43 = internal global ptr @arizona_dev_init._entry.41, section ".printk_index", align 4
@arizona_dev_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.5, ptr @.str, i32 1118, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device failed initial boot: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.46 = internal global ptr @arizona_dev_init._entry.44, section ".printk_index", align 4
@arizona_dev_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str, i32 1125, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.48 = internal global ptr @arizona_dev_init._entry.47, section ".printk_index", align 4
@arizona_dev_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.5, ptr @.str, i32 1132, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read revision register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.51 = internal global ptr @arizona_dev_init._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM5102\00", [25 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.5, ptr @.str, i32 1144, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WM5102 registered as %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.56 = internal global ptr @arizona_dev_init._entry.53, section ".printk_index", align 4
@wm5102_devs = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.163, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.164, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.165, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.166, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.167, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @wm5102_supplies, i32 6 }], [104 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM5110\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8280\00", [25 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.5, ptr @.str, i32 1167, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WM5110 registered as %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.61 = internal global ptr @arizona_dev_init._entry.59, section ".printk_index", align 4
@wm5110_devs = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.163, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.164, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.165, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.166, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.174, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @wm5102_supplies, i32 6 }], [104 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS47L24\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM1831\00", [25 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.5, ptr @.str, i32 1191, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CS47L24 registered as %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.66 = internal global ptr @arizona_dev_init._entry.64, section ".printk_index", align 4
@cs47l24_devs = internal constant { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.164, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.165, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.166, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.175, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l24_supplies, i32 3 }], [64 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8997\00", [25 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.5, ptr @.str, i32 1207, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WM8997 registered as %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.70 = internal global ptr @arizona_dev_init._entry.68, section ".printk_index", align 4
@wm8997_devs = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.163, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.164, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.165, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.166, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.177, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @wm8997_supplies, i32 4 }], [104 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8998\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM1814\00", [25 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.5, ptr @.str, i32 1231, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WM8998 registered as %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.75 = internal global ptr @arizona_dev_init._entry.73, section ".printk_index", align 4
@wm8998_devs = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.163, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.164, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.165, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.166, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.178, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @wm5102_supplies, i32 6 }], [104 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.5, ptr @.str, i32 1241, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown device ID %x\0A\00", [42 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.78 = internal global ptr @arizona_dev_init._entry.76, section ".printk_index", align 4
@arizona_dev_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.5, ptr @.str, i32 1248, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No kernel support for device ID %x\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.81 = internal global ptr @arizona_dev_init._entry.79, section ".printk_index", align 4
@arizona_dev_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.5, ptr @.str, i32 1253, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s revision %c\0A\00", [16 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.84 = internal global ptr @arizona_dev_init._entry.82, section ".printk_index", align 4
@arizona_dev_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.5, ptr @.str, i32 1259, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to apply patch: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.87 = internal global ptr @arizona_dev_init._entry.85, section ".printk_index", align 4
@arizona_dev_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.5, ptr @.str, i32 1269, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to apply hardware patch: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.90 = internal global ptr @arizona_dev_init._entry.88, section ".printk_index", align 4
@arizona_dev_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.5, ptr @.str, i32 1279, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to apply sleep patch: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.93 = internal global ptr @arizona_dev_init._entry.91, section ".printk_index", align 4
@arizona_dev_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.5, ptr @.str, i32 1314, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid 32kHz clock source: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.96 = internal global ptr @arizona_dev_init._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CLKGEN error\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Overclocked\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Underclocked\00", [19 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.5, ptr @.str, i32 1375, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add subdevices: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arizona_dev_init._entry_ptr.102 = internal global ptr @arizona_dev_init._entry.100, section ".printk_index", align 4
@__kstrtab_arizona_dev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_dev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_dev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_dev_init to i32), ptr @__kstrtab_arizona_dev_init, ptr @__kstrtabns_arizona_dev_init }, section "___ksymtab_gpl+arizona_dev_init", align 4
@__kstrtab_arizona_dev_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_dev_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_dev_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_dev_exit to i32), ptr @__kstrtab_arizona_dev_exit, ptr @__kstrtabns_arizona_dev_exit }, section "___ksymtab_gpl+arizona_dev_exit", align 4
@__UNIQUE_ID_file298 = internal constant [33 x i8] c"arizona.file=drivers/mfd/arizona\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [23 x i8] c"arizona.license=GPL v2\00", section ".modinfo", align 1
@arizona_suspend.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.103, ptr @.str.104, ptr @.str, ptr @.str.105, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arizona\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arizona_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Suspend, disabling IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@arizona_resume.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.103, ptr @.str.106, ptr @.str, ptr @.str.107, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arizona_resume\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Resume, reenabling IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@arizona_suspend_noirq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.103, ptr @.str.108, ptr @.str, ptr @.str.109, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arizona_suspend_noirq\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Late suspend, reenabling IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@arizona_resume_noirq.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.103, ptr @.str.110, ptr @.str, ptr @.str.111, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arizona_resume_noirq\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Early resume, disabling IRQ\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_runtime_suspend.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.103, ptr @.str.112, ptr @.str, ptr @.str.113, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arizona_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Entering AoD mode\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str, i32 684, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set suspend voltage: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@arizona_runtime_suspend._entry_ptr = internal global ptr @arizona_runtime_suspend._entry, section ".printk_index", align 4
@arizona_runtime_suspend._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.112, ptr @.str, i32 706, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to clear write sequencer: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arizona_runtime_suspend._entry_ptr.117 = internal global ptr @arizona_runtime_suspend._entry.115, section ".printk_index", align 4
@arizona_runtime_suspend.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.103, ptr @.str.112, ptr @.str, ptr @.str.118, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Fully powering off\0A\00", [44 x i8] zeroinitializer }, align 32
@arizona_is_jack_det_active._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str, i32 519, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to check jack det status: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arizona_is_jack_det_active\00", [37 x i8] zeroinitializer }, align 32
@arizona_is_jack_det_active._entry_ptr = internal global ptr @arizona_is_jack_det_active._entry, section ".printk_index", align 4
@arizona_isolate_dcvdd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str, i32 493, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to isolate DCVDD: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arizona_isolate_dcvdd\00", [42 x i8] zeroinitializer }, align 32
@arizona_isolate_dcvdd._entry_ptr = internal global ptr @arizona_isolate_dcvdd._entry, section ".printk_index", align 4
@arizona_runtime_resume.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.103, ptr @.str.123, ptr @.str, ptr @.str.124, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arizona_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Leaving AoD mode\0A\00", [46 x i8] zeroinitializer }, align 32
@arizona_runtime_resume.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.103, ptr @.str.123, ptr @.str, ptr @.str.125, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Re-enabling core supplies\0A\00", [37 x i8] zeroinitializer }, align 32
@arizona_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.123, ptr @.str, i32 542, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@arizona_runtime_resume._entry_ptr = internal global ptr @arizona_runtime_resume._entry, section ".printk_index", align 4
@arizona_runtime_resume._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.123, ptr @.str, i32 549, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@arizona_runtime_resume._entry_ptr.127 = internal global ptr @arizona_runtime_resume._entry.126, section ".printk_index", align 4
@arizona_runtime_resume._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.123, ptr @.str, i32 575, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@arizona_runtime_resume._entry_ptr.129 = internal global ptr @arizona_runtime_resume._entry.128, section ".printk_index", align 4
@arizona_runtime_resume._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.123, ptr @.str, i32 583, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@arizona_runtime_resume._entry_ptr.131 = internal global ptr @arizona_runtime_resume._entry.130, section ".printk_index", align 4
@arizona_runtime_resume._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.123, ptr @.str, i32 608, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set resume voltage: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arizona_runtime_resume._entry_ptr.134 = internal global ptr @arizona_runtime_resume._entry.132, section ".printk_index", align 4
@arizona_runtime_resume._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.123, ptr @.str, i32 617, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to re-apply sleep patch: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_runtime_resume._entry_ptr.137 = internal global ptr @arizona_runtime_resume._entry.135, section ".printk_index", align 4
@arizona_runtime_resume._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.123, ptr @.str, i32 642, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to restore register cache\0A\00", [62 x i8] zeroinitializer }, align 32
@arizona_runtime_resume._entry_ptr.140 = internal global ptr @arizona_runtime_resume._entry.138, section ".printk_index", align 4
@arizona_connect_dcvdd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str, i32 506, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to connect DCVDD: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arizona_connect_dcvdd\00", [42 x i8] zeroinitializer }, align 32
@arizona_connect_dcvdd._entry_ptr = internal global ptr @arizona_connect_dcvdd._entry, section ".printk_index", align 4
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wlf,reset\00", [22 x i8] zeroinitializer }, align 32
@arizona_of_get_core_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str, i32 819, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Reset GPIO malformed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arizona_of_get_core_pdata\00", [38 x i8] zeroinitializer }, align 32
@arizona_of_get_core_pdata._entry_ptr = internal global ptr @arizona_of_get_core_pdata._entry, section ".printk_index", align 4
@.str.146 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wlf,gpio-defaults\00", [46 x i8] zeroinitializer }, align 32
@arizona_of_get_core_pdata._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.145, ptr @.str, i32 843, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to parse GPIO defaults: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@arizona_of_get_core_pdata._entry_ptr.149 = internal global ptr @arizona_of_get_core_pdata._entry.147, section ".printk_index", align 4
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD1\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arizona-ldo1\00", [19 x i8] zeroinitializer }, align 32
@wm5102_clear_write_sequencer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str, i32 464, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to clear write sequencer state: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wm5102_clear_write_sequencer\00", [35 x i8] zeroinitializer }, align 32
@wm5102_clear_write_sequencer._entry_ptr = internal global ptr @wm5102_clear_write_sequencer._entry, section ".printk_index", align 4
@wm5102_clear_write_sequencer._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str, i32 475, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to re-enable DCVDD: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm5102_clear_write_sequencer._entry_ptr.157 = internal global ptr @wm5102_clear_write_sequencer._entry.155, section ".printk_index", align 4
@arizona_poll_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str, i32 264, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed polling reg 0x%x: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arizona_poll_reg\00", [47 x i8] zeroinitializer }, align 32
@arizona_poll_reg._entry_ptr = internal global ptr @arizona_poll_reg._entry, section ".printk_index", align 4
@arizona_poll_reg._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str, i32 268, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Polling reg 0x%x timed out: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@arizona_poll_reg._entry_ptr.162 = internal global ptr @arizona_poll_reg._entry.160, section ".printk_index", align 4
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arizona-micsupp\00", [16 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arizona-gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arizona-haptics\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arizona-pwm\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm5102-codec\00", [19 x i8] zeroinitializer }, align 32
@wm5102_supplies = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173], [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD2\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD3\00", [25 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDDL\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDDR\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm5110-codec\00", [19 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs47l24-codec\00", [18 x i8] zeroinitializer }, align 32
@cs47l24_supplies = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.168, ptr @.str.171, ptr @.str.176], [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8997-codec\00", [19 x i8] zeroinitializer }, align 32
@wm8997_supplies = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.176], [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8998-codec\00", [19 x i8] zeroinitializer }, align 32
@wm5102_apply_hardware_patch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str, i32 411, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to start write sequencer: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wm5102_apply_hardware_patch\00", [36 x i8] zeroinitializer }, align 32
@wm5102_apply_hardware_patch._entry_ptr = internal global ptr @wm5102_apply_hardware_patch._entry, section ".printk_index", align 4
@arizona_enable_freerun_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str, i32 331, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to cache FLL settings: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arizona_enable_freerun_sysclk\00", [34 x i8] zeroinitializer }, align 32
@arizona_enable_freerun_sysclk._entry_ptr = internal global ptr @arizona_enable_freerun_sysclk._entry, section ".printk_index", align 4
@arizona_enable_freerun_sysclk._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str, i32 338, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to cache SYSCLK settings: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arizona_enable_freerun_sysclk._entry_ptr.185 = internal global ptr @arizona_enable_freerun_sysclk._entry.183, section ".printk_index", align 4
@arizona_enable_freerun_sysclk._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.182, ptr @.str, i32 348, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to start FLL in freerunning mode: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@arizona_enable_freerun_sysclk._entry_ptr.188 = internal global ptr @arizona_enable_freerun_sysclk._entry.186, section ".printk_index", align 4
@arizona_enable_freerun_sysclk._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.182, ptr @.str, i32 359, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to start SYSCLK: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arizona_enable_freerun_sysclk._entry_ptr.191 = internal global ptr @arizona_enable_freerun_sysclk._entry.189, section ".printk_index", align 4
@arizona_enable_freerun_sysclk._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.182, ptr @.str, i32 369, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to re-apply old FLL settings: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@arizona_enable_freerun_sysclk._entry_ptr.194 = internal global ptr @arizona_enable_freerun_sysclk._entry.192, section ".printk_index", align 4
@arizona_disable_freerun_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str, i32 383, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to re-apply old SYSCLK settings: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arizona_disable_freerun_sysclk\00", [33 x i8] zeroinitializer }, align 32
@arizona_disable_freerun_sysclk._entry_ptr = internal global ptr @arizona_disable_freerun_sysclk._entry, section ".printk_index", align 4
@arizona_disable_freerun_sysclk._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.196, ptr @.str, i32 390, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@arizona_disable_freerun_sysclk._entry_ptr.198 = internal global ptr @arizona_disable_freerun_sysclk._entry.197, section ".printk_index", align 4
@wm5110_sleep_patch = internal constant { [4 x %struct.reg_sequence], [48 x i8] } { [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 13178, i32 49408, i32 0 }, %struct.reg_sequence { i32 13179, i32 65, i32 0 }, %struct.reg_sequence { i32 13056, i32 41488, i32 0 }, %struct.reg_sequence { i32 13057, i32 1292, i32 0 }], [48 x i8] zeroinitializer }, align 32
@arizona_clkgen_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str, i32 112, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CLKGEN error\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arizona_clkgen_err\00", [45 x i8] zeroinitializer }, align 32
@arizona_clkgen_err._entry_ptr = internal global ptr @arizona_clkgen_err._entry, section ".printk_index", align 4
@arizona_overclocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str, i32 167, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read overclock status: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arizona_overclocked\00", [44 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr = internal global ptr @arizona_overclocked._entry, section ".printk_index", align 4
@arizona_overclocked._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str, i32 186, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PWM overclocked\0A\00", [47 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.205 = internal global ptr @arizona_overclocked._entry.203, section ".printk_index", align 4
@arizona_overclocked._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.202, ptr @.str, i32 188, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FX core overclocked\0A\00", [43 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.208 = internal global ptr @arizona_overclocked._entry.206, section ".printk_index", align 4
@arizona_overclocked._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.202, ptr @.str, i32 190, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC SYS overclocked\0A\00", [43 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.211 = internal global ptr @arizona_overclocked._entry.209, section ".printk_index", align 4
@arizona_overclocked._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.202, ptr @.str, i32 192, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC WARP overclocked\0A\00", [42 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.214 = internal global ptr @arizona_overclocked._entry.212, section ".printk_index", align 4
@arizona_overclocked._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.202, ptr @.str, i32 194, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC overclocked\0A\00", [47 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.217 = internal global ptr @arizona_overclocked._entry.215, section ".printk_index", align 4
@arizona_overclocked._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.202, ptr @.str, i32 196, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mixer overclocked\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.220 = internal global ptr @arizona_overclocked._entry.218, section ".printk_index", align 4
@arizona_overclocked._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.202, ptr @.str, i32 198, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AIF3 overclocked\0A\00", [46 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.223 = internal global ptr @arizona_overclocked._entry.221, section ".printk_index", align 4
@arizona_overclocked._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.202, ptr @.str, i32 200, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AIF2 overclocked\0A\00", [46 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.226 = internal global ptr @arizona_overclocked._entry.224, section ".printk_index", align 4
@arizona_overclocked._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.202, ptr @.str, i32 202, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AIF1 overclocked\0A\00", [46 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.229 = internal global ptr @arizona_overclocked._entry.227, section ".printk_index", align 4
@arizona_overclocked._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.202, ptr @.str, i32 204, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Pad control overclocked\0A\00", [39 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.232 = internal global ptr @arizona_overclocked._entry.230, section ".printk_index", align 4
@arizona_overclocked._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.202, ptr @.str, i32 207, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Slimbus subsystem overclocked\0A\00", [33 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.235 = internal global ptr @arizona_overclocked._entry.233, section ".printk_index", align 4
@arizona_overclocked._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.202, ptr @.str, i32 209, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Slimbus async overclocked\0A\00", [37 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.238 = internal global ptr @arizona_overclocked._entry.236, section ".printk_index", align 4
@arizona_overclocked._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.202, ptr @.str, i32 211, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Slimbus sync overclocked\0A\00", [38 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.241 = internal global ptr @arizona_overclocked._entry.239, section ".printk_index", align 4
@arizona_overclocked._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.202, ptr @.str, i32 213, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASRC async system overclocked\0A\00", [33 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.244 = internal global ptr @arizona_overclocked._entry.242, section ".printk_index", align 4
@arizona_overclocked._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.202, ptr @.str, i32 215, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ASRC async WARP overclocked\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.247 = internal global ptr @arizona_overclocked._entry.245, section ".printk_index", align 4
@arizona_overclocked._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.202, ptr @.str, i32 217, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ASRC sync system overclocked\0A\00", [34 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.250 = internal global ptr @arizona_overclocked._entry.248, section ".printk_index", align 4
@arizona_overclocked._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.202, ptr @.str, i32 219, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ASRC sync WARP overclocked\0A\00", [36 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.253 = internal global ptr @arizona_overclocked._entry.251, section ".printk_index", align 4
@arizona_overclocked._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.202, ptr @.str, i32 221, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP1 overclocked\0A\00", [46 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.256 = internal global ptr @arizona_overclocked._entry.254, section ".printk_index", align 4
@arizona_overclocked._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.202, ptr @.str, i32 223, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ISRC3 overclocked\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.259 = internal global ptr @arizona_overclocked._entry.257, section ".printk_index", align 4
@arizona_overclocked._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.202, ptr @.str, i32 225, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ISRC2 overclocked\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.262 = internal global ptr @arizona_overclocked._entry.260, section ".printk_index", align 4
@arizona_overclocked._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.202, ptr @.str, i32 227, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ISRC1 overclocked\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.265 = internal global ptr @arizona_overclocked._entry.263, section ".printk_index", align 4
@arizona_overclocked._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.202, ptr @.str, i32 230, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SPDIF overclocked\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_overclocked._entry_ptr.268 = internal global ptr @arizona_overclocked._entry.266, section ".printk_index", align 4
@arizona_underclocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str, i32 127, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read underclock status: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arizona_underclocked\00", [43 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr = internal global ptr @arizona_underclocked._entry, section ".printk_index", align 4
@arizona_underclocked._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.270, ptr @.str, i32 132, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AIF3 underclocked\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.273 = internal global ptr @arizona_underclocked._entry.271, section ".printk_index", align 4
@arizona_underclocked._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.270, ptr @.str, i32 134, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AIF2 underclocked\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.276 = internal global ptr @arizona_underclocked._entry.274, section ".printk_index", align 4
@arizona_underclocked._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.270, ptr @.str, i32 136, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AIF1 underclocked\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.279 = internal global ptr @arizona_underclocked._entry.277, section ".printk_index", align 4
@arizona_underclocked._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.270, ptr @.str, i32 138, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ISRC3 underclocked\0A\00", [44 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.282 = internal global ptr @arizona_underclocked._entry.280, section ".printk_index", align 4
@arizona_underclocked._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.270, ptr @.str, i32 140, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ISRC2 underclocked\0A\00", [44 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.285 = internal global ptr @arizona_underclocked._entry.283, section ".printk_index", align 4
@arizona_underclocked._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.270, ptr @.str, i32 142, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ISRC1 underclocked\0A\00", [44 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.288 = internal global ptr @arizona_underclocked._entry.286, section ".printk_index", align 4
@arizona_underclocked._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.270, ptr @.str, i32 144, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FX underclocked\0A\00", [47 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.291 = internal global ptr @arizona_underclocked._entry.289, section ".printk_index", align 4
@arizona_underclocked._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.270, ptr @.str, i32 146, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ASRC underclocked\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.294 = internal global ptr @arizona_underclocked._entry.292, section ".printk_index", align 4
@arizona_underclocked._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.270, ptr @.str, i32 148, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC underclocked\0A\00", [46 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.297 = internal global ptr @arizona_underclocked._entry.295, section ".printk_index", align 4
@arizona_underclocked._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.270, ptr @.str, i32 150, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC underclocked\0A\00", [46 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.300 = internal global ptr @arizona_underclocked._entry.298, section ".printk_index", align 4
@arizona_underclocked._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.270, ptr @.str, i32 152, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mixer dropped sample\0A\00", [42 x i8] zeroinitializer }, align 32
@arizona_underclocked._entry_ptr.303 = internal global ptr @arizona_underclocked._entry.301, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.304 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.305 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 7, i64 8]
@__sancov_gen_cov_switch_values.306 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.307 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 7, i64 8]
@__sancov_gen_cov_switch_values.308 = internal global [5 x i64] [i64 3, i64 32, i64 4294966779, i64 4294967258, i64 4294967294]
@__sancov_gen_cov_switch_values.309 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.310 = internal global [7 x i64] [i64 5, i64 32, i64 20738, i64 20752, i64 25417, i64 25443, i64 35223]
@__sancov_gen_cov_switch_values.311 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.312 = internal global [7 x i64] [i64 5, i64 32, i64 20738, i64 20752, i64 25417, i64 25443, i64 35223]
@__sancov_gen_cov_switch_values.313 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.314 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.315 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.316 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.317 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 83, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [15 x i8] c"arizona_pm_ops\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 789, i32 25 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 942, i32 44 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 942, i32 53 }
@___asan_gen_.330 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 951, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 966, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 989, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [11 x i8] c"early_devs\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 855, i32 30 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1005, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1014, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1025, i32 47 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1028, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1034, i32 55 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1041, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1051, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1058, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1069, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1081, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1090, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1103, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1118, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1125, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1132, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1140, i32 16 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1142, i32 5 }
@___asan_gen_.456 = private unnamed_addr constant [12 x i8] c"wm5102_devs\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 868, i32 30 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1158, i32 17 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1161, i32 17 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1165, i32 5 }
@___asan_gen_.471 = private unnamed_addr constant [12 x i8] c"wm5110_devs\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 880, i32 30 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1181, i32 17 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1185, i32 17 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1189, i32 5 }
@___asan_gen_.486 = private unnamed_addr constant [13 x i8] c"cs47l24_devs\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 898, i32 30 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1203, i32 16 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1205, i32 5 }
@___asan_gen_.498 = private unnamed_addr constant [12 x i8] c"wm8997_devs\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 916, i32 30 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1220, i32 17 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1224, i32 17 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1229, i32 5 }
@___asan_gen_.513 = private unnamed_addr constant [12 x i8] c"wm8998_devs\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 928, i32 30 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1241, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1247, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1253, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1258, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1267, i32 5 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1277, i32 5 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1313, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1364, i32 55 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1366, i32 56 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1368, i32 57 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 1375, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 752, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 782, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 762, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 772, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 660, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 682, i32 5 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 704, i32 5 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 733, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 518, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 493, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 533, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 536, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 541, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 549, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 574, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 581, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 606, i32 5 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 615, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 642, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 506, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 806, i32 46 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 818, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 825, i32 7 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 842, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 33, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 34, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 856, i32 12 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 463, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 475, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 263, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 268, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 869, i32 12 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 870, i32 12 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 871, i32 12 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 872, i32 12 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 874, i32 11 }
@___asan_gen_.762 = private unnamed_addr constant [16 x i8] c"wm5102_supplies\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 859, i32 27 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 860, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 861, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 862, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 863, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 864, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 865, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 886, i32 11 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 903, i32 11 }
@___asan_gen_.789 = private unnamed_addr constant [17 x i8] c"cs47l24_supplies\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 892, i32 27 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 895, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 922, i32 11 }
@___asan_gen_.798 = private unnamed_addr constant [16 x i8] c"wm8997_supplies\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 909, i32 27 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 934, i32 11 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 410, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 330, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 337, i32 3 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 346, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 359, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 368, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 382, i32 3 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 389, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant [19 x i8] c"wm5110_sleep_patch\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 431, i32 34 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 112, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 166, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 186, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 188, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 190, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 192, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 194, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 196, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 198, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 200, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 202, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 204, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 207, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 209, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 211, i32 3 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 213, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 215, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 217, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 219, i32 3 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 221, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 223, i32 3 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 225, i32 3 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 227, i32 3 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 230, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 126, i32 3 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 132, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 134, i32 3 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 136, i32 3 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 138, i32 3 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 140, i32 3 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 142, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 144, i32 3 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 146, i32 3 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 148, i32 3 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 150, i32 3 }
@___asan_gen_.1080 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1084 = private constant [30 x i8] c"../drivers/mfd/arizona-core.c\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1084, i32 152, i32 3 }
@llvm.compiler.used = appending global [353 x ptr] [ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__ksymtab_arizona_clk32k_disable, ptr @__ksymtab_arizona_clk32k_enable, ptr @__ksymtab_arizona_dev_exit, ptr @__ksymtab_arizona_dev_init, ptr @__ksymtab_arizona_pm_ops, ptr @arizona_clkgen_err._entry, ptr @arizona_clkgen_err._entry_ptr, ptr @arizona_connect_dcvdd._entry, ptr @arizona_connect_dcvdd._entry_ptr, ptr @arizona_dev_init._entry, ptr @arizona_dev_init._entry.100, ptr @arizona_dev_init._entry.12, ptr @arizona_dev_init._entry.15, ptr @arizona_dev_init._entry.19, ptr @arizona_dev_init._entry.23, ptr @arizona_dev_init._entry.26, ptr @arizona_dev_init._entry.29, ptr @arizona_dev_init._entry.32, ptr @arizona_dev_init._entry.35, ptr @arizona_dev_init._entry.38, ptr @arizona_dev_init._entry.41, ptr @arizona_dev_init._entry.44, ptr @arizona_dev_init._entry.47, ptr @arizona_dev_init._entry.49, ptr @arizona_dev_init._entry.53, ptr @arizona_dev_init._entry.59, ptr @arizona_dev_init._entry.64, ptr @arizona_dev_init._entry.68, ptr @arizona_dev_init._entry.73, ptr @arizona_dev_init._entry.76, ptr @arizona_dev_init._entry.79, ptr @arizona_dev_init._entry.8, ptr @arizona_dev_init._entry.82, ptr @arizona_dev_init._entry.85, ptr @arizona_dev_init._entry.88, ptr @arizona_dev_init._entry.91, ptr @arizona_dev_init._entry.94, ptr @arizona_dev_init._entry_ptr, ptr @arizona_dev_init._entry_ptr.102, ptr @arizona_dev_init._entry_ptr.11, ptr @arizona_dev_init._entry_ptr.14, ptr @arizona_dev_init._entry_ptr.17, ptr @arizona_dev_init._entry_ptr.21, ptr @arizona_dev_init._entry_ptr.25, ptr @arizona_dev_init._entry_ptr.28, ptr @arizona_dev_init._entry_ptr.31, ptr @arizona_dev_init._entry_ptr.34, ptr @arizona_dev_init._entry_ptr.37, ptr @arizona_dev_init._entry_ptr.40, ptr @arizona_dev_init._entry_ptr.43, ptr @arizona_dev_init._entry_ptr.46, ptr @arizona_dev_init._entry_ptr.48, ptr @arizona_dev_init._entry_ptr.51, ptr @arizona_dev_init._entry_ptr.56, ptr @arizona_dev_init._entry_ptr.61, ptr @arizona_dev_init._entry_ptr.66, ptr @arizona_dev_init._entry_ptr.70, ptr @arizona_dev_init._entry_ptr.75, ptr @arizona_dev_init._entry_ptr.78, ptr @arizona_dev_init._entry_ptr.81, ptr @arizona_dev_init._entry_ptr.84, ptr @arizona_dev_init._entry_ptr.87, ptr @arizona_dev_init._entry_ptr.90, ptr @arizona_dev_init._entry_ptr.93, ptr @arizona_dev_init._entry_ptr.96, ptr @arizona_disable_freerun_sysclk._entry, ptr @arizona_disable_freerun_sysclk._entry.197, ptr @arizona_disable_freerun_sysclk._entry_ptr, ptr @arizona_disable_freerun_sysclk._entry_ptr.198, ptr @arizona_enable_freerun_sysclk._entry, ptr @arizona_enable_freerun_sysclk._entry.183, ptr @arizona_enable_freerun_sysclk._entry.186, ptr @arizona_enable_freerun_sysclk._entry.189, ptr @arizona_enable_freerun_sysclk._entry.192, ptr @arizona_enable_freerun_sysclk._entry_ptr, ptr @arizona_enable_freerun_sysclk._entry_ptr.185, ptr @arizona_enable_freerun_sysclk._entry_ptr.188, ptr @arizona_enable_freerun_sysclk._entry_ptr.191, ptr @arizona_enable_freerun_sysclk._entry_ptr.194, ptr @arizona_is_jack_det_active._entry, ptr @arizona_is_jack_det_active._entry_ptr, ptr @arizona_isolate_dcvdd._entry, ptr @arizona_isolate_dcvdd._entry_ptr, ptr @arizona_of_get_core_pdata._entry, ptr @arizona_of_get_core_pdata._entry.147, ptr @arizona_of_get_core_pdata._entry_ptr, ptr @arizona_of_get_core_pdata._entry_ptr.149, ptr @arizona_overclocked._entry, ptr @arizona_overclocked._entry.203, ptr @arizona_overclocked._entry.206, ptr @arizona_overclocked._entry.209, ptr @arizona_overclocked._entry.212, ptr @arizona_overclocked._entry.215, ptr @arizona_overclocked._entry.218, ptr @arizona_overclocked._entry.221, ptr @arizona_overclocked._entry.224, ptr @arizona_overclocked._entry.227, ptr @arizona_overclocked._entry.230, ptr @arizona_overclocked._entry.233, ptr @arizona_overclocked._entry.236, ptr @arizona_overclocked._entry.239, ptr @arizona_overclocked._entry.242, ptr @arizona_overclocked._entry.245, ptr @arizona_overclocked._entry.248, ptr @arizona_overclocked._entry.251, ptr @arizona_overclocked._entry.254, ptr @arizona_overclocked._entry.257, ptr @arizona_overclocked._entry.260, ptr @arizona_overclocked._entry.263, ptr @arizona_overclocked._entry.266, ptr @arizona_overclocked._entry_ptr, ptr @arizona_overclocked._entry_ptr.205, ptr @arizona_overclocked._entry_ptr.208, ptr @arizona_overclocked._entry_ptr.211, ptr @arizona_overclocked._entry_ptr.214, ptr @arizona_overclocked._entry_ptr.217, ptr @arizona_overclocked._entry_ptr.220, ptr @arizona_overclocked._entry_ptr.223, ptr @arizona_overclocked._entry_ptr.226, ptr @arizona_overclocked._entry_ptr.229, ptr @arizona_overclocked._entry_ptr.232, ptr @arizona_overclocked._entry_ptr.235, ptr @arizona_overclocked._entry_ptr.238, ptr @arizona_overclocked._entry_ptr.241, ptr @arizona_overclocked._entry_ptr.244, ptr @arizona_overclocked._entry_ptr.247, ptr @arizona_overclocked._entry_ptr.250, ptr @arizona_overclocked._entry_ptr.253, ptr @arizona_overclocked._entry_ptr.256, ptr @arizona_overclocked._entry_ptr.259, ptr @arizona_overclocked._entry_ptr.262, ptr @arizona_overclocked._entry_ptr.265, ptr @arizona_overclocked._entry_ptr.268, ptr @arizona_poll_reg._entry, ptr @arizona_poll_reg._entry.160, ptr @arizona_poll_reg._entry_ptr, ptr @arizona_poll_reg._entry_ptr.162, ptr @arizona_runtime_resume._entry, ptr @arizona_runtime_resume._entry.126, ptr @arizona_runtime_resume._entry.128, ptr @arizona_runtime_resume._entry.130, ptr @arizona_runtime_resume._entry.132, ptr @arizona_runtime_resume._entry.135, ptr @arizona_runtime_resume._entry.138, ptr @arizona_runtime_resume._entry_ptr, ptr @arizona_runtime_resume._entry_ptr.127, ptr @arizona_runtime_resume._entry_ptr.129, ptr @arizona_runtime_resume._entry_ptr.131, ptr @arizona_runtime_resume._entry_ptr.134, ptr @arizona_runtime_resume._entry_ptr.137, ptr @arizona_runtime_resume._entry_ptr.140, ptr @arizona_runtime_suspend._entry, ptr @arizona_runtime_suspend._entry.115, ptr @arizona_runtime_suspend._entry_ptr, ptr @arizona_runtime_suspend._entry_ptr.117, ptr @arizona_underclocked._entry, ptr @arizona_underclocked._entry.271, ptr @arizona_underclocked._entry.274, ptr @arizona_underclocked._entry.277, ptr @arizona_underclocked._entry.280, ptr @arizona_underclocked._entry.283, ptr @arizona_underclocked._entry.286, ptr @arizona_underclocked._entry.289, ptr @arizona_underclocked._entry.292, ptr @arizona_underclocked._entry.295, ptr @arizona_underclocked._entry.298, ptr @arizona_underclocked._entry.301, ptr @arizona_underclocked._entry_ptr, ptr @arizona_underclocked._entry_ptr.273, ptr @arizona_underclocked._entry_ptr.276, ptr @arizona_underclocked._entry_ptr.279, ptr @arizona_underclocked._entry_ptr.282, ptr @arizona_underclocked._entry_ptr.285, ptr @arizona_underclocked._entry_ptr.288, ptr @arizona_underclocked._entry_ptr.291, ptr @arizona_underclocked._entry_ptr.294, ptr @arizona_underclocked._entry_ptr.297, ptr @arizona_underclocked._entry_ptr.300, ptr @arizona_underclocked._entry_ptr.303, ptr @wm5102_apply_hardware_patch._entry, ptr @wm5102_apply_hardware_patch._entry_ptr, ptr @wm5102_clear_write_sequencer._entry, ptr @wm5102_clear_write_sequencer._entry.155, ptr @wm5102_clear_write_sequencer._entry_ptr, ptr @wm5102_clear_write_sequencer._entry_ptr.157, ptr @.str, ptr @arizona_pm_ops, ptr @.str.1, ptr @.str.2, ptr @arizona_dev_init.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @early_devs, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @wm5102_devs, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @wm5110_devs, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @cs47l24_devs, ptr @.str.67, ptr @.str.69, ptr @wm8997_devs, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @wm8998_devs, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @wm5102_supplies, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @cs47l24_supplies, ptr @.str.176, ptr @.str.177, ptr @wm8997_supplies, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @wm5110_sleep_patch, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.240, ptr @.str.243, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @.str.261, ptr @.str.264, ptr @.str.267, ptr @.str.269, ptr @.str.270, ptr @.str.272, ptr @.str.275, ptr @.str.278, ptr @.str.281, ptr @.str.284, ptr @.str.287, ptr @.str.290, ptr @.str.293, ptr @.str.296, ptr @.str.299, ptr @.str.302], section "llvm.metadata"
@0 = internal global [256 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_devs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_devs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l24_devs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8997_devs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8998_devs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_dev_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_runtime_suspend._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_is_jack_det_active._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_isolate_dcvdd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_runtime_resume._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_runtime_resume._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_runtime_resume._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_runtime_resume._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_runtime_resume._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_runtime_resume._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_connect_dcvdd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_of_get_core_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_of_get_core_pdata._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_clear_write_sequencer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_clear_write_sequencer._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_poll_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_poll_reg._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_supplies to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l24_supplies to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8997_supplies to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_apply_hardware_patch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_enable_freerun_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_enable_freerun_sysclk._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_enable_freerun_sysclk._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_enable_freerun_sysclk._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_enable_freerun_sysclk._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_disable_freerun_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_disable_freerun_sysclk._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_sleep_patch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_clkgen_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_overclocked._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_underclocked._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_clk32k_enable(ptr noundef %arizona) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_lock = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %clk_lock, i32 noundef 0) #5
  %clk32k_ref = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 17
  %0 = ptrtoint ptr %clk32k_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk32k_ref, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %clk32k_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then:                                          ; preds = %entry
  %clk32k_src = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %clk32k_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk32k_src, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then.err_ref_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

if.then.err_ref_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ref

sw.bb:                                            ; preds = %if.then
  %dev = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not = icmp eq i32 %call.i, 0
  br i1 %cmp2.not, label %if.end, label %sw.bb.if.then20_crit_edge

sw.bb.if.then20_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.end:                                           ; preds = %sw.bb
  %mclk = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 18
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk, align 4
  %call.i38 = tail call i32 @clk_prepare(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.err_ref_crit_edge, label %if.then3.i

if.end.i.err_ref_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ref

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %8) #5
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i, %if.end.if.then6_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i38, %if.end.if.then6_crit_edge ]
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i39 = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 4) #5
  br label %if.then20

sw.bb10:                                          ; preds = %if.then
  %arrayidx12 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12, align 4
  %call.i40 = tail call i32 @clk_prepare(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end.i44, label %sw.bb10.if.then20_crit_edge

sw.bb10.if.then20_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.end.i44:                                       ; preds = %sw.bb10
  %call1.i42 = tail call i32 @clk_enable(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool2.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool2.not.i43, label %if.end.i44.err_ref_crit_edge, label %if.then3.i45

if.end.i44.err_ref_crit_edge:                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ref

if.then3.i45:                                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %12) #5
  br label %if.then20

err_ref:                                          ; preds = %if.end.i44.err_ref_crit_edge, %if.end.i.err_ref_crit_edge, %if.then.err_ref_crit_edge
  %13 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arizona, align 4
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 256, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp19.not = icmp eq i32 %call.i48, 0
  br i1 %cmp19.not, label %err_ref.if.end22_crit_edge, label %err_ref.if.then20_crit_edge

err_ref.if.then20_crit_edge:                      ; preds = %err_ref
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

err_ref.if.end22_crit_edge:                       ; preds = %err_ref
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then20:                                        ; preds = %err_ref.if.then20_crit_edge, %if.then3.i45, %sw.bb10.if.then20_crit_edge, %if.then6, %sw.bb.if.then20_crit_edge
  %ret.056 = phi i32 [ %call.i48, %err_ref.if.then20_crit_edge ], [ %retval.0.i.ph, %if.then6 ], [ %call.i, %sw.bb.if.then20_crit_edge ], [ %call1.i42, %if.then3.i45 ], [ %call.i40, %sw.bb10.if.then20_crit_edge ]
  %15 = ptrtoint ptr %clk32k_ref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk32k_ref, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %clk32k_ref, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %err_ref.if.end22_crit_edge, %entry.if.end22_crit_edge
  %ret.057 = phi i32 [ %ret.056, %if.then20 ], [ 0, %err_ref.if.end22_crit_edge ], [ 0, %entry.if.end22_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %clk_lock) #5
  ret i32 %ret.057
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_clk32k_disable(ptr noundef %arizona) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_lock = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %clk_lock, i32 noundef 0) #5
  %clk32k_ref = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 17
  %0 = ptrtoint ptr %clk32k_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk32k_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !527

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %clk32k_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk32k_ref, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %clk32k_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp21 = icmp eq i32 %dec, 0
  br i1 %cmp21, label %if.then22, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then22:                                        ; preds = %if.end
  %4 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arizona, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 256, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %clk32k_src = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %clk32k_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk32k_src, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.304)
  switch i32 %7, label %if.then22.if.end27_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb24
  ]

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

sw.bb:                                            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i39 = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 4) #5
  %mclk = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 18
  br label %if.end27.sink.split

sw.bb24:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx26 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 18, i32 1
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %sw.bb24, %sw.bb
  %arrayidx26.sink = phi ptr [ %arrayidx26, %sw.bb24 ], [ %mclk, %sw.bb ]
  %11 = ptrtoint ptr %arrayidx26.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx26.sink, align 4
  tail call void @clk_disable(ptr noundef %12) #5
  tail call void @clk_unprepare(ptr noundef %12) #5
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.then22.if.end27_crit_edge, %if.end.if.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef %clk_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_suspend.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_suspend, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !528

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_suspend.__UNIQUE_ID_ddebug293, ptr noundef %3, ptr noundef nonnull @.str.105) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_resume.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_resume, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !528

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_resume.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.107) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_suspend_noirq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_suspend_noirq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_suspend_noirq, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !528

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_suspend_noirq.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.109) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_resume_noirq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_resume_noirq.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_resume_noirq, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !528

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_resume_noirq.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.111) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %val.i154 = alloca i32, align 4
  %val.i140 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_runtime_suspend.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_runtime_suspend, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !528

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_runtime_suspend.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.113) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.305)
  switch i32 %5, label %sw.default [
    i32 2, label %do.end.sw.bb_crit_edge
    i32 4, label %do.end.sw.bb_crit_edge180
    i32 1, label %sw.bb23
    i32 7, label %do.end.sw.epilog_crit_edge
    i32 8, label %do.end.sw.epilog_crit_edge181
  ]

do.end.sw.epilog_crit_edge181:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.bb_crit_edge180:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !529
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 723, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %arizona_is_jack_det_active.exit.thread, label %arizona_is_jack_det_active.exit

arizona_is_jack_det_active.exit.thread:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  %and.i = and i32 %11, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %if.end7

arizona_is_jack_det_active.exit:                  ; preds = %sw.bb
  %dev.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.119, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %arizona_is_jack_det_active.exit.cleanup_crit_edge, label %arizona_is_jack_det_active.exit.if.end7_crit_edge

arizona_is_jack_det_active.exit.if.end7_crit_edge: ; preds = %arizona_is_jack_det_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

arizona_is_jack_det_active.exit.cleanup_crit_edge: ; preds = %arizona_is_jack_det_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %arizona_is_jack_det_active.exit.if.end7_crit_edge, %arizona_is_jack_det_active.exit.thread
  %retval.0.i137172 = phi i32 [ %and.i, %arizona_is_jack_det_active.exit.thread ], [ %call.i, %arizona_is_jack_det_active.exit.if.end7_crit_edge ]
  %external_dcvdd = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %external_dcvdd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 715, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.then9.sw.epilog_crit_edge, label %arizona_isolate_dcvdd.exit

if.then9.sw.epilog_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

arizona_isolate_dcvdd.exit:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i138 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i138 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i138, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.121, i32 noundef %call.i.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %dcvdd = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dcvdd, align 4
  %call14 = call i32 @regulator_set_voltage(ptr noundef %20, i32 noundef 1175000, i32 noundef 1175000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev20 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.114, i32 noundef %call14) #8
  br label %cleanup

sw.bb23:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i140) #5
  %23 = ptrtoint ptr %val.i140 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i140, align 4, !annotation !529
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call.i141 = call i32 @regmap_read(ptr noundef %25, i32 noundef 723, ptr noundef nonnull %val.i140) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i142 = icmp eq i32 %call.i141, 0
  br i1 %tobool.not.i142, label %arizona_is_jack_det_active.exit148.thread, label %arizona_is_jack_det_active.exit148

arizona_is_jack_det_active.exit148.thread:        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %val.i140 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i140, align 4
  %and.i145 = and i32 %27, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i140) #5
  br label %if.end27

arizona_is_jack_det_active.exit148:               ; preds = %sw.bb23
  %dev.i143 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i143, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.119, i32 noundef %call.i141) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i140) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp25 = icmp slt i32 %call.i141, 0
  br i1 %cmp25, label %arizona_is_jack_det_active.exit148.cleanup_crit_edge, label %arizona_is_jack_det_active.exit148.if.end27_crit_edge

arizona_is_jack_det_active.exit148.if.end27_crit_edge: ; preds = %arizona_is_jack_det_active.exit148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

arizona_is_jack_det_active.exit148.cleanup_crit_edge: ; preds = %arizona_is_jack_det_active.exit148
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %arizona_is_jack_det_active.exit148.if.end27_crit_edge, %arizona_is_jack_det_active.exit148.thread
  %retval.0.i147175 = phi i32 [ %and.i145, %arizona_is_jack_det_active.exit148.thread ], [ %call.i141, %arizona_is_jack_det_active.exit148.if.end27_crit_edge ]
  %external_dcvdd28 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %external_dcvdd28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load29 = load i8, ptr %external_dcvdd28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load29)
  %tobool32.not = icmp sgt i8 %bf.load29, -1
  br i1 %tobool32.not, label %if.end27.if.end38_crit_edge, label %if.then33

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then33:                                        ; preds = %if.end27
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i.i149 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 715, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %cmp.not.i150 = icmp eq i32 %call.i.i149, 0
  br i1 %cmp.not.i150, label %if.then33.if.end38_crit_edge, label %arizona_isolate_dcvdd.exit153

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

arizona_isolate_dcvdd.exit153:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i151 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %dev.i151 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i151, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.121, i32 noundef %call.i.i149) #8
  br label %cleanup

if.end38:                                         ; preds = %if.then33.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i147175)
  %tobool39.not = icmp eq i32 %retval.0.i147175, 0
  br i1 %tobool39.not, label %if.then40, label %if.end38.sw.epilog_crit_edge

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then40:                                        ; preds = %if.end38
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call41 = call i32 @regmap_write(ptr noundef %36, i32 noundef 25, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.sw.epilog_crit_edge, label %do.end46

if.then40.sw.epilog_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end46:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %dev47 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.116, i32 noundef %call41) #8
  br label %cleanup

sw.default:                                       ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i154) #5
  %39 = ptrtoint ptr %val.i154 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %val.i154, align 4, !annotation !529
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i155 = call i32 @regmap_read(ptr noundef %41, i32 noundef 723, ptr noundef nonnull %val.i154) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool.not.i156 = icmp eq i32 %call.i155, 0
  br i1 %tobool.not.i156, label %arizona_is_jack_det_active.exit162.thread, label %arizona_is_jack_det_active.exit162

arizona_is_jack_det_active.exit162.thread:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %val.i154 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i154, align 4
  %and.i159 = and i32 %43, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i154) #5
  br label %if.end54

arizona_is_jack_det_active.exit162:               ; preds = %sw.default
  %dev.i157 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %dev.i157 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i157, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.119, i32 noundef %call.i155) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i154) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp52 = icmp slt i32 %call.i155, 0
  br i1 %cmp52, label %arizona_is_jack_det_active.exit162.cleanup_crit_edge, label %arizona_is_jack_det_active.exit162.if.end54_crit_edge

arizona_is_jack_det_active.exit162.if.end54_crit_edge: ; preds = %arizona_is_jack_det_active.exit162
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

arizona_is_jack_det_active.exit162.cleanup_crit_edge: ; preds = %arizona_is_jack_det_active.exit162
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %arizona_is_jack_det_active.exit162.if.end54_crit_edge, %arizona_is_jack_det_active.exit162.thread
  %retval.0.i161178 = phi i32 [ %and.i159, %arizona_is_jack_det_active.exit162.thread ], [ %call.i155, %arizona_is_jack_det_active.exit162.if.end54_crit_edge ]
  %external_dcvdd55 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %external_dcvdd55 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load56 = load i8, ptr %external_dcvdd55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load56)
  %tobool59.not = icmp sgt i8 %bf.load56, -1
  br i1 %tobool59.not, label %if.end54.sw.epilog_crit_edge, label %if.then60

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then60:                                        ; preds = %if.end54
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i.i163 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 715, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %cmp.not.i164 = icmp eq i32 %call.i.i163, 0
  br i1 %cmp.not.i164, label %if.then60.sw.epilog_crit_edge, label %arizona_isolate_dcvdd.exit167

if.then60.sw.epilog_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

arizona_isolate_dcvdd.exit167:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i165 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %dev.i165 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i165, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.121, i32 noundef %call.i.i163) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then60.sw.epilog_crit_edge, %if.end54.sw.epilog_crit_edge, %if.then40.sw.epilog_crit_edge, %if.end38.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.then9.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge181
  %jd_active.0 = phi i32 [ %retval.0.i161178, %if.end54.sw.epilog_crit_edge ], [ 0, %do.end.sw.epilog_crit_edge ], [ 0, %do.end.sw.epilog_crit_edge181 ], [ %retval.0.i147175, %if.end38.sw.epilog_crit_edge ], [ 0, %if.then40.sw.epilog_crit_edge ], [ %retval.0.i137172, %if.else.sw.epilog_crit_edge ], [ %retval.0.i137172, %if.then9.sw.epilog_crit_edge ], [ %retval.0.i161178, %if.then60.sw.epilog_crit_edge ]
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  call void @regcache_cache_only(ptr noundef %52, i1 noundef zeroext true) #5
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  call void @regcache_mark_dirty(ptr noundef %54) #5
  %dcvdd68 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %dcvdd68 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dcvdd68, align 4
  %call69 = call i32 @regulator_disable(ptr noundef %56) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jd_active.0)
  %tobool70.not = icmp eq i32 %jd_active.0, 0
  br i1 %tobool70.not, label %do.body72, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body72:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_runtime_suspend.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_runtime_suspend, %if.then84)) #5
          to label %do.end88 [label %if.then84], !srcloc !528

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #7
  %dev85 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev85, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_runtime_suspend.__UNIQUE_ID_ddebug292, ptr noundef %58, ptr noundef nonnull @.str.118) #5
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %do.body72
  %has_fully_powered_off = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 7
  %59 = ptrtoint ptr %has_fully_powered_off to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %has_fully_powered_off, align 4
  %irq = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 10
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  call void @disable_irq_nosync(i32 noundef %61) #5
  %pdata.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8
  %62 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata.i, align 4
  %tobool.not.i168 = icmp eq ptr %63, null
  br i1 %tobool.not.i168, label %do.end88.arizona_enable_reset.exit_crit_edge, label %if.then.i

do.end88.arizona_enable_reset.exit_crit_edge:     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_enable_reset.exit

if.then.i:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #7
  call void @gpiod_set_raw_value_cansleep(ptr noundef nonnull %63, i32 noundef 0) #5
  br label %arizona_enable_reset.exit

arizona_enable_reset.exit:                        ; preds = %if.then.i, %do.end88.arizona_enable_reset.exit_crit_edge
  %num_core_supplies = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 5
  %call89 = call i32 @regulator_bulk_disable(i32 noundef %65, ptr noundef %core_supplies) #5
  br label %cleanup

cleanup:                                          ; preds = %arizona_enable_reset.exit, %sw.epilog.cleanup_crit_edge, %arizona_isolate_dcvdd.exit167, %arizona_is_jack_det_active.exit162.cleanup_crit_edge, %do.end46, %arizona_isolate_dcvdd.exit153, %arizona_is_jack_det_active.exit148.cleanup_crit_edge, %do.end19, %arizona_isolate_dcvdd.exit, %arizona_is_jack_det_active.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %do.end46 ], [ %call14, %do.end19 ], [ %call.i, %arizona_is_jack_det_active.exit.cleanup_crit_edge ], [ %call.i.i, %arizona_isolate_dcvdd.exit ], [ %call.i141, %arizona_is_jack_det_active.exit148.cleanup_crit_edge ], [ %call.i.i149, %arizona_isolate_dcvdd.exit153 ], [ %call.i155, %arizona_is_jack_det_active.exit162.cleanup_crit_edge ], [ %call.i.i163, %arizona_isolate_dcvdd.exit167 ], [ 0, %arizona_enable_reset.exit ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_runtime_resume.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_runtime_resume, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !528

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_runtime_resume.__UNIQUE_ID_ddebug289, ptr noundef %3, ptr noundef nonnull @.str.124) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %has_fully_powered_off = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %has_fully_powered_off to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_fully_powered_off, align 4, !range !530
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %do.end.if.end31_crit_edge, label %do.body7

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_runtime_resume.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_runtime_resume, %if.then19)) #5
          to label %do.end23 [label %if.then19], !srcloc !528

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %dev20 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_runtime_resume.__UNIQUE_ID_ddebug290, ptr noundef %7, ptr noundef nonnull @.str.125) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %num_core_supplies = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 5
  %call24 = tail call i32 @regulator_bulk_enable(i32 noundef %9, ptr noundef %core_supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end23.if.end31_crit_edge, label %do.end29

do.end23.if.end31_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

do.end29:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call24) #8
  br label %cleanup

if.end31:                                         ; preds = %do.end23.if.end31_crit_edge, %do.end.if.end31_crit_edge
  %dcvdd = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dcvdd, align 4
  %call32 = tail call i32 @regulator_enable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp.not = icmp eq i32 %call32, 0
  br i1 %cmp.not, label %if.end46, label %do.end36

do.end36:                                         ; preds = %if.end31
  %dev37 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.30, i32 noundef %call32) #8
  %14 = ptrtoint ptr %has_fully_powered_off to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_fully_powered_off, align 4, !range !530
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool39.not = icmp eq i8 %15, 0
  br i1 %tobool39.not, label %do.end36.cleanup_crit_edge, label %if.then40

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  %num_core_supplies41 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %num_core_supplies41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_core_supplies41, align 4
  %core_supplies42 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 5
  %call44 = tail call i32 @regulator_bulk_disable(i32 noundef %17, ptr noundef %core_supplies42) #5
  br label %cleanup

if.end46:                                         ; preds = %if.end31
  %18 = ptrtoint ptr %has_fully_powered_off to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_fully_powered_off, align 4, !range !530
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool48.not = icmp eq i8 %19, 0
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  %pdata.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then49.arizona_disable_reset.exit_crit_edge, label %if.then.i

if.then49.arizona_disable_reset.exit_crit_edge:   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_disable_reset.exit

if.then.i:                                        ; preds = %if.then49
  %type.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.306)
  switch i32 %23, label %if.then.i.sw.epilog.i_crit_edge [
    i32 2, label %if.then.i.sw.bb.i_crit_edge
    i32 4, label %if.then.i.sw.bb.i_crit_edge237
  ]

if.then.i.sw.bb.i_crit_edge237:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge237
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.then.i.sw.epilog.i_crit_edge
  %25 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata.i, align 4
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %26, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #5
  br label %arizona_disable_reset.exit

arizona_disable_reset.exit:                       ; preds = %sw.epilog.i, %if.then49.arizona_disable_reset.exit_crit_edge
  %irq = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %28) #5
  %29 = ptrtoint ptr %has_fully_powered_off to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %has_fully_powered_off, align 4
  br label %if.end51

if.end51:                                         ; preds = %arizona_disable_reset.exit, %if.end46.if.end51_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %31, i1 noundef zeroext false) #5
  %type = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.307)
  switch i32 %33, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %if.end51.sw.bb75_crit_edge
    i32 4, label %if.end51.sw.bb75_crit_edge238
    i32 7, label %if.end51.sw.bb108_crit_edge
    i32 8, label %if.end51.sw.bb108_crit_edge239
  ]

if.end51.sw.bb108_crit_edge239:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb108

if.end51.sw.bb108_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb108

if.end51.sw.bb75_crit_edge238:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb75

if.end51.sw.bb75_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb75

sw.bb:                                            ; preds = %if.end51
  %external_dcvdd = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %external_dcvdd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool52.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool52.not, label %sw.bb.if.end58_crit_edge, label %if.then53

sw.bb.if.end58_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then53:                                        ; preds = %sw.bb
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 715, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.then53.if.end58_crit_edge, label %arizona_connect_dcvdd.exit

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

arizona_connect_dcvdd.exit:                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.141, i32 noundef %call.i.i) #8
  br label %err

if.end58:                                         ; preds = %if.then53.if.end58_crit_edge, %sw.bb.if.end58_crit_edge
  %call59 = tail call i32 @wm5102_patch(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %dev65 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.86, i32 noundef %call59) #8
  br label %err

if.end66:                                         ; preds = %if.end58
  %call67 = tail call fastcc i32 @wm5102_apply_hardware_patch(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end66.sw.epilog_crit_edge, label %do.end72

if.end66.sw.epilog_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %dev73 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev73, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.89, i32 noundef %call67) #8
  br label %err

sw.bb75:                                          ; preds = %if.end51.sw.bb75_crit_edge, %if.end51.sw.bb75_crit_edge238
  %call.i = tail call fastcc i32 @arizona_poll_reg(ptr noundef %1, i32 noundef 30, i32 noundef 3363, i32 noundef 256, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i202 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i202, label %if.then.i203, label %sw.bb75.arizona_wait_for_boot.exit_crit_edge

sw.bb75.arizona_wait_for_boot.exit_crit_edge:     ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_wait_for_boot.exit

if.then.i203:                                     ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 3332, i32 noundef 256) #5
  br label %arizona_wait_for_boot.exit

arizona_wait_for_boot.exit:                       ; preds = %if.then.i203, %sw.bb75.arizona_wait_for_boot.exit_crit_edge
  %dev.i204 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %dev.i204 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i204, align 4
  %call.i.i205 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 22
  %48 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store volatile i64 %call.i.i205, ptr %last_busy.i.i, align 8
  br i1 %tobool.not.i202, label %if.end79, label %arizona_wait_for_boot.exit.err_crit_edge

arizona_wait_for_boot.exit.err_crit_edge:         ; preds = %arizona_wait_for_boot.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end79:                                         ; preds = %arizona_wait_for_boot.exit
  %external_dcvdd80 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 9
  %49 = ptrtoint ptr %external_dcvdd80 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load81 = load i8, ptr %external_dcvdd80, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load81)
  %tobool84.not = icmp sgt i8 %bf.load81, -1
  br i1 %tobool84.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %if.end79
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i.i206 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 715, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i206)
  %cmp.not.i207 = icmp eq i32 %call.i.i206, 0
  br i1 %cmp.not.i207, label %if.then85.if.end99_crit_edge, label %arizona_connect_dcvdd.exit210

if.then85.if.end99_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

arizona_connect_dcvdd.exit210:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %dev.i204 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i204, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.141, i32 noundef %call.i.i206) #8
  br label %err

if.else:                                          ; preds = %if.end79
  %54 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dcvdd, align 4
  %call91 = tail call i32 @regulator_set_voltage(ptr noundef %55, i32 noundef 1200000, i32 noundef 1200000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.end96, label %if.else.if.end99_crit_edge

if.else.if.end99_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

do.end96:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %dev.i204 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i204, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.133, i32 noundef %call91) #8
  br label %err

if.end99:                                         ; preds = %if.else.if.end99_crit_edge, %if.then85.if.end99_crit_edge
  %call100 = tail call fastcc i32 @wm5110_apply_sleep_patch(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end99.sw.epilog_crit_edge, label %do.end105

if.end99.sw.epilog_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end105:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %dev.i204 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i204, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.136, i32 noundef %call100) #8
  br label %err

sw.bb108:                                         ; preds = %if.end51.sw.bb108_crit_edge, %if.end51.sw.bb108_crit_edge239
  %call.i211 = tail call fastcc i32 @arizona_poll_reg(ptr noundef %1, i32 noundef 30, i32 noundef 3363, i32 noundef 256, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool.not.i212 = icmp eq i32 %call.i211, 0
  br i1 %tobool.not.i212, label %if.then.i214, label %err.critedge

if.then.i214:                                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call1.i213 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 3332, i32 noundef 256) #5
  %dev.i215.c234 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %dev.i215.c234 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i215.c234, align 4
  %call.i.i216.c235 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i217.c236 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 12, i32 22
  %64 = ptrtoint ptr %last_busy.i.i217.c236 to i32
  call void @__asan_store8_noabort(i32 %64)
  store volatile i64 %call.i.i216.c235, ptr %last_busy.i.i217.c236, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end51
  %call.i219 = tail call fastcc i32 @arizona_poll_reg(ptr noundef %1, i32 noundef 30, i32 noundef 3363, i32 noundef 256, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool.not.i220 = icmp eq i32 %call.i219, 0
  br i1 %tobool.not.i220, label %if.then.i222, label %sw.default.arizona_wait_for_boot.exit226_crit_edge

sw.default.arizona_wait_for_boot.exit226_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_wait_for_boot.exit226

if.then.i222:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call1.i221 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 3332, i32 noundef 256) #5
  br label %arizona_wait_for_boot.exit226

arizona_wait_for_boot.exit226:                    ; preds = %if.then.i222, %sw.default.arizona_wait_for_boot.exit226_crit_edge
  %dev.i223 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %dev.i223 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i223, align 4
  %call.i.i224 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i225 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 12, i32 22
  %69 = ptrtoint ptr %last_busy.i.i225 to i32
  call void @__asan_store8_noabort(i32 %69)
  store volatile i64 %call.i.i224, ptr %last_busy.i.i225, align 8
  br i1 %tobool.not.i220, label %if.end116, label %arizona_wait_for_boot.exit226.err_crit_edge

arizona_wait_for_boot.exit226.err_crit_edge:      ; preds = %arizona_wait_for_boot.exit226
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end116:                                        ; preds = %arizona_wait_for_boot.exit226
  %external_dcvdd117 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 9
  %70 = ptrtoint ptr %external_dcvdd117 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load118 = load i8, ptr %external_dcvdd117, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load118)
  %tobool121.not = icmp sgt i8 %bf.load118, -1
  br i1 %tobool121.not, label %if.end116.sw.epilog_crit_edge, label %if.then122

if.end116.sw.epilog_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then122:                                       ; preds = %if.end116
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call.i.i227 = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 715, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i227)
  %cmp.not.i228 = icmp eq i32 %call.i.i227, 0
  br i1 %cmp.not.i228, label %if.then122.sw.epilog_crit_edge, label %arizona_connect_dcvdd.exit231

if.then122.sw.epilog_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

arizona_connect_dcvdd.exit231:                    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %dev.i223 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i223, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.141, i32 noundef %call.i.i227) #8
  br label %err

sw.epilog:                                        ; preds = %if.then122.sw.epilog_crit_edge, %if.end116.sw.epilog_crit_edge, %if.then.i214, %if.end99.sw.epilog_crit_edge, %if.end66.sw.epilog_crit_edge
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call129 = tail call i32 @regcache_sync(ptr noundef %76) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130.not = icmp eq i32 %call129, 0
  br i1 %cmp130.not, label %sw.epilog.cleanup_crit_edge, label %do.end134

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end134:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev135 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev135, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.139) #8
  br label %err

err.critedge:                                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i215.c = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %dev.i215.c to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i215.c, align 4
  %call.i.i216.c = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i217.c = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 12, i32 22
  %81 = ptrtoint ptr %last_busy.i.i217.c to i32
  call void @__asan_store8_noabort(i32 %81)
  store volatile i64 %call.i.i216.c, ptr %last_busy.i.i217.c, align 8
  br label %err

err:                                              ; preds = %err.critedge, %do.end134, %arizona_connect_dcvdd.exit231, %arizona_wait_for_boot.exit226.err_crit_edge, %do.end105, %do.end96, %arizona_connect_dcvdd.exit210, %arizona_wait_for_boot.exit.err_crit_edge, %do.end72, %do.end64, %arizona_connect_dcvdd.exit
  %ret.0 = phi i32 [ %call.i219, %arizona_wait_for_boot.exit226.err_crit_edge ], [ %call.i.i227, %arizona_connect_dcvdd.exit231 ], [ %call129, %do.end134 ], [ %call.i, %arizona_wait_for_boot.exit.err_crit_edge ], [ %call.i.i206, %arizona_connect_dcvdd.exit210 ], [ %call100, %do.end105 ], [ %call91, %do.end96 ], [ %call.i.i, %arizona_connect_dcvdd.exit ], [ %call59, %do.end64 ], [ %call67, %do.end72 ], [ %call.i211, %err.critedge ]
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %83, i1 noundef zeroext true) #5
  %84 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dcvdd, align 4
  %call139 = tail call i32 @regulator_disable(ptr noundef %85) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %sw.epilog.cleanup_crit_edge, %if.then40, %do.end36.cleanup_crit_edge, %do.end29
  %retval.0 = phi i32 [ %call24, %do.end29 ], [ %ret.0, %err ], [ %call32, %if.then40 ], [ %call32, %do.end36.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_dev_init(ptr noundef %arizona) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !529
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !529
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arizona, ptr %driver_data.i, align 4
  %clk_lock = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %clk_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @arizona_dev_init.__key) #5
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %8, null
  %pdata1.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = call ptr @memcpy(ptr %pdata1.i, ptr %8, i32 276)
  br label %do.end11

if.else:                                          ; preds = %entry
  %call.i = tail call ptr @devm_gpiod_get(ptr noundef %6, ptr noundef nonnull @.str.143, i32 noundef 3) #5
  %10 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %pdata1.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.else.if.end13.i_crit_edge

if.else.if.end13.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then.i:                                        ; preds = %if.else
  %11 = ptrtoint ptr %call.i to i32
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.308)
  switch i32 %11, label %do.end.i [
    i32 -517, label %if.then.i.cleanup_crit_edge
    i32 -2, label %if.then.i.if.end11.i_crit_edge
    i32 -38, label %if.then.i.if.end11.i_crit_edge717
  ]

if.then.i.if.end11.i_crit_edge717:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.144, i32 noundef %11) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.then.i.if.end11.i_crit_edge, %if.then.i.if.end11.i_crit_edge717
  %15 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pdata1.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end11.i, %if.else.if.end13.i_crit_edge
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i, align 8
  %gpio_defaults.i = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.146, ptr noundef %gpio_defaults.i, i32 noundef 5, i32 noundef 0) #5
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp16.i = icmp sgt i32 %20, -1
  br i1 %cmp16.i, label %for.body.preheader.i, label %do.end36.i

for.body.preheader.i:                             ; preds = %if.end13.i
  %21 = ptrtoint ptr %gpio_defaults.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gpio_defaults.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %22)
  %cmp20.i = icmp ugt i32 %22, 65535
  br i1 %cmp20.i, label %for.body.preheader.i.for.inc.sink.split.i_crit_edge, label %if.else24.i

for.body.preheader.i.for.inc.sink.split.i_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

if.else24.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp27.i = icmp eq i32 %22, 0
  br i1 %cmp27.i, label %if.else24.i.for.inc.sink.split.i_crit_edge, label %if.else24.i.for.inc.i_crit_edge

if.else24.i.for.inc.i_crit_edge:                  ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.else24.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.else24.i.for.inc.sink.split.i_crit_edge, %for.body.preheader.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %for.body.preheader.i.for.inc.sink.split.i_crit_edge ], [ 65536, %if.else24.i.for.inc.sink.split.i_crit_edge ]
  %23 = ptrtoint ptr %gpio_defaults.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %gpio_defaults.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else24.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %25)
  %cmp20.1.i = icmp ugt i32 %25, 65535
  br i1 %cmp20.1.i, label %for.inc.i.for.inc.1.sink.split.i_crit_edge, label %if.else24.1.i

for.inc.i.for.inc.1.sink.split.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.sink.split.i

if.else24.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp27.1.i = icmp eq i32 %25, 0
  br i1 %cmp27.1.i, label %if.else24.1.i.for.inc.1.sink.split.i_crit_edge, label %if.else24.1.i.for.inc.1.i_crit_edge

if.else24.1.i.for.inc.1.i_crit_edge:              ; preds = %if.else24.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.else24.1.i.for.inc.1.sink.split.i_crit_edge:   ; preds = %if.else24.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.sink.split.i

for.inc.1.sink.split.i:                           ; preds = %if.else24.1.i.for.inc.1.sink.split.i_crit_edge, %for.inc.i.for.inc.1.sink.split.i_crit_edge
  %.sink65.i = phi i32 [ 65536, %if.else24.1.i.for.inc.1.sink.split.i_crit_edge ], [ 0, %for.inc.i.for.inc.1.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink65.i, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.1.sink.split.i, %if.else24.1.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6, i32 2
  %27 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %28)
  %cmp20.2.i = icmp ugt i32 %28, 65535
  br i1 %cmp20.2.i, label %for.inc.1.i.for.inc.2.sink.split.i_crit_edge, label %if.else24.2.i

for.inc.1.i.for.inc.2.sink.split.i_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.sink.split.i

if.else24.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp27.2.i = icmp eq i32 %28, 0
  br i1 %cmp27.2.i, label %if.else24.2.i.for.inc.2.sink.split.i_crit_edge, label %if.else24.2.i.for.inc.2.i_crit_edge

if.else24.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else24.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.else24.2.i.for.inc.2.sink.split.i_crit_edge:   ; preds = %if.else24.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.sink.split.i

for.inc.2.sink.split.i:                           ; preds = %if.else24.2.i.for.inc.2.sink.split.i_crit_edge, %for.inc.1.i.for.inc.2.sink.split.i_crit_edge
  %.sink66.i = phi i32 [ 65536, %if.else24.2.i.for.inc.2.sink.split.i_crit_edge ], [ 0, %for.inc.1.i.for.inc.2.sink.split.i_crit_edge ]
  %29 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink66.i, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %for.inc.2.sink.split.i, %if.else24.2.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6, i32 3
  %30 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %31)
  %cmp20.3.i = icmp ugt i32 %31, 65535
  br i1 %cmp20.3.i, label %for.inc.2.i.for.inc.3.sink.split.i_crit_edge, label %if.else24.3.i

for.inc.2.i.for.inc.3.sink.split.i_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.sink.split.i

if.else24.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp27.3.i = icmp eq i32 %31, 0
  br i1 %cmp27.3.i, label %if.else24.3.i.for.inc.3.sink.split.i_crit_edge, label %if.else24.3.i.for.inc.3.i_crit_edge

if.else24.3.i.for.inc.3.i_crit_edge:              ; preds = %if.else24.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.else24.3.i.for.inc.3.sink.split.i_crit_edge:   ; preds = %if.else24.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.sink.split.i

for.inc.3.sink.split.i:                           ; preds = %if.else24.3.i.for.inc.3.sink.split.i_crit_edge, %for.inc.2.i.for.inc.3.sink.split.i_crit_edge
  %.sink67.i = phi i32 [ 65536, %if.else24.3.i.for.inc.3.sink.split.i_crit_edge ], [ 0, %for.inc.2.i.for.inc.3.sink.split.i_crit_edge ]
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink67.i, ptr %arrayidx.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %for.inc.3.sink.split.i, %if.else24.3.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6, i32 4
  %33 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %34)
  %cmp20.4.i = icmp ugt i32 %34, 65535
  br i1 %cmp20.4.i, label %if.then21.4.i, label %if.else24.4.i

if.else24.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp27.4.i = icmp eq i32 %34, 0
  br i1 %cmp27.4.i, label %if.then28.4.i, label %if.else24.4.i.do.end11_crit_edge

if.else24.4.i.do.end11_crit_edge:                 ; preds = %if.else24.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

if.then28.4.i:                                    ; preds = %if.else24.4.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 65536, ptr %arrayidx.4.i, align 4
  br label %do.end11

if.then21.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx.4.i, align 4
  br label %do.end11

do.end36.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.148, i32 noundef %20) #8
  br label %do.end11

do.end11:                                         ; preds = %do.end36.i, %if.then21.4.i, %if.then28.4.i, %if.else24.4.i.do.end11_crit_edge, %if.then
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  %call14 = tail call ptr @devm_clk_get(ptr noundef %40, ptr noundef nonnull @.str.1) #5
  %arrayidx15 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 18, i32 0
  %41 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call14, ptr %arrayidx15, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %do.end11.for.inc_crit_edge

do.end11.for.inc_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end22:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1, align 4
  %44 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %44) #8
  %45 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end22, %do.end11.for.inc_crit_edge
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 4
  %call14.1 = tail call ptr @devm_clk_get(ptr noundef %47, ptr noundef nonnull @.str.2) #5
  %arrayidx15.1 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call14.1, ptr %arrayidx15.1, align 4
  %cmp.i.1 = icmp ugt ptr %call14.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %do.end22.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

do.end22.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1, align 4
  %51 = ptrtoint ptr %call14.1 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %51) #8
  %52 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx15.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end22.1, %for.inc.for.inc.1_crit_edge
  %53 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arizona, align 4
  tail call void @regcache_cache_only(ptr noundef %54, i1 noundef zeroext true) #5
  %type = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 2
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type, align 4
  %.off = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.off)
  %switch = icmp ult i32 %.off, 8
  br i1 %switch, label %for.body33.preheader, label %do.end41

for.body33.preheader:                             ; preds = %for.inc.1
  %arrayidx35 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 5, i32 0
  %57 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.150, ptr %arrayidx35, align 4
  %arrayidx35.1 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.151, ptr %arrayidx35.1, align 4
  %num_core_supplies = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 4
  %59 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %num_core_supplies, align 4
  %external_dcvdd = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 9
  %60 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load = load i8, ptr %external_dcvdd, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %external_dcvdd, align 4
  %61 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type, align 4
  %.off677 = add i32 %62, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off677)
  %switch678 = icmp ult i32 %.off677, 2
  br i1 %switch678, label %for.body33.preheader.sw.epilog55_crit_edge, label %sw.default46

for.body33.preheader.sw.epilog55_crit_edge:       ; preds = %for.body33.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog55

do.end41:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.9, i32 noundef %56) #8
  br label %cleanup

sw.default46:                                     ; preds = %for.body33.preheader
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  %call48 = tail call i32 @mfd_add_devices(ptr noundef %66, i32 noundef -1, ptr noundef nonnull @early_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %sw.default46.sw.epilog55_crit_edge, label %do.end53

sw.default46.sw.epilog55_crit_edge:               ; preds = %sw.default46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog55

do.end53:                                         ; preds = %sw.default46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %call48) #8
  br label %cleanup

sw.epilog55:                                      ; preds = %sw.default46.sw.epilog55_crit_edge, %for.body33.preheader.sw.epilog55_crit_edge
  %67 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_core_supplies, align 4
  %call58 = tail call i32 @devm_regulator_bulk_get(ptr noundef %1, i32 noundef %68, ptr noundef %arrayidx35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.end64, label %do.end63

do.end63:                                         ; preds = %sw.epilog55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %call58) #8
  br label %err_early

if.end64:                                         ; preds = %sw.epilog55
  %69 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev1, align 4
  %call66 = tail call ptr @regulator_get(ptr noundef %70, ptr noundef nonnull @.str.18) #5
  %dcvdd = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 6
  %71 = ptrtoint ptr %dcvdd to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call66, ptr %dcvdd, align 4
  %cmp.i682 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i682, label %if.then69, label %if.end75

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %call66 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %72) #8
  br label %err_early

if.end75:                                         ; preds = %if.end64
  %pdata76 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 8
  %73 = ptrtoint ptr %pdata76 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdata76, align 4
  %tobool77.not = icmp eq ptr %74, null
  br i1 %tobool77.not, label %if.then78, label %if.end75.if.end100_crit_edge

if.end75.if.end100_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then78:                                        ; preds = %if.end75
  %75 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev1, align 4
  %call80 = tail call ptr @devm_gpiod_get(ptr noundef %76, ptr noundef nonnull @.str.22, i32 noundef 3) #5
  %77 = ptrtoint ptr %pdata76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call80, ptr %pdata76, align 4
  %cmp.i683 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i683, label %if.then86, label %if.then78.if.end100_crit_edge

if.then78.if.end100_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then86:                                        ; preds = %if.then78
  %cmp90 = icmp eq ptr %call80, inttoptr (i32 -517 to ptr)
  br i1 %cmp90, label %if.then86.err_dcvdd_crit_edge, label %do.end95

if.then86.err_dcvdd_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_dcvdd

do.end95:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %call80 to i32
  %79 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.24, i32 noundef %78) #8
  %81 = ptrtoint ptr %pdata76 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %pdata76, align 4
  br label %if.end100

if.end100:                                        ; preds = %do.end95, %if.then78.if.end100_crit_edge, %if.end75.if.end100_crit_edge
  %82 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_core_supplies, align 4
  %call104 = tail call i32 @regulator_bulk_enable(i32 noundef %83, ptr noundef %arrayidx35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105.not = icmp eq i32 %call104, 0
  br i1 %cmp105.not, label %if.end110, label %do.end109

do.end109:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %call104) #8
  br label %err_dcvdd

if.end110:                                        ; preds = %if.end100
  %84 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dcvdd, align 4
  %call112 = tail call i32 @regulator_enable(ptr noundef %85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113.not = icmp eq i32 %call112, 0
  br i1 %cmp113.not, label %if.end118, label %do.end117

do.end117:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %call112) #8
  br label %err_enable

if.end118:                                        ; preds = %if.end110
  %86 = ptrtoint ptr %pdata76 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdata76, align 4
  %tobool.not.i = icmp eq ptr %87, null
  br i1 %tobool.not.i, label %if.end118.arizona_disable_reset.exit_crit_edge, label %if.then.i684

if.end118.arizona_disable_reset.exit_crit_edge:   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_disable_reset.exit

if.then.i684:                                     ; preds = %if.end118
  %88 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.309)
  switch i32 %89, label %if.then.i684.sw.epilog.i_crit_edge [
    i32 2, label %if.then.i684.sw.bb.i_crit_edge
    i32 4, label %if.then.i684.sw.bb.i_crit_edge718
  ]

if.then.i684.sw.bb.i_crit_edge718:                ; preds = %if.then.i684
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.i684.sw.bb.i_crit_edge:                   ; preds = %if.then.i684
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.i684.sw.epilog.i_crit_edge:               ; preds = %if.then.i684
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i684.sw.bb.i_crit_edge, %if.then.i684.sw.bb.i_crit_edge718
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.then.i684.sw.epilog.i_crit_edge
  %91 = ptrtoint ptr %pdata76 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdata76, align 4
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %92, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #5
  br label %arizona_disable_reset.exit

arizona_disable_reset.exit:                       ; preds = %sw.epilog.i, %if.end118.arizona_disable_reset.exit_crit_edge
  %93 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arizona, align 4
  tail call void @regcache_cache_only(ptr noundef %94, i1 noundef zeroext false) #5
  %95 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arizona, align 4
  %call121 = call i32 @regmap_read(ptr noundef %96, i32 noundef 0, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122.not = icmp eq i32 %call121, 0
  br i1 %cmp122.not, label %if.end127, label %do.end126

do.end126:                                        ; preds = %arizona_disable_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %call121) #8
  br label %err_reset

if.end127:                                        ; preds = %arizona_disable_reset.exit
  %97 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reg, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %98, label %do.end132 [
    i32 20738, label %if.end127.sw.epilog134_crit_edge
    i32 20752, label %if.end127.sw.epilog134_crit_edge719
    i32 25417, label %if.end127.sw.epilog134_crit_edge720
    i32 25443, label %if.end127.sw.epilog134_crit_edge721
    i32 35223, label %if.end127.sw.epilog134_crit_edge722
  ]

if.end127.sw.epilog134_crit_edge722:              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog134

if.end127.sw.epilog134_crit_edge721:              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog134

if.end127.sw.epilog134_crit_edge720:              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog134

if.end127.sw.epilog134_crit_edge719:              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog134

if.end127.sw.epilog134_crit_edge:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog134

do.end132:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.36, i32 noundef %98) #8
  br label %err_reset

sw.epilog134:                                     ; preds = %if.end127.sw.epilog134_crit_edge, %if.end127.sw.epilog134_crit_edge719, %if.end127.sw.epilog134_crit_edge720, %if.end127.sw.epilog134_crit_edge721, %if.end127.sw.epilog134_crit_edge722
  %102 = ptrtoint ptr %pdata76 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdata76, align 4
  %tobool137.not = icmp eq ptr %103, null
  br i1 %tobool137.not, label %if.then138, label %sw.epilog134.if.end147_crit_edge

sw.epilog134.if.end147_crit_edge:                 ; preds = %sw.epilog134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

if.then138:                                       ; preds = %sw.epilog134
  %104 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arizona, align 4
  %call140 = call i32 @regmap_write(ptr noundef %105, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141.not = icmp eq i32 %call140, 0
  br i1 %cmp141.not, label %if.end146, label %do.end145

do.end145:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %call140) #8
  br label %err_reset

if.end146:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #5
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %sw.epilog134.if.end147_crit_edge
  %106 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cond = icmp eq i32 %107, 1
  br i1 %cond, label %sw.bb149, label %if.end147.sw.epilog167_crit_edge

if.end147.sw.epilog167_crit_edge:                 ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog167

sw.bb149:                                         ; preds = %if.end147
  %108 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arizona, align 4
  %call151 = call i32 @regmap_read(ptr noundef %109, i32 noundef 25, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.else157, label %do.end156

do.end156:                                        ; preds = %sw.bb149
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %call151) #8
  br label %sw.epilog167

if.else157:                                       ; preds = %sw.bb149
  %110 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %val, align 4
  %and = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool158.not = icmp eq i32 %and, 0
  br i1 %tobool158.not, label %if.else157.sw.epilog167_crit_edge, label %if.then159

if.else157.sw.epilog167_crit_edge:                ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog167

if.then159:                                       ; preds = %if.else157
  %112 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arizona, align 4
  %call.i685 = call i32 @regmap_write(ptr noundef %113, i32 noundef 25, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i685)
  %tobool.not.i686 = icmp eq i32 %call.i685, 0
  br i1 %tobool.not.i686, label %if.end.i, label %do.end.i688

do.end.i688:                                      ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.153, i32 noundef %call.i685) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then159
  %116 = ptrtoint ptr %pdata76 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdata76, align 4
  %tobool.not.i.i = icmp eq ptr %117, null
  br i1 %tobool.not.i.i, label %if.end.i.arizona_enable_reset.exit.i_crit_edge, label %if.then.i.i

if.end.i.arizona_enable_reset.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_enable_reset.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @gpiod_set_raw_value_cansleep(ptr noundef nonnull %117, i32 noundef 0) #5
  br label %arizona_enable_reset.exit.i

arizona_enable_reset.exit.i:                      ; preds = %if.then.i.i, %if.end.i.arizona_enable_reset.exit.i_crit_edge
  %118 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dcvdd, align 4
  %call1.i = call i32 @regulator_disable(ptr noundef %119) #5
  call void @msleep(i32 noundef 20) #5
  %120 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dcvdd, align 4
  %call3.i = call i32 @regulator_enable(ptr noundef %121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %arizona_enable_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.156, i32 noundef %call3.i) #8
  br label %cleanup

if.end10.i:                                       ; preds = %arizona_enable_reset.exit.i
  %124 = ptrtoint ptr %pdata76 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdata76, align 4
  %tobool.not.i23.i = icmp eq ptr %125, null
  br i1 %tobool.not.i23.i, label %if.end10.i.sw.epilog167_crit_edge, label %if.then.i24.i

if.end10.i.sw.epilog167_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog167

if.then.i24.i:                                    ; preds = %if.end10.i
  %126 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %type, align 4
  %128 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %127, label %if.then.i24.i.sw.epilog.i.i_crit_edge [
    i32 2, label %if.then.i24.i.sw.bb.i.i_crit_edge
    i32 4, label %if.then.i24.i.sw.bb.i.i_crit_edge723
  ]

if.then.i24.i.sw.bb.i.i_crit_edge723:             ; preds = %if.then.i24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.then.i24.i.sw.bb.i.i_crit_edge:                ; preds = %if.then.i24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.then.i24.i.sw.epilog.i.i_crit_edge:            ; preds = %if.then.i24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.then.i24.i.sw.bb.i.i_crit_edge, %if.then.i24.i.sw.bb.i.i_crit_edge723
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb.i.i, %if.then.i24.i.sw.epilog.i.i_crit_edge
  %129 = ptrtoint ptr %pdata76 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdata76, align 4
  call void @gpiod_set_raw_value_cansleep(ptr noundef %130, i32 noundef 1) #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #5
  br label %sw.epilog167

sw.epilog167:                                     ; preds = %sw.epilog.i.i, %if.end10.i.sw.epilog167_crit_edge, %if.else157.sw.epilog167_crit_edge, %do.end156, %if.end147.sw.epilog167_crit_edge
  %call.i690 = call fastcc i32 @arizona_poll_reg(ptr noundef %arizona, i32 noundef 30, i32 noundef 3363, i32 noundef 256, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i690)
  %tobool.not.i691 = icmp eq i32 %call.i690, 0
  br i1 %tobool.not.i691, label %if.then.i693, label %do.end173.critedge

if.then.i693:                                     ; preds = %sw.epilog167
  %131 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arizona, align 4
  %call1.i692 = call i32 @regmap_write(ptr noundef %132, i32 noundef 3332, i32 noundef 256) #5
  %133 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev1, align 4
  %call.i.i695.c709 = call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i.c710 = getelementptr inbounds %struct.device, ptr %134, i32 0, i32 12, i32 22
  %135 = ptrtoint ptr %last_busy.i.i.c710 to i32
  call void @__asan_store8_noabort(i32 %135)
  store volatile i64 %call.i.i695.c709, ptr %last_busy.i.i.c710, align 8
  %136 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arizona, align 4
  %call177 = call i32 @regmap_read(ptr noundef %137, i32 noundef 0, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178.not = icmp eq i32 %call177, 0
  br i1 %cmp178.not, label %if.end183, label %do.end182

do.end173.critedge:                               ; preds = %sw.epilog167
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev1, align 4
  %call.i.i695.c = call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i.c = getelementptr inbounds %struct.device, ptr %139, i32 0, i32 12, i32 22
  %140 = ptrtoint ptr %last_busy.i.i.c to i32
  call void @__asan_store8_noabort(i32 %140)
  store volatile i64 %call.i.i695.c, ptr %last_busy.i.i.c, align 8
  %141 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.45, i32 noundef %call.i690) #8
  br label %err_reset

do.end182:                                        ; preds = %if.then.i693
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %call177) #8
  br label %err_reset

if.end183:                                        ; preds = %if.then.i693
  %143 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arizona, align 4
  %rev = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 3
  %call185 = call i32 @regmap_read(ptr noundef %144, i32 noundef 1, ptr noundef %rev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186.not = icmp eq i32 %call185, 0
  br i1 %cmp186.not, label %if.end191, label %do.end190

do.end190:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %call185) #8
  br label %err_reset

if.end191:                                        ; preds = %if.end183
  %145 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rev, align 4
  %and193 = and i32 %146, 255
  store i32 %and193, ptr %rev, align 4
  %147 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %reg, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %148, label %do.end257 [
    i32 20738, label %sw.bb194
    i32 20752, label %sw.bb207
    i32 25443, label %sw.bb219
    i32 35223, label %sw.bb231
    i32 25417, label %sw.bb242
  ]

sw.bb194:                                         ; preds = %if.end191
  %150 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp196.not = icmp eq i32 %151, 1
  br i1 %cmp196.not, label %sw.bb194.if.end204_crit_edge, label %do.end200

sw.bb194.if.end204_crit_edge:                     ; preds = %sw.bb194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end204

do.end200:                                        ; preds = %sw.bb194
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %153, ptr noundef nonnull @.str.54, i32 noundef %151) #8
  %154 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %type, align 4
  br label %if.end204

if.end204:                                        ; preds = %do.end200, %sw.bb194.if.end204_crit_edge
  %155 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rev, align 4
  %and206 = and i32 %156, 7
  store i32 %and206, ptr %rev, align 4
  br label %do.end269

sw.bb207:                                         ; preds = %if.end191
  %157 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %type, align 4
  %159 = zext i32 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %158, label %sw.default211 [
    i32 2, label %sw.bb207.do.end269_crit_edge
    i32 4, label %sw.bb210
  ]

sw.bb207.do.end269_crit_edge:                     ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end269

sw.bb210:                                         ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end269

sw.default211:                                    ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.60, i32 noundef %158) #8
  %162 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 2, ptr %type, align 4
  br label %do.end269

sw.bb219:                                         ; preds = %if.end191
  %163 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %type, align 4
  %165 = zext i32 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %164, label %do.end226 [
    i32 8, label %sw.bb219.do.end269_crit_edge
    i32 7, label %sw.bb222
  ]

sw.bb219.do.end269_crit_edge:                     ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end269

sw.bb222:                                         ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end269

do.end226:                                        ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #7
  %166 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %167, ptr noundef nonnull @.str.65, i32 noundef %164) #8
  %168 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 8, ptr %type, align 4
  br label %do.end269

sw.bb231:                                         ; preds = %if.end191
  %169 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %170)
  %cmp233.not = icmp eq i32 %170, 3
  br i1 %cmp233.not, label %sw.bb231.do.end269_crit_edge, label %do.end237

sw.bb231.do.end269_crit_edge:                     ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end269

do.end237:                                        ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #7
  %171 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %172, ptr noundef nonnull @.str.69, i32 noundef %170) #8
  %173 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 3, ptr %type, align 4
  br label %do.end269

sw.bb242:                                         ; preds = %if.end191
  %174 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %type, align 4
  %176 = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %175, label %sw.default246 [
    i32 5, label %sw.bb242.do.end269_crit_edge
    i32 6, label %sw.bb245
  ]

sw.bb242.do.end269_crit_edge:                     ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end269

sw.bb245:                                         ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end269

sw.default246:                                    ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #7
  %177 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %178, ptr noundef nonnull @.str.74, i32 noundef %175) #8
  %179 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 5, ptr %type, align 4
  br label %do.end269

do.end257:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  %180 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.77, i32 noundef %148) #8
  br label %err_reset

do.end269:                                        ; preds = %sw.default246, %sw.bb245, %sw.bb242.do.end269_crit_edge, %do.end237, %sw.bb231.do.end269_crit_edge, %do.end226, %sw.bb222, %sw.bb219.do.end269_crit_edge, %sw.default211, %sw.bb210, %sw.bb207.do.end269_crit_edge, %if.end204
  %type_name.3 = phi ptr [ @.str.52, %if.end204 ], [ @.str.57, %sw.default211 ], [ @.str.58, %sw.bb210 ], [ @.str.57, %sw.bb207.do.end269_crit_edge ], [ null, %do.end226 ], [ @.str.63, %sw.bb222 ], [ @.str.62, %sw.bb219.do.end269_crit_edge ], [ @.str.67, %do.end237 ], [ @.str.67, %sw.bb231.do.end269_crit_edge ], [ @.str.71, %sw.default246 ], [ @.str.72, %sw.bb245 ], [ @.str.71, %sw.bb242.do.end269_crit_edge ]
  %apply_patch.0 = phi ptr [ @wm5102_patch, %if.end204 ], [ @wm5110_patch, %sw.default211 ], [ @wm5110_patch, %sw.bb210 ], [ @wm5110_patch, %sw.bb207.do.end269_crit_edge ], [ @cs47l24_patch, %do.end226 ], [ @cs47l24_patch, %sw.bb222 ], [ @cs47l24_patch, %sw.bb219.do.end269_crit_edge ], [ @wm8997_patch, %do.end237 ], [ @wm8997_patch, %sw.bb231.do.end269_crit_edge ], [ @wm8998_patch, %sw.default246 ], [ @wm8998_patch, %sw.bb245 ], [ @wm8998_patch, %sw.bb242.do.end269_crit_edge ]
  %subdevs.0 = phi ptr [ @wm5102_devs, %if.end204 ], [ @wm5110_devs, %sw.default211 ], [ @wm5110_devs, %sw.bb210 ], [ @wm5110_devs, %sw.bb207.do.end269_crit_edge ], [ @cs47l24_devs, %do.end226 ], [ @cs47l24_devs, %sw.bb222 ], [ @cs47l24_devs, %sw.bb219.do.end269_crit_edge ], [ @wm8997_devs, %do.end237 ], [ @wm8997_devs, %sw.bb231.do.end269_crit_edge ], [ @wm8998_devs, %sw.default246 ], [ @wm8998_devs, %sw.bb245 ], [ @wm8998_devs, %sw.bb242.do.end269_crit_edge ]
  %n_subdevs.0 = phi i32 [ 5, %if.end204 ], [ 5, %sw.default211 ], [ 5, %sw.bb210 ], [ 5, %sw.bb207.do.end269_crit_edge ], [ 4, %do.end226 ], [ 4, %sw.bb222 ], [ 4, %sw.bb219.do.end269_crit_edge ], [ 5, %do.end237 ], [ 5, %sw.bb231.do.end269_crit_edge ], [ 5, %sw.default246 ], [ 5, %sw.bb245 ], [ %175, %sw.bb242.do.end269_crit_edge ]
  %182 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rev, align 4
  %add = add i32 %183, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.83, ptr noundef %type_name.3, i32 noundef %add) #8
  %call273 = call i32 %apply_patch.0(ptr noundef %arizona) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %cmp274.not = icmp eq i32 %call273, 0
  br i1 %cmp274.not, label %if.end280, label %do.end278

do.end278:                                        ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #7
  %184 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.86, i32 noundef %call273) #8
  br label %err_reset

if.end280:                                        ; preds = %do.end269
  %186 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %type, align 4
  %188 = zext i32 %187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.316)
  switch i32 %187, label %if.end280.if.end302_crit_edge [
    i32 1, label %sw.bb282
    i32 2, label %if.end280.sw.bb291_crit_edge
    i32 4, label %if.end280.sw.bb291_crit_edge724
  ]

if.end280.sw.bb291_crit_edge724:                  ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb291

if.end280.sw.bb291_crit_edge:                     ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb291

if.end280.if.end302_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end302

sw.bb282:                                         ; preds = %if.end280
  %call283 = call fastcc i32 @wm5102_apply_hardware_patch(ptr noundef %arizona)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283)
  %tobool284.not = icmp eq i32 %call283, 0
  br i1 %tobool284.not, label %sw.bb282.if.end302_crit_edge, label %do.end288

sw.bb282.if.end302_crit_edge:                     ; preds = %sw.bb282
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end302

do.end288:                                        ; preds = %sw.bb282
  call void @__sanitizer_cov_trace_pc() #7
  %189 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.89, i32 noundef %call283) #8
  br label %err_reset

sw.bb291:                                         ; preds = %if.end280.sw.bb291_crit_edge, %if.end280.sw.bb291_crit_edge724
  %call292 = call fastcc i32 @wm5110_apply_sleep_patch(ptr noundef %arizona)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %sw.bb291.if.end302_crit_edge, label %do.end297

sw.bb291.if.end302_crit_edge:                     ; preds = %sw.bb291
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end302

do.end297:                                        ; preds = %sw.bb291
  call void @__sanitizer_cov_trace_pc() #7
  %191 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.92, i32 noundef %call292) #8
  br label %err_reset

if.end302:                                        ; preds = %sw.bb291.if.end302_crit_edge, %sw.bb282.if.end302_crit_edge, %if.end280.if.end302_crit_edge
  %arrayidx307 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6, i32 0
  %193 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool308.not = icmp eq i32 %194, 0
  br i1 %tobool308.not, label %if.end302.for.inc317_crit_edge, label %if.end310

if.end302.for.inc317_crit_edge:                   ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc317

if.end310:                                        ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #7
  %195 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arizona, align 4
  %call316 = call i32 @regmap_write(ptr noundef %196, i32 noundef 3072, i32 noundef %194) #5
  br label %for.inc317

for.inc317:                                       ; preds = %if.end310, %if.end302.for.inc317_crit_edge
  %arrayidx307.1 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6, i32 1
  %197 = ptrtoint ptr %arrayidx307.1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx307.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool308.not.1 = icmp eq i32 %198, 0
  br i1 %tobool308.not.1, label %for.inc317.for.inc317.1_crit_edge, label %if.end310.1

for.inc317.for.inc317.1_crit_edge:                ; preds = %for.inc317
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc317.1

if.end310.1:                                      ; preds = %for.inc317
  call void @__sanitizer_cov_trace_pc() #7
  %199 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arizona, align 4
  %call316.1 = call i32 @regmap_write(ptr noundef %200, i32 noundef 3073, i32 noundef %198) #5
  br label %for.inc317.1

for.inc317.1:                                     ; preds = %if.end310.1, %for.inc317.for.inc317.1_crit_edge
  %arrayidx307.2 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6, i32 2
  %201 = ptrtoint ptr %arrayidx307.2 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx307.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool308.not.2 = icmp eq i32 %202, 0
  br i1 %tobool308.not.2, label %for.inc317.1.for.inc317.2_crit_edge, label %if.end310.2

for.inc317.1.for.inc317.2_crit_edge:              ; preds = %for.inc317.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc317.2

if.end310.2:                                      ; preds = %for.inc317.1
  call void @__sanitizer_cov_trace_pc() #7
  %203 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arizona, align 4
  %call316.2 = call i32 @regmap_write(ptr noundef %204, i32 noundef 3074, i32 noundef %202) #5
  br label %for.inc317.2

for.inc317.2:                                     ; preds = %if.end310.2, %for.inc317.1.for.inc317.2_crit_edge
  %arrayidx307.3 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6, i32 3
  %205 = ptrtoint ptr %arrayidx307.3 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx307.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool308.not.3 = icmp eq i32 %206, 0
  br i1 %tobool308.not.3, label %for.inc317.2.for.inc317.3_crit_edge, label %if.end310.3

for.inc317.2.for.inc317.3_crit_edge:              ; preds = %for.inc317.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc317.3

if.end310.3:                                      ; preds = %for.inc317.2
  call void @__sanitizer_cov_trace_pc() #7
  %207 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arizona, align 4
  %call316.3 = call i32 @regmap_write(ptr noundef %208, i32 noundef 3075, i32 noundef %206) #5
  br label %for.inc317.3

for.inc317.3:                                     ; preds = %if.end310.3, %for.inc317.2.for.inc317.3_crit_edge
  %arrayidx307.4 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 6, i32 4
  %209 = ptrtoint ptr %arrayidx307.4 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx307.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool308.not.4 = icmp eq i32 %210, 0
  br i1 %tobool308.not.4, label %for.inc317.3.for.inc317.4_crit_edge, label %if.end310.4

for.inc317.3.for.inc317.4_crit_edge:              ; preds = %for.inc317.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc317.4

if.end310.4:                                      ; preds = %for.inc317.3
  call void @__sanitizer_cov_trace_pc() #7
  %211 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arizona, align 4
  %call316.4 = call i32 @regmap_write(ptr noundef %212, i32 noundef 3076, i32 noundef %210) #5
  br label %for.inc317.4

for.inc317.4:                                     ; preds = %if.end310.4, %for.inc317.3.for.inc317.4_crit_edge
  %clk32k_src = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 8, i32 3
  %213 = ptrtoint ptr %clk32k_src to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %clk32k_src, align 4
  %215 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.317)
  switch i32 %214, label %do.end340 [
    i32 0, label %if.end325.thread
    i32 1, label %for.inc317.4.sw.bb328_crit_edge
    i32 2, label %for.inc317.4.sw.bb328_crit_edge725
    i32 3, label %sw.bb334
  ]

for.inc317.4.sw.bb328_crit_edge725:               ; preds = %for.inc317.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb328

for.inc317.4.sw.bb328_crit_edge:                  ; preds = %for.inc317.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb328

if.end325.thread:                                 ; preds = %for.inc317.4
  call void @__sanitizer_cov_trace_pc() #7
  %216 = ptrtoint ptr %clk32k_src to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 2, ptr %clk32k_src, align 4
  br label %sw.bb328

sw.bb328:                                         ; preds = %if.end325.thread, %for.inc317.4.sw.bb328_crit_edge, %for.inc317.4.sw.bb328_crit_edge725
  %217 = phi i32 [ 2, %if.end325.thread ], [ %214, %for.inc317.4.sw.bb328_crit_edge ], [ %214, %for.inc317.4.sw.bb328_crit_edge725 ]
  %218 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arizona, align 4
  %sub = add nsw i32 %217, -1
  %call.i697 = call i32 @regmap_update_bits_base(ptr noundef %219, i32 noundef 256, i32 noundef 3, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call333 = call i32 @arizona_clk32k_enable(ptr noundef %arizona)
  br label %for.body347.preheader

for.body347.preheader:                            ; preds = %sw.bb334, %sw.bb328
  br label %for.body347

sw.bb334:                                         ; preds = %for.inc317.4
  call void @__sanitizer_cov_trace_pc() #7
  %220 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arizona, align 4
  %call.i698 = call i32 @regmap_update_bits_base(ptr noundef %221, i32 noundef 256, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %for.body347.preheader

do.end340:                                        ; preds = %for.inc317.4
  call void @__sanitizer_cov_trace_pc() #7
  %222 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.95, i32 noundef %214) #8
  br label %err_reset

for.body347:                                      ; preds = %for.inc421.for.body347_crit_edge, %for.body347.preheader
  %i.3715 = phi i32 [ %inc422, %for.inc421.for.body347_crit_edge ], [ 0, %for.body347.preheader ]
  %arrayidx349 = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 28, i32 %i.3715
  %224 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx349, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool350.not = icmp eq i32 %225, 0
  br i1 %tobool350.not, label %land.lhs.true, label %for.body347.if.end369_crit_edge

for.body347.if.end369_crit_edge:                  ; preds = %for.body347
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end369

land.lhs.true:                                    ; preds = %for.body347
  %bypass = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 28, i32 %i.3715, i32 1
  %226 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %226)
  %bf.load354 = load i8, ptr %bypass, align 4
  %227 = and i8 %bf.load354, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool356.not = icmp eq i8 %227, 0
  br i1 %tobool356.not, label %land.lhs.true.for.inc421_crit_edge, label %if.then364

land.lhs.true.for.inc421_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc421

if.then364:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %228 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 2800, ptr %arrayidx349, align 4
  br label %if.end369

if.end369:                                        ; preds = %if.then364, %for.body347.if.end369_crit_edge
  %229 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx349, align 4
  %sub374 = add i32 %230, -1500
  %div = sdiv i32 %sub374, 100
  %shl = shl nsw i32 %div, 5
  %231 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %shl, ptr %val, align 4
  %ext_cap = getelementptr %struct.arizona, ptr %arizona, i32 0, i32 8, i32 28, i32 %i.3715, i32 1
  %232 = ptrtoint ptr %ext_cap to i32
  call void @__asan_load1_noabort(i32 %232)
  %bf.load378 = load i8, ptr %ext_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load378)
  %tobool381.not = icmp sgt i8 %bf.load378, -1
  br i1 %tobool381.not, label %if.end369.if.end383_crit_edge, label %if.then382

if.end369.if.end383_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end383

if.then382:                                       ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %shl, 32768
  %233 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %or, ptr %val, align 4
  br label %if.end383

if.end383:                                        ; preds = %if.then382, %if.end369.if.end383_crit_edge
  %234 = and i8 %bf.load378, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool391.not = icmp eq i8 %234, 0
  br i1 %tobool391.not, label %if.end383.if.end394_crit_edge, label %if.then392

if.end383.if.end394_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end394

if.then392:                                       ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #7
  %235 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %val, align 4
  %or393 = or i32 %236, 4
  store i32 %or393, ptr %val, align 4
  br label %if.end394

if.end394:                                        ; preds = %if.then392, %if.end383.if.end394_crit_edge
  %237 = and i8 %bf.load378, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool402.not = icmp eq i8 %237, 0
  br i1 %tobool402.not, label %if.end394.if.end405_crit_edge, label %if.then403

if.end394.if.end405_crit_edge:                    ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end405

if.then403:                                       ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #7
  %238 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %val, align 4
  %or404 = or i32 %239, 8
  store i32 %or404, ptr %val, align 4
  br label %if.end405

if.end405:                                        ; preds = %if.then403, %if.end394.if.end405_crit_edge
  %240 = and i8 %bf.load378, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool414.not = icmp eq i8 %240, 0
  br i1 %tobool414.not, label %if.end405.if.end417_crit_edge, label %if.then415

if.end405.if.end417_crit_edge:                    ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end417

if.then415:                                       ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #7
  %241 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %val, align 4
  %or416 = or i32 %242, 2
  store i32 %or416, ptr %val, align 4
  br label %if.end417

if.end417:                                        ; preds = %if.then415, %if.end405.if.end417_crit_edge
  %243 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arizona, align 4
  %add419 = add nuw nsw i32 %i.3715, 536
  %245 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %val, align 4
  %call.i699 = call i32 @regmap_update_bits_base(ptr noundef %244, i32 noundef %add419, i32 noundef 33262, i32 noundef %246, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %for.inc421

for.inc421:                                       ; preds = %if.end417, %land.lhs.true.for.inc421_crit_edge
  %inc422 = add nuw nsw i32 %i.3715, 1
  %exitcond.not = icmp eq i32 %inc422, 3
  br i1 %exitcond.not, label %for.end423, label %for.inc421.for.body347_crit_edge

for.inc421.for.body347_crit_edge:                 ; preds = %for.inc421
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body347

for.end423:                                       ; preds = %for.inc421
  %247 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev1, align 4
  %call.i700 = call i32 @__pm_runtime_set_status(ptr noundef %248, i32 noundef 0) #5
  %249 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev1, align 4
  call void @pm_runtime_enable(ptr noundef %250) #5
  %call427 = call i32 @arizona_irq_init(ptr noundef %arizona) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call427)
  %cmp428.not = icmp eq i32 %call427, 0
  br i1 %cmp428.not, label %if.end430, label %for.end423.err_pm_crit_edge

for.end423.err_pm_crit_edge:                      ; preds = %for.end423
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pm

if.end430:                                        ; preds = %for.end423
  %251 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev1, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %252, i32 noundef 100) #5
  %253 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev1, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %254, i1 noundef zeroext true) #5
  %call433 = call i32 @arizona_request_irq(ptr noundef %arizona, i32 noundef 33, ptr noundef nonnull @.str.97, ptr noundef nonnull @arizona_clkgen_err, ptr noundef %arizona) #5
  %call434 = call i32 @arizona_request_irq(ptr noundef %arizona, i32 noundef 30, ptr noundef nonnull @.str.98, ptr noundef nonnull @arizona_overclocked, ptr noundef %arizona) #5
  %call435 = call i32 @arizona_request_irq(ptr noundef %arizona, i32 noundef 29, ptr noundef nonnull @.str.99, ptr noundef nonnull @arizona_underclocked, ptr noundef %arizona) #5
  %255 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev1, align 4
  %call437 = call i32 @mfd_add_devices(ptr noundef %256, i32 noundef -1, ptr noundef nonnull %subdevs.0, i32 noundef %n_subdevs.0, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call437)
  %tobool438.not = icmp eq i32 %call437, 0
  br i1 %tobool438.not, label %if.end430.cleanup_crit_edge, label %do.end442

if.end430.cleanup_crit_edge:                      ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end442:                                        ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #7
  %257 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %258, ptr noundef nonnull @.str.101, i32 noundef %call437) #8
  %call445 = call i32 @arizona_irq_exit(ptr noundef %arizona) #5
  br label %err_pm

err_pm:                                           ; preds = %do.end442, %for.end423.err_pm_crit_edge
  %ret.0 = phi i32 [ %call427, %for.end423.err_pm_crit_edge ], [ %call437, %do.end442 ]
  %259 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev1, align 4
  call void @__pm_runtime_disable(ptr noundef %260, i1 noundef zeroext true) #5
  %261 = ptrtoint ptr %clk32k_src to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %clk32k_src, align 4
  %.off679 = add i32 %262, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off679)
  %switch680 = icmp ult i32 %.off679, 2
  br i1 %switch680, label %sw.bb449, label %err_pm.err_reset_crit_edge

err_pm.err_reset_crit_edge:                       ; preds = %err_pm
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_reset

sw.bb449:                                         ; preds = %err_pm
  call void @__sanitizer_cov_trace_pc() #7
  %call450 = call i32 @arizona_clk32k_disable(ptr noundef %arizona)
  br label %err_reset

err_reset:                                        ; preds = %sw.bb449, %err_pm.err_reset_crit_edge, %do.end340, %do.end297, %do.end288, %do.end278, %do.end257, %do.end190, %do.end182, %do.end173.critedge, %do.end145, %do.end132, %do.end126
  %ret.1 = phi i32 [ %call121, %do.end126 ], [ -19, %do.end132 ], [ %call.i690, %do.end173.critedge ], [ %call177, %do.end182 ], [ %call185, %do.end190 ], [ -19, %do.end257 ], [ %call273, %do.end278 ], [ -22, %do.end340 ], [ %ret.0, %err_pm.err_reset_crit_edge ], [ %ret.0, %sw.bb449 ], [ %call292, %do.end297 ], [ %call283, %do.end288 ], [ %call140, %do.end145 ]
  %263 = ptrtoint ptr %pdata76 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %pdata76, align 4
  %tobool.not.i702 = icmp eq ptr %264, null
  br i1 %tobool.not.i702, label %err_reset.arizona_enable_reset.exit_crit_edge, label %if.then.i703

err_reset.arizona_enable_reset.exit_crit_edge:    ; preds = %err_reset
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_enable_reset.exit

if.then.i703:                                     ; preds = %err_reset
  call void @__sanitizer_cov_trace_pc() #7
  call void @gpiod_set_raw_value_cansleep(ptr noundef nonnull %264, i32 noundef 0) #5
  br label %arizona_enable_reset.exit

arizona_enable_reset.exit:                        ; preds = %if.then.i703, %err_reset.arizona_enable_reset.exit_crit_edge
  %265 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dcvdd, align 4
  %call454 = call i32 @regulator_disable(ptr noundef %266) #5
  br label %err_enable

err_enable:                                       ; preds = %arizona_enable_reset.exit, %do.end117
  %ret.2 = phi i32 [ %call112, %do.end117 ], [ %ret.1, %arizona_enable_reset.exit ]
  %267 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %num_core_supplies, align 4
  %call458 = call i32 @regulator_bulk_disable(i32 noundef %268, ptr noundef %arrayidx35) #5
  br label %err_dcvdd

err_dcvdd:                                        ; preds = %err_enable, %do.end109, %if.then86.err_dcvdd_crit_edge
  %ret.3 = phi i32 [ %call104, %do.end109 ], [ %ret.2, %err_enable ], [ -517, %if.then86.err_dcvdd_crit_edge ]
  %269 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dcvdd, align 4
  call void @regulator_put(ptr noundef %270) #5
  br label %err_early

err_early:                                        ; preds = %err_dcvdd, %if.then69, %do.end63
  %ret.4 = phi i32 [ %call58, %do.end63 ], [ %72, %if.then69 ], [ %ret.3, %err_dcvdd ]
  call void @mfd_remove_devices(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %err_early, %if.end430.cleanup_crit_edge, %do.end8.i, %do.end.i688, %do.end53, %do.end41, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end41 ], [ %call48, %do.end53 ], [ %ret.4, %err_early ], [ 0, %if.end430.cleanup_crit_edge ], [ %11, %if.then.i.cleanup_crit_edge ], [ %call.i685, %do.end.i688 ], [ %call3.i, %do.end8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm5102_patch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm5110_patch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs47l24_patch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8997_patch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8998_patch(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm5102_apply_hardware_patch(ptr nocapture noundef readonly %arizona) unnamed_addr #0 align 64 {
entry:
  %state = alloca %struct.arizona_sysclk_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !529
  %1 = getelementptr inbounds %struct.arizona_sysclk_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !529
  %call = call fastcc i32 @arizona_enable_freerun_sysclk(ptr noundef %arizona, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arizona, align 4
  %call1 = call i32 @regmap_write(ptr noundef %4, i32 noundef 22, i32 noundef 1696) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.179, i32 noundef %call1) #8
  br label %err11

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @arizona_poll_reg(ptr noundef %arizona, i32 noundef 30, i32 noundef 23, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.err11_crit_edge, label %if.then7

if.end4.err11_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err11

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arizona, align 4
  %call9 = call i32 @regmap_write(ptr noundef %8, i32 noundef 22, i32 noundef 2048) #5
  br label %err11

err11:                                            ; preds = %if.then7, %if.end4.err11_crit_edge, %do.end
  %ret.0 = phi i32 [ %call1, %do.end ], [ %call5, %if.then7 ], [ 0, %if.end4.err11_crit_edge ]
  %9 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arizona, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %call.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 257, i32 noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %err11
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.195, i32 noundef %call.i) #8
  br label %arizona_disable_freerun_sysclk.exit

if.end.i:                                         ; preds = %err11
  %15 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arizona, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 369, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.arizona_disable_freerun_sysclk.exit_crit_edge, label %do.end7.i

if.end.i.arizona_disable_freerun_sysclk.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_disable_freerun_sysclk.exit

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev8.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %19 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev8.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.193, i32 noundef %call2.i) #8
  br label %arizona_disable_freerun_sysclk.exit

arizona_disable_freerun_sysclk.exit:              ; preds = %do.end7.i, %if.end.i.arizona_disable_freerun_sysclk.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call2.i, %do.end7.i ], [ 0, %if.end.i.arizona_disable_freerun_sysclk.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool13.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool13.not, i32 %retval.0.i, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %arizona_disable_freerun_sysclk.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %arizona_disable_freerun_sysclk.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm5110_apply_sleep_patch(ptr nocapture noundef readonly %arizona) unnamed_addr #0 align 64 {
entry:
  %state = alloca %struct.arizona_sysclk_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !529
  %1 = getelementptr inbounds %struct.arizona_sysclk_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !529
  %call = call fastcc i32 @arizona_enable_freerun_sysclk(ptr noundef %arizona, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arizona, align 4
  %call1 = call i32 @regmap_multi_reg_write_bypassed(ptr noundef %4, ptr noundef nonnull @wm5110_sleep_patch, i32 noundef 4) #5
  %5 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arizona, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call.i = call i32 @regmap_write(ptr noundef %6, i32 noundef 257, i32 noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.195, i32 noundef %call.i) #8
  br label %arizona_disable_freerun_sysclk.exit

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arizona, align 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 369, i32 noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.arizona_disable_freerun_sysclk.exit_crit_edge, label %do.end7.i

if.end.i.arizona_disable_freerun_sysclk.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_disable_freerun_sysclk.exit

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev8.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %15 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev8.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.193, i32 noundef %call2.i) #8
  br label %arizona_disable_freerun_sysclk.exit

arizona_disable_freerun_sysclk.exit:              ; preds = %do.end7.i, %if.end.i.arizona_disable_freerun_sysclk.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call2.i, %do.end7.i ], [ 0, %if.end.i.arizona_disable_freerun_sysclk.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool3.not, i32 %retval.0.i, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %arizona_disable_freerun_sysclk.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %arizona_disable_freerun_sysclk.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arizona_irq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arizona_request_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_clkgen_err(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.199) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_overclocked(i32 noundef %irq, ptr noundef readonly %data) #0 align 64 {
entry:
  %val = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !529
  %1 = getelementptr inbounds [3 x i32], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !529
  %3 = getelementptr inbounds [3 x i32], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !529
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 3364, ptr noundef nonnull %val, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.201, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %.off = add i32 %10, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = lshr i32 %12, 1
  %shr = and i32 %and, 12400
  %and3 = lshr i32 %12, 2
  %shr4 = and i32 %and3, 1920
  %and6 = and i32 %12, 15
  %or = or i32 %shr4, %and6
  %or7 = or i32 %or, %shr
  store i32 %or7, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and10 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %sw.epilog.if.end16_crit_edge, label %do.end14

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.end14:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev15 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.204) #8
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %sw.epilog.if.end16_crit_edge
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and18 = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end25_crit_edge, label %do.end23

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %dev24 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.207) #8
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.end16.if.end25_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and27 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end34_crit_edge, label %do.end32

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %dev33 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.210) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.end25.if.end34_crit_edge
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %and36 = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end43_crit_edge, label %do.end41

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %dev42 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.213) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %if.end34.if.end43_crit_edge
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %and45 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end52_crit_edge, label %do.end50

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %dev51 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev51, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.216) #8
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.end43.if.end52_crit_edge
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %and54 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end61_crit_edge, label %do.end59

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %dev60 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev60, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.219) #8
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %if.end52.if.end61_crit_edge
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %and63 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end70_crit_edge, label %do.end68

if.end61.if.end70_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %dev69 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %39 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev69, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.222) #8
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %if.end61.if.end70_crit_edge
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %and72 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end79_crit_edge, label %do.end77

if.end70.if.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %dev78 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %43 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev78, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.225) #8
  br label %if.end79

if.end79:                                         ; preds = %do.end77, %if.end70.if.end79_crit_edge
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val, align 4
  %and81 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end79.if.end88_crit_edge, label %do.end86

if.end79.if.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %dev87 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %47 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.228) #8
  br label %if.end88

if.end88:                                         ; preds = %do.end86, %if.end79.if.end88_crit_edge
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val, align 4
  %and90 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end97_crit_edge, label %do.end95

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

do.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %dev96 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %51 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev96, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.231) #8
  br label %if.end97

if.end97:                                         ; preds = %do.end95, %if.end88.if.end97_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 4
  %and99 = and i32 %54, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end97.if.end106_crit_edge, label %do.end104

if.end97.if.end106_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

do.end104:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %dev105 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %55 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.234) #8
  br label %if.end106

if.end106:                                        ; preds = %do.end104, %if.end97.if.end106_crit_edge
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 4
  %and108 = and i32 %58, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end106.if.end115_crit_edge, label %do.end113

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %dev114 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %59 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev114, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.237) #8
  br label %if.end115

if.end115:                                        ; preds = %do.end113, %if.end106.if.end115_crit_edge
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %1, align 4
  %and117 = and i32 %62, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.if.end124_crit_edge, label %do.end122

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

do.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  %dev123 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %63 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev123, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.240) #8
  br label %if.end124

if.end124:                                        ; preds = %do.end122, %if.end115.if.end124_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %1, align 4
  %and126 = and i32 %66, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end124.if.end133_crit_edge, label %do.end131

if.end124.if.end133_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end131:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  %dev132 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %67 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev132, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.243) #8
  br label %if.end133

if.end133:                                        ; preds = %do.end131, %if.end124.if.end133_crit_edge
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 4
  %and135 = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end133.if.end142_crit_edge, label %do.end140

if.end133.if.end142_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

do.end140:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  %dev141 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %71 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev141, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.246) #8
  br label %if.end142

if.end142:                                        ; preds = %do.end140, %if.end133.if.end142_crit_edge
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %1, align 4
  %and144 = and i32 %74, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end142.if.end151_crit_edge, label %do.end149

if.end142.if.end151_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

do.end149:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  %dev150 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %75 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev150, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.249) #8
  br label %if.end151

if.end151:                                        ; preds = %do.end149, %if.end142.if.end151_crit_edge
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %1, align 4
  %and153 = and i32 %78, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end151.if.end160_crit_edge, label %do.end158

if.end151.if.end160_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end160

do.end158:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  %dev159 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %79 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev159, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.252) #8
  br label %if.end160

if.end160:                                        ; preds = %do.end158, %if.end151.if.end160_crit_edge
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %1, align 4
  %and162 = and i32 %82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end160.if.end169_crit_edge, label %do.end167

if.end160.if.end169_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end169

do.end167:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  %dev168 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %83 = ptrtoint ptr %dev168 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev168, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.255) #8
  br label %if.end169

if.end169:                                        ; preds = %do.end167, %if.end160.if.end169_crit_edge
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %1, align 4
  %and171 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end169.if.end178_crit_edge, label %do.end176

if.end169.if.end178_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end178

do.end176:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #7
  %dev177 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %87 = ptrtoint ptr %dev177 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev177, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.258) #8
  br label %if.end178

if.end178:                                        ; preds = %do.end176, %if.end169.if.end178_crit_edge
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %1, align 4
  %and180 = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end178.if.end187_crit_edge, label %do.end185

if.end178.if.end187_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

do.end185:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #7
  %dev186 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %91 = ptrtoint ptr %dev186 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev186, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.261) #8
  br label %if.end187

if.end187:                                        ; preds = %do.end185, %if.end178.if.end187_crit_edge
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %1, align 4
  %and189 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end187.if.end196_crit_edge, label %do.end194

if.end187.if.end196_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196

do.end194:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  %dev195 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %95 = ptrtoint ptr %dev195 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev195, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.264) #8
  br label %if.end196

if.end196:                                        ; preds = %do.end194, %if.end187.if.end196_crit_edge
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %3, align 4
  %and198 = and i32 %98, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %if.end196.cleanup_crit_edge, label %do.end203

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end203:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  %dev204 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %99 = ptrtoint ptr %dev204 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev204, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.267) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end203, %if.end196.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %do.end203 ], [ 1, %if.end196.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_underclocked(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !529
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 3366, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.269, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %do.end4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev5 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.272) #8
  br label %if.end6

if.end6:                                          ; preds = %do.end4, %if.end.if.end6_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and7 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end14_crit_edge, label %do.end12

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.275) #8
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.end6.if.end14_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %do.end20

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %dev21 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.278) #8
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.end14.if.end22_crit_edge
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and23 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end30_crit_edge, label %do.end28

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %dev29 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.281) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.end22.if.end30_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and31 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %do.end36

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %dev37 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.284) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.end30.if.end38_crit_edge
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %and39 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end46_crit_edge, label %do.end44

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %dev45 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.287) #8
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.end38.if.end46_crit_edge
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %and47 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end54_crit_edge, label %do.end52

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %dev53 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev53, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.290) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %if.end46.if.end54_crit_edge
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %and55 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end62_crit_edge, label %do.end60

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %dev61 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev61, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.293) #8
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %if.end54.if.end62_crit_edge
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %and63 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end70_crit_edge, label %do.end68

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %dev69 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %39 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev69, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.296) #8
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %if.end62.if.end70_crit_edge
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %and71 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end78_crit_edge, label %do.end76

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %dev77 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %43 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev77, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.299) #8
  br label %if.end78

if.end78:                                         ; preds = %do.end76, %if.end70.if.end78_crit_edge
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val, align 4
  %and79 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.cleanup_crit_edge, label %do.end84

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  %dev85 = getelementptr inbounds %struct.arizona, ptr %data, i32 0, i32 1
  %47 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev85, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.302) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.end78.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %do.end84 ], [ 1, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arizona_irq_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_dev_exit(ptr noundef %arizona) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 10
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #5
  %dev = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #5
  %dcvdd = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 6
  %4 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcvdd, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %5) #5
  %6 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcvdd, align 4
  tail call void @regulator_put(ptr noundef %7) #5
  %clk32k_src = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %clk32k_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk32k_src, align 4
  %.off = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @arizona_clk32k_disable(ptr noundef %arizona)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @mfd_remove_devices(ptr noundef %11) #5
  tail call void @arizona_free_irq(ptr noundef %arizona, i32 noundef 29, ptr noundef %arizona) #5
  tail call void @arizona_free_irq(ptr noundef %arizona, i32 noundef 30, ptr noundef %arizona) #5
  tail call void @arizona_free_irq(ptr noundef %arizona, i32 noundef 33, ptr noundef %arizona) #5
  %call4 = tail call i32 @arizona_irq_exit(ptr noundef %arizona) #5
  %pdata.i = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 8
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %sw.epilog.arizona_enable_reset.exit_crit_edge, label %if.then.i

sw.epilog.arizona_enable_reset.exit_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_enable_reset.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef nonnull %13, i32 noundef 0) #5
  br label %arizona_enable_reset.exit

arizona_enable_reset.exit:                        ; preds = %if.then.i, %sw.epilog.arizona_enable_reset.exit_crit_edge
  %num_core_supplies = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 4
  %14 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 5
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef %15, ptr noundef %core_supplies) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arizona_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arizona_poll_reg(ptr nocapture noundef readonly %arizona, i32 noundef %timeout_ms, i32 noundef %reg, i32 noundef %mask, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %mul = mul i32 %timeout_ms, 1000
  %0 = zext i32 %mul to i64
  %mul.i = mul nuw nsw i64 %0, 1000
  %add.i = add i64 %call, %mul.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val, align 4
  %2 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arizona, align 4
  %call223 = call i32 @regmap_read(ptr noundef %3, i32 noundef %reg, ptr noundef nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %and24 = and i32 %5, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and24, i32 %target)
  %cmp25 = icmp eq i32 %and24, %target
  br i1 %cmp25, label %entry.cleanup_crit_edge, label %do.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond.preheader:                                ; preds = %entry
  %call.i30 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i30, i64 %add.i)
  %cmp3.i.i31 = icmp sgt i64 %call.i30, %add.i
  br i1 %cmp3.i.i31, label %do.cond.preheader.do.end_crit_edge, label %do.cond.preheader.arizona_poll_reg_delay.exit_crit_edge

do.cond.preheader.arizona_poll_reg_delay.exit_crit_edge: ; preds = %do.cond.preheader
  br label %arizona_poll_reg_delay.exit

do.cond.preheader.do.end_crit_edge:               ; preds = %do.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.cond:                                          ; preds = %arizona_poll_reg_delay.exit
  %call.i = call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call.i, %add.i
  br i1 %cmp3.i.i, label %do.cond.do.end_crit_edge, label %do.cond.arizona_poll_reg_delay.exit_crit_edge

do.cond.arizona_poll_reg_delay.exit_crit_edge:    ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_poll_reg_delay.exit

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

arizona_poll_reg_delay.exit:                      ; preds = %do.cond.arizona_poll_reg_delay.exit_crit_edge, %do.cond.preheader.arizona_poll_reg_delay.exit_crit_edge
  call void @usleep_range_state(i32 noundef 3750, i32 noundef 7500, i32 noundef 2) #5
  %6 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arizona, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef %reg, ptr noundef nonnull %val) #5
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and = and i32 %9, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %target)
  %cmp = icmp eq i32 %and, %target
  br i1 %cmp, label %arizona_poll_reg_delay.exit.cleanup_crit_edge, label %do.cond

arizona_poll_reg_delay.exit.cleanup_crit_edge:    ; preds = %arizona_poll_reg_delay.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.cond.preheader.do.end_crit_edge
  %call226.lcssa = phi i32 [ %call223, %do.cond.preheader.do.end_crit_edge ], [ %call2, %do.cond.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226.lcssa)
  %tobool.not = icmp eq i32 %call226.lcssa, 0
  %dev13 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %10 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev13, align 4
  br i1 %tobool.not, label %do.end12, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.158, i32 noundef %reg, i32 noundef %call226.lcssa) #8
  br label %cleanup

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.161, i32 noundef %reg, i32 noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end8, %arizona_poll_reg_delay.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call226.lcssa, %do.end8 ], [ -110, %do.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %arizona_poll_reg_delay.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arizona_enable_freerun_sysclk(ptr nocapture noundef readonly %arizona, ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona, align 4
  %call = tail call i32 @regmap_read(ptr noundef %1, i32 noundef 369, ptr noundef %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.181, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arizona, align 4
  %sysclk = getelementptr inbounds %struct.arizona_sysclk_state, ptr %state, i32 0, i32 1
  %call2 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef 257, ptr noundef %sysclk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.184, i32 noundef %call2) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arizona, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 369, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %dev17 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %10 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.187, i32 noundef %call11) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call19 = tail call fastcc i32 @arizona_poll_reg(ptr noundef %arizona, i32 noundef 180, i32 noundef 3363, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_fll_crit_edge

if.end18.err_fll_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_fll

if.end22:                                         ; preds = %if.end18
  %12 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arizona, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 257, i32 noundef 324) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %do.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %dev30 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %14 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.190, i32 noundef %call24) #8
  br label %err_fll

err_fll:                                          ; preds = %do.end29, %if.end18.err_fll_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end18.err_fll_crit_edge ], [ %call24, %do.end29 ]
  %16 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arizona, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  %call34 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 369, i32 noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err_fll.cleanup_crit_edge, label %do.end39

err_fll.cleanup_crit_edge:                        ; preds = %err_fll
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end39:                                         ; preds = %err_fll
  call void @__sanitizer_cov_trace_pc() #7
  %dev40 = getelementptr inbounds %struct.arizona, ptr %arizona, i32 0, i32 1
  %20 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.193, i32 noundef %call34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %err_fll.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ %call11, %do.end16 ], [ 0, %if.end22.cleanup_crit_edge ], [ %ret.0, %do.end39 ], [ %ret.0, %err_fll.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write_bypassed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 256)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 256)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !97, !99, !100, !101, !103, !105, !107, !108, !109, !111, !113, !114, !115, !117, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !157, !159, !160, !161, !163, !165, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !250, !251, !252, !253, !255, !257, !258, !259, !261, !263, !265, !267, !269, !271, !272, !273, !274, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !366, !368, !369, !371, !373, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !437, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !468, !469, !471, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !497, !498, !500, !501, !502, !504, !505, !506, !508, !509, !510, !512, !513, !514, !516, !517}
!llvm.module.flags = !{!518, !519, !520, !521, !522, !523, !524, !525}
!llvm.ident = !{!526}

!0 = !{ptr @__ksymtab_arizona_clk32k_enable, !1, !"__ksymtab_arizona_clk32k_enable", i1 false, i1 false}
!1 = !{!"../drivers/mfd/arizona-core.c", i32 77, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/arizona-core.c", i32 83, i32 2}
!4 = !{ptr @__ksymtab_arizona_clk32k_disable, !5, !"__ksymtab_arizona_clk32k_disable", i1 false, i1 false}
!5 = !{!"../drivers/mfd/arizona-core.c", i32 106, i32 1}
!6 = !{ptr @arizona_pm_ops, !7, !"arizona_pm_ops", i1 false, i1 false}
!7 = !{!"../drivers/mfd/arizona-core.c", i32 789, i32 25}
!8 = !{ptr @__ksymtab_arizona_pm_ops, !9, !"__ksymtab_arizona_pm_ops", i1 false, i1 false}
!9 = !{!"../drivers/mfd/arizona-core.c", i32 797, i32 1}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/arizona-core.c", i32 942, i32 44}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/arizona-core.c", i32 942, i32 53}
!14 = distinct !{null, !15, !"mclk_name", i1 false, i1 false}
!15 = !{!"../drivers/mfd/arizona-core.c", i32 942, i32 28}
!16 = !{ptr @arizona_dev_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mfd/arizona-core.c", i32 951, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/arizona-core.c", i32 966, i32 4}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @arizona_dev_init._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @arizona_dev_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/arizona-core.c", i32 989, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @arizona_dev_init._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @arizona_dev_init._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/arizona-core.c", i32 1005, i32 4}
!33 = !{ptr @arizona_dev_init._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @arizona_dev_init._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/arizona-core.c", i32 1014, i32 3}
!37 = !{ptr @arizona_dev_init._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @arizona_dev_init._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/arizona-core.c", i32 1025, i32 47}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/arizona-core.c", i32 1028, i32 3}
!43 = !{ptr @arizona_dev_init._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @arizona_dev_init._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/arizona-core.c", i32 1034, i32 55}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/arizona-core.c", i32 1041, i32 4}
!49 = !{ptr @arizona_dev_init._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @arizona_dev_init._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/arizona-core.c", i32 1051, i32 3}
!53 = !{ptr @arizona_dev_init._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @arizona_dev_init._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/arizona-core.c", i32 1058, i32 3}
!57 = !{ptr @arizona_dev_init._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @arizona_dev_init._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/arizona-core.c", i32 1069, i32 3}
!61 = !{ptr @arizona_dev_init._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @arizona_dev_init._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/arizona-core.c", i32 1081, i32 3}
!65 = !{ptr @arizona_dev_init._entry.35, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @arizona_dev_init._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/arizona-core.c", i32 1090, i32 4}
!69 = !{ptr @arizona_dev_init._entry.38, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @arizona_dev_init._entry_ptr.40, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/arizona-core.c", i32 1103, i32 4}
!73 = !{ptr @arizona_dev_init._entry.41, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @arizona_dev_init._entry_ptr.43, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/arizona-core.c", i32 1118, i32 3}
!77 = !{ptr @arizona_dev_init._entry.44, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @arizona_dev_init._entry_ptr.46, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @arizona_dev_init._entry.47, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/mfd/arizona-core.c", i32 1125, i32 3}
!81 = !{ptr @arizona_dev_init._entry_ptr.48, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mfd/arizona-core.c", i32 1132, i32 3}
!84 = !{ptr @arizona_dev_init._entry.49, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @arizona_dev_init._entry_ptr.51, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/arizona-core.c", i32 1140, i32 16}
!88 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/arizona-core.c", i32 1142, i32 5}
!90 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @arizona_dev_init._entry.53, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @arizona_dev_init._entry_ptr.56, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/arizona-core.c", i32 1158, i32 17}
!95 = !{ptr @.str.58, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mfd/arizona-core.c", i32 1161, i32 17}
!97 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/arizona-core.c", i32 1165, i32 5}
!99 = !{ptr @arizona_dev_init._entry.59, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @arizona_dev_init._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mfd/arizona-core.c", i32 1181, i32 17}
!103 = !{ptr @.str.63, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mfd/arizona-core.c", i32 1185, i32 17}
!105 = !{ptr @.str.65, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/arizona-core.c", i32 1189, i32 5}
!107 = !{ptr @arizona_dev_init._entry.64, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @arizona_dev_init._entry_ptr.66, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mfd/arizona-core.c", i32 1203, i32 16}
!111 = !{ptr @.str.69, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mfd/arizona-core.c", i32 1205, i32 5}
!113 = !{ptr @arizona_dev_init._entry.68, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @arizona_dev_init._entry_ptr.70, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.71, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mfd/arizona-core.c", i32 1220, i32 17}
!117 = !{ptr @.str.72, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mfd/arizona-core.c", i32 1224, i32 17}
!119 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mfd/arizona-core.c", i32 1229, i32 5}
!121 = !{ptr @arizona_dev_init._entry.73, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @arizona_dev_init._entry_ptr.75, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.77, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mfd/arizona-core.c", i32 1241, i32 3}
!125 = !{ptr @arizona_dev_init._entry.76, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @arizona_dev_init._entry_ptr.78, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mfd/arizona-core.c", i32 1247, i32 3}
!129 = !{ptr @arizona_dev_init._entry.79, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @arizona_dev_init._entry_ptr.81, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.83, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mfd/arizona-core.c", i32 1253, i32 2}
!133 = !{ptr @arizona_dev_init._entry.82, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @arizona_dev_init._entry_ptr.84, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.86, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mfd/arizona-core.c", i32 1258, i32 4}
!137 = !{ptr @arizona_dev_init._entry.85, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @arizona_dev_init._entry_ptr.87, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.89, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mfd/arizona-core.c", i32 1267, i32 5}
!141 = !{ptr @arizona_dev_init._entry.88, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @arizona_dev_init._entry_ptr.90, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.92, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mfd/arizona-core.c", i32 1277, i32 5}
!145 = !{ptr @arizona_dev_init._entry.91, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @arizona_dev_init._entry_ptr.93, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.95, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mfd/arizona-core.c", i32 1313, i32 3}
!149 = !{ptr @arizona_dev_init._entry.94, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @arizona_dev_init._entry_ptr.96, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.97, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mfd/arizona-core.c", i32 1364, i32 55}
!153 = !{ptr @.str.98, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mfd/arizona-core.c", i32 1366, i32 56}
!155 = !{ptr @.str.99, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/mfd/arizona-core.c", i32 1368, i32 57}
!157 = !{ptr @.str.101, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mfd/arizona-core.c", i32 1375, i32 3}
!159 = !{ptr @arizona_dev_init._entry.100, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @arizona_dev_init._entry_ptr.102, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @__ksymtab_arizona_dev_init, !162, !"__ksymtab_arizona_dev_init", i1 false, i1 false}
!162 = !{!"../drivers/mfd/arizona-core.c", i32 1406, i32 1}
!163 = !{ptr @__ksymtab_arizona_dev_exit, !164, !"__ksymtab_arizona_dev_exit", i1 false, i1 false}
!164 = !{!"../drivers/mfd/arizona-core.c", i32 1436, i32 1}
!165 = !{ptr @__UNIQUE_ID_file298, !166, !"__UNIQUE_ID_file298", i1 false, i1 false}
!166 = !{!"../drivers/mfd/arizona-core.c", i32 1438, i32 1}
!167 = !{ptr @__UNIQUE_ID_license299, !166, !"__UNIQUE_ID_license299", i1 false, i1 false}
!168 = !{ptr @.str.103, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mfd/arizona-core.c", i32 752, i32 2}
!170 = !{ptr @.str.104, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.105, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @arizona_suspend.__UNIQUE_ID_ddebug293, !169, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!173 = !{ptr @.str.106, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mfd/arizona-core.c", i32 782, i32 2}
!175 = !{ptr @.str.107, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @arizona_resume.__UNIQUE_ID_ddebug296, !174, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!177 = !{ptr @.str.108, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mfd/arizona-core.c", i32 762, i32 2}
!179 = !{ptr @.str.109, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @arizona_suspend_noirq.__UNIQUE_ID_ddebug294, !178, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!181 = !{ptr @.str.110, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mfd/arizona-core.c", i32 772, i32 2}
!183 = !{ptr @.str.111, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @arizona_resume_noirq.__UNIQUE_ID_ddebug295, !182, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!185 = !{ptr @.str.112, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mfd/arizona-core.c", i32 660, i32 2}
!187 = !{ptr @.str.113, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @arizona_runtime_suspend.__UNIQUE_ID_ddebug291, !186, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!189 = !{ptr @.str.114, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mfd/arizona-core.c", i32 682, i32 5}
!191 = !{ptr @arizona_runtime_suspend._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @arizona_runtime_suspend._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.116, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mfd/arizona-core.c", i32 704, i32 5}
!195 = !{ptr @arizona_runtime_suspend._entry.115, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @arizona_runtime_suspend._entry_ptr.117, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.118, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mfd/arizona-core.c", i32 733, i32 3}
!199 = !{ptr @arizona_runtime_suspend.__UNIQUE_ID_ddebug292, !198, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!200 = !{ptr @.str.119, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mfd/arizona-core.c", i32 518, i32 3}
!202 = !{ptr @.str.120, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @arizona_is_jack_det_active._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @arizona_is_jack_det_active._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.121, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mfd/arizona-core.c", i32 493, i32 3}
!207 = !{ptr @.str.122, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @arizona_isolate_dcvdd._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @arizona_isolate_dcvdd._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.123, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mfd/arizona-core.c", i32 533, i32 2}
!212 = !{ptr @.str.124, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @arizona_runtime_resume.__UNIQUE_ID_ddebug289, !211, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!214 = !{ptr @.str.125, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mfd/arizona-core.c", i32 536, i32 3}
!216 = !{ptr @arizona_runtime_resume.__UNIQUE_ID_ddebug290, !215, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!217 = !{ptr @arizona_runtime_resume._entry, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/mfd/arizona-core.c", i32 541, i32 4}
!219 = !{ptr @arizona_runtime_resume._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @arizona_runtime_resume._entry.126, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/mfd/arizona-core.c", i32 549, i32 3}
!222 = !{ptr @arizona_runtime_resume._entry_ptr.127, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @arizona_runtime_resume._entry.128, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/mfd/arizona-core.c", i32 574, i32 4}
!225 = !{ptr @arizona_runtime_resume._entry_ptr.129, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @arizona_runtime_resume._entry.130, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../drivers/mfd/arizona-core.c", i32 581, i32 4}
!228 = !{ptr @arizona_runtime_resume._entry_ptr.131, !227, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.133, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mfd/arizona-core.c", i32 606, i32 5}
!231 = !{ptr @arizona_runtime_resume._entry.132, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @arizona_runtime_resume._entry_ptr.134, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.136, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mfd/arizona-core.c", i32 615, i32 4}
!235 = !{ptr @arizona_runtime_resume._entry.135, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @arizona_runtime_resume._entry_ptr.137, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.139, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mfd/arizona-core.c", i32 642, i32 3}
!239 = !{ptr @arizona_runtime_resume._entry.138, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @arizona_runtime_resume._entry_ptr.140, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.141, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mfd/arizona-core.c", i32 506, i32 3}
!243 = !{ptr @.str.142, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @arizona_connect_dcvdd._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @arizona_connect_dcvdd._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.143, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/mfd/arizona-core.c", i32 806, i32 46}
!248 = !{ptr @.str.144, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/mfd/arizona-core.c", i32 818, i32 4}
!250 = !{ptr @.str.145, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @arizona_of_get_core_pdata._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @arizona_of_get_core_pdata._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.146, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/mfd/arizona-core.c", i32 825, i32 7}
!255 = !{ptr @.str.148, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mfd/arizona-core.c", i32 842, i32 3}
!257 = !{ptr @arizona_of_get_core_pdata._entry.147, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @arizona_of_get_core_pdata._entry_ptr.149, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.150, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mfd/arizona-core.c", i32 33, i32 2}
!261 = !{ptr @.str.151, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/mfd/arizona-core.c", i32 34, i32 2}
!263 = distinct !{null, !264, !"wm5102_core_supplies", i1 false, i1 false}
!264 = !{!"../drivers/mfd/arizona-core.c", i32 32, i32 27}
!265 = !{ptr @.str.152, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mfd/arizona-core.c", i32 856, i32 12}
!267 = !{ptr @early_devs, !268, !"early_devs", i1 false, i1 false}
!268 = !{!"../drivers/mfd/arizona-core.c", i32 855, i32 30}
!269 = !{ptr @.str.153, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/mfd/arizona-core.c", i32 463, i32 3}
!271 = !{ptr @.str.154, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @wm5102_clear_write_sequencer._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @wm5102_clear_write_sequencer._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.156, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/mfd/arizona-core.c", i32 475, i32 3}
!276 = !{ptr @wm5102_clear_write_sequencer._entry.155, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @wm5102_clear_write_sequencer._entry_ptr.157, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.158, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/mfd/arizona-core.c", i32 263, i32 3}
!280 = !{ptr @.str.159, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @arizona_poll_reg._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @arizona_poll_reg._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.161, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/mfd/arizona-core.c", i32 268, i32 2}
!285 = !{ptr @arizona_poll_reg._entry.160, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @arizona_poll_reg._entry_ptr.162, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.163, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/mfd/arizona-core.c", i32 869, i32 12}
!289 = !{ptr @.str.164, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mfd/arizona-core.c", i32 870, i32 12}
!291 = !{ptr @.str.165, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/mfd/arizona-core.c", i32 871, i32 12}
!293 = !{ptr @.str.166, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/mfd/arizona-core.c", i32 872, i32 12}
!295 = !{ptr @.str.167, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mfd/arizona-core.c", i32 874, i32 11}
!297 = !{ptr @wm5102_devs, !298, !"wm5102_devs", i1 false, i1 false}
!298 = !{!"../drivers/mfd/arizona-core.c", i32 868, i32 30}
!299 = !{ptr @.str.168, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/mfd/arizona-core.c", i32 860, i32 2}
!301 = !{ptr @.str.169, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mfd/arizona-core.c", i32 861, i32 2}
!303 = !{ptr @.str.170, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/mfd/arizona-core.c", i32 862, i32 2}
!305 = !{ptr @.str.171, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/mfd/arizona-core.c", i32 863, i32 2}
!307 = !{ptr @.str.172, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/mfd/arizona-core.c", i32 864, i32 2}
!309 = !{ptr @.str.173, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/mfd/arizona-core.c", i32 865, i32 2}
!311 = !{ptr @wm5102_supplies, !312, !"wm5102_supplies", i1 false, i1 false}
!312 = !{!"../drivers/mfd/arizona-core.c", i32 859, i32 27}
!313 = !{ptr @.str.174, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/mfd/arizona-core.c", i32 886, i32 11}
!315 = !{ptr @wm5110_devs, !316, !"wm5110_devs", i1 false, i1 false}
!316 = !{!"../drivers/mfd/arizona-core.c", i32 880, i32 30}
!317 = !{ptr @.str.175, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/mfd/arizona-core.c", i32 903, i32 11}
!319 = !{ptr @cs47l24_devs, !320, !"cs47l24_devs", i1 false, i1 false}
!320 = !{!"../drivers/mfd/arizona-core.c", i32 898, i32 30}
!321 = !{ptr @.str.176, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/mfd/arizona-core.c", i32 895, i32 2}
!323 = !{ptr @cs47l24_supplies, !324, !"cs47l24_supplies", i1 false, i1 false}
!324 = !{!"../drivers/mfd/arizona-core.c", i32 892, i32 27}
!325 = !{ptr @.str.177, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/mfd/arizona-core.c", i32 922, i32 11}
!327 = !{ptr @wm8997_devs, !328, !"wm8997_devs", i1 false, i1 false}
!328 = !{!"../drivers/mfd/arizona-core.c", i32 916, i32 30}
!329 = !{ptr @wm8997_supplies, !330, !"wm8997_supplies", i1 false, i1 false}
!330 = !{!"../drivers/mfd/arizona-core.c", i32 909, i32 27}
!331 = !{ptr @.str.178, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/mfd/arizona-core.c", i32 934, i32 11}
!333 = !{ptr @wm8998_devs, !334, !"wm8998_devs", i1 false, i1 false}
!334 = !{!"../drivers/mfd/arizona-core.c", i32 928, i32 30}
!335 = !{ptr @.str.179, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/mfd/arizona-core.c", i32 410, i32 3}
!337 = !{ptr @.str.180, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @wm5102_apply_hardware_patch._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @wm5102_apply_hardware_patch._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.181, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/mfd/arizona-core.c", i32 330, i32 3}
!342 = !{ptr @.str.182, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @arizona_enable_freerun_sysclk._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @arizona_enable_freerun_sysclk._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.184, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/mfd/arizona-core.c", i32 337, i32 3}
!347 = !{ptr @arizona_enable_freerun_sysclk._entry.183, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @arizona_enable_freerun_sysclk._entry_ptr.185, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.187, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/mfd/arizona-core.c", i32 346, i32 3}
!351 = !{ptr @arizona_enable_freerun_sysclk._entry.186, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @arizona_enable_freerun_sysclk._entry_ptr.188, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.190, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/mfd/arizona-core.c", i32 359, i32 3}
!355 = !{ptr @arizona_enable_freerun_sysclk._entry.189, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @arizona_enable_freerun_sysclk._entry_ptr.191, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.193, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/mfd/arizona-core.c", i32 368, i32 3}
!359 = !{ptr @arizona_enable_freerun_sysclk._entry.192, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @arizona_enable_freerun_sysclk._entry_ptr.194, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.195, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/mfd/arizona-core.c", i32 382, i32 3}
!363 = !{ptr @.str.196, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @arizona_disable_freerun_sysclk._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @arizona_disable_freerun_sysclk._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @arizona_disable_freerun_sysclk._entry.197, !367, !"_entry", i1 false, i1 false}
!367 = !{!"../drivers/mfd/arizona-core.c", i32 389, i32 3}
!368 = !{ptr @arizona_disable_freerun_sysclk._entry_ptr.198, !367, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @wm5110_sleep_patch, !370, !"wm5110_sleep_patch", i1 false, i1 false}
!370 = !{!"../drivers/mfd/arizona-core.c", i32 431, i32 34}
!371 = !{ptr @.str.199, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/mfd/arizona-core.c", i32 112, i32 2}
!373 = !{ptr @.str.200, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @arizona_clkgen_err._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @arizona_clkgen_err._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.201, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/mfd/arizona-core.c", i32 166, i32 3}
!378 = !{ptr @.str.202, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @arizona_overclocked._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @arizona_overclocked._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.204, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/mfd/arizona-core.c", i32 186, i32 3}
!383 = !{ptr @arizona_overclocked._entry.203, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @arizona_overclocked._entry_ptr.205, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.207, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/mfd/arizona-core.c", i32 188, i32 3}
!387 = !{ptr @arizona_overclocked._entry.206, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @arizona_overclocked._entry_ptr.208, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.210, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/mfd/arizona-core.c", i32 190, i32 3}
!391 = !{ptr @arizona_overclocked._entry.209, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @arizona_overclocked._entry_ptr.211, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.213, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/mfd/arizona-core.c", i32 192, i32 3}
!395 = !{ptr @arizona_overclocked._entry.212, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @arizona_overclocked._entry_ptr.214, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.216, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/mfd/arizona-core.c", i32 194, i32 3}
!399 = !{ptr @arizona_overclocked._entry.215, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @arizona_overclocked._entry_ptr.217, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.219, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/mfd/arizona-core.c", i32 196, i32 3}
!403 = !{ptr @arizona_overclocked._entry.218, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @arizona_overclocked._entry_ptr.220, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.222, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/mfd/arizona-core.c", i32 198, i32 3}
!407 = !{ptr @arizona_overclocked._entry.221, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @arizona_overclocked._entry_ptr.223, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.225, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/mfd/arizona-core.c", i32 200, i32 3}
!411 = !{ptr @arizona_overclocked._entry.224, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @arizona_overclocked._entry_ptr.226, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.228, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/mfd/arizona-core.c", i32 202, i32 3}
!415 = !{ptr @arizona_overclocked._entry.227, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @arizona_overclocked._entry_ptr.229, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.231, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/mfd/arizona-core.c", i32 204, i32 3}
!419 = !{ptr @arizona_overclocked._entry.230, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @arizona_overclocked._entry_ptr.232, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.234, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/mfd/arizona-core.c", i32 207, i32 3}
!423 = !{ptr @arizona_overclocked._entry.233, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @arizona_overclocked._entry_ptr.235, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.237, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/mfd/arizona-core.c", i32 209, i32 3}
!427 = !{ptr @arizona_overclocked._entry.236, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @arizona_overclocked._entry_ptr.238, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.240, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/mfd/arizona-core.c", i32 211, i32 3}
!431 = !{ptr @arizona_overclocked._entry.239, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @arizona_overclocked._entry_ptr.241, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.243, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/mfd/arizona-core.c", i32 213, i32 3}
!435 = !{ptr @arizona_overclocked._entry.242, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @arizona_overclocked._entry_ptr.244, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.246, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/mfd/arizona-core.c", i32 215, i32 3}
!439 = !{ptr @arizona_overclocked._entry.245, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @arizona_overclocked._entry_ptr.247, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.249, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/mfd/arizona-core.c", i32 217, i32 3}
!443 = !{ptr @arizona_overclocked._entry.248, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @arizona_overclocked._entry_ptr.250, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.252, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/mfd/arizona-core.c", i32 219, i32 3}
!447 = !{ptr @arizona_overclocked._entry.251, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @arizona_overclocked._entry_ptr.253, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.255, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/mfd/arizona-core.c", i32 221, i32 3}
!451 = !{ptr @arizona_overclocked._entry.254, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @arizona_overclocked._entry_ptr.256, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.258, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/mfd/arizona-core.c", i32 223, i32 3}
!455 = !{ptr @arizona_overclocked._entry.257, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @arizona_overclocked._entry_ptr.259, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.261, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/mfd/arizona-core.c", i32 225, i32 3}
!459 = !{ptr @arizona_overclocked._entry.260, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @arizona_overclocked._entry_ptr.262, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.264, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/mfd/arizona-core.c", i32 227, i32 3}
!463 = !{ptr @arizona_overclocked._entry.263, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @arizona_overclocked._entry_ptr.265, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.267, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/mfd/arizona-core.c", i32 230, i32 3}
!467 = !{ptr @arizona_overclocked._entry.266, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @arizona_overclocked._entry_ptr.268, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.269, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/mfd/arizona-core.c", i32 126, i32 3}
!471 = !{ptr @.str.270, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @arizona_underclocked._entry, !470, !"_entry", i1 false, i1 false}
!473 = !{ptr @arizona_underclocked._entry_ptr, !470, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.272, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/mfd/arizona-core.c", i32 132, i32 3}
!476 = !{ptr @arizona_underclocked._entry.271, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @arizona_underclocked._entry_ptr.273, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.275, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/mfd/arizona-core.c", i32 134, i32 3}
!480 = !{ptr @arizona_underclocked._entry.274, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @arizona_underclocked._entry_ptr.276, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.278, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/mfd/arizona-core.c", i32 136, i32 3}
!484 = !{ptr @arizona_underclocked._entry.277, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @arizona_underclocked._entry_ptr.279, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.281, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/mfd/arizona-core.c", i32 138, i32 3}
!488 = !{ptr @arizona_underclocked._entry.280, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @arizona_underclocked._entry_ptr.282, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.284, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/mfd/arizona-core.c", i32 140, i32 3}
!492 = !{ptr @arizona_underclocked._entry.283, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @arizona_underclocked._entry_ptr.285, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.287, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/mfd/arizona-core.c", i32 142, i32 3}
!496 = !{ptr @arizona_underclocked._entry.286, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @arizona_underclocked._entry_ptr.288, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.290, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/mfd/arizona-core.c", i32 144, i32 3}
!500 = !{ptr @arizona_underclocked._entry.289, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @arizona_underclocked._entry_ptr.291, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.293, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/mfd/arizona-core.c", i32 146, i32 3}
!504 = !{ptr @arizona_underclocked._entry.292, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @arizona_underclocked._entry_ptr.294, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.296, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/mfd/arizona-core.c", i32 148, i32 3}
!508 = !{ptr @arizona_underclocked._entry.295, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @arizona_underclocked._entry_ptr.297, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.299, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/mfd/arizona-core.c", i32 150, i32 3}
!512 = !{ptr @arizona_underclocked._entry.298, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @arizona_underclocked._entry_ptr.300, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.302, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/mfd/arizona-core.c", i32 152, i32 3}
!516 = !{ptr @arizona_underclocked._entry.301, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @arizona_underclocked._entry_ptr.303, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{i32 1, !"wchar_size", i32 2}
!519 = !{i32 1, !"min_enum_size", i32 4}
!520 = !{i32 8, !"branch-target-enforcement", i32 0}
!521 = !{i32 8, !"sign-return-address", i32 0}
!522 = !{i32 8, !"sign-return-address-all", i32 0}
!523 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!524 = !{i32 7, !"uwtable", i32 1}
!525 = !{i32 7, !"frame-pointer", i32 2}
!526 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!527 = !{!"branch_weights", i32 1, i32 2000}
!528 = !{i64 2148754270, i64 2148754275, i64 2148754288, i64 2148754332, i64 2148754366, i64 2148754387}
!529 = !{!"auto-init"}
!530 = !{i8 0, i8 2}
