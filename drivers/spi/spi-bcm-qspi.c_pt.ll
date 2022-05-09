; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-bcm-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-bcm-qspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bcm_qspi_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bcm_qspi_probe\09\09\09\09"
module asm "\09.long\09__crc_bcm_qspi_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm_qspi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm_qspi_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bcm_qspi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcm_qspi_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_bcm_qspi_remove\09\09\09\09"
module asm "\09.long\09__crc_bcm_qspi_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm_qspi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm_qspi_remove\22\09\09\09\09\09"
module asm "__kstrtabns_bcm_qspi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcm_qspi_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_bcm_qspi_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_bcm_qspi_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm_qspi_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm_qspi_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bcm_qspi_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_qspi_irq = type { ptr, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_qspi_data = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm_qspi = type { ptr, ptr, ptr, i32, i32, [3 x ptr], ptr, %struct.bcm_qspi_parms, %struct.qspi_trans, i32, i32, i32, i32, ptr, i32, i32, i32, %struct.bcm_xfer_mode, i32, i8, i8, i32, ptr, %struct.completion, %struct.completion, i8, i8, i8 }
%struct.bcm_qspi_parms = type { i32, i8, i8 }
%struct.qspi_trans = type { ptr, i32, i8 }
%struct.bcm_xfer_mode = type { i8, i32, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.bcm_qspi_soc_intc = type { ptr, ptr, ptr }
%struct.bcm_qspi_dev_id = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }

@bcm_qspi_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-bcm7445-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_qspi_rev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-bcm-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_qspi_no_rev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-bcm7216-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_qspi_spcr3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-bcm7278-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_qspi_spcr3_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1509, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error allocating spi_master\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_qspi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-bcm-qspi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry_ptr = internal global ptr @bcm_qspi_probe._entry, section ".printk_index", align 4
@bcm_qspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr null, ptr null, ptr @bcm_qspi_exec_mem_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hif_mspi\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mspi\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bspi\00", [27 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1564, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using %smspi mode\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry_ptr.12 = internal global ptr @bcm_qspi_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bspi-\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cs_reg\00", [25 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1592, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to prepare clock\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry_ptr.18 = internal global ptr @bcm_qspi_probe._entry.16, section ".printk_index", align 4
@qspi_irq_tab = internal constant { [7 x %struct.bcm_qspi_irq], [48 x i8] } { [7 x %struct.bcm_qspi_irq] [%struct.bcm_qspi_irq { ptr @.str.63, ptr @bcm_qspi_bspi_lr_l2_isr, i32 0, i32 1 }, %struct.bcm_qspi_irq { ptr @.str.64, ptr @bcm_qspi_bspi_lr_err_l2_isr, i32 0, i32 2 }, %struct.bcm_qspi_irq { ptr @.str.65, ptr @bcm_qspi_bspi_lr_err_l2_isr, i32 0, i32 4 }, %struct.bcm_qspi_irq { ptr @.str.66, ptr @bcm_qspi_bspi_lr_l2_isr, i32 0, i32 8 }, %struct.bcm_qspi_irq { ptr @.str.67, ptr @bcm_qspi_mspi_l2_isr, i32 0, i32 32 }, %struct.bcm_qspi_irq { ptr @.str.68, ptr @bcm_qspi_mspi_l2_isr, i32 0, i32 64 }, %struct.bcm_qspi_irq { ptr @.str.69, ptr @bcm_qspi_l1_isr, i32 1, i32 127 }], [48 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 1636, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ %s not found\0A\00", [46 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry_ptr.21 = internal global ptr @bcm_qspi_probe._entry.19, section ".printk_index", align 4
@bcm_qspi_probe.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 1, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_bcm_qspi\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"registered IRQ %s %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 1650, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no IRQs registered, cannot init driver\0A\00", [56 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry_ptr.26 = internal global ptr @bcm_qspi_probe._entry.24, section ".printk_index", align 4
@bcm_qspi_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 1668, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't register master\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm_qspi_probe._entry_ptr.29 = internal global ptr @bcm_qspi_probe._entry.27, section ".printk_index", align 4
@__kstrtab_bcm_qspi_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm_qspi_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm_qspi_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm_qspi_probe to i32), ptr @__kstrtab_bcm_qspi_probe, ptr @__kstrtabns_bcm_qspi_probe }, section "___ksymtab_gpl+bcm_qspi_probe", align 4
@__kstrtab_bcm_qspi_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm_qspi_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm_qspi_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm_qspi_remove to i32), ptr @__kstrtab_bcm_qspi_remove, ptr @__kstrtabns_bcm_qspi_remove }, section "___ksymtab_gpl+bcm_qspi_remove", align 4
@bcm_qspi_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm_qspi_suspend, ptr @bcm_qspi_resume, ptr @bcm_qspi_suspend, ptr @bcm_qspi_resume, ptr @bcm_qspi_suspend, ptr @bcm_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_bcm_qspi_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm_qspi_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm_qspi_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm_qspi_pm_ops to i32), ptr @__kstrtab_bcm_qspi_pm_ops, ptr @__kstrtabns_bcm_qspi_pm_ops }, section "___ksymtab_gpl+bcm_qspi_pm_ops", align 4
@__UNIQUE_ID_author255 = internal constant [31 x i8] c"spi_bcm_qspi.author=Kamal Dasu\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [46 x i8] c"spi_bcm_qspi.description=Broadcom QSPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [43 x i8] c"spi_bcm_qspi.file=drivers/spi/spi-bcm-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [28 x i8] c"spi_bcm_qspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias259 = internal constant [37 x i8] c"spi_bcm_qspi.alias=platform:bcm_qspi\00", section ".modinfo", align 1
@bcm_qspi_rev_data = internal constant { %struct.bcm_qspi_data, [30 x i8] } { %struct.bcm_qspi_data { i8 1, i8 0 }, [30 x i8] zeroinitializer }, align 32
@bcm_qspi_no_rev_data = internal constant { %struct.bcm_qspi_data, [30 x i8] } zeroinitializer, align 32
@bcm_qspi_spcr3_data = internal constant { %struct.bcm_qspi_data, [30 x i8] } { %struct.bcm_qspi_data { i8 1, i8 1 }, [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcm_qspi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"timeout waiting for MSPI\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm_qspi_transfer_one\00", [42 x i8] zeroinitializer }, align 32
@bcm_qspi_transfer_one._entry_ptr = internal global ptr @bcm_qspi_transfer_one._entry, section ".printk_index", align 4
@bcm_qspi_chip_select.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm_qspi_chip_select\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"using cs:%d\0A\00", [19 x i8] zeroinitializer }, align 32
@write_to_hw.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write_to_hw\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WR %02x\0A\00", [23 x i8] zeroinitializer }, align 32
@write_to_hw.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 0, i8 -16, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WR %04x\0A\00", [23 x i8] zeroinitializer }, align 32
@write_to_hw.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 -15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WR %08x\0A\00", [23 x i8] zeroinitializer }, align 32
@write_to_hw.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.34, ptr @.str.2, ptr @.str.38, i8 0, i8 -12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WR %llx\0A\00", [23 x i8] zeroinitializer }, align 32
@write_to_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 1000, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: no data to send?\00", [43 x i8] zeroinitializer }, align 32
@write_to_hw._entry_ptr = internal global ptr @write_to_hw._entry, section ".printk_index", align 4
@write_to_hw.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.34, ptr @.str.2, ptr @.str.40, i8 0, i8 -5, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"submitting %d slots\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm_qspi_bspi_busy_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 327, ptr @.str.43, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout waiting for !busy_status\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm_qspi_bspi_busy_poll\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_busy_poll._entry_ptr = internal global ptr @bcm_qspi_bspi_busy_poll._entry, section ".printk_index", align 4
@update_qspi_trans_byte_count.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"update_qspi_trans_byte_count\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"trans %p len %d byte %d ret %x\0A\00", [32 x i8] zeroinitializer }, align 32
@read_from_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 833, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: too many slots!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_from_hw\00", [19 x i8] zeroinitializer }, align 32
@read_from_hw._entry_ptr = internal global ptr @read_from_hw._entry, section ".printk_index", align 4
@read_from_hw.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RD %02x\0A\00", [23 x i8] zeroinitializer }, align 32
@read_from_hw.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.47, ptr @.str.2, ptr @.str.49, i8 0, i8 -43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RD %04x\0A\00", [23 x i8] zeroinitializer }, align 32
@read_from_hw.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 0, i8 -41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RD %08x\0A\00", [23 x i8] zeroinitializer }, align 32
@read_from_hw.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.47, ptr @.str.2, ptr @.str.51, i8 0, i8 -39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RD %llx\0A\00", [23 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 536, ptr @.str.43, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"INVALID COMBINATION: width=%d addrlen=%d hp=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm_qspi_bspi_set_mode\00", [41 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_set_mode._entry_ptr = internal global ptr @bcm_qspi_bspi_set_mode._entry, section ".printk_index", align 4
@bcm_qspi_bspi_set_mode.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cs:%d %d-lane output, %d-byte address%s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", hp mode\00", [22 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_set_override.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm_qspi_bspi_set_override\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"set override mode w %x addrlen %x hp %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_set_flex_mode.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm_qspi_bspi_set_flex_mode\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"set flex mode w %x addrlen %x hp %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_exec_mem_op.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 1, i8 16, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm_qspi_bspi_exec_mem_op\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bspi xfr addr 0x%x len 0x%x\00", [36 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_exec_mem_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 1108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"timeout waiting for BSPI\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_exec_mem_op._entry_ptr = internal global ptr @bcm_qspi_bspi_exec_mem_op._entry, section ".printk_index", align 4
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spi_lr_fullness_reached\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spi_lr_session_aborted\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_lr_impatient\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_lr_session_done\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mspi_done\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mspi_halted\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_l1_intr\00", [20 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_lr_data_read.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm_qspi_bspi_lr_data_read\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xfer %p rx %p rxlen %d\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_lr_err_l2_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 1308, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BSPI INT error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm_qspi_bspi_lr_err_l2_isr\00", [36 x i8] zeroinitializer }, align 32
@bcm_qspi_bspi_lr_err_l2_isr._entry_ptr = internal global ptr @bcm_qspi_bspi_lr_err_l2_isr._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 64]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"bcm_qspi_of_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1460, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1509, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"bcm_qspi_mem_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1436, i32 44 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1538, i32 42 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1541, i32 59 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1544, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1554, i32 59 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1564, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1566, i32 59 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1592, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"qspi_irq_tab\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1339, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1636, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1643, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1650, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1668, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"bcm_qspi_pm_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1734, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"bcm_qspi_rev_data\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1450, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"bcm_qspi_no_rev_data\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1445, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"bcm_qspi_spcr3_data\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1455, i32 35 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1139, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 597, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 954, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 960, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 966, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 976, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1000, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1004, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 327, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 774, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 833, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 845, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 853, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 861, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 870, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 534, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 543, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 470, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 425, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1090, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1108, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1341, i32 15 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1346, i32 15 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1351, i32 15 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1356, i32 15 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1369, i32 15 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1374, i32 15 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1380, i32 15 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 384, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.328 = private constant [30 x i8] c"../drivers/spi/spi-bcm-qspi.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1308, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 87, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_alias259, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__ksymtab_bcm_qspi_pm_ops, ptr @__ksymtab_bcm_qspi_probe, ptr @__ksymtab_bcm_qspi_remove, ptr @bcm_qspi_bspi_busy_poll._entry, ptr @bcm_qspi_bspi_busy_poll._entry_ptr, ptr @bcm_qspi_bspi_exec_mem_op._entry, ptr @bcm_qspi_bspi_exec_mem_op._entry_ptr, ptr @bcm_qspi_bspi_lr_err_l2_isr._entry, ptr @bcm_qspi_bspi_lr_err_l2_isr._entry_ptr, ptr @bcm_qspi_bspi_set_mode._entry, ptr @bcm_qspi_bspi_set_mode._entry_ptr, ptr @bcm_qspi_probe._entry, ptr @bcm_qspi_probe._entry.16, ptr @bcm_qspi_probe._entry.19, ptr @bcm_qspi_probe._entry.24, ptr @bcm_qspi_probe._entry.27, ptr @bcm_qspi_probe._entry.9, ptr @bcm_qspi_probe._entry_ptr, ptr @bcm_qspi_probe._entry_ptr.12, ptr @bcm_qspi_probe._entry_ptr.18, ptr @bcm_qspi_probe._entry_ptr.21, ptr @bcm_qspi_probe._entry_ptr.26, ptr @bcm_qspi_probe._entry_ptr.29, ptr @bcm_qspi_transfer_one._entry, ptr @bcm_qspi_transfer_one._entry_ptr, ptr @read_from_hw._entry, ptr @read_from_hw._entry_ptr, ptr @write_to_hw._entry, ptr @write_to_hw._entry_ptr, ptr @bcm_qspi_of_match, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bcm_qspi_mem_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @qspi_irq_tab, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @bcm_qspi_pm_ops, ptr @bcm_qspi_rev_data, ptr @bcm_qspi_no_rev_data, ptr @bcm_qspi_spcr3_data, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @init_completion.__key, ptr @.str.74], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_irq_tab to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_rev_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_no_rev_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_spcr3_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_to_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_bspi_busy_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_from_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_bspi_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_bspi_exec_mem_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qspi_bspi_lr_err_l2_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_qspi_probe(ptr noundef %pdev, ptr noundef %soc_intc) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !190
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup204_crit_edge, label %if.end

entry.cleanup204_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup204

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @bcm_qspi_of_match, ptr noundef nonnull %2) #8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup204_crit_edge, label %if.end5

if.end.cleanup204_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup204

if.end5:                                          ; preds = %if.end
  %data6 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data6, align 4
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 236, i1 noundef zeroext false) #8
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #11
  br label %cleanup204

if.end10:                                         ; preds = %if.end5
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %call13 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call13 to i32
  br label %cleanup204

if.end19:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %6, align 4
  %trans_pos = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 8
  %10 = ptrtoint ptr %trans_pos to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %trans_pos, align 4
  %byte = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %byte to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %byte, align 4
  %mspi_last_trans = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %mspi_last_trans to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %mspi_last_trans, align 4
  %master23 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %master23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %master23, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3091, ptr %mode_bits, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %16 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bcm_qspi_setup, ptr %setup, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %17 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bcm_qspi_transfer_one, ptr %transfer_one, align 4
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %18 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bcm_qspi_mem_ops, ptr %mem_ops, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %19 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bcm_qspi_cleanup, ptr %cleanup, align 8
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %of_node26 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %22 = ptrtoint ptr %of_node26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %of_node26, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4, ptr %num_chipselect, align 2
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %24 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %25 = load ptr, ptr %of_node, align 8
  %call28 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %25) #8
  %big_endian = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 20
  %frombool = zext i1 %call28 to i8
  %26 = ptrtoint ptr %big_endian to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %big_endian, align 1
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool31.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool31.not, label %if.then32, label %if.end19.if.end34_crit_edge

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %conv = trunc i32 %30 to i16
  %31 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %num_chipselect, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end19.if.end34_crit_edge
  %call35 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.6) #8
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end39, label %if.end34.if.then41_crit_edge

if.end34.if.then41_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end39:                                         ; preds = %if.end34
  %call38 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #8
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.end39.cleanup204_crit_edge, label %if.end39.if.then41_crit_edge

if.end39.if.then41_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end39.cleanup204_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup204

if.then41:                                        ; preds = %if.end39.if.then41_crit_edge, %if.end34.if.then41_crit_edge
  %res.0341 = phi ptr [ %call38, %if.end39.if.then41_crit_edge ], [ %call35, %if.end34.if.then41_crit_edge ]
  %call42 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res.0341) #8
  %base = getelementptr %struct.bcm_qspi, ptr %6, i32 0, i32 5
  %32 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call42, ptr %base, align 4
  %cmp.i333 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call42 to i32
  br label %cleanup204

if.end51:                                         ; preds = %if.then41
  %call52 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.8) #8
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end51.do.end71_crit_edge, label %if.then54

if.end51.do.end71_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

if.then54:                                        ; preds = %if.end51
  %call55 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call52) #8
  %arrayidx57 = getelementptr %struct.bcm_qspi, ptr %6, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call55, ptr %arrayidx57, align 4
  %cmp.i334 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i334, label %if.then61, label %if.then54.do.end71_crit_edge

if.then54.do.end71_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

if.then61:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call55 to i32
  br label %cleanup204

do.end71:                                         ; preds = %if.then54.do.end71_crit_edge, %if.end51.do.end71_crit_edge
  %cond = phi ptr [ @.str.14, %if.end51.do.end71_crit_edge ], [ @.str.13, %if.then54.do.end71_crit_edge ]
  %.sink = phi i8 [ 0, %if.end51.do.end71_crit_edge ], [ 1, %if.then54.do.end71_crit_edge ]
  %bspi_mode = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 19
  %36 = ptrtoint ptr %bspi_mode to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %bspi_mode, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond) #11
  %call75 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.15) #8
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %do.end71.if.end89_crit_edge, label %if.then77

do.end71.if.end89_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then77:                                        ; preds = %do.end71
  %call78 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call75) #8
  %arrayidx80 = getelementptr %struct.bcm_qspi, ptr %6, i32 0, i32 5, i32 2
  %37 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call78, ptr %arrayidx80, align 4
  %cmp.i335 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i335, label %if.then84, label %if.then77.if.end89_crit_edge

if.then77.if.end89_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then84:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call78 to i32
  br label %cleanup204

if.end89:                                         ; preds = %if.then77.if.end89_crit_edge, %do.end71.if.end89_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 56) #12
  %dev_ids = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 22
  %40 = ptrtoint ptr %dev_ids to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i.i, ptr %dev_ids, align 4
  %tobool92.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool92.not, label %if.end89.cleanup204_crit_edge, label %if.end94

if.end89.cleanup204_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup204

if.end94:                                         ; preds = %if.end89
  %tobool95.not = icmp eq ptr %soc_intc, null
  %soc_intc99 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 6
  br i1 %tobool95.not, label %if.else98, label %if.then96

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %soc_intc99 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %soc_intc, ptr %soc_intc99, align 4
  %bcm_qspi_int_set = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %soc_intc, i32 0, i32 1
  %42 = ptrtoint ptr %bcm_qspi_int_set to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bcm_qspi_int_set, align 4
  call void %43(ptr noundef nonnull %soc_intc, i32 noundef 1, i1 noundef zeroext true) #8
  br label %if.end100

if.else98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %soc_intc99 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %soc_intc99, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.else98, %if.then96
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 4
  %tobool102.not = icmp eq ptr %46, null
  br i1 %tobool102.not, label %if.end100.if.end116_crit_edge, label %if.then103

if.end100.if.end116_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then103:                                       ; preds = %if.end100
  %call105 = call fastcc i32 @clk_prepare_enable(ptr noundef nonnull %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end111, label %do.end110

do.end110:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #11
  br label %qspi_probe_err

if.end111:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk, align 4
  %call113 = call i32 @clk_get_rate(ptr noundef %48) #8
  br label %if.end116

if.end116:                                        ; preds = %if.end111, %if.end100.if.end116_crit_edge
  %.sink351 = phi i32 [ %call113, %if.end111 ], [ 27000000, %if.end100.if.end116_crit_edge ]
  %base_clk115 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 3
  %49 = ptrtoint ptr %base_clk115 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink351, ptr %base_clk115, align 4
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %4, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool117.not = icmp eq i8 %51, 0
  br i1 %tobool117.not, label %if.end116.if.end123_crit_edge, label %if.then118

if.end116.if.end123_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then118:                                       ; preds = %if.end116
  %52 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %big_endian, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i = icmp eq i8 %53, 0
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 44
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit

if.else.i.i:                                      ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  %57 = call i32 @llvm.bswap.i32(i32 %56) #8
  br label %bcm_qspi_read.exit

bcm_qspi_read.exit:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %56, %if.then.i.i ], [ %57, %if.else.i.i ]
  %and = and i32 %retval.0.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and)
  %cmp = icmp eq i32 %and, 255
  %58 = trunc i32 %retval.0.i.i to i8
  %phi.cast = select i1 %cmp, i8 0, i8 %58
  br label %if.end123

if.end123:                                        ; preds = %bcm_qspi_read.exit, %if.end116.if.end123_crit_edge
  %rev.0 = phi i8 [ %phi.cast, %bcm_qspi_read.exit ], [ 0, %if.end116.if.end123_crit_edge ]
  %59 = lshr i8 %rev.0, 4
  %mspi_maj_rev = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 25
  %60 = ptrtoint ptr %mspi_maj_rev to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %mspi_maj_rev, align 4
  %conv127 = and i8 %rev.0, 15
  %mspi_min_rev = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 26
  %61 = ptrtoint ptr %mspi_min_rev to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv127, ptr %mspi_min_rev, align 1
  %has_spcr3_sysclk = getelementptr inbounds %struct.bcm_qspi_data, ptr %4, i32 0, i32 1
  %62 = ptrtoint ptr %has_spcr3_sysclk to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %has_spcr3_sysclk, align 1, !range !191
  %mspi_spcr3_sysclk = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 27
  %64 = ptrtoint ptr %mspi_spcr3_sysclk to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %mspi_spcr3_sysclk, align 2
  %base_clk130 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 3
  %65 = ptrtoint ptr %base_clk130 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %base_clk130, align 4
  %call131 = call fastcc i32 @bcm_qspi_spbr_min(ptr noundef %6)
  %mul = shl i32 %call131, 1
  %div = udiv i32 %66, %mul
  %max_speed_hz = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 4
  %67 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div, ptr %max_speed_hz, align 4
  call fastcc void @bcm_qspi_hw_uninit(ptr noundef %6)
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %val, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end123
  %num_ints.0347 = phi i32 [ 0, %if.end123 ], [ %num_ints.1, %for.inc.for.body_crit_edge ]
  %storemerge346 = phi i32 [ 0, %if.end123 ], [ %inc184, %for.inc.for.body_crit_edge ]
  %arrayidx134 = getelementptr [7 x %struct.bcm_qspi_irq], ptr @qspi_irq_tab, i32 0, i32 %storemerge346
  %69 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %storemerge346)
  %cmp136.not = icmp eq i32 %storemerge346, 6
  br i1 %cmp136.not, label %if.else140, label %if.then138

if.then138:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call139 = call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef %70) #8
  br label %if.end146

if.else140:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ints.0347)
  %tobool141.not = icmp ne i32 %num_ints.0347, 0
  %brmerge = or i1 %tobool95.not, %tobool141.not
  br i1 %brmerge, label %if.else140.for.inc_crit_edge, label %if.then143

if.else140.for.inc_crit_edge:                     ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then143:                                       ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #10
  %call144 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.then138
  %irq.0 = phi i32 [ %call139, %if.then138 ], [ %call144, %if.then143 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq.0)
  %cmp147 = icmp sgt i32 %irq.0, -1
  br i1 %cmp147, label %if.then149, label %if.end146.for.inc_crit_edge

if.end146.for.inc_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then149:                                       ; preds = %if.end146
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val, align 4
  %irq_handler = getelementptr [7 x %struct.bcm_qspi_irq], ptr @qspi_irq_tab, i32 0, i32 %72, i32 1
  %73 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irq_handler, align 4
  %75 = ptrtoint ptr %dev_ids to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_ids, align 4
  %arrayidx153 = getelementptr %struct.bcm_qspi_dev_id, ptr %76, i32 %72
  %call.i336 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %irq.0, ptr noundef %74, ptr noundef null, i32 noundef 0, ptr noundef %70, ptr noundef %arrayidx153) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336)
  %cmp155 = icmp slt i32 %call.i336, 0
  br i1 %cmp155, label %do.end160, label %if.end162

do.end160:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %70) #11
  br label %qspi_unprepare_err

if.end162:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %dev_ids to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_ids, align 4
  %79 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val, align 4
  %dev165 = getelementptr %struct.bcm_qspi_dev_id, ptr %78, i32 %80, i32 1
  %81 = ptrtoint ptr %dev165 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %6, ptr %dev165, align 4
  %82 = load i32, ptr %val, align 4
  %arrayidx166 = getelementptr [7 x %struct.bcm_qspi_irq], ptr @qspi_irq_tab, i32 0, i32 %82
  %83 = load ptr, ptr %dev_ids, align 4
  %arrayidx168 = getelementptr %struct.bcm_qspi_dev_id, ptr %83, i32 %82
  %84 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx166, ptr %arrayidx168, align 4
  %inc = add i32 %num_ints.0347, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_qspi_probe.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_qspi_probe, %for.inc)) #8
          to label %if.then176 [label %for.inc], !srcloc !193

if.then176:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val, align 4
  %arrayidx178 = getelementptr [7 x %struct.bcm_qspi_irq], ptr @qspi_irq_tab, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx178, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_qspi_probe.__UNIQUE_ID_ddebug254, ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef %88, i32 noundef %irq.0) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then176, %if.end162, %if.end146.for.inc_crit_edge, %if.else140.for.inc_crit_edge
  %num_ints.1 = phi i32 [ %inc, %if.then176 ], [ %num_ints.0347, %if.end146.for.inc_crit_edge ], [ %num_ints.0347, %if.else140.for.inc_crit_edge ], [ %inc, %if.end162 ]
  %89 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val, align 4
  %inc184 = add i32 %90, 1
  store i32 %inc184, ptr %val, align 4
  %cmp132 = icmp ult i32 %inc184, 7
  br i1 %cmp132, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ints.1)
  %tobool185.not = icmp eq i32 %num_ints.1, 0
  br i1 %tobool185.not, label %do.end189, label %if.end191

do.end189:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  br label %qspi_unprepare_err

if.end191:                                        ; preds = %for.end
  call fastcc void @bcm_qspi_hw_init(ptr noundef %6)
  %mspi_done = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 23
  %91 = ptrtoint ptr %mspi_done to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %mspi_done, align 4
  %wait.i = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 23, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @init_completion.__key) #8
  %bspi_done = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 24
  %92 = ptrtoint ptr %bspi_done to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %bspi_done, align 4
  %wait.i337 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 24, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i337, ptr noundef nonnull @.str.74, ptr noundef nonnull @init_completion.__key) #8
  %curr_cs = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 9
  %93 = ptrtoint ptr %curr_cs to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %curr_cs, align 4
  %driver_data.i.i338 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %94 = ptrtoint ptr %driver_data.i.i338 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %6, ptr %driver_data.i.i338, align 4
  %width = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 17, i32 1
  %95 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %width, align 4
  %addrlen = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 17, i32 2
  %96 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %addrlen, align 4
  %hp = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 17, i32 3
  %97 = ptrtoint ptr %hp to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %hp, align 4
  %call194 = call i32 @spi_register_controller(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %do.end200, label %if.end191.cleanup204_crit_edge

if.end191.cleanup204_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup204

do.end200:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #11
  call fastcc void @bcm_qspi_hw_uninit(ptr noundef %6)
  br label %qspi_unprepare_err

qspi_unprepare_err:                               ; preds = %do.end200, %do.end189, %do.end160
  %ret.0 = phi i32 [ %call.i336, %do.end160 ], [ %call194, %do.end200 ], [ -22, %do.end189 ]
  %98 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %99) #8
  call void @clk_unprepare(ptr noundef %99) #8
  br label %qspi_probe_err

qspi_probe_err:                                   ; preds = %qspi_unprepare_err, %do.end110
  %ret.1 = phi i32 [ %call105, %do.end110 ], [ %ret.0, %qspi_unprepare_err ]
  %100 = ptrtoint ptr %dev_ids to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_ids, align 4
  call void @kfree(ptr noundef %101) #8
  br label %cleanup204

cleanup204:                                       ; preds = %qspi_probe_err, %if.end191.cleanup204_crit_edge, %if.end89.cleanup204_crit_edge, %if.then84, %if.then61, %if.then46, %if.end39.cleanup204_crit_edge, %if.then16, %do.end, %if.end.cleanup204_crit_edge, %entry.cleanup204_crit_edge
  %retval.0 = phi i32 [ %8, %if.then16 ], [ %33, %if.then46 ], [ %35, %if.then61 ], [ %38, %if.then84 ], [ %ret.1, %qspi_probe_err ], [ -12, %do.end ], [ -19, %entry.cleanup204_crit_edge ], [ -19, %if.end.cleanup204_crit_edge ], [ 0, %if.end39.cleanup204_crit_edge ], [ -12, %if.end89.cleanup204_crit_edge ], [ 0, %if.end191.cleanup204_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_qspi_setup(ptr nocapture noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %cmp = icmp ugt i8 %1, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %2 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_state.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %controller_state.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  %xp.0 = phi ptr [ %3, %if.end.if.end7_crit_edge ], [ %call7.i.i, %if.end6 ]
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed_hz, align 8
  %8 = ptrtoint ptr %xp.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %xp.0, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  %conv8 = trunc i32 %10 to i8
  %mode9 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %xp.0, i32 0, i32 1
  %11 = ptrtoint ptr %mode9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv8, ptr %mode9, align 4
  %12 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  %bits_per_word15 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %xp.0, i32 0, i32 2
  %. = select i1 %tobool11.not, i8 8, i8 %13
  %14 = ptrtoint ptr %bits_per_word15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %., ptr %bits_per_word15, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then2.cleanup_crit_edge ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_qspi_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %spi, ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %2 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %5 to i32
  tail call fastcc void @bcm_qspi_chip_select(ptr noundef %1, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %trans_pos = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %trans_pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %trans, ptr %trans_pos, align 4
  %byte = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %byte to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %byte, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.not = icmp eq i32 %9, 0
  br i1 %cmp27.not, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %mspi_done = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 23
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %10 = ptrtoint ptr %mspi_done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mspi_done, align 4
  %call7 = tail call fastcc i32 @write_to_hw(ptr noundef %1, ptr noundef %spi)
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %mspi_done, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end, label %if.end12

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end12:                                         ; preds = %while.body
  tail call fastcc void @read_from_hw(ptr noundef %1, i32 noundef %call7)
  %13 = ptrtoint ptr %byte to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %byte, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %if.end12.while.body_crit_edge, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %if.end.while.end_crit_edge
  %bspi_mode.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %bspi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bspi_mode.i.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not.i = icmp eq i8 %18, 0
  br i1 %tobool.i.not.i, label %while.end.cleanup_crit_edge, label %if.end.i

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %while.end
  %bspi_enabled.i = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %bspi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %bspi_enabled.i, align 4
  %big_endian.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  %arrayidx.i.i = getelementptr %struct.bcm_qspi, ptr %1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  br label %bcm_qspi_read.exit.i

bcm_qspi_read.exit.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %24, %if.then.i.i.i ], [ %25, %if.else.i.i.i ]
  %and.i = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %bcm_qspi_read.exit.i.cleanup_crit_edge, label %if.end3.i

bcm_qspi_read.exit.i.cleanup_crit_edge:           ; preds = %bcm_qspi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %bcm_qspi_read.exit.i
  tail call fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr noundef %1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #8
  %27 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i9.i = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %30, i32 8
  br i1 %tobool.not.i9.i, label %if.else.i.i12.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

if.else.i.i12.i:                                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

bcm_qspi_write.exit.i:                            ; preds = %if.else.i.i12.i, %do.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #8
  br label %cleanup

cleanup:                                          ; preds = %bcm_qspi_write.exit.i, %bcm_qspi_read.exit.i.cleanup_crit_edge, %while.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %bcm_qspi_read.exit.i.cleanup_crit_edge ], [ 0, %bcm_qspi_write.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_qspi_cleanup(ptr nocapture noundef readonly %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @bcm_qspi_spbr_min(ptr nocapture noundef readonly %qspi) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %bspi_mode.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 19
  %0 = ptrtoint ptr %bspi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bspi_mode.i.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true.i:                                  ; preds = %entry
  %mspi_maj_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 25
  %2 = ptrtoint ptr %mspi_maj_rev.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mspi_maj_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %mspi_min_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 26
  %4 = ptrtoint ptr %mspi_min_rev.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mspi_min_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp4.i = icmp ugt i8 %5, 4
  br i1 %cmp4.i, label %land.lhs.true.i5, label %land.lhs.true2.i.return_crit_edge

land.lhs.true2.i.return_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true.i5:                                 ; preds = %land.lhs.true2.i
  %mspi_spcr3_sysclk.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 27
  %6 = ptrtoint ptr %mspi_spcr3_sysclk.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mspi_spcr3_sysclk.i, align 2, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.i5._crit_edge

land.lhs.true.i5._crit_edge:                      ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i5
  %8 = ptrtoint ptr %mspi_maj_rev.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mspi_maj_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not.i7 = icmp eq i8 %9, 0
  br i1 %cmp.not.i7, label %lor.lhs.false.i.return_crit_edge, label %land.lhs.true2.i10

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true2.i10:                               ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %mspi_min_rev.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mspi_min_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp4.i9 = icmp ugt i8 %11, 5
  br i1 %cmp4.i9, label %land.lhs.true2.i10._crit_edge, label %land.lhs.true2.i10.return_crit_edge

land.lhs.true2.i10.return_crit_edge:              ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true2.i10._crit_edge:                    ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

12:                                               ; preds = %land.lhs.true2.i10._crit_edge, %land.lhs.true.i5._crit_edge
  br label %return

return:                                           ; preds = %12, %land.lhs.true2.i10.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %land.lhs.true2.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 8, %entry.return_crit_edge ], [ 8, %land.lhs.true.i.return_crit_edge ], [ 8, %land.lhs.true2.i.return_crit_edge ], [ 4, %12 ], [ 1, %lor.lhs.false.i.return_crit_edge ], [ 1, %land.lhs.true2.i10.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_hw_uninit(ptr nocapture noundef readonly %qspi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  br label %bcm_qspi_read.exit

bcm_qspi_read.exit:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %4, %if.then.i.i ], [ %5, %if.else.i.i ]
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i7 = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %9, i32 24
  br i1 %tobool.not.i7, label %if.else.i.i10, label %do.body.i.i

do.body.i.i:                                      ; preds = %bcm_qspi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i10:                                    ; preds = %bcm_qspi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i10, %do.body.i.i
  %bspi_mode.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 19
  %10 = ptrtoint ptr %bspi_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bspi_mode.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.not = icmp eq i8 %11, 0
  br i1 %tobool.i.not, label %bcm_qspi_write.exit.if.end_crit_edge, label %if.then

bcm_qspi_write.exit.if.end_crit_edge:             ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %bcm_qspi_write.exit
  %12 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i12 = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %15, i32 384
  br i1 %tobool.not.i12, label %if.else.i.i16, label %do.body.i.i15

do.body.i.i15:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #8, !srcloc !195
  br label %if.end

if.else.i.i16:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #8, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.else.i.i16, %do.body.i.i15, %bcm_qspi_write.exit.if.end_crit_edge
  %and = and i32 %retval.0.i.i, -2
  %16 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i19 = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %19, i32 32
  br i1 %tobool.not.i19, label %if.else.i.i23, label %do.body.i.i22

do.body.i.i22:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %and) #8, !srcloc !195
  br label %bcm_qspi_write.exit24

if.else.i.i23:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %20) #8, !srcloc !195
  br label %bcm_qspi_write.exit24

bcm_qspi_write.exit24:                            ; preds = %if.else.i.i23, %do.body.i.i22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_hw_init(ptr noundef %qspi) unnamed_addr #0 align 64 {
entry:
  %parms = alloca %struct.bcm_qspi_parms, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parms) #8
  %0 = ptrtoint ptr %parms to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %parms, align 8, !annotation !190
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %1 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  br i1 %tobool.not.i, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i, %do.body.i.i
  %5 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i10 = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %8, i32 12
  br i1 %tobool.not.i10, label %if.else.i.i14, label %do.body.i.i13

do.body.i.i13:                                    ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit15

if.else.i.i14:                                    ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit15

bcm_qspi_write.exit15:                            ; preds = %if.else.i.i14, %do.body.i.i13
  %9 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i17 = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %12, i32 16
  br i1 %tobool.not.i17, label %if.else.i.i21, label %do.body.i.i20

do.body.i.i20:                                    ; preds = %bcm_qspi_write.exit15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit22

if.else.i.i21:                                    ; preds = %bcm_qspi_write.exit15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit22

bcm_qspi_write.exit22:                            ; preds = %if.else.i.i21, %do.body.i.i20
  %13 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i24 = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %16, i32 20
  br i1 %tobool.not.i24, label %if.else.i.i28, label %do.body.i.i27

do.body.i.i27:                                    ; preds = %bcm_qspi_write.exit22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit29

if.else.i.i28:                                    ; preds = %bcm_qspi_write.exit22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit29

bcm_qspi_write.exit29:                            ; preds = %if.else.i.i28, %do.body.i.i27
  %17 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i31 = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %20, i32 24
  br i1 %tobool.not.i31, label %if.else.i.i35, label %do.body.i.i34

do.body.i.i34:                                    ; preds = %bcm_qspi_write.exit29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 32) #8, !srcloc !195
  br label %bcm_qspi_write.exit36

if.else.i.i35:                                    ; preds = %bcm_qspi_write.exit29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 536870912) #8, !srcloc !195
  br label %bcm_qspi_write.exit36

bcm_qspi_write.exit36:                            ; preds = %if.else.i.i35, %do.body.i.i34
  %mode = getelementptr inbounds %struct.bcm_qspi_parms, ptr %parms, i32 0, i32 1
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %mode, align 4
  %bits_per_word = getelementptr inbounds %struct.bcm_qspi_parms, ptr %parms, i32 0, i32 2
  %22 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %bits_per_word, align 1
  %max_speed_hz = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 4
  %23 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_speed_hz, align 4
  %25 = ptrtoint ptr %parms to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %parms, align 8
  call fastcc void @bcm_qspi_hw_set_parms(ptr noundef %qspi, ptr noundef nonnull %parms)
  %bspi_mode.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 19
  %26 = ptrtoint ptr %bspi_mode.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bspi_mode.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.not = icmp eq i8 %27, 0
  br i1 %tobool.i.not, label %bcm_qspi_write.exit36.if.end_crit_edge, label %if.then

bcm_qspi_write.exit36.if.end_crit_edge:           ; preds = %bcm_qspi_write.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %bcm_qspi_write.exit36
  %28 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  %arrayidx.i.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit.i

if.else.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  br label %bcm_qspi_read.exit.i

bcm_qspi_read.exit.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %32, %if.then.i.i.i ], [ %33, %if.else.i.i.i ]
  %shr.i = lshr i32 %retval.0.i.i.i, 8
  %and.i = and i32 %shr.i, 255
  %bspi_maj_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 10
  %34 = ptrtoint ptr %bspi_maj_rev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i, ptr %bspi_maj_rev.i, align 4
  %and1.i = and i32 %retval.0.i.i.i, 255
  %bspi_min_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 11
  %35 = ptrtoint ptr %bspi_min_rev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and1.i, ptr %bspi_min_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp.i.i = icmp ult i32 %and.i, 4
  br i1 %cmp.i.i, label %bcm_qspi_read.exit.i.if.end.i_crit_edge, label %if.then.i

bcm_qspi_read.exit.i.if.end.i_crit_edge:          ; preds = %bcm_qspi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %bcm_qspi_read.exit.i
  %36 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i14.i = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 60
  br i1 %tobool.not.i14.i, label %if.else.i.i16.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

if.else.i.i16.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

bcm_qspi_write.exit.i:                            ; preds = %if.else.i.i16.i, %do.body.i.i.i
  %40 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i18.i = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %43, i32 64
  br i1 %tobool.not.i18.i, label %if.else.i.i22.i, label %do.body.i.i21.i

do.body.i.i21.i:                                  ; preds = %bcm_qspi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 1) #8, !srcloc !195
  br label %if.end.i

if.else.i.i22.i:                                  ; preds = %bcm_qspi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 16777216) #8, !srcloc !195
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i22.i, %do.body.i.i21.i, %bcm_qspi_read.exit.i.if.end.i_crit_edge
  %bspi_enabled.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 12
  %44 = ptrtoint ptr %bspi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %bspi_enabled.i, align 4
  tail call fastcc void @bcm_qspi_disable_bspi(ptr noundef %qspi) #8
  %45 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i25.i = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %48, i32 24
  br i1 %tobool.not.i25.i, label %if.else.i.i29.i, label %do.body.i.i28.i

do.body.i.i28.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit30.i

if.else.i.i29.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit30.i

bcm_qspi_write.exit30.i:                          ; preds = %if.else.i.i29.i, %do.body.i.i28.i
  %49 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i32.i = icmp eq i8 %50, 0
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %52, i32 32
  br i1 %tobool.not.i32.i, label %if.else.i.i36.i, label %do.body.i.i35.i

do.body.i.i35.i:                                  ; preds = %bcm_qspi_write.exit30.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 0) #8, !srcloc !195
  br label %if.end

if.else.i.i36.i:                                  ; preds = %bcm_qspi_write.exit30.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 0) #8, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.else.i.i36.i, %do.body.i.i35.i, %bcm_qspi_write.exit36.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parms) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_qspi_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %master = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @spi_unregister_controller(ptr noundef %3) #8
  tail call fastcc void @bcm_qspi_hw_uninit(ptr noundef %1)
  %clk = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %dev_ids = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %dev_ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_ids, align 4
  tail call void @kfree(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_qspi_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bspi_maj_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bspi_maj_rev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bspi_maj_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp slt i32 %3, 4
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  br label %bcm_qspi_read.exit

bcm_qspi_read.exit:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %8, %if.then.i.i ], [ %9, %if.else.i.i ]
  %s3_strap_override_ctrl = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %s3_strap_override_ctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.i, ptr %s3_strap_override_ctrl, align 4
  br label %if.end

if.end:                                           ; preds = %bcm_qspi_read.exit, %entry.if.end_crit_edge
  %master = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  %call3 = tail call i32 @spi_controller_suspend(ptr noundef %12) #8
  %clk = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  tail call fastcc void @bcm_qspi_hw_uninit(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_qspi_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @bcm_qspi_hw_init(ptr noundef %1)
  %curr_cs = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %curr_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_cs, align 4
  tail call fastcc void @bcm_qspi_chip_select(ptr noundef %1, i32 noundef %3)
  %soc_intc = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %soc_intc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_intc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bcm_qspi_int_set = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bcm_qspi_int_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcm_qspi_int_set, align 4
  tail call void %7(ptr noundef nonnull %5, i32 noundef 1, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %if.end7

if.then5:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %master = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %call6 = tail call i32 @spi_controller_resume(ptr noundef %11) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3.i, %if.end.if.end7_crit_edge
  %retval.0.i18 = phi i32 [ 0, %if.then5 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.if.end7_crit_edge ]
  ret i32 %retval.0.i18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_chip_select(ptr nocapture noundef %qspi, i32 noundef %cs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cs)
  %cmp = icmp sgt i32 %cs, -1
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %2 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #8
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  br label %bcm_qspi_read.exit

bcm_qspi_read.exit:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %4, %if.then.i.i ], [ %5, %if.else.i.i ]
  %and = and i32 %retval.0.i.i, -256
  %shl = shl nuw i32 1, %cs
  %or = or i32 %and, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %or)
  %cmp1 = icmp eq i32 %retval.0.i.i, %or
  br i1 %cmp1, label %bcm_qspi_read.exit.cleanup_crit_edge, label %if.end

bcm_qspi_read.exit.cleanup_crit_edge:             ; preds = %bcm_qspi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %bcm_qspi_read.exit
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i22 = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool.not.i22, label %if.else.i.i24, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %or) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i24:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %10) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i24, %do.body.i.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  br label %do.body

do.body:                                          ; preds = %bcm_qspi_write.exit, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_qspi_chip_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_qspi_chip_select, %do.end)) #8
          to label %if.then9 [label %do.end], !srcloc !193

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qspi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_qspi_chip_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %cs) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %curr_cs = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 9
  %13 = ptrtoint ptr %curr_cs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cs, ptr %curr_cs, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %bcm_qspi_read.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_to_hw(ptr noundef %qspi, ptr nocapture noundef readonly %spi) unnamed_addr #0 align 64 {
entry:
  %xp.i = alloca %struct.bcm_qspi_parms, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @bcm_qspi_disable_bspi(ptr noundef %qspi)
  %trans_pos = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 8
  %0 = ptrtoint ptr %trans_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %tp.sroa.0.0.copyload365 = load ptr, ptr %trans_pos, align 4
  %tp.sroa.10.0.trans_pos.sroa_idx = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %tp.sroa.10.0.trans_pos.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %tp.sroa.10.0.copyload366 = load i32, ptr %tp.sroa.10.0.trans_pos.sroa_idx, align 4
  %tp.sroa.18.0.trans_pos.sroa_idx = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %tp.sroa.18.0.trans_pos.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %tp.sroa.18.0.copyload373 = load i8, ptr %tp.sroa.18.0.trans_pos.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xp.i) #8
  %3 = ptrtoint ptr %xp.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %xp.i, align 8, !annotation !190
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0.copyload365, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz.i, align 4
  store i32 %5, ptr %xp.i, align 8
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0.copyload365, i32 0, i32 8
  %6 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word2.i = getelementptr inbounds %struct.bcm_qspi_parms, ptr %xp.i, i32 0, i32 2
  %8 = ptrtoint ptr %bits_per_word2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %bits_per_word2.i, align 1
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i, align 8
  %conv.i = trunc i32 %10 to i8
  %mode3.i = getelementptr inbounds %struct.bcm_qspi_parms, ptr %xp.i, i32 0, i32 1
  %11 = ptrtoint ptr %mode3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %mode3.i, align 4
  call fastcc void @bcm_qspi_hw_set_parms(ptr noundef %qspi, ptr noundef nonnull %xp.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xp.i) #8
  %bspi_mode.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 19
  %mspi_maj_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 25
  %mspi_min_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 26
  %big_endian.i.i301 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %arrayidx.i.i303 = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 0
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tp.sroa.18.0.copyload373)
  %tobool.not.i.i319 = icmp eq i8 %tp.sroa.18.0.copyload373, 0
  %master.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %update_qspi_trans_byte_count.exit.while.body_crit_edge, %entry
  %slot.0388 = phi i32 [ 0, %entry ], [ %inc, %update_qspi_trans_byte_count.exit.while.body_crit_edge ]
  %tp.sroa.0.0387 = phi ptr [ %tp.sroa.0.0.copyload365, %entry ], [ %tp.sroa.0.1, %update_qspi_trans_byte_count.exit.while.body_crit_edge ]
  %tp.sroa.10.0380 = phi i32 [ %tp.sroa.10.0.copyload366, %entry ], [ %tp.sroa.10.1, %update_qspi_trans_byte_count.exit.while.body_crit_edge ]
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0387, i32 0, i32 8
  %12 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %13)
  %cmp2 = icmp ult i8 %13, 9
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %14 = ptrtoint ptr %tp.sroa.0.0387 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tp.sroa.0.0387, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %15, i32 %tp.sroa.10.0380
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i8 [ %17, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %shl.i = shl nuw nsw i32 %slot.0388, 3
  %add.i = add nuw nsw i32 %shl.i, 64
  %conv.i277 = zext i8 %cond to i32
  %18 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %add.i
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i277) #8, !srcloc !195
  br label %write_txram_slot_u8.exit

if.else.i.i.i:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = shl nuw i32 %conv.i277, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #8, !srcloc !195
  br label %write_txram_slot_u8.exit

write_txram_slot_u8.exit:                         ; preds = %if.else.i.i.i, %do.body.i.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_to_hw.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_to_hw, %if.end138)) #8
          to label %if.then12 [label %if.end138], !srcloc !193

if.then12:                                        ; preds = %write_txram_slot_u8.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qspi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_to_hw.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %conv.i277) #8
  br label %if.end138

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %13)
  %cmp17 = icmp ult i8 %13, 17
  br i1 %cmp17, label %if.then19, label %if.else54

if.then19:                                        ; preds = %if.else
  %25 = ptrtoint ptr %tp.sroa.0.0387 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp.sroa.0.0387, align 4
  %tobool24.not = icmp eq ptr %26, null
  br i1 %tobool24.not, label %if.then19.cond.end30_crit_edge, label %cond.true25

if.then19.cond.end30_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end30

cond.true25:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %div = sdiv i32 %tp.sroa.10.0380, 2
  %arrayidx27 = getelementptr i16, ptr %26, i32 %div
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx27, align 2
  br label %cond.end30

cond.end30:                                       ; preds = %cond.true25, %if.then19.cond.end30_crit_edge
  %cond31 = phi i16 [ %28, %cond.true25 ], [ 0, %if.then19.cond.end30_crit_edge ]
  %shl.i278 = shl nuw nsw i32 %slot.0388, 3
  %add.i279 = add nuw nsw i32 %shl.i278, 64
  %add3.i = add nuw nsw i32 %shl.i278, 68
  %conv.i280 = zext i16 %cond31 to i32
  %29 = lshr i32 %conv.i280, 8
  %30 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i282 = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i.i284 = getelementptr i8, ptr %33, i32 %add.i279
  br i1 %tobool.not.i.i282, label %if.else.i.i.i286, label %do.body.i.i.i285

do.body.i.i.i285:                                 ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i284, i32 %29) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

if.else.i.i.i286:                                 ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #10
  %34 = shl nuw i32 %29, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i284, i32 %34) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

bcm_qspi_write.exit.i:                            ; preds = %if.else.i.i.i286, %do.body.i.i.i285
  %and.i = and i32 %conv.i280, 255
  %35 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i10.i = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %38, i32 %add3.i
  br i1 %tobool.not.i10.i, label %if.else.i.i14.i, label %do.body.i.i13.i

do.body.i.i13.i:                                  ; preds = %bcm_qspi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %and.i) #8, !srcloc !195
  br label %write_txram_slot_u16.exit

if.else.i.i14.i:                                  ; preds = %bcm_qspi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = shl nuw i32 %and.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %39) #8, !srcloc !195
  br label %write_txram_slot_u16.exit

write_txram_slot_u16.exit:                        ; preds = %if.else.i.i14.i, %do.body.i.i13.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_to_hw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_to_hw, %if.end138)) #8
          to label %if.then47 [label %if.end138], !srcloc !193

if.then47:                                        ; preds = %write_txram_slot_u16.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qspi, align 4
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_to_hw.__UNIQUE_ID_ddebug249, ptr noundef %dev49, ptr noundef nonnull @.str.36, i32 noundef %conv.i280) #8
  br label %if.end138

if.else54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %13)
  %cmp58 = icmp ult i8 %13, 33
  br i1 %cmp58, label %if.then60, label %if.else93

if.then60:                                        ; preds = %if.else54
  %42 = ptrtoint ptr %tp.sroa.0.0387 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tp.sroa.0.0387, align 4
  %tobool65.not = icmp eq ptr %43, null
  br i1 %tobool65.not, label %if.then60.cond.end71_crit_edge, label %cond.true66

if.then60.cond.end71_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end71

cond.true66:                                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %div68 = sdiv i32 %tp.sroa.10.0380, 4
  %arrayidx69 = getelementptr i32, ptr %43, i32 %div68
  %44 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx69, align 4
  br label %cond.end71

cond.end71:                                       ; preds = %cond.true66, %if.then60.cond.end71_crit_edge
  %cond72 = phi i32 [ %45, %cond.true66 ], [ 0, %if.then60.cond.end71_crit_edge ]
  %shl.i287 = shl nuw nsw i32 %slot.0388, 3
  %add.i288 = add nuw nsw i32 %shl.i287, 64
  %46 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i290 = icmp eq i8 %47, 0
  %48 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i.i292 = getelementptr i8, ptr %49, i32 %add.i288
  br i1 %tobool.not.i.i290, label %if.else.i.i.i294, label %do.body.i.i.i293

do.body.i.i.i293:                                 ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #10
  %or8.i = tail call i32 @llvm.bswap.i32(i32 %cond72) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i292, i32 %or8.i) #8, !srcloc !195
  br label %write_txram_slot_u32.exit

if.else.i.i.i294:                                 ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i292, i32 %cond72) #8, !srcloc !195
  br label %write_txram_slot_u32.exit

write_txram_slot_u32.exit:                        ; preds = %if.else.i.i.i294, %do.body.i.i.i293
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_to_hw.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_to_hw, %if.end138)) #8
          to label %if.then87 [label %if.end138], !srcloc !193

if.then87:                                        ; preds = %write_txram_slot_u32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %qspi, align 4
  %dev89 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_to_hw.__UNIQUE_ID_ddebug250, ptr noundef %dev89, ptr noundef nonnull @.str.37, i32 noundef %cond72) #8
  br label %if.end138

if.else93:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %13)
  %cmp97 = icmp ult i8 %13, 65
  br i1 %cmp97, label %if.then99, label %if.else93.if.end138_crit_edge

if.else93.if.end138_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then99:                                        ; preds = %if.else93
  %52 = ptrtoint ptr %tp.sroa.0.0387 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tp.sroa.0.0387, align 4
  %tobool104.not = icmp eq ptr %53, null
  br i1 %tobool104.not, label %if.then99.cond.end110_crit_edge, label %cond.true105

if.then99.cond.end110_crit_edge:                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end110

cond.true105:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %div107 = sdiv i32 %tp.sroa.10.0380, 8
  %arrayidx108 = getelementptr i64, ptr %53, i32 %div107
  %54 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx108, align 8
  br label %cond.end110

cond.end110:                                      ; preds = %cond.true105, %if.then99.cond.end110_crit_edge
  %cond111 = phi i64 [ %55, %cond.true105 ], [ 0, %if.then99.cond.end110_crit_edge ]
  %56 = ptrtoint ptr %bspi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bspi_mode.i.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.i.not.i = icmp eq i8 %57, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %cond.end110.bcm_qspi_has_fastbr.exit_crit_edge

cond.end110.bcm_qspi_has_fastbr.exit_crit_edge:   ; preds = %cond.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_has_fastbr.exit

land.lhs.true.i:                                  ; preds = %cond.end110
  %58 = ptrtoint ptr %mspi_maj_rev.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mspi_maj_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp.not.i = icmp eq i8 %59, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.bcm_qspi_has_fastbr.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.bcm_qspi_has_fastbr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_has_fastbr.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %mspi_min_rev.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mspi_min_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %61)
  %cmp4.i = icmp ugt i8 %61, 4
  %spec.select = select i1 %cmp4.i, i32 160, i32 128
  br label %bcm_qspi_has_fastbr.exit

bcm_qspi_has_fastbr.exit:                         ; preds = %land.lhs.true2.i, %land.lhs.true.i.bcm_qspi_has_fastbr.exit_crit_edge, %cond.end110.bcm_qspi_has_fastbr.exit_crit_edge
  %62 = phi i32 [ 128, %cond.end110.bcm_qspi_has_fastbr.exit_crit_edge ], [ 128, %land.lhs.true.i.bcm_qspi_has_fastbr.exit_crit_edge ], [ %spec.select, %land.lhs.true2.i ]
  %shl.i297 = shl nuw nsw i32 %slot.0388, 3
  %add.i298 = add nuw nsw i32 %shl.i297, 64
  %add3.i299 = add nuw nsw i32 %shl.i297, 68
  %shr.i = lshr i64 %cond111, 32
  %conv.i300 = trunc i64 %shr.i to i32
  %shr6.i = lshr i32 %conv.i300, 24
  %shr8.i = lshr i32 %conv.i300, 8
  %and9.i = and i32 %shr8.i, 65280
  %or.i = or i32 %and9.i, %shr6.i
  %shl10.i = shl i32 %conv.i300, 8
  %and11.i = and i32 %shl10.i, 16711680
  %or12.i = or i32 %or.i, %and11.i
  %shl13.i = shl i32 %conv.i300, 24
  %or15.i = or i32 %or12.i, %shl13.i
  %63 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i302 = icmp eq i8 %64, 0
  %65 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i.i304 = getelementptr i8, ptr %66, i32 %add.i298
  br i1 %tobool.not.i.i302, label %if.else.i.i.i306, label %do.body.i.i.i305

do.body.i.i.i305:                                 ; preds = %bcm_qspi_has_fastbr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i304, i32 %or15.i) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i307

if.else.i.i.i306:                                 ; preds = %bcm_qspi_has_fastbr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %67 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i304, i32 %67) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i307

bcm_qspi_write.exit.i307:                         ; preds = %if.else.i.i.i306, %do.body.i.i.i305
  %trunc.i = trunc i64 %cond111 to i32
  %68 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i38.i = icmp eq i8 %69, 0
  %70 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %71, i32 %add3.i299
  br i1 %tobool.not.i38.i, label %if.else.i.i42.i, label %do.body.i.i41.i

do.body.i.i41.i:                                  ; preds = %bcm_qspi_write.exit.i307
  call void @__sanitizer_cov_trace_pc() #10
  %or26.i = tail call i32 @llvm.bswap.i32(i32 %trunc.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %or26.i) #8, !srcloc !195
  br label %write_txram_slot_u64.exit

if.else.i.i42.i:                                  ; preds = %bcm_qspi_write.exit.i307
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %trunc.i) #8, !srcloc !195
  br label %write_txram_slot_u64.exit

write_txram_slot_u64.exit:                        ; preds = %if.else.i.i42.i, %do.body.i.i41.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_to_hw.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_to_hw, %if.end138)) #8
          to label %if.then129 [label %if.end138], !srcloc !193

if.then129:                                       ; preds = %write_txram_slot_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %qspi, align 4
  %dev131 = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_to_hw.__UNIQUE_ID_ddebug251, ptr noundef %dev131, ptr noundef nonnull @.str.38, i64 noundef %cond111) #8
  br label %if.end138

if.end138:                                        ; preds = %if.then129, %write_txram_slot_u64.exit, %if.else93.if.end138_crit_edge, %if.then87, %write_txram_slot_u32.exit, %if.then47, %write_txram_slot_u16.exit, %if.then12, %write_txram_slot_u8.exit
  %mspi_cdram.1 = phi i32 [ 128, %if.else93.if.end138_crit_edge ], [ 128, %if.then12 ], [ 128, %if.then47 ], [ 128, %if.then87 ], [ %62, %if.then129 ], [ 128, %write_txram_slot_u8.exit ], [ 128, %write_txram_slot_u16.exit ], [ 128, %write_txram_slot_u32.exit ], [ %62, %write_txram_slot_u64.exit ]
  %74 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %75)
  %cmp142 = icmp ult i8 %75, 9
  %cond144 = select i1 %cmp142, i32 0, i32 64
  %or145 = or i32 %cond144, %mspi_cdram.1
  %76 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mode.i, align 8
  %and = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool146.not = icmp eq i32 %and, 0
  br i1 %tobool146.not, label %if.end138.if.end152_crit_edge, label %land.lhs.true

if.end138.if.end152_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

land.lhs.true:                                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %tp.sroa.0.0387 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tp.sroa.0.0387, align 4
  %tobool149.not = icmp eq ptr %79, null
  %or151 = or i32 %or145, 256
  %spec.select264 = select i1 %tobool149.not, i32 %or145, i32 %or151
  br label %if.end152

if.end152:                                        ; preds = %land.lhs.true, %if.end138.if.end152_crit_edge
  %mspi_cdram.2 = phi i32 [ %or145, %if.end138.if.end152_crit_edge ], [ %spec.select264, %land.lhs.true ]
  %80 = ptrtoint ptr %bspi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bspi_mode.i.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.i.not = icmp eq i8 %81, 0
  br i1 %tobool.i.not, label %if.else156, label %if.then154

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  %and155 = and i32 %mspi_cdram.2, -2
  br label %if.end160

if.else156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %chip_select, align 4
  %conv157 = zext i8 %83 to i32
  %shl = shl nuw i32 1, %conv157
  %neg = and i32 %shl, 15
  %and158 = xor i32 %neg, 15
  %or159 = or i32 %and158, %mspi_cdram.2
  br label %if.end160

if.end160:                                        ; preds = %if.else156, %if.then154
  %mspi_cdram.3 = phi i32 [ %and155, %if.then154 ], [ %or159, %if.else156 ]
  %shl.i308 = shl nuw nsw i32 %slot.0388, 2
  %add.i309 = add nuw nsw i32 %shl.i308, 320
  %84 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i311 = icmp eq i8 %85, 0
  %86 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i.i313 = getelementptr i8, ptr %87, i32 %add.i309
  br i1 %tobool.not.i.i311, label %if.else.i.i.i315, label %do.body.i.i.i314

do.body.i.i.i314:                                 ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i313, i32 %mspi_cdram.3) #8, !srcloc !195
  br label %write_cdram_slot.exit

if.else.i.i.i315:                                 ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  %88 = tail call i32 @llvm.bswap.i32(i32 %mspi_cdram.3) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i313, i32 %88) #8, !srcloc !195
  br label %write_cdram_slot.exit

write_cdram_slot.exit:                            ; preds = %if.else.i.i.i315, %do.body.i.i.i314
  %89 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %90)
  %cmp.i = icmp ult i8 %90, 9
  br i1 %cmp.i, label %write_cdram_slot.exit.if.end29.sink.split.i_crit_edge, label %if.else.i

write_cdram_slot.exit.if.end29.sink.split.i_crit_edge: ; preds = %write_cdram_slot.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.else.i:                                        ; preds = %write_cdram_slot.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %90)
  %cmp5.i = icmp ult i8 %90, 17
  br i1 %cmp5.i, label %if.else.i.if.end29.sink.split.i_crit_edge, label %if.else9.i

if.else.i.if.end29.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %90)
  %cmp13.i = icmp ult i8 %90, 33
  br i1 %cmp13.i, label %if.else9.i.if.end29.sink.split.i_crit_edge, label %if.else18.i

if.else9.i.if.end29.sink.split.i_crit_edge:       ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.else18.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %90)
  %cmp22.i = icmp ult i8 %90, 65
  br i1 %cmp22.i, label %if.else18.i.if.end29.sink.split.i_crit_edge, label %if.else18.i.if.end29.i_crit_edge

if.else18.i.if.end29.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.else18.i.if.end29.sink.split.i_crit_edge:      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.end29.sink.split.i:                            ; preds = %if.else18.i.if.end29.sink.split.i_crit_edge, %if.else9.i.if.end29.sink.split.i_crit_edge, %if.else.i.if.end29.sink.split.i_crit_edge, %write_cdram_slot.exit.if.end29.sink.split.i_crit_edge
  %.sink99.i = phi i32 [ 1, %write_cdram_slot.exit.if.end29.sink.split.i_crit_edge ], [ 2, %if.else.i.if.end29.sink.split.i_crit_edge ], [ 4, %if.else9.i.if.end29.sink.split.i_crit_edge ], [ 8, %if.else18.i.if.end29.sink.split.i_crit_edge ]
  %add.i318 = add i32 %.sink99.i, %tp.sroa.10.0380
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.sink.split.i, %if.else18.i.if.end29.i_crit_edge
  %tp.sroa.10.1 = phi i32 [ %add.i318, %if.end29.sink.split.i ], [ %tp.sroa.10.0380, %if.else18.i.if.end29.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0387, i32 0, i32 2
  %91 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tp.sroa.10.1, i32 %92)
  %cmp32.not.i = icmp ult i32 %tp.sroa.10.1, %92
  br i1 %cmp32.not.i, label %if.end29.i.do.body.i_crit_edge, label %if.then34.i

if.end29.i.do.body.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then34.i:                                      ; preds = %if.end29.i
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0387, i32 0, i32 9
  %93 = ptrtoint ptr %delay.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %delay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool.not.i = icmp eq i16 %94, 0
  %ret.0.i = select i1 %tobool.not.i, i32 0, i32 2
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0387, i32 0, i32 7
  %95 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i = load i8, ptr %cs_change.i, align 4
  %96 = lshr i8 %bf.load.i, 4
  %97 = and i8 %96, 4
  %98 = zext i8 %97 to i32
  %99 = or i32 %ret.0.i, %98
  br i1 %tobool.not.i.i319, label %if.then34.i.bcm_qspi_mspi_transfer_is_last.exit.i_crit_edge, label %land.lhs.true.i.i

if.then34.i.bcm_qspi_mspi_transfer_is_last.exit.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_mspi_transfer_is_last.exit.i

land.lhs.true.i.i:                                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %master.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0387, i32 0, i32 18
  %cur_msg.i.i.i = getelementptr inbounds %struct.spi_controller, ptr %101, i32 0, i32 31
  %102 = ptrtoint ptr %cur_msg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cur_msg.i.i.i, align 4
  %104 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %transfer_list.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %105, %103
  %spec.select.i = select i1 %cmp.i.i.i.i, i32 1, i32 8
  br label %bcm_qspi_mspi_transfer_is_last.exit.i

bcm_qspi_mspi_transfer_is_last.exit.i:            ; preds = %land.lhs.true.i.i, %if.then34.i.bcm_qspi_mspi_transfer_is_last.exit.i_crit_edge
  %.sink.i = phi i32 [ 8, %if.then34.i.bcm_qspi_mspi_transfer_is_last.exit.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i.i ]
  %or51.i = or i32 %99, %.sink.i
  br label %do.body.i

do.body.i:                                        ; preds = %bcm_qspi_mspi_transfer_is_last.exit.i, %if.end29.i.do.body.i_crit_edge
  %tp.sroa.0.1 = phi ptr [ %tp.sroa.0.0387, %if.end29.i.do.body.i_crit_edge ], [ null, %bcm_qspi_mspi_transfer_is_last.exit.i ]
  %ret.3.i = phi i32 [ 0, %if.end29.i.do.body.i_crit_edge ], [ %or51.i, %bcm_qspi_mspi_transfer_is_last.exit.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_qspi_trans_byte_count.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_to_hw, %update_qspi_trans_byte_count.exit)) #8
          to label %if.then60.i [label %update_qspi_trans_byte_count.exit], !srcloc !193

if.then60.i:                                      ; preds = %do.body.i
  %106 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %qspi, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %107, i32 0, i32 3
  %tobool63.not.i = icmp eq ptr %tp.sroa.0.1, null
  br i1 %tobool63.not.i, label %if.then60.i.cond.end.i_crit_edge, label %cond.true.i

if.then60.i.cond.end.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #10
  %len65.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.1, i32 0, i32 2
  %108 = ptrtoint ptr %len65.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len65.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then60.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %109, %cond.true.i ], [ 0, %if.then60.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_qspi_trans_byte_count.__UNIQUE_ID_ddebug243, ptr noundef %dev.i, ptr noundef nonnull @.str.45, ptr noundef %tp.sroa.0.1, i32 noundef %cond.i, i32 noundef %tp.sroa.10.1, i32 noundef %ret.3.i) #8
  br label %update_qspi_trans_byte_count.exit

update_qspi_trans_byte_count.exit:                ; preds = %cond.end.i, %do.body.i
  %inc = add nuw nsw i32 %slot.0388, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool.not = icmp eq i32 %ret.3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %slot.0388)
  %cmp = icmp ult i32 %slot.0388, 15
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %update_qspi_trans_byte_count.exit.while.body_crit_edge, label %do.body170

update_qspi_trans_byte_count.exit.while.body_crit_edge: ; preds = %update_qspi_trans_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.body170:                                       ; preds = %update_qspi_trans_byte_count.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_to_hw.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_to_hw, %do.end189)) #8
          to label %if.then184 [label %do.end189], !srcloc !193

if.then184:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %qspi, align 4
  %dev186 = getelementptr inbounds %struct.platform_device, ptr %111, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_to_hw.__UNIQUE_ID_ddebug252, ptr noundef %dev186, ptr noundef nonnull @.str.40, i32 noundef %inc) #8
  br label %do.end189

do.end189:                                        ; preds = %if.then184, %do.body170
  %112 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i320 = icmp eq i8 %113, 0
  %114 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i = getelementptr i8, ptr %115, i32 16
  br i1 %tobool.not.i320, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i:                                      ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i, %do.body.i.i
  %116 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i322 = icmp eq i8 %117, 0
  %118 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i324 = getelementptr i8, ptr %119, i32 20
  br i1 %tobool.not.i322, label %if.else.i.i326, label %do.body.i.i325

do.body.i.i325:                                   ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i324, i32 %slot.0388) #8, !srcloc !195
  br label %bcm_qspi_write.exit327

if.else.i.i326:                                   ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %120 = tail call i32 @llvm.bswap.i32(i32 %slot.0388) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i324, i32 %120) #8, !srcloc !195
  br label %bcm_qspi_write.exit327

bcm_qspi_write.exit327:                           ; preds = %if.else.i.i326, %do.body.i.i325
  %and190 = and i32 %ret.3.i, 5
  %121 = zext i32 %and190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and190, label %bcm_qspi_write.exit327.if.end201_crit_edge [
    i32 4, label %bcm_qspi_write.exit327.if.then196_crit_edge
    i32 1, label %bcm_qspi_write.exit327.if.then196_crit_edge389
  ]

bcm_qspi_write.exit327.if.then196_crit_edge389:   ; preds = %bcm_qspi_write.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then196

bcm_qspi_write.exit327.if.then196_crit_edge:      ; preds = %bcm_qspi_write.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then196

bcm_qspi_write.exit327.if.end201_crit_edge:       ; preds = %bcm_qspi_write.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.then196:                                       ; preds = %bcm_qspi_write.exit327.if.then196_crit_edge, %bcm_qspi_write.exit327.if.then196_crit_edge389
  %122 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i.i331 = icmp eq i8 %123, 0
  %124 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i.i333 = getelementptr i8, ptr %125, i32 %add.i309
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i333) #8
  br i1 %tobool.not.i.i331, label %if.else.i.i.i334, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %read_cdram_slot.exit

if.else.i.i.i334:                                 ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #8
  br label %read_cdram_slot.exit

read_cdram_slot.exit:                             ; preds = %if.else.i.i.i334, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %126, %if.then.i.i.i ], [ %127, %if.else.i.i.i334 ]
  %and199 = and i32 %retval.0.i.i.i, -129
  %128 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i338 = icmp eq i8 %129, 0
  %130 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i.i340 = getelementptr i8, ptr %131, i32 %add.i309
  br i1 %tobool.not.i.i338, label %if.else.i.i.i342, label %do.body.i.i.i341

do.body.i.i.i341:                                 ; preds = %read_cdram_slot.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i340, i32 %and199) #8, !srcloc !195
  br label %if.end201

if.else.i.i.i342:                                 ; preds = %read_cdram_slot.exit
  call void @__sanitizer_cov_trace_pc() #10
  %132 = tail call i32 @llvm.bswap.i32(i32 %and199) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i340, i32 %132) #8, !srcloc !195
  br label %if.end201

if.end201:                                        ; preds = %if.else.i.i.i342, %do.body.i.i.i341, %bcm_qspi_write.exit327.if.end201_crit_edge
  %133 = ptrtoint ptr %bspi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bspi_mode.i.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.i346.not = icmp eq i8 %134, 0
  br i1 %tobool.i346.not, label %if.end201.do.body205_crit_edge, label %if.then203

if.end201.do.body205_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body205

if.then203:                                       ; preds = %if.end201
  %135 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i348 = icmp eq i8 %136, 0
  %137 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i350 = getelementptr i8, ptr %138, i32 384
  br i1 %tobool.not.i348, label %if.else.i.i352, label %do.body.i.i351

do.body.i.i351:                                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350, i32 1) #8, !srcloc !195
  br label %do.body205

if.else.i.i352:                                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350, i32 16777216) #8, !srcloc !195
  br label %do.body205

do.body205:                                       ; preds = %if.else.i.i352, %do.body.i.i351, %if.end201.do.body205_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %139 = ptrtoint ptr %big_endian.i.i301 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %big_endian.i.i301, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i355 = icmp eq i8 %140, 0
  %141 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i.i303, align 4
  %add.ptr.i357 = getelementptr i8, ptr %142, i32 24
  br i1 %tobool.not.i355, label %if.else.i.i359, label %do.body.i.i358

do.body.i.i358:                                   ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i357, i32 224) #8, !srcloc !195
  br label %done

if.else.i.i359:                                   ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i357, i32 -536870912) #8, !srcloc !195
  br label %done

done:                                             ; preds = %if.else.i.i359, %do.body.i.i358
  ret i32 %inc
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_from_hw(ptr nocapture noundef %qspi, i32 noundef %slots) unnamed_addr #0 align 64 {
entry:
  %tp.sroa.22 = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tp.sroa.22)
  tail call fastcc void @bcm_qspi_disable_bspi(ptr noundef %qspi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %slots)
  %cmp = icmp sgt i32 %slots, 16
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qspi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans_pos = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 8
  %2 = ptrtoint ptr %trans_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %tp.sroa.0.0.copyload245 = load ptr, ptr %trans_pos, align 4
  %tp.sroa.9.0.trans_pos.sroa_idx = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %tp.sroa.9.0.trans_pos.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %tp.sroa.9.0.copyload247 = load i32, ptr %tp.sroa.9.0.trans_pos.sroa_idx, align 4
  %tp.sroa.21.0.trans_pos.sroa_idx = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %tp.sroa.21.0.trans_pos.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %tp.sroa.21.0.copyload260 = load i8, ptr %tp.sroa.21.0.trans_pos.sroa_idx, align 4
  %tp.sroa.22.0.trans_pos.sroa_idx = getelementptr inbounds i8, ptr %trans_pos, i32 9
  %5 = call ptr @memcpy(ptr %tp.sroa.22, ptr %tp.sroa.22.0.trans_pos.sroa_idx, i32 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %cmp1268 = icmp sgt i32 %slots, 0
  br i1 %cmp1268, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %big_endian.i.i233 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %arrayidx.i.i235 = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tp.sroa.21.0.copyload260)
  %tobool.not.i.i242 = icmp eq i8 %tp.sroa.21.0.copyload260, 0
  %master.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %update_qspi_trans_byte_count.exit.for.body_crit_edge, %for.body.lr.ph
  %slot.0281 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %update_qspi_trans_byte_count.exit.for.body_crit_edge ]
  %tp.sroa.0.0280 = phi ptr [ %tp.sroa.0.0.copyload245, %for.body.lr.ph ], [ %tp.sroa.0.1, %update_qspi_trans_byte_count.exit.for.body_crit_edge ]
  %tp.sroa.9.0269 = phi i32 [ %tp.sroa.9.0.copyload247, %for.body.lr.ph ], [ %tp.sroa.9.1, %update_qspi_trans_byte_count.exit.for.body_crit_edge ]
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0280, i32 0, i32 8
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %cmp2 = icmp ult i8 %7, 9
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0280, i32 0, i32 1
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then4.do.body8_crit_edge, label %if.then6

if.then4.do.body8_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

if.then6:                                         ; preds = %if.then4
  %shl.i = shl i32 %slot.0281, 3
  %add1.i = add i32 %shl.i, 196
  %10 = ptrtoint ptr %big_endian.i.i233 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %big_endian.i.i233, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i235, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add1.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %read_rxram_slot_u8.exit

if.else.i.i.i:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  br label %read_rxram_slot_u8.exit

read_rxram_slot_u8.exit:                          ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %14, %if.then.i.i.i ], [ %15, %if.else.i.i.i ]
  %conv.i = trunc i32 %retval.0.i.i.i to i8
  %arrayidx = getelementptr i8, ptr %9, i32 %tp.sroa.9.0269
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %arrayidx, align 1
  br label %do.body8

do.body8:                                         ; preds = %read_rxram_slot_u8.exit, %if.then4.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_from_hw.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_from_hw, %if.end161)) #8
          to label %if.then14 [label %if.end161], !srcloc !193

if.then14:                                        ; preds = %do.body8
  %17 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qspi, align 4
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  br i1 %tobool.not, label %if.then14.cond.end_crit_edge, label %cond.true

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19 = getelementptr i8, ptr %9, i32 %tp.sroa.9.0269
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then14.cond.end_crit_edge
  %cond = phi i32 [ %conv20, %cond.true ], [ 0, %if.then14.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_from_hw.__UNIQUE_ID_ddebug244, ptr noundef %dev16, ptr noundef nonnull @.str.48, i32 noundef %cond) #8
  br label %if.end161

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %7)
  %cmp27 = icmp ult i8 %7, 17
  br i1 %cmp27, label %if.then29, label %if.else68

if.then29:                                        ; preds = %if.else
  %rx_buf32 = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0280, i32 0, i32 1
  %21 = ptrtoint ptr %rx_buf32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf32, align 4
  %tobool33.not = icmp eq ptr %22, null
  br i1 %tobool33.not, label %if.then29.do.body39_crit_edge, label %if.then34

if.then29.do.body39_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

if.then34:                                        ; preds = %if.then29
  %shl.i210 = shl i32 %slot.0281, 3
  %add.i = add i32 %shl.i210, 192
  %add1.i211 = add i32 %shl.i210, 196
  %23 = ptrtoint ptr %big_endian.i.i233 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %big_endian.i.i233, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i213 = icmp eq i8 %24, 0
  %25 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i235, align 4
  %add.ptr.i.i215 = getelementptr i8, ptr %26, i32 %add1.i211
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i215) #8
  br i1 %tobool.not.i.i213, label %if.else.i.i.i217, label %if.then.i.i.i216

if.then.i.i.i216:                                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit.i

if.else.i.i.i217:                                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  br label %bcm_qspi_read.exit.i

bcm_qspi_read.exit.i:                             ; preds = %if.else.i.i.i217, %if.then.i.i.i216
  %retval.0.i.i.i218 = phi i32 [ %27, %if.then.i.i.i216 ], [ %28, %if.else.i.i.i217 ]
  %29 = ptrtoint ptr %big_endian.i.i233 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %big_endian.i.i233, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i11.i = icmp eq i8 %30, 0
  %31 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i235, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %32, i32 %add.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #8
  br i1 %tobool.not.i11.i, label %if.else.i.i15.i, label %if.then.i.i14.i

if.then.i.i14.i:                                  ; preds = %bcm_qspi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %read_rxram_slot_u16.exit

if.else.i.i15.i:                                  ; preds = %bcm_qspi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  br label %read_rxram_slot_u16.exit

read_rxram_slot_u16.exit:                         ; preds = %if.else.i.i15.i, %if.then.i.i14.i
  %retval.0.i.i16.i = phi i32 [ %33, %if.then.i.i14.i ], [ %34, %if.else.i.i15.i ]
  %and.i = and i32 %retval.0.i.i.i218, 255
  %and5.i = shl i32 %retval.0.i.i16.i, 8
  %or.i = or i32 %and5.i, %and.i
  %conv.i219 = trunc i32 %or.i to i16
  %div = sdiv i32 %tp.sroa.9.0269, 2
  %arrayidx37 = getelementptr i16, ptr %22, i32 %div
  %35 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i219, ptr %arrayidx37, align 2
  br label %do.body39

do.body39:                                        ; preds = %read_rxram_slot_u16.exit, %if.then29.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_from_hw.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_from_hw, %if.end161)) #8
          to label %if.then53 [label %if.end161], !srcloc !193

if.then53:                                        ; preds = %do.body39
  %36 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qspi, align 4
  %dev55 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  br i1 %tobool33.not, label %if.then53.cond.end63_crit_edge, label %cond.true57

if.then53.cond.end63_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end63

cond.true57:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %div59 = sdiv i32 %tp.sroa.9.0269, 2
  %arrayidx60 = getelementptr i16, ptr %22, i32 %div59
  %38 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx60, align 2
  %conv61 = zext i16 %39 to i32
  br label %cond.end63

cond.end63:                                       ; preds = %cond.true57, %if.then53.cond.end63_crit_edge
  %cond64 = phi i32 [ %conv61, %cond.true57 ], [ 0, %if.then53.cond.end63_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_from_hw.__UNIQUE_ID_ddebug245, ptr noundef %dev55, ptr noundef nonnull @.str.49, i32 noundef %cond64) #8
  br label %if.end161

if.else68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %7)
  %cmp72 = icmp ult i8 %7, 33
  br i1 %cmp72, label %if.then74, label %if.else113

if.then74:                                        ; preds = %if.else68
  %rx_buf77 = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0280, i32 0, i32 1
  %40 = ptrtoint ptr %rx_buf77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_buf77, align 4
  %tobool78.not = icmp eq ptr %41, null
  br i1 %tobool78.not, label %if.then74.do.body85_crit_edge, label %if.then79

if.then74.do.body85_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body85

if.then79:                                        ; preds = %if.then74
  %shl.i220 = shl i32 %slot.0281, 3
  %add.i221 = add i32 %shl.i220, 192
  %42 = ptrtoint ptr %big_endian.i.i233 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %big_endian.i.i233, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i223 = icmp eq i8 %43, 0
  %44 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i235, align 4
  %add.ptr.i.i225 = getelementptr i8, ptr %45, i32 %add.i221
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i225) #8
  br i1 %tobool.not.i.i223, label %if.else.i.i.i227, label %if.then.i.i.i226

if.then.i.i.i226:                                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %read_rxram_slot_u32.exit

if.else.i.i.i227:                                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  br label %read_rxram_slot_u32.exit

read_rxram_slot_u32.exit:                         ; preds = %if.else.i.i.i227, %if.then.i.i.i226
  %retval.0.i.i.i228 = phi i32 [ %46, %if.then.i.i.i226 ], [ %47, %if.else.i.i.i227 ]
  %or8.i = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i228) #8
  %div82 = sdiv i32 %tp.sroa.9.0269, 4
  %arrayidx83 = getelementptr i32, ptr %41, i32 %div82
  %48 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or8.i, ptr %arrayidx83, align 4
  br label %do.body85

do.body85:                                        ; preds = %read_rxram_slot_u32.exit, %if.then74.do.body85_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_from_hw.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_from_hw, %if.end161)) #8
          to label %if.then99 [label %if.end161], !srcloc !193

if.then99:                                        ; preds = %do.body85
  %49 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %qspi, align 4
  %dev101 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  br i1 %tobool78.not, label %if.then99.cond.end108_crit_edge, label %cond.true103

if.then99.cond.end108_crit_edge:                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end108

cond.true103:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %div105 = sdiv i32 %tp.sroa.9.0269, 4
  %arrayidx106 = getelementptr i32, ptr %41, i32 %div105
  %51 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx106, align 4
  br label %cond.end108

cond.end108:                                      ; preds = %cond.true103, %if.then99.cond.end108_crit_edge
  %cond109 = phi i32 [ %52, %cond.true103 ], [ 0, %if.then99.cond.end108_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_from_hw.__UNIQUE_ID_ddebug246, ptr noundef %dev101, ptr noundef nonnull @.str.50, i32 noundef %cond109) #8
  br label %if.end161

if.else113:                                       ; preds = %if.else68
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %7)
  %cmp117 = icmp ult i8 %7, 65
  br i1 %cmp117, label %if.then119, label %if.else113.if.end161_crit_edge

if.else113.if.end161_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then119:                                       ; preds = %if.else113
  %rx_buf122 = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0280, i32 0, i32 1
  %53 = ptrtoint ptr %rx_buf122 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_buf122, align 4
  %tobool123.not = icmp eq ptr %54, null
  br i1 %tobool123.not, label %if.then119.do.body130_crit_edge, label %if.then124

if.then119.do.body130_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body130

if.then124:                                       ; preds = %if.then119
  %shl.i230 = shl i32 %slot.0281, 3
  %add.i231 = add i32 %shl.i230, 192
  %add1.i232 = add i32 %shl.i230, 196
  %55 = ptrtoint ptr %big_endian.i.i233 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %big_endian.i.i233, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i234 = icmp eq i8 %56, 0
  %57 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i235, align 4
  %add.ptr.i.i236 = getelementptr i8, ptr %58, i32 %add.i231
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i236) #8
  br i1 %tobool.not.i.i234, label %if.else.i.i.i238, label %if.then.i.i.i237

if.then.i.i.i237:                                 ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit.i240

if.else.i.i.i238:                                 ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  br label %bcm_qspi_read.exit.i240

bcm_qspi_read.exit.i240:                          ; preds = %if.else.i.i.i238, %if.then.i.i.i237
  %retval.0.i.i.i239 = phi i32 [ %59, %if.then.i.i.i237 ], [ %60, %if.else.i.i.i238 ]
  %61 = ptrtoint ptr %big_endian.i.i233 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %big_endian.i.i233, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i39.i = icmp eq i8 %62, 0
  %63 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i235, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %64, i32 %add1.i232
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #8
  br i1 %tobool.not.i39.i, label %if.else.i.i43.i, label %if.then.i.i42.i

if.then.i.i42.i:                                  ; preds = %bcm_qspi_read.exit.i240
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %read_rxram_slot_u64.exit

if.else.i.i43.i:                                  ; preds = %bcm_qspi_read.exit.i240
  call void @__sanitizer_cov_trace_pc() #10
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  br label %read_rxram_slot_u64.exit

read_rxram_slot_u64.exit:                         ; preds = %if.else.i.i43.i, %if.then.i.i42.i
  %retval.0.i.i44.i = phi i32 [ %65, %if.then.i.i42.i ], [ %66, %if.else.i.i43.i ]
  %67 = zext i32 %retval.0.i.i.i239 to i64
  %68 = zext i32 %retval.0.i.i44.i to i64
  %69 = shl nuw i64 %68, 32
  %70 = or i64 %69, %67
  %71 = tail call i64 @llvm.bswap.i64(i64 %70) #8
  %div127 = sdiv i32 %tp.sroa.9.0269, 8
  %arrayidx128 = getelementptr i64, ptr %54, i32 %div127
  %72 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %arrayidx128, align 8
  br label %do.body130

do.body130:                                       ; preds = %read_rxram_slot_u64.exit, %if.then119.do.body130_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_from_hw.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_from_hw, %if.end161)) #8
          to label %if.then144 [label %if.end161], !srcloc !193

if.then144:                                       ; preds = %do.body130
  %73 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %qspi, align 4
  %dev146 = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3
  br i1 %tobool123.not, label %if.then144.cond.end153_crit_edge, label %cond.true148

if.then144.cond.end153_crit_edge:                 ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end153

cond.true148:                                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  %div150 = sdiv i32 %tp.sroa.9.0269, 8
  %arrayidx151 = getelementptr i64, ptr %54, i32 %div150
  %75 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx151, align 8
  br label %cond.end153

cond.end153:                                      ; preds = %cond.true148, %if.then144.cond.end153_crit_edge
  %cond154 = phi i64 [ %76, %cond.true148 ], [ 0, %if.then144.cond.end153_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_from_hw.__UNIQUE_ID_ddebug247, ptr noundef %dev146, ptr noundef nonnull @.str.51, i64 noundef %cond154) #8
  br label %if.end161

if.end161:                                        ; preds = %cond.end153, %do.body130, %if.else113.if.end161_crit_edge, %cond.end108, %do.body85, %cond.end63, %do.body39, %cond.end, %do.body8
  %77 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %78)
  %cmp.i = icmp ult i8 %78, 9
  br i1 %cmp.i, label %if.end161.if.end29.sink.split.i_crit_edge, label %if.else.i

if.end161.if.end29.sink.split.i_crit_edge:        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.else.i:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %78)
  %cmp5.i = icmp ult i8 %78, 17
  br i1 %cmp5.i, label %if.else.i.if.end29.sink.split.i_crit_edge, label %if.else9.i

if.else.i.if.end29.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %78)
  %cmp13.i = icmp ult i8 %78, 33
  br i1 %cmp13.i, label %if.else9.i.if.end29.sink.split.i_crit_edge, label %if.else18.i

if.else9.i.if.end29.sink.split.i_crit_edge:       ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.else18.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %78)
  %cmp22.i = icmp ult i8 %78, 65
  br i1 %cmp22.i, label %if.else18.i.if.end29.sink.split.i_crit_edge, label %if.else18.i.if.end29.i_crit_edge

if.else18.i.if.end29.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.else18.i.if.end29.sink.split.i_crit_edge:      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.end29.sink.split.i:                            ; preds = %if.else18.i.if.end29.sink.split.i_crit_edge, %if.else9.i.if.end29.sink.split.i_crit_edge, %if.else.i.if.end29.sink.split.i_crit_edge, %if.end161.if.end29.sink.split.i_crit_edge
  %.sink99.i = phi i32 [ 1, %if.end161.if.end29.sink.split.i_crit_edge ], [ 2, %if.else.i.if.end29.sink.split.i_crit_edge ], [ 4, %if.else9.i.if.end29.sink.split.i_crit_edge ], [ 8, %if.else18.i.if.end29.sink.split.i_crit_edge ]
  %add.i241 = add i32 %.sink99.i, %tp.sroa.9.0269
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.sink.split.i, %if.else18.i.if.end29.i_crit_edge
  %tp.sroa.9.1 = phi i32 [ %add.i241, %if.end29.sink.split.i ], [ %tp.sroa.9.0269, %if.else18.i.if.end29.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0280, i32 0, i32 2
  %79 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tp.sroa.9.1, i32 %80)
  %cmp32.not.i = icmp ult i32 %tp.sroa.9.1, %80
  %brmerge = select i1 %cmp32.not.i, i1 true, i1 %tobool.not.i.i242
  %tp.sroa.0.0280.mux = select i1 %cmp32.not.i, ptr %tp.sroa.0.0280, ptr null
  %.mux = select i1 %cmp32.not.i, i32 0, i32 8
  br i1 %brmerge, label %if.end29.i.do.body.i_crit_edge, label %land.lhs.true.i.i

if.end29.i.do.body.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.i:                                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %master.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.0280, i32 0, i32 18
  %cur_msg.i.i.i = getelementptr inbounds %struct.spi_controller, ptr %82, i32 0, i32 31
  %83 = ptrtoint ptr %cur_msg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur_msg.i.i.i, align 4
  %85 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %transfer_list.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %86, %84
  %spec.select.i = select i1 %cmp.i.i.i.i, i32 1, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true.i.i, %if.end29.i.do.body.i_crit_edge
  %tp.sroa.0.1 = phi ptr [ %tp.sroa.0.0280.mux, %if.end29.i.do.body.i_crit_edge ], [ null, %land.lhs.true.i.i ]
  %ret.3.i = phi i32 [ %.mux, %if.end29.i.do.body.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_qspi_trans_byte_count.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_from_hw, %update_qspi_trans_byte_count.exit)) #8
          to label %if.then60.i [label %update_qspi_trans_byte_count.exit], !srcloc !193

if.then60.i:                                      ; preds = %do.body.i
  %87 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %qspi, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %88, i32 0, i32 3
  %tobool63.not.i = icmp eq ptr %tp.sroa.0.1, null
  br i1 %tobool63.not.i, label %if.then60.i.cond.end.i_crit_edge, label %cond.true.i

if.then60.i.cond.end.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #10
  %len65.i = getelementptr inbounds %struct.spi_transfer, ptr %tp.sroa.0.1, i32 0, i32 2
  %89 = ptrtoint ptr %len65.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len65.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then60.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %90, %cond.true.i ], [ 0, %if.then60.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_qspi_trans_byte_count.__UNIQUE_ID_ddebug243, ptr noundef %dev.i, ptr noundef nonnull @.str.45, ptr noundef %tp.sroa.0.1, i32 noundef %cond.i, i32 noundef %tp.sroa.9.1, i32 noundef %ret.3.i) #8
  br label %update_qspi_trans_byte_count.exit

update_qspi_trans_byte_count.exit:                ; preds = %cond.end.i, %do.body.i
  %inc = add nuw nsw i32 %slot.0281, 1
  %exitcond.not = icmp eq i32 %inc, %slots
  br i1 %exitcond.not, label %update_qspi_trans_byte_count.exit.for.end_crit_edge, label %update_qspi_trans_byte_count.exit.for.body_crit_edge

update_qspi_trans_byte_count.exit.for.body_crit_edge: ; preds = %update_qspi_trans_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

update_qspi_trans_byte_count.exit.for.end_crit_edge: ; preds = %update_qspi_trans_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %update_qspi_trans_byte_count.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %tp.sroa.9.0.lcssa = phi i32 [ %tp.sroa.9.0.copyload247, %if.end.for.end_crit_edge ], [ %tp.sroa.9.1, %update_qspi_trans_byte_count.exit.for.end_crit_edge ]
  %tp.sroa.0.0.lcssa = phi ptr [ %tp.sroa.0.0.copyload245, %if.end.for.end_crit_edge ], [ %tp.sroa.0.1, %update_qspi_trans_byte_count.exit.for.end_crit_edge ]
  %91 = ptrtoint ptr %trans_pos to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %tp.sroa.0.0.lcssa, ptr %trans_pos, align 4
  %92 = ptrtoint ptr %tp.sroa.9.0.trans_pos.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %tp.sroa.9.0.lcssa, ptr %tp.sroa.9.0.trans_pos.sroa_idx, align 4
  %93 = ptrtoint ptr %tp.sroa.21.0.trans_pos.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %tp.sroa.21.0.copyload260, ptr %tp.sroa.21.0.trans_pos.sroa_idx, align 4
  %94 = call ptr @memcpy(ptr %tp.sroa.22.0.trans_pos.sroa_idx, ptr %tp.sroa.22, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tp.sroa.22)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_disable_bspi(ptr nocapture noundef %qspi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bspi_mode.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 19
  %0 = ptrtoint ptr %bspi_mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bspi_mode.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %bspi_enabled = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 12
  %2 = ptrtoint ptr %bspi_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bspi_enabled, align 4
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %3 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  br label %bcm_qspi_read.exit

bcm_qspi_read.exit:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %7, %if.then.i.i ], [ %8, %if.else.i.i ]
  %and = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %bcm_qspi_read.exit.for.body.i_crit_edge, label %bcm_qspi_read.exit.return_crit_edge

bcm_qspi_read.exit.return_crit_edge:              ; preds = %bcm_qspi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

bcm_qspi_read.exit.for.body.i_crit_edge:          ; preds = %bcm_qspi_read.exit
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %bcm_qspi_read.exit.for.body.i_crit_edge
  %i.01.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %bcm_qspi_read.exit.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit.i

if.else.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  br label %bcm_qspi_read.exit.i

bcm_qspi_read.exit.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %13, %if.then.i.i.i ], [ %14, %if.else.i.i.i ]
  %and.i = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i9 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i9, label %bcm_qspi_read.exit.i.bcm_qspi_bspi_busy_poll.exit_crit_edge, label %if.end.i

bcm_qspi_read.exit.i.bcm_qspi_bspi_busy_poll.exit_crit_edge: ; preds = %bcm_qspi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_bspi_busy_poll.exit

if.end.i:                                         ; preds = %bcm_qspi_read.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qspi, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.41) #11
  br label %bcm_qspi_bspi_busy_poll.exit

bcm_qspi_bspi_busy_poll.exit:                     ; preds = %do.end.i, %bcm_qspi_read.exit.i.bcm_qspi_bspi_busy_poll.exit_crit_edge
  %18 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i11 = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %21, i32 8
  br i1 %tobool.not.i11, label %if.else.i.i14, label %do.body.i.i

do.body.i.i:                                      ; preds = %bcm_qspi_bspi_busy_poll.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 1) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i14:                                    ; preds = %bcm_qspi_bspi_busy_poll.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 16777216) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i14, %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #8
  br label %return

return:                                           ; preds = %bcm_qspi_write.exit, %bcm_qspi_read.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_hw_set_parms(ptr noundef %qspi, ptr nocapture noundef readonly %xp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_parms = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 7
  %0 = ptrtoint ptr %xp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xp, align 4
  %2 = ptrtoint ptr %last_parms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_parms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %mode.i = getelementptr inbounds %struct.bcm_qspi_parms, ptr %xp, i32 0, i32 1
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode.i, align 4
  %mode2.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp4.not.i = icmp eq i8 %5, %7
  br i1 %cmp4.not.i, label %bcmspi_parms_did_change.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

bcmspi_parms_did_change.exit:                     ; preds = %lor.lhs.false.i
  %bits_per_word.i = getelementptr inbounds %struct.bcm_qspi_parms, ptr %xp, i32 0, i32 2
  %8 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word7.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %bits_per_word7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits_per_word7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp9.i.not = icmp eq i8 %9, %11
  br i1 %cmp9.i.not, label %bcmspi_parms_did_change.exit.cleanup_crit_edge, label %bcmspi_parms_did_change.exit.if.end_crit_edge

bcmspi_parms_did_change.exit.if.end_crit_edge:    ; preds = %bcmspi_parms_did_change.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

bcmspi_parms_did_change.exit.cleanup_crit_edge:   ; preds = %bcmspi_parms_did_change.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %bcmspi_parms_did_change.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %mspi_maj_rev = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 25
  %12 = ptrtoint ptr %mspi_maj_rev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mspi_maj_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %. = select i1 %tobool.not, i32 128, i32 0
  %bits_per_word = getelementptr inbounds %struct.bcm_qspi_parms, ptr %xp, i32 0, i32 2
  %14 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bits_per_word, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %15, label %if.then8 [
    i8 16, label %if.end.if.end11_crit_edge
    i8 64, label %if.end.if.end11_crit_edge182
  ]

if.end.if.end11_crit_edge182:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv, 2
  %or = or i32 %shl, %.
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge, %if.end.if.end11_crit_edge182
  %spcr.1 = phi i32 [ %or, %if.then8 ], [ %., %if.end.if.end11_crit_edge ], [ %., %if.end.if.end11_crit_edge182 ]
  %mode = getelementptr inbounds %struct.bcm_qspi_parms, ptr %xp, i32 0, i32 1
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mode, align 4
  %19 = and i8 %18, 3
  %and = zext i8 %19 to i32
  %or13 = or i32 %spcr.1, %and
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %20 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 0
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  br i1 %tobool.not.i, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or13) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %or13) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i, %do.body.i.i
  %bspi_mode.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 19
  %25 = ptrtoint ptr %bspi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bspi_mode.i.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not.i = icmp eq i8 %26, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %if.end47.thread173

if.end47.thread173:                               ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %base_clk48174 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 3
  %27 = ptrtoint ptr %base_clk48174 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_clk48174, align 4
  br label %bcm_qspi_spbr_min.exit

land.lhs.true.i:                                  ; preds = %bcm_qspi_write.exit
  %29 = ptrtoint ptr %mspi_maj_rev to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mspi_maj_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.not.i105 = icmp eq i8 %30, 0
  br i1 %cmp.not.i105, label %land.lhs.true.i.i.thread, label %land.lhs.true2.i

land.lhs.true.i.i.thread:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %base_clk48169 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 3
  %31 = ptrtoint ptr %base_clk48169 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_clk48169, align 4
  br label %bcm_qspi_spbr_min.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %mspi_min_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 26
  %33 = ptrtoint ptr %mspi_min_rev.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mspi_min_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %34)
  %cmp4.i = icmp ugt i8 %34, 4
  br i1 %cmp4.i, label %land.lhs.true.i109, label %land.lhs.true2.i.if.end47_crit_edge

land.lhs.true2.i.if.end47_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true.i109:                               ; preds = %land.lhs.true2.i
  %35 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mode, align 4
  %37 = and i8 %36, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool20.not = icmp eq i8 %37, 0
  %spec.select = select i1 %tobool20.not, i32 1, i32 193
  %mspi_spcr3_sysclk.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 27
  %38 = ptrtoint ptr %mspi_spcr3_sysclk.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mspi_spcr3_sysclk.i, align 2, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i108 = icmp eq i8 %39, 0
  br i1 %tobool.not.i108, label %lor.lhs.false.i112, label %land.lhs.true.i109.if.then25_crit_edge

land.lhs.true.i109.if.then25_crit_edge:           ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

lor.lhs.false.i112:                               ; preds = %land.lhs.true.i109
  %40 = ptrtoint ptr %mspi_maj_rev to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mspi_maj_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.not.i111 = icmp eq i8 %41, 0
  br i1 %cmp.not.i111, label %lor.lhs.false.i112.if.end35_crit_edge, label %land.lhs.true2.i115

lor.lhs.false.i112.if.end35_crit_edge:            ; preds = %lor.lhs.false.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true2.i115:                              ; preds = %lor.lhs.false.i112
  %42 = ptrtoint ptr %mspi_min_rev.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mspi_min_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %43)
  %cmp4.i114 = icmp ugt i8 %43, 5
  br i1 %cmp4.i114, label %land.lhs.true2.i115.if.then25_crit_edge, label %land.lhs.true2.i115.if.end35_crit_edge

land.lhs.true2.i115.if.end35_crit_edge:           ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true2.i115.if.then25_crit_edge:          ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.then25:                                        ; preds = %land.lhs.true2.i115.if.then25_crit_edge, %land.lhs.true.i109.if.then25_crit_edge
  %44 = ptrtoint ptr %xp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i118 = icmp ne i32 %45, 0
  %mul.i = shl i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 421876, i32 %mul.i)
  %cmp27 = icmp ult i32 %mul.i, 421876
  %or.cond179 = and i1 %tobool.not.i118, %cmp27
  %or32 = or i32 %spec.select, 2048
  %.sink = select i1 %or.cond179, i32 27000000, i32 108000000
  %spcr.3.ph = select i1 %or.cond179, i32 %spec.select, i32 %or32
  %base_clk = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 3
  %46 = ptrtoint ptr %base_clk to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %base_clk, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then25, %land.lhs.true2.i115.if.end35_crit_edge, %lor.lhs.false.i112.if.end35_crit_edge
  %spcr.3 = phi i32 [ %spec.select, %lor.lhs.false.i112.if.end35_crit_edge ], [ %spec.select, %land.lhs.true2.i115.if.end35_crit_edge ], [ %spcr.3.ph, %if.then25 ]
  %47 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %48)
  %cmp38 = icmp ugt i8 %48, 16
  br i1 %cmp38, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.end35
  %or42 = or i32 %spcr.3, 298
  %49 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i121 = icmp eq i8 %50, 0
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %52, i32 8
  br i1 %tobool.not.i121, label %if.else.i.i125, label %do.body.i.i124

do.body.i.i124:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 1) #8, !srcloc !195
  br label %if.end46

if.else.i.i125:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 16777216) #8, !srcloc !195
  br label %if.end46

if.else43:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %and45 = and i32 %spcr.3, -297
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.else.i.i125, %do.body.i.i124
  %spcr.4 = phi i32 [ %and45, %if.else43 ], [ %or42, %do.body.i.i124 ], [ %or42, %if.else.i.i125 ]
  %53 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i128 = icmp eq i8 %54, 0
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %56, i32 40
  br i1 %tobool.not.i128, label %if.else.i.i132, label %do.body.i.i131

do.body.i.i131:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %spcr.4) #8, !srcloc !195
  br label %if.end47

if.else.i.i132:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %57 = tail call i32 @llvm.bswap.i32(i32 %spcr.4) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %57) #8, !srcloc !195
  br label %if.end47

if.end47:                                         ; preds = %if.else.i.i132, %do.body.i.i131, %land.lhs.true2.i.if.end47_crit_edge
  %58 = ptrtoint ptr %bspi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %.pr = load i8, ptr %bspi_mode.i.i, align 4
  %base_clk48 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 3
  %59 = ptrtoint ptr %base_clk48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_clk48, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.i.not.i.i = icmp eq i8 %.pr, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i.i, label %if.end47.bcm_qspi_spbr_min.exit_crit_edge

if.end47.bcm_qspi_spbr_min.exit_crit_edge:        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_spbr_min.exit

land.lhs.true.i.i:                                ; preds = %if.end47
  %61 = ptrtoint ptr %mspi_maj_rev to i32
  call void @__asan_load1_noabort(i32 %61)
  %.pr180 = load i8, ptr %mspi_maj_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr180)
  %cmp.not.i.i = icmp eq i8 %.pr180, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.bcm_qspi_spbr_min.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.bcm_qspi_spbr_min.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_spbr_min.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %mspi_min_rev.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 26
  %62 = ptrtoint ptr %mspi_min_rev.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %mspi_min_rev.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %63)
  %cmp4.i.i = icmp ugt i8 %63, 4
  br i1 %cmp4.i.i, label %land.lhs.true.i5.i, label %land.lhs.true2.i.i.bcm_qspi_spbr_min.exit_crit_edge

land.lhs.true2.i.i.bcm_qspi_spbr_min.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_spbr_min.exit

land.lhs.true.i5.i:                               ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mspi_spcr3_sysclk.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 27
  %64 = ptrtoint ptr %mspi_spcr3_sysclk.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mspi_spcr3_sysclk.i.i, align 2, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i.i = icmp ne i8 %65, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %63)
  %cmp4.i9.i = icmp ne i8 %63, 5
  %or.cond = select i1 %tobool.not.i.i, i1 true, i1 %cmp4.i9.i
  %spec.select177 = select i1 %or.cond, i32 8, i32 2
  br label %bcm_qspi_spbr_min.exit

bcm_qspi_spbr_min.exit:                           ; preds = %land.lhs.true.i5.i, %land.lhs.true2.i.i.bcm_qspi_spbr_min.exit_crit_edge, %land.lhs.true.i.i.bcm_qspi_spbr_min.exit_crit_edge, %if.end47.bcm_qspi_spbr_min.exit_crit_edge, %land.lhs.true.i.i.thread, %if.end47.thread173
  %tobool.i.not.i.i171 = phi i1 [ false, %if.end47.bcm_qspi_spbr_min.exit_crit_edge ], [ true, %land.lhs.true.i.i.bcm_qspi_spbr_min.exit_crit_edge ], [ true, %land.lhs.true2.i.i.bcm_qspi_spbr_min.exit_crit_edge ], [ false, %if.end47.thread173 ], [ true, %land.lhs.true.i5.i ], [ true, %land.lhs.true.i.i.thread ]
  %66 = phi i32 [ %60, %if.end47.bcm_qspi_spbr_min.exit_crit_edge ], [ %60, %land.lhs.true.i.i.bcm_qspi_spbr_min.exit_crit_edge ], [ %60, %land.lhs.true2.i.i.bcm_qspi_spbr_min.exit_crit_edge ], [ %28, %if.end47.thread173 ], [ %60, %land.lhs.true.i5.i ], [ %32, %land.lhs.true.i.i.thread ]
  %retval.0.i134 = phi i32 [ 16, %if.end47.bcm_qspi_spbr_min.exit_crit_edge ], [ 16, %land.lhs.true.i.i.bcm_qspi_spbr_min.exit_crit_edge ], [ 16, %land.lhs.true2.i.i.bcm_qspi_spbr_min.exit_crit_edge ], [ 16, %if.end47.thread173 ], [ %spec.select177, %land.lhs.true.i5.i ], [ 16, %land.lhs.true.i.i.thread ]
  %div = udiv i32 %66, %retval.0.i134
  %max_speed_hz = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 4
  %67 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div, ptr %max_speed_hz, align 4
  %68 = ptrtoint ptr %xp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i135 = icmp eq i32 %69, 0
  br i1 %tobool.not.i135, label %bcm_qspi_spbr_min.exit.bcm_qspi_calc_spbr.exit141_crit_edge, label %if.then.i138

bcm_qspi_spbr_min.exit.bcm_qspi_calc_spbr.exit141_crit_edge: ; preds = %bcm_qspi_spbr_min.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_calc_spbr.exit141

if.then.i138:                                     ; preds = %bcm_qspi_spbr_min.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i136 = shl i32 %69, 1
  %div.i137 = udiv i32 %66, %mul.i136
  br label %bcm_qspi_calc_spbr.exit141

bcm_qspi_calc_spbr.exit141:                       ; preds = %if.then.i138, %bcm_qspi_spbr_min.exit.bcm_qspi_calc_spbr.exit141_crit_edge
  %spbr.0.i139 = phi i32 [ %div.i137, %if.then.i138 ], [ 0, %bcm_qspi_spbr_min.exit.bcm_qspi_calc_spbr.exit141_crit_edge ]
  br i1 %tobool.i.not.i.i171, label %land.lhs.true.i.i146, label %bcm_qspi_calc_spbr.exit141.bcm_qspi_spbr_min.exit158_crit_edge

bcm_qspi_calc_spbr.exit141.bcm_qspi_spbr_min.exit158_crit_edge: ; preds = %bcm_qspi_calc_spbr.exit141
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_spbr_min.exit158

land.lhs.true.i.i146:                             ; preds = %bcm_qspi_calc_spbr.exit141
  %70 = ptrtoint ptr %mspi_maj_rev to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mspi_maj_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp.not.i.i145 = icmp eq i8 %71, 0
  br i1 %cmp.not.i.i145, label %land.lhs.true.i.i146.bcm_qspi_spbr_min.exit158_crit_edge, label %land.lhs.true2.i.i149

land.lhs.true.i.i146.bcm_qspi_spbr_min.exit158_crit_edge: ; preds = %land.lhs.true.i.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_spbr_min.exit158

land.lhs.true2.i.i149:                            ; preds = %land.lhs.true.i.i146
  %mspi_min_rev.i.i147 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 26
  %72 = ptrtoint ptr %mspi_min_rev.i.i147 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mspi_min_rev.i.i147, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %73)
  %cmp4.i.i148 = icmp ugt i8 %73, 4
  br i1 %cmp4.i.i148, label %land.lhs.true.i5.i152, label %land.lhs.true2.i.i149.bcm_qspi_spbr_min.exit158_crit_edge

land.lhs.true2.i.i149.bcm_qspi_spbr_min.exit158_crit_edge: ; preds = %land.lhs.true2.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_spbr_min.exit158

land.lhs.true.i5.i152:                            ; preds = %land.lhs.true2.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  %mspi_spcr3_sysclk.i.i150 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 27
  %74 = ptrtoint ptr %mspi_spcr3_sysclk.i.i150 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %mspi_spcr3_sysclk.i.i150, align 2, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i151 = icmp ne i8 %75, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %73)
  %cmp4.i9.i155 = icmp ne i8 %73, 5
  %or.cond176 = select i1 %tobool.not.i.i151, i1 true, i1 %cmp4.i9.i155
  %spec.select178 = select i1 %or.cond176, i32 4, i32 1
  br label %bcm_qspi_spbr_min.exit158

bcm_qspi_spbr_min.exit158:                        ; preds = %land.lhs.true.i5.i152, %land.lhs.true2.i.i149.bcm_qspi_spbr_min.exit158_crit_edge, %land.lhs.true.i.i146.bcm_qspi_spbr_min.exit158_crit_edge, %bcm_qspi_calc_spbr.exit141.bcm_qspi_spbr_min.exit158_crit_edge
  %retval.0.i157 = phi i32 [ 8, %bcm_qspi_calc_spbr.exit141.bcm_qspi_spbr_min.exit158_crit_edge ], [ 8, %land.lhs.true.i.i146.bcm_qspi_spbr_min.exit158_crit_edge ], [ 8, %land.lhs.true2.i.i149.bcm_qspi_spbr_min.exit158_crit_edge ], [ %spec.select178, %land.lhs.true.i5.i152 ]
  %76 = tail call i32 @llvm.umax.i32(i32 %spbr.0.i139, i32 %retval.0.i157)
  %77 = tail call i32 @llvm.umin.i32(i32 %76, i32 255)
  %78 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i160 = icmp eq i8 %79, 0
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i, align 4
  br i1 %tobool.not.i160, label %if.else.i.i163, label %do.body.i.i162

do.body.i.i162:                                   ; preds = %bcm_qspi_spbr_min.exit158
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %77) #8, !srcloc !195
  br label %bcm_qspi_write.exit164

if.else.i.i163:                                   ; preds = %bcm_qspi_spbr_min.exit158
  call void @__sanitizer_cov_trace_pc() #10
  %82 = shl nuw i32 %77, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %82) #8, !srcloc !195
  br label %bcm_qspi_write.exit164

bcm_qspi_write.exit164:                           ; preds = %if.else.i.i163, %do.body.i.i162
  %83 = ptrtoint ptr %xp to i32
  call void @__asan_loadN_noabort(i32 %83, i32 8)
  %84 = load i64, ptr %xp, align 4
  %85 = ptrtoint ptr %last_parms to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %84, ptr %last_parms, align 4
  br label %cleanup

cleanup:                                          ; preds = %bcm_qspi_write.exit164, %bcmspi_parms_did_change.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr nocapture noundef readonly %qspi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %big_endian.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %arrayidx.i.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit.i

if.else.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  br label %bcm_qspi_read.exit.i

bcm_qspi_read.exit.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %4, %if.then.i.i.i ], [ %5, %if.else.i.i.i ]
  %and.i = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %bcm_qspi_read.exit.i.bcm_qspi_bspi_busy_poll.exit_crit_edge, label %if.end.i

bcm_qspi_read.exit.i.bcm_qspi_bspi_busy_poll.exit_crit_edge: ; preds = %bcm_qspi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_bspi_busy_poll.exit

if.end.i:                                         ; preds = %bcm_qspi_read.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qspi, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.41) #11
  br label %bcm_qspi_bspi_busy_poll.exit

bcm_qspi_bspi_busy_poll.exit:                     ; preds = %do.end.i, %bcm_qspi_read.exit.i.bcm_qspi_bspi_busy_poll.exit_crit_edge
  %9 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i5 = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 24
  br i1 %tobool.not.i5, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %bcm_qspi_bspi_busy_poll.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i:                                      ; preds = %bcm_qspi_bspi_busy_poll.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i, %do.body.i.i
  %13 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i7 = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %16, i32 32
  br i1 %tobool.not.i7, label %if.else.i.i11, label %do.body.i.i10

do.body.i.i10:                                    ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 1) #8, !srcloc !195
  br label %bcm_qspi_write.exit12

if.else.i.i11:                                    ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 16777216) #8, !srcloc !195
  br label %bcm_qspi_write.exit12

bcm_qspi_write.exit12:                            ; preds = %if.else.i.i11, %do.body.i.i10
  %17 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i14 = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %20, i32 24
  br i1 %tobool.not.i14, label %if.else.i.i18, label %do.body.i.i17

do.body.i.i17:                                    ; preds = %bcm_qspi_write.exit12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit19

if.else.i.i18:                                    ; preds = %bcm_qspi_write.exit12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit19

bcm_qspi_write.exit19:                            ; preds = %if.else.i.i18, %do.body.i.i17
  %21 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i21 = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %24, i32 32
  br i1 %tobool.not.i21, label %if.else.i.i25, label %do.body.i.i24

do.body.i.i24:                                    ; preds = %bcm_qspi_write.exit19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit26

if.else.i.i25:                                    ; preds = %bcm_qspi_write.exit19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit26

bcm_qspi_write.exit26:                            ; preds = %if.else.i.i25, %do.body.i.i24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_qspi_exec_mem_op(ptr nocapture noundef readonly %mem, ptr noundef %op) #0 align 64 {
entry:
  %t.i = alloca [2 x %struct.spi_transfer], align 4
  %cmd.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %addr2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %addr2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr2, align 8
  %10 = add i8 %9, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %10)
  %11 = icmp ult i8 %10, -4
  br i1 %11, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp11.not = icmp eq i32 %13, 1
  br i1 %cmp11.not, label %if.end, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %buf14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf14, align 4
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %val, align 8
  %conv16 = trunc i64 %17 to i32
  %bspi_maj_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %bspi_maj_rev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bspi_maj_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp.i = icmp slt i32 %19, 4
  br i1 %cmp.i, label %if.then23, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %conv16, 12582912
  %and = and i32 %add, 16777215
  %and24 = and i32 %add, 8388608
  %add25 = add i32 %7, -1
  %sub = add i32 %add25, %and
  %and26 = and i32 %sub, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and24, i32 %and26)
  %tobool27.not = icmp ne i32 %and24, %and26
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.end.if.end30_crit_edge
  %mspi_read.0.off0 = phi i1 [ false, %if.end.if.end30_crit_edge ], [ %tobool27.not, %if.then23 ]
  %addr.0 = phi i32 [ %conv16, %if.end.if.end30_crit_edge ], [ %and, %if.then23 ]
  %and31 = and i32 %addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp ne i32 %and31, 0
  %20 = ptrtoint ptr %15 to i32
  %and35 = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36 = icmp ne i32 %and35, 0
  %or.cond76 = select i1 %cmp32, i1 true, i1 %cmp36
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp39 = icmp ult i32 %7, 4
  %or.cond77 = select i1 %or.cond76, i1 true, i1 %cmp39
  %brmerge = select i1 %or.cond77, i1 true, i1 %mspi_read.0.off0
  br i1 %brmerge, label %for.body.lr.ph.i, label %if.end46

for.body.lr.ph.i:                                 ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t.i) #8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd.i) #8
  %21 = getelementptr inbounds i8, ptr %cmd.i, i32 1
  %22 = call ptr @memset(ptr %21, i32 0, i32 5)
  %23 = getelementptr inbounds i8, ptr %t.i, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 188)
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %25 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %opcode.i, align 4
  %conv.i = trunc i16 %26 to i8
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %cmd.i, align 1
  %conv4.i = zext i8 %9 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %28 = xor i32 %i.072.i, -1
  %sub10.i = add nsw i32 %28, %conv4.i
  %mul.i = shl i32 %sub10.i, 3
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %17, %sh_prom.i
  %conv11.i = trunc i64 %shr.i to i8
  %add.i = add nuw nsw i32 %i.072.i, 1
  %arrayidx12.i = getelementptr [6 x i8], ptr %cmd.i, i32 0, i32 %add.i
  %29 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %exitcond.not.i = icmp eq i32 %add.i, %conv4.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %30 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cmd.i, ptr %t.i, align 4
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %31 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dummy.i, align 8
  %conv19.i = zext i8 %32 to i32
  %add20.i = add nuw nsw i32 %conv4.i, 1
  %add21.i = add nuw nsw i32 %add20.i, %conv19.i
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add21.i, ptr %len.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word24.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 8
  %36 = ptrtoint ptr %bits_per_word24.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %bits_per_word24.i, align 1
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %37 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %buswidth.i, align 1
  %tx_nbits.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 7
  %39 = ptrtoint ptr %tx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %tx_nbits.i, align 4
  %bf.value.i = shl i8 %38, 3
  %bf.shl.i = and i8 %bf.value.i, 56
  %bf.clear.i = and i8 %bf.load.i, -57
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %tx_nbits.i, align 4
  %mspi_last_trans.i = getelementptr inbounds %struct.bcm_qspi, ptr %5, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %mspi_last_trans.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %mspi_last_trans.i, align 4
  %call29.i = call i32 @bcm_qspi_transfer_one(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %t.i) #8
  %41 = ptrtoint ptr %mspi_last_trans.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %mspi_last_trans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.end.i.bcm_qspi_mspi_exec_mem_op.exit_crit_edge

for.end.i.bcm_qspi_mspi_exec_mem_op.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_mspi_exec_mem_op.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %42 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf14, align 4
  %arrayidx32.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1
  %rx_buf.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %rx_buf.i, align 4
  %45 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbytes, align 4
  %len36.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %len36.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %len36.i, align 4
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %data.i, align 4
  %rx_nbits.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 7
  %50 = ptrtoint ptr %rx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load41.i = load i8, ptr %rx_nbits.i, align 4
  %bf.value42.i = and i8 %49, 7
  %bf.clear43.i = and i8 %bf.load41.i, -8
  %bf.set44.i = or i8 %bf.clear43.i, %bf.value42.i
  store i8 %bf.set44.i, ptr %rx_nbits.i, align 4
  %51 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word48.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 8
  %53 = ptrtoint ptr %bits_per_word48.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %bits_per_word48.i, align 1
  %call50.i = call i32 @bcm_qspi_transfer_one(ptr noundef %3, ptr noundef %1, ptr noundef %arrayidx32.i) #8
  br label %bcm_qspi_mspi_exec_mem_op.exit

bcm_qspi_mspi_exec_mem_op.exit:                   ; preds = %if.then.i, %for.end.i.bcm_qspi_mspi_exec_mem_op.exit_crit_edge
  %ret.0.i = phi i32 [ %call29.i, %for.end.i.bcm_qspi_mspi_exec_mem_op.exit_crit_edge ], [ %call50.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end30
  %call47 = tail call fastcc i32 @bcm_qspi_bspi_set_mode(ptr noundef %5, ptr noundef %op)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call fastcc i32 @bcm_qspi_bspi_exec_mem_op(ptr noundef %1, ptr noundef %op)
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end46.cleanup_crit_edge, %bcm_qspi_mspi_exec_mem_op.exit, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %bcm_qspi_mspi_exec_mem_op.exit ], [ -524, %lor.lhs.false9.cleanup_crit_edge ], [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call50, %if.then49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_qspi_bspi_set_mode(ptr nocapture noundef %qspi, ptr nocapture noundef readonly %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %narrow = select i1 %tobool.not, i8 1, i8 %1
  %spec.select = zext i8 %narrow to i32
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 8
  %conv4 = zext i8 %3 to i32
  %xfer_mode = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 17
  %4 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %xfer_mode, align 4
  %bspi_maj_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 10
  %5 = ptrtoint ptr %bspi_maj_rev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bspi_maj_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.i = icmp slt i32 %6, 4
  br i1 %cmp.i, label %entry.if.then17_crit_edge, label %if.then

entry.if.then17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then:                                          ; preds = %entry
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %7 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 36
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  br label %bcm_qspi_read.exit

bcm_qspi_read.exit:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %11, %if.then.i.i ], [ %12, %if.else.i.i ]
  %and = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %bcm_qspi_read.exit.if.then9_crit_edge

bcm_qspi_read.exit.if.then9_crit_edge:            ; preds = %bcm_qspi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false:                                    ; preds = %bcm_qspi_read.exit
  %s3_strap_override_ctrl = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 18
  %13 = ptrtoint ptr %s3_strap_override_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s3_strap_override_ctrl, align 4
  %and7 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end13.thread, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %bcm_qspi_read.exit.if.then9_crit_edge
  %15 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %xfer_mode, align 4
  %16 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i2 = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %19, i32 40
  br i1 %tobool.not.i2, label %if.else.i.i5, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #8, !srcloc !195
  br label %if.end13

if.else.i.i5:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #8, !srcloc !195
  br label %if.end13

if.end13:                                         ; preds = %if.else.i.i5, %do.body.i.i
  %call12 = tail call fastcc i32 @bcm_qspi_bspi_set_override(ptr noundef %qspi, ptr noundef %op)
  %20 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %xfer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool16.not = icmp eq i8 %.pr, 0
  br i1 %tobool16.not, label %if.end19, label %if.end13.if.then17_crit_edge

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end13.thread:                                  ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr21 = load i8, ptr %xfer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr21)
  %tobool16.not22 = icmp eq i8 %.pr21, 0
  br i1 %tobool16.not22, label %if.end13.thread.if.else_crit_edge, label %if.end13.thread.if.then17_crit_edge

if.end13.thread.if.then17_crit_edge:              ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end13.thread.if.else_crit_edge:                ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then17:                                        ; preds = %if.end13.thread.if.then17_crit_edge, %if.end13.if.then17_crit_edge, %entry.if.then17_crit_edge
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %22 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %opcode.i, align 4
  %conv.i = trunc i16 %23 to i8
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i6 = icmp eq i8 %25, 0
  %narrow.i = select i1 %tobool.not.i6, i8 1, i8 %25
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_qspi_bspi_set_flex_mode.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_qspi_bspi_set_mode, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !193

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select.i = zext i8 %narrow.i to i32
  %conv5.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qspi, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_qspi_bspi_set_flex_mode.__UNIQUE_ID_ddebug235, ptr noundef %dev.i, ptr noundef nonnull @.str.59, i32 noundef %spec.select.i, i32 noundef %conv5.i, i32 noundef 0) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then17
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp.i7 = icmp eq i8 %27, 4
  %spec.select1.i = select i1 %cmp.i7, i32 65536, i32 0
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %30 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool14.not.i = icmp eq i8 %31, 0
  br i1 %tobool14.not.i, label %do.end.i.if.end22.i_crit_edge, label %if.then15.i

do.end.i.if.end22.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then15.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv18.i = zext i8 %31 to i16
  %mul.i = shl nuw nsw i16 %conv18.i, 3
  %buswidth20.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %buswidth20.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buswidth20.i, align 1
  %div.rhs.trunc.i = zext i8 %33 to i16
  %div4.i = udiv i16 %mul.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div4.i to i32
  %or.i = or i32 %spec.select1.i, %div.zext.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %do.end.i.if.end22.i_crit_edge
  %bpp.1.i = phi i32 [ %or.i, %if.then15.i ], [ %spec.select1.i, %do.end.i.if.end22.i_crit_edge ]
  %34 = zext i8 %narrow.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %narrow.i, label %if.end22.i.do.end_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %if.end22.i.if.end19.thread_crit_edge
    i8 4, label %sw.bb32.i
  ]

if.end22.i.if.end19.thread_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.thread

if.end22.i.do.end_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb.i:                                          ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp23.i = icmp ne i8 %27, 3
  %spec.select2.i = zext i1 %cmp23.i to i32
  br label %if.end19.thread

sw.bb32.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.thread

if.end19.thread:                                  ; preds = %sw.bb32.i, %sw.bb.i, %if.end22.i.if.end19.thread_crit_edge
  %flex_mode.0.i = phi i32 [ 1, %sw.bb32.i ], [ %spec.select2.i, %sw.bb.i ], [ 1, %if.end22.i.if.end19.thread_crit_edge ]
  %bpc.0.i = phi i32 [ 2, %sw.bb32.i ], [ 0, %sw.bb.i ], [ 1, %if.end22.i.if.end19.thread_crit_edge ]
  tail call fastcc void @bcm_qspi_bspi_set_xfer_params(ptr noundef %qspi, i8 noundef zeroext %conv.i, i32 noundef %bpp.1.i, i32 noundef %bpc.0.i, i32 noundef %flex_mode.0.i) #8
  br label %if.else

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool20.not = icmp eq i32 %call12, 0
  br i1 %tobool20.not, label %if.end19.if.else_crit_edge, label %if.end19.do.end_crit_edge

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

do.end:                                           ; preds = %if.end19.do.end_crit_edge, %if.end22.i.do.end_crit_edge
  %error.218 = phi i32 [ %call12, %if.end19.do.end_crit_edge ], [ -22, %if.end22.i.do.end_crit_edge ]
  %35 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qspi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %spec.select, i32 noundef %conv4, i32 noundef 0) #11
  br label %if.end64

if.else:                                          ; preds = %if.end19.if.else_crit_edge, %if.end19.thread, %if.end13.thread.if.else_crit_edge
  %width23 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 17, i32 1
  %37 = ptrtoint ptr %width23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %spec.select)
  %cmp.not = icmp eq i32 %38, %spec.select
  br i1 %cmp.not, label %lor.lhs.false25, label %if.else.if.then35_crit_edge

if.else.if.then35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false25:                                  ; preds = %if.else
  %addrlen27 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 17, i32 2
  %39 = ptrtoint ptr %addrlen27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addrlen27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv4)
  %cmp28.not = icmp eq i32 %40, %conv4
  br i1 %cmp28.not, label %lor.lhs.false30, label %lor.lhs.false25.if.then35_crit_edge

lor.lhs.false25.if.then35_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %hp32 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 17, i32 3
  %41 = ptrtoint ptr %hp32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hp32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp33.not = icmp eq i32 %42, 0
  br i1 %cmp33.not, label %lor.lhs.false30.if.end64_crit_edge, label %lor.lhs.false30.if.then35_crit_edge

lor.lhs.false30.if.then35_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false30.if.end64_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then35:                                        ; preds = %lor.lhs.false30.if.then35_crit_edge, %lor.lhs.false25.if.then35_crit_edge, %if.else.if.then35_crit_edge
  %43 = ptrtoint ptr %width23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select, ptr %width23, align 4
  %addrlen39 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 17, i32 2
  %44 = ptrtoint ptr %addrlen39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv4, ptr %addrlen39, align 4
  %hp41 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 17, i32 3
  %45 = ptrtoint ptr %hp41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %hp41, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_qspi_bspi_set_mode.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_qspi_bspi_set_mode, %if.end64)) #8
          to label %if.then48 [label %if.end64], !srcloc !193

if.then48:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %qspi, align 4
  %dev50 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  %curr_cs = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 9
  %48 = ptrtoint ptr %curr_cs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %curr_cs, align 4
  %50 = ptrtoint ptr %width23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %width23, align 4
  %52 = ptrtoint ptr %addrlen39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addrlen39, align 4
  %54 = ptrtoint ptr %hp41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hp41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp57.not = icmp eq i32 %55, -1
  %cond59 = select i1 %cmp57.not, ptr @.str.14, ptr @.str.55
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_qspi_bspi_set_mode.__UNIQUE_ID_ddebug237, ptr noundef %dev50, ptr noundef nonnull @.str.54, i32 noundef %49, i32 noundef %51, i32 noundef %53, ptr noundef nonnull %cond59) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then48, %if.then35, %lor.lhs.false30.if.end64_crit_edge, %do.end
  %error.213 = phi i32 [ 0, %lor.lhs.false30.if.end64_crit_edge ], [ 0, %if.then48 ], [ %error.218, %do.end ], [ 0, %if.then35 ]
  ret i32 %error.213
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_qspi_bspi_exec_mem_op(ptr nocapture noundef readonly %spi, ptr noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %soc_intc2 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %soc_intc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_intc2, align 4
  %bspi_maj_rev.i = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %bspi_maj_rev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bspi_maj_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp slt i32 %7, 4
  br i1 %cmp.i, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %addr4 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %addr4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp = icmp eq i8 %9, 4
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %val, align 8
  %conv9 = trunc i64 %11 to i32
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %12 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %14 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chip_select, align 4
  %conv11 = zext i8 %15 to i32
  tail call fastcc void @bcm_qspi_chip_select(ptr noundef %3, i32 noundef %conv11)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 20
  %16 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %3, i32 0, i32 5, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 384
  br i1 %tobool.not.i, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i, %do.body.i.i
  %20 = ptrtoint ptr %bspi_maj_rev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bspi_maj_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp.i114 = icmp slt i32 %21, 4
  br i1 %cmp.i114, label %bcm_qspi_write.exit.if.end15_crit_edge, label %if.then14

bcm_qspi_write.exit.if.end15_crit_edge:           ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %bcm_qspi_write.exit
  %and = and i32 %conv9, -16777216
  %22 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i116 = icmp eq i8 %23, 0
  %arrayidx.i117 = getelementptr %struct.bcm_qspi, ptr %3, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i117, align 4
  %add.ptr.i118 = getelementptr i8, ptr %25, i32 56
  br i1 %tobool.not.i116, label %if.else.i.i120, label %do.body.i.i119

do.body.i.i119:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %and) #8, !srcloc !195
  br label %if.end15

if.else.i.i120:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %26 = lshr exact i32 %and, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %26) #8, !srcloc !195
  br label %if.end15

if.end15:                                         ; preds = %if.else.i.i120, %do.body.i.i119, %bcm_qspi_write.exit.if.end15_crit_edge
  %xfer_mode = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 17
  %27 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %xfer_mode, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool16.not = icmp eq i8 %28, 0
  %and18 = and i32 %conv9, 16777215
  %addr.0 = select i1 %tobool16.not, i32 %conv9, i32 %and18
  %29 = ptrtoint ptr %bspi_maj_rev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bspi_maj_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.i123 = icmp slt i32 %30, 4
  %add = add i32 %addr.0, 12582912
  %and25 = and i32 %add, 16777215
  %addr.1 = select i1 %cmp.i123, i32 %and25, i32 %addr.0
  %nbytes27 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %nbytes27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nbytes27, align 4
  %bspi_rf_op_idx = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 14
  %33 = ptrtoint ptr %bspi_rf_op_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %bspi_rf_op_idx, align 4
  %bspi_done = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 24
  %bspi_mode.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 19
  %bspi_enabled.i = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 12
  %arrayidx.i.i = getelementptr %struct.bcm_qspi, ptr %3, i32 0, i32 5, i32 1
  %bspi_rf_op = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 13
  %bspi_rf_op_status = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 16
  %bspi_rf_op_len = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 15
  %bcm_qspi_int_set = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %5, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end58.do.body_crit_edge, %if.end15
  %addr.2 = phi i32 [ %addr.1, %if.end15 ], [ %add59, %if.end58.do.body_crit_edge ]
  %len.0 = phi i32 [ %32, %if.end15 ], [ %sub, %if.end58.do.body_crit_edge ]
  %34 = tail call i32 @llvm.umin.i32(i32 %len.0, i32 256)
  %35 = ptrtoint ptr %bspi_done to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %bspi_done, align 4
  %36 = ptrtoint ptr %bspi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bspi_mode.i.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i.not.i = icmp eq i8 %37, 0
  br i1 %tobool.i.not.i, label %do.body.bcm_qspi_enable_bspi.exit_crit_edge, label %if.end.i

do.body.bcm_qspi_enable_bspi.exit_crit_edge:      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_enable_bspi.exit

if.end.i:                                         ; preds = %do.body
  %38 = ptrtoint ptr %bspi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %bspi_enabled.i, align 4
  %39 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  br label %bcm_qspi_read.exit.i

bcm_qspi_read.exit.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %43, %if.then.i.i.i ], [ %44, %if.else.i.i.i ]
  %and.i = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i124 = icmp eq i32 %and.i, 0
  br i1 %cmp.i124, label %bcm_qspi_read.exit.i.bcm_qspi_enable_bspi.exit_crit_edge, label %if.end3.i

bcm_qspi_read.exit.i.bcm_qspi_enable_bspi.exit_crit_edge: ; preds = %bcm_qspi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_enable_bspi.exit

if.end3.i:                                        ; preds = %bcm_qspi_read.exit.i
  tail call fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #8
  %46 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i9.i = icmp eq i8 %47, 0
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %49, i32 8
  br i1 %tobool.not.i9.i, label %if.else.i.i12.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

if.else.i.i12.i:                                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

bcm_qspi_write.exit.i:                            ; preds = %if.else.i.i12.i, %do.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #8
  br label %bcm_qspi_enable_bspi.exit

bcm_qspi_enable_bspi.exit:                        ; preds = %bcm_qspi_write.exit.i, %bcm_qspi_read.exit.i.bcm_qspi_enable_bspi.exit_crit_edge, %do.body.bcm_qspi_enable_bspi.exit_crit_edge
  %add33 = add nuw nsw i32 %34, 3
  %shr = lshr i32 %add33, 2
  %51 = ptrtoint ptr %bspi_rf_op to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %op, ptr %bspi_rf_op, align 4
  %52 = ptrtoint ptr %bspi_rf_op_status to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %bspi_rf_op_status, align 4
  %53 = ptrtoint ptr %bspi_rf_op_len to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %34, ptr %bspi_rf_op_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_qspi_bspi_exec_mem_op.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_qspi_bspi_exec_mem_op, %do.end)) #8
          to label %if.then40 [label %do.end], !srcloc !193

if.then40:                                        ; preds = %bcm_qspi_enable_bspi.exit
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_qspi_bspi_exec_mem_op.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %addr.2, i32 noundef %34) #8
  br label %do.end

do.end:                                           ; preds = %if.then40, %bcm_qspi_enable_bspi.exit
  %56 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i126 = icmp eq i8 %57, 0
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %59, i32 256
  br i1 %tobool.not.i126, label %if.else.i.i130, label %do.body.i.i129

do.body.i.i129:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %addr.2) #8, !srcloc !195
  br label %bcm_qspi_write.exit131

if.else.i.i130:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %60 = tail call i32 @llvm.bswap.i32(i32 %addr.2) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %60) #8, !srcloc !195
  br label %bcm_qspi_write.exit131

bcm_qspi_write.exit131:                           ; preds = %if.else.i.i130, %do.body.i.i129
  %61 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i133 = icmp eq i8 %62, 0
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %64, i32 260
  br i1 %tobool.not.i133, label %if.else.i.i137, label %do.body.i.i136

do.body.i.i136:                                   ; preds = %bcm_qspi_write.exit131
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %shr) #8, !srcloc !195
  br label %bcm_qspi_write.exit138

if.else.i.i137:                                   ; preds = %bcm_qspi_write.exit131
  call void @__sanitizer_cov_trace_pc() #10
  %65 = shl nuw nsw i32 %shr, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %65) #8, !srcloc !195
  br label %bcm_qspi_write.exit138

bcm_qspi_write.exit138:                           ; preds = %if.else.i.i137, %do.body.i.i136
  %66 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i140 = icmp eq i8 %67, 0
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %69, i32 272
  br i1 %tobool.not.i140, label %if.else.i.i144, label %do.body.i.i143

do.body.i.i143:                                   ; preds = %bcm_qspi_write.exit138
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit145

if.else.i.i144:                                   ; preds = %bcm_qspi_write.exit138
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit145

bcm_qspi_write.exit145:                           ; preds = %if.else.i.i144, %do.body.i.i143
  %70 = ptrtoint ptr %soc_intc2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %soc_intc2, align 4
  %tobool43.not = icmp eq ptr %71, null
  br i1 %tobool43.not, label %bcm_qspi_write.exit145.do.body46_crit_edge, label %if.then44

bcm_qspi_write.exit145.do.body46_crit_edge:       ; preds = %bcm_qspi_write.exit145
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

if.then44:                                        ; preds = %bcm_qspi_write.exit145
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %5, align 4
  tail call void %73(ptr noundef %5, i32 noundef 7) #8
  %74 = ptrtoint ptr %bcm_qspi_int_set to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bcm_qspi_int_set, align 4
  tail call void %75(ptr noundef %5, i32 noundef 2, i1 noundef zeroext true) #8
  br label %do.body46

do.body46:                                        ; preds = %if.then44, %bcm_qspi_write.exit145.do.body46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %do.body46
  %i.01.i.i = phi i32 [ 0, %do.body46 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %76 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i.i = icmp eq i8 %77, 0
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 12
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit.i.i

if.else.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  br label %bcm_qspi_read.exit.i.i

bcm_qspi_read.exit.i.i:                           ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %80, %if.then.i.i.i.i ], [ %81, %if.else.i.i.i.i ]
  %and.i.i = and i32 %retval.0.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i146 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i146, label %bcm_qspi_read.exit.i.i.bcm_qspi_bspi_busy_poll.exit.i_crit_edge, label %if.end.i.i

bcm_qspi_read.exit.i.i.bcm_qspi_bspi_busy_poll.exit.i_crit_edge: ; preds = %bcm_qspi_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_bspi_busy_poll.exit.i

if.end.i.i:                                       ; preds = %bcm_qspi_read.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #8
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.41) #11
  br label %bcm_qspi_bspi_busy_poll.exit.i

bcm_qspi_bspi_busy_poll.exit.i:                   ; preds = %do.end.i.i, %bcm_qspi_read.exit.i.i.bcm_qspi_bspi_busy_poll.exit.i_crit_edge
  %85 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i2.i = icmp eq i8 %86, 0
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i147 = getelementptr i8, ptr %88, i32 264
  br i1 %tobool.not.i2.i, label %if.else.i.i.i149, label %do.body.i.i.i148

do.body.i.i.i148:                                 ; preds = %bcm_qspi_bspi_busy_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147, i32 1) #8, !srcloc !195
  br label %bcm_qspi_bspi_lr_start.exit

if.else.i.i.i149:                                 ; preds = %bcm_qspi_bspi_busy_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147, i32 16777216) #8, !srcloc !195
  br label %bcm_qspi_bspi_lr_start.exit

bcm_qspi_bspi_lr_start.exit:                      ; preds = %if.else.i.i.i149, %do.body.i.i.i148
  %call50 = tail call i32 @wait_for_completion_timeout(ptr noundef %bspi_done, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end55, label %if.end58

do.end55:                                         ; preds = %bcm_qspi_bspi_lr_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 4
  %dev57 = getelementptr inbounds %struct.platform_device, ptr %90, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.62) #11
  br label %cleanup

if.end58:                                         ; preds = %bcm_qspi_bspi_lr_start.exit
  %add59 = add i32 %34, %addr.2
  %sub = sub i32 %len.0, %34
  %tobool61.not = icmp eq i32 %sub, 0
  br i1 %tobool61.not, label %if.end58.cleanup_crit_edge, label %if.end58.do.body_crit_edge

if.end58.do.body_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end58.cleanup_crit_edge, %do.end55, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then.cleanup_crit_edge ], [ -110, %do.end55 ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_qspi_bspi_set_override(ptr nocapture noundef readonly %qspi, ptr nocapture noundef readonly %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %narrow = select i1 %tobool.not, i8 1, i8 %1
  %spec.select = zext i8 %narrow to i32
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 8
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %4 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  br label %bcm_qspi_read.exit

bcm_qspi_read.exit:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %8, %if.then.i.i ], [ %9, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_qspi_bspi_set_override.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_qspi_bspi_set_override, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !193

if.then:                                          ; preds = %bcm_qspi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv4 = zext i8 %3 to i32
  %10 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qspi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_qspi_bspi_set_override.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %spec.select, i32 noundef %conv4, i32 noundef 0) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %bcm_qspi_read.exit
  %12 = zext i8 %narrow to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %narrow, label %do.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 4, label %sw.bb11
    i8 2, label %sw.bb13
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %retval.0.i.i, -11
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %and12 = and i32 %retval.0.i.i, -11
  %or = or i32 %and12, 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %retval.0.i.i, -11
  %or15 = or i32 %and14, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb
  %data5.0 = phi i32 [ %or15, %sw.bb13 ], [ %or, %sw.bb11 ], [ %and, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  %and19 = and i32 %data5.0, -6
  %data5.1 = select i1 %cmp, i32 5, i32 1
  %or21 = or i32 %data5.1, %and19
  %13 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i2 = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %16, i32 36
  br i1 %tobool.not.i2, label %if.else.i.i5, label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %or21) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i5:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %or21) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %17) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i5, %do.body.i.i
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %18 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %opcode, align 4
  %conv22 = trunc i16 %19 to i8
  tail call fastcc void @bcm_qspi_bspi_set_xfer_params(ptr noundef %qspi, i8 noundef zeroext %conv22, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %bcm_qspi_write.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bcm_qspi_write.exit ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_bspi_set_xfer_params(ptr nocapture noundef readonly %qspi, i8 noundef zeroext %cmd_byte, i32 noundef %bpp, i32 noundef %bpc, i32 noundef %flex_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 40
  br i1 %tobool.not.i, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i, %do.body.i.i
  %4 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i6 = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 44
  br i1 %tobool.not.i6, label %if.else.i.i10, label %do.body.i.i9

do.body.i.i9:                                     ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %bpc) #8, !srcloc !195
  br label %bcm_qspi_write.exit11

if.else.i.i10:                                    ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %bpc) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %8) #8, !srcloc !195
  br label %bcm_qspi_write.exit11

bcm_qspi_write.exit11:                            ; preds = %if.else.i.i10, %do.body.i.i9
  %9 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i13 = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %12, i32 48
  br i1 %tobool.not.i13, label %if.else.i.i17, label %do.body.i.i16

do.body.i.i16:                                    ; preds = %bcm_qspi_write.exit11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %bpp) #8, !srcloc !195
  br label %bcm_qspi_write.exit18

if.else.i.i17:                                    ; preds = %bcm_qspi_write.exit11
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %bpp) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %13) #8, !srcloc !195
  br label %bcm_qspi_write.exit18

bcm_qspi_write.exit18:                            ; preds = %if.else.i.i17, %do.body.i.i16
  %conv = zext i8 %cmd_byte to i32
  %14 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i20 = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %17, i32 52
  br i1 %tobool.not.i20, label %if.else.i.i24, label %do.body.i.i23

do.body.i.i23:                                    ; preds = %bcm_qspi_write.exit18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %conv) #8, !srcloc !195
  br label %bcm_qspi_write.exit25

if.else.i.i24:                                    ; preds = %bcm_qspi_write.exit18
  call void @__sanitizer_cov_trace_pc() #10
  %18 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %18) #8, !srcloc !195
  br label %bcm_qspi_write.exit25

bcm_qspi_write.exit25:                            ; preds = %if.else.i.i24, %do.body.i.i23
  %19 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i27 = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %22, i32 40
  br i1 %tobool.not.i27, label %if.else.i.i31, label %do.body.i.i30

do.body.i.i30:                                    ; preds = %bcm_qspi_write.exit25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %flex_mode) #8, !srcloc !195
  br label %bcm_qspi_write.exit32

if.else.i.i31:                                    ; preds = %bcm_qspi_write.exit25
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %flex_mode) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %23) #8, !srcloc !195
  br label %bcm_qspi_write.exit32

bcm_qspi_write.exit32:                            ; preds = %if.else.i.i31, %do.body.i.i30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_qspi_bspi_lr_l2_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bcm_qspi_dev_id, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %soc_intc1 = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %soc_intc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_intc1, align 4
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %mask = getelementptr inbounds %struct.bcm_qspi_irq, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %bspi_enabled = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %bspi_enabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bspi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %bspi_rf_op = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %bspi_rf_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bspi_rf_op, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.if.end16_crit_edge, label %if.then

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @bcm_qspi_bspi_lr_data_read(ptr noundef %1)
  %bspi_rf_op_len = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %bspi_rf_op_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bspi_rf_op_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then3, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then3:                                         ; preds = %if.then
  %14 = ptrtoint ptr %bspi_rf_op to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bspi_rf_op, align 4
  %15 = ptrtoint ptr %soc_intc1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc_intc1, align 4
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %if.then3.if.end_crit_edge, label %if.then7

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %bcm_qspi_int_set = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %bcm_qspi_int_set to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bcm_qspi_int_set, align 4
  tail call void %18(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then3.if.end_crit_edge
  %status.0 = phi i32 [ 8, %if.then7 ], [ %7, %if.then3.if.end_crit_edge ]
  %bspi_rf_op_status = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %bspi_rf_op_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bspi_rf_op_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %big_endian.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 20
  %21 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  %arrayidx.i.i = getelementptr %struct.bcm_qspi, ptr %1, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 264
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2) #8, !srcloc !195
  br label %bcm_qspi_bspi_lr_clear.exit

if.else.i.i.i:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #8, !srcloc !195
  br label %bcm_qspi_bspi_lr_clear.exit

bcm_qspi_bspi_lr_clear.exit:                      ; preds = %if.else.i.i.i, %do.body.i.i.i
  tail call fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr noundef %1) #8
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %bcm_qspi_bspi_lr_clear.exit, %if.then.if.end11_crit_edge
  %status.1 = phi i32 [ %status.0, %bcm_qspi_bspi_lr_clear.exit ], [ %status.0, %if.else ], [ %7, %if.then.if.end11_crit_edge ]
  %25 = ptrtoint ptr %soc_intc1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc_intc1, align 4
  %tobool13.not = icmp eq ptr %26, null
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  tail call void %28(ptr noundef %3, i32 noundef 2) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %status.2 = phi i32 [ %status.1, %if.then14 ], [ %status.1, %if.end11.if.end16_crit_edge ], [ %7, %land.lhs.true.if.end16_crit_edge ], [ %7, %entry.if.end16_crit_edge ]
  %29 = ptrtoint ptr %bspi_enabled to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bspi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool18.not = icmp eq i32 %30, 0
  %and = and i32 %status.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %if.end16.if.end25_crit_edge, label %land.lhs.true21

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true21:                                  ; preds = %if.end16
  %bspi_rf_op_len22 = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %bspi_rf_op_len22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bspi_rf_op_len22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp23 = icmp eq i32 %32, 0
  br i1 %cmp23, label %if.then24, label %land.lhs.true21.if.end25_crit_edge

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  %bspi_done = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 24
  tail call void @complete(ptr noundef %bspi_done) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true21.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_qspi_bspi_lr_err_l2_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bcm_qspi_dev_id, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %soc_intc1 = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %soc_intc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_intc1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.72) #11
  %bspi_rf_op_status = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %bspi_rf_op_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -5, ptr %bspi_rf_op_status, align 4
  %7 = ptrtoint ptr %soc_intc1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soc_intc1, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void %10(ptr noundef %3, i32 noundef 4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bspi_done = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 24
  tail call void @complete(ptr noundef %bspi_done) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_qspi_mspi_l2_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bcm_qspi_dev_id, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %big_endian.i = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %arrayidx.i = getelementptr %struct.bcm_qspi, ptr %1, i32 0, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  br label %bcm_qspi_read.exit

bcm_qspi_read.exit:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %6, %if.then.i.i ], [ %7, %if.else.i.i ]
  %and = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %bcm_qspi_read.exit.cleanup_crit_edge, label %if.then

bcm_qspi_read.exit.cleanup_crit_edge:             ; preds = %bcm_qspi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %bcm_qspi_read.exit
  %soc_intc1 = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %soc_intc1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc_intc1, align 4
  %and2 = and i32 %retval.0.i.i, -2
  %10 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %big_endian.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i17 = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %13, i32 32
  br i1 %tobool.not.i17, label %if.else.i.i20, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %and2) #8, !srcloc !195
  br label %bcm_qspi_write.exit

if.else.i.i20:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %and2) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %14) #8, !srcloc !195
  br label %bcm_qspi_write.exit

bcm_qspi_write.exit:                              ; preds = %if.else.i.i20, %do.body.i.i
  %15 = ptrtoint ptr %soc_intc1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc_intc1, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %bcm_qspi_write.exit.if.end_crit_edge, label %if.then5

bcm_qspi_write.exit.if.end_crit_edge:             ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %bcm_qspi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  tail call void %18(ptr noundef %9, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %bcm_qspi_write.exit.if.end_crit_edge
  %mspi_done = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 23
  tail call void @complete(ptr noundef %mspi_done) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bcm_qspi_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %bcm_qspi_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_qspi_l1_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bcm_qspi_dev_id, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %soc_intc1 = getelementptr inbounds %struct.bcm_qspi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %soc_intc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_intc1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  %bcm_qspi_get_int_status = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bcm_qspi_get_int_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bcm_qspi_get_int_status, align 4
  %call = tail call i32 %5(ptr noundef nonnull %3) #8
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %big_endian.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  %arrayidx.i.i = getelementptr %struct.bcm_qspi, ptr %7, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_read.exit.i

if.else.i.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  br label %bcm_qspi_read.exit.i

bcm_qspi_read.exit.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %12, %if.then.i.i.i ], [ %13, %if.else.i.i.i ]
  %and.i = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %bcm_qspi_read.exit.i.if.end16_crit_edge, label %if.then.i

bcm_qspi_read.exit.i.if.end16_crit_edge:          ; preds = %bcm_qspi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then.i:                                        ; preds = %bcm_qspi_read.exit.i
  %soc_intc1.i = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %soc_intc1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc_intc1.i, align 4
  %and2.i = and i32 %retval.0.i.i.i, -2
  %16 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i17.i = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %19, i32 32
  br i1 %tobool.not.i17.i, label %if.else.i.i20.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %and2.i) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

if.else.i.i20.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %20) #8, !srcloc !195
  br label %bcm_qspi_write.exit.i

bcm_qspi_write.exit.i:                            ; preds = %if.else.i.i20.i, %do.body.i.i.i
  %21 = ptrtoint ptr %soc_intc1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %soc_intc1.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %bcm_qspi_write.exit.i.if.end.i_crit_edge, label %if.then5.i

bcm_qspi_write.exit.i.if.end.i_crit_edge:         ; preds = %bcm_qspi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then5.i:                                       ; preds = %bcm_qspi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %15, align 4
  tail call void %24(ptr noundef %15, i32 noundef 1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %bcm_qspi_write.exit.i.if.end.i_crit_edge
  %mspi_done.i = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 23
  tail call void @complete(ptr noundef %mspi_done.i) #8
  br label %if.end16

if.else:                                          ; preds = %if.then
  %and5 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @bcm_qspi_bspi_lr_l2_isr(i32 noundef %irq, ptr noundef %dev_id)
  br label %if.end16

if.else9:                                         ; preds = %if.else
  %and10 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else9.if.end16_crit_edge, label %if.then12

if.else9.if.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.else9
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %soc_intc1.i27 = getelementptr inbounds %struct.bcm_qspi, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %soc_intc1.i27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc_intc1.i27, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.72) #11
  %bspi_rf_op_status.i = getelementptr inbounds %struct.bcm_qspi, ptr %26, i32 0, i32 16
  %31 = ptrtoint ptr %bspi_rf_op_status.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -5, ptr %bspi_rf_op_status.i, align 4
  %32 = ptrtoint ptr %soc_intc1.i27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %soc_intc1.i27, align 4
  %tobool.not.i28 = icmp eq ptr %33, null
  br i1 %tobool.not.i28, label %if.then12.bcm_qspi_bspi_lr_err_l2_isr.exit_crit_edge, label %if.then.i29

if.then12.bcm_qspi_bspi_lr_err_l2_isr.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_qspi_bspi_lr_err_l2_isr.exit

if.then.i29:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %28, align 4
  tail call void %35(ptr noundef %28, i32 noundef 4) #8
  br label %bcm_qspi_bspi_lr_err_l2_isr.exit

bcm_qspi_bspi_lr_err_l2_isr.exit:                 ; preds = %if.then.i29, %if.then12.bcm_qspi_bspi_lr_err_l2_isr.exit_crit_edge
  %bspi_done.i = getelementptr inbounds %struct.bcm_qspi, ptr %26, i32 0, i32 24
  tail call void @complete(ptr noundef %bspi_done.i) #8
  br label %if.end16

if.end16:                                         ; preds = %bcm_qspi_bspi_lr_err_l2_isr.exit, %if.else9.if.end16_crit_edge, %if.then7, %if.end.i, %bcm_qspi_read.exit.i.if.end16_crit_edge, %entry.if.end16_crit_edge
  %ret.1 = phi i32 [ 0, %entry.if.end16_crit_edge ], [ 1, %if.then7 ], [ 1, %bcm_qspi_bspi_lr_err_l2_isr.exit ], [ 0, %if.else9.if.end16_crit_edge ], [ 1, %if.end.i ], [ 0, %bcm_qspi_read.exit.i.if.end16_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_bspi_lr_data_read(ptr nocapture noundef %qspi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bspi_rf_op = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 13
  %0 = ptrtoint ptr %bspi_rf_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bspi_rf_op, align 4
  %buf1 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_qspi_bspi_lr_data_read.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_qspi_bspi_lr_data_read, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %qspi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qspi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bspi_rf_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bspi_rf_op, align 4
  %buf9 = getelementptr inbounds %struct.spi_mem_op, ptr %7, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %buf9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf9, align 4
  %bspi_rf_op_len = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 15
  %10 = ptrtoint ptr %bspi_rf_op_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bspi_rf_op_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_qspi_bspi_lr_data_read.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef %7, ptr noundef %9, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %big_endian.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 20
  %arrayidx.i.i = getelementptr %struct.bcm_qspi, ptr %qspi, i32 0, i32 5, i32 1
  %bspi_maj_rev.i.i = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 10
  %bspi_rf_op_len15 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 15
  %12 = ptrtoint ptr %3 to i32
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp22 = icmp eq i32 %and, 0
  %bspi_rf_op_idx25 = getelementptr inbounds %struct.bcm_qspi, ptr %qspi, i32 0, i32 14
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %do.end
  %13 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 276
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_bspi_lr_is_fifo_empty.exit

if.else.i.i.i:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  br label %bcm_qspi_bspi_lr_is_fifo_empty.exit

bcm_qspi_bspi_lr_is_fifo_empty.exit:              ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %17, %if.then.i.i.i ], [ %18, %if.else.i.i.i ]
  %and.i = and i32 %retval.0.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not = icmp eq i32 %and.i, 0
  br i1 %tobool11.not, label %while.body, label %while.end33

while.body:                                       ; preds = %bcm_qspi_bspi_lr_is_fifo_empty.exit
  %19 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %big_endian.i.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i52 = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %22, i32 280
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54) #8
  br i1 %tobool.not.i.i52, label %if.else.i.i.i56, label %if.then.i.i.i55

if.then.i.i.i55:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  br label %bcm_qspi_bspi_lr_read_fifo.exit

if.else.i.i.i56:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  br label %bcm_qspi_bspi_lr_read_fifo.exit

bcm_qspi_bspi_lr_read_fifo.exit:                  ; preds = %if.else.i.i.i56, %if.then.i.i.i55
  %retval.0.i.i.i57 = phi i32 [ %23, %if.then.i.i.i55 ], [ %24, %if.else.i.i.i56 ]
  %25 = ptrtoint ptr %bspi_maj_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bspi_maj_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp.i.i = icmp slt i32 %26, 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i57) #8
  %spec.select.i = select i1 %cmp.i.i, i32 %27, i32 %retval.0.i.i.i57
  %28 = ptrtoint ptr %bspi_rf_op_len15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bspi_rf_op_len15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp = icmp ugt i32 %29, 3
  %or.cond = select i1 %cmp, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then23, label %if.else, !prof !198

if.then23:                                        ; preds = %bcm_qspi_bspi_lr_read_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %bspi_rf_op_idx25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bspi_rf_op_idx25, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %bspi_rf_op_idx25, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select.i, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %bspi_rf_op_len15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bspi_rf_op_len15, align 4
  %sub = add i32 %34, -4
  store i32 %sub, ptr %bspi_rf_op_len15, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %bcm_qspi_bspi_lr_read_fifo.exit
  %35 = ptrtoint ptr %bspi_rf_op_len15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %bspi_rf_op_len15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool29.not59 = icmp eq i32 %.pr, 0
  br i1 %tobool29.not59, label %if.else.while.cond.backedge_crit_edge, label %while.body30.preheader

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body30.while.cond.backedge_crit_edge, %if.else.while.cond.backedge_crit_edge, %if.then23
  br label %while.cond

while.body30.preheader:                           ; preds = %if.else
  %36 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i)
  %37 = ptrtoint ptr %bspi_rf_op_idx25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bspi_rf_op_idx25, align 4
  %arrayidx26 = getelementptr i32, ptr %3, i32 %38
  br label %while.body30

while.body30:                                     ; preds = %while.body30.while.body30_crit_edge, %while.body30.preheader
  %cbuf.061 = phi ptr [ %incdec.ptr, %while.body30.while.body30_crit_edge ], [ %arrayidx26, %while.body30.preheader ]
  %data2.060 = phi i32 [ %shr, %while.body30.while.body30_crit_edge ], [ %36, %while.body30.preheader ]
  %conv = trunc i32 %data2.060 to i8
  %incdec.ptr = getelementptr i8, ptr %cbuf.061, i32 1
  %39 = ptrtoint ptr %cbuf.061 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %cbuf.061, align 1
  %shr = lshr i32 %data2.060, 8
  %40 = ptrtoint ptr %bspi_rf_op_len15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bspi_rf_op_len15, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %bspi_rf_op_len15, align 4
  %tobool29.not = icmp eq i32 %dec, 0
  br i1 %tobool29.not, label %while.body30.while.cond.backedge_crit_edge, label %while.body30.while.body30_crit_edge

while.body30.while.body30_crit_edge:              ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body30

while.body30.while.cond.backedge_crit_edge:       ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.end33:                                      ; preds = %bcm_qspi_bspi_lr_is_fifo_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !175, !176, !177, !178, !180}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1509, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @bcm_qspi_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @bcm_qspi_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1538, i32 42}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1541, i32 59}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1544, i32 10}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1554, i32 59}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1564, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bcm_qspi_probe._entry.9, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @bcm_qspi_probe._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1566, i32 59}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1592, i32 4}
!27 = !{ptr @bcm_qspi_probe._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bcm_qspi_probe._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1636, i32 5}
!31 = !{ptr @bcm_qspi_probe._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bcm_qspi_probe._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1643, i32 4}
!35 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @bcm_qspi_probe.__UNIQUE_ID_ddebug254, !34, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1650, i32 3}
!39 = !{ptr @bcm_qspi_probe._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bcm_qspi_probe._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1668, i32 3}
!43 = !{ptr @bcm_qspi_probe._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bcm_qspi_probe._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_bcm_qspi_probe, !46, !"__ksymtab_bcm_qspi_probe", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1683, i32 1}
!47 = !{ptr @__ksymtab_bcm_qspi_remove, !48, !"__ksymtab_bcm_qspi_remove", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1697, i32 1}
!49 = !{ptr @bcm_qspi_pm_ops, !50, !"bcm_qspi_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1734, i32 1}
!51 = !{ptr @__ksymtab_bcm_qspi_pm_ops, !52, !"__ksymtab_bcm_qspi_pm_ops", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1737, i32 1}
!53 = !{ptr @__UNIQUE_ID_author255, !54, !"__UNIQUE_ID_author255", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1739, i32 1}
!55 = !{ptr @__UNIQUE_ID_description256, !56, !"__UNIQUE_ID_description256", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1740, i32 1}
!57 = !{ptr @__UNIQUE_ID_file257, !58, !"__UNIQUE_ID_file257", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1741, i32 1}
!59 = !{ptr @__UNIQUE_ID_license258, !58, !"__UNIQUE_ID_license258", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_alias259, !61, !"__UNIQUE_ID_alias259", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1742, i32 1}
!62 = !{ptr @bcm_qspi_of_match, !63, !"bcm_qspi_of_match", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1460, i32 34}
!64 = !{ptr @bcm_qspi_rev_data, !65, !"bcm_qspi_rev_data", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1450, i32 35}
!66 = !{ptr @bcm_qspi_no_rev_data, !67, !"bcm_qspi_no_rev_data", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1445, i32 35}
!68 = !{ptr @bcm_qspi_spcr3_data, !69, !"bcm_qspi_spcr3_data", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1455, i32 35}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1139, i32 4}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @bcm_qspi_transfer_one._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @bcm_qspi_transfer_one._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 597, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @bcm_qspi_chip_select.__UNIQUE_ID_ddebug238, !76, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 954, i32 4}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @write_to_hw.__UNIQUE_ID_ddebug248, !80, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 960, i32 4}
!85 = !{ptr @write_to_hw.__UNIQUE_ID_ddebug249, !84, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 966, i32 4}
!88 = !{ptr @write_to_hw.__UNIQUE_ID_ddebug250, !87, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 976, i32 4}
!91 = !{ptr @write_to_hw.__UNIQUE_ID_ddebug251, !90, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1000, i32 3}
!94 = !{ptr @write_to_hw._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @write_to_hw._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1004, i32 2}
!98 = !{ptr @write_to_hw.__UNIQUE_ID_ddebug252, !97, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 327, i32 2}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @bcm_qspi_bspi_busy_poll._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @bcm_qspi_bspi_busy_poll._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 774, i32 2}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @update_qspi_trans_byte_count.__UNIQUE_ID_ddebug243, !106, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 833, i32 3}
!111 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @read_from_hw._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @read_from_hw._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 845, i32 4}
!116 = !{ptr @read_from_hw.__UNIQUE_ID_ddebug244, !115, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 853, i32 4}
!119 = !{ptr @read_from_hw.__UNIQUE_ID_ddebug245, !118, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 861, i32 4}
!122 = !{ptr @read_from_hw.__UNIQUE_ID_ddebug246, !121, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 870, i32 4}
!125 = !{ptr @read_from_hw.__UNIQUE_ID_ddebug247, !124, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!126 = !{ptr @bcm_qspi_mem_ops, !127, !"bcm_qspi_mem_ops", i1 false, i1 false}
!127 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1436, i32 44}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 534, i32 3}
!130 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @bcm_qspi_bspi_set_mode._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @bcm_qspi_bspi_set_mode._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 543, i32 3}
!135 = !{ptr @bcm_qspi_bspi_set_mode.__UNIQUE_ID_ddebug237, !134, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!136 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 470, i32 2}
!139 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @bcm_qspi_bspi_set_override.__UNIQUE_ID_ddebug236, !138, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 425, i32 2}
!143 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @bcm_qspi_bspi_set_flex_mode.__UNIQUE_ID_ddebug235, !142, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1090, i32 3}
!147 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @bcm_qspi_bspi_exec_mem_op.__UNIQUE_ID_ddebug253, !146, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1108, i32 4}
!151 = !{ptr @bcm_qspi_bspi_exec_mem_op._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @bcm_qspi_bspi_exec_mem_op._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1341, i32 15}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1346, i32 15}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1351, i32 15}
!159 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1356, i32 15}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1369, i32 15}
!163 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1374, i32 15}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1380, i32 15}
!167 = !{ptr @qspi_irq_tab, !168, !"qspi_irq_tab", i1 false, i1 false}
!168 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1339, i32 34}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 384, i32 2}
!171 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @bcm_qspi_bspi_lr_data_read.__UNIQUE_ID_ddebug234, !170, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!173 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/spi/spi-bcm-qspi.c", i32 1308, i32 2}
!175 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @bcm_qspi_bspi_lr_err_l2_isr._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @bcm_qspi_bspi_lr_err_l2_isr._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @init_completion.__key, !179, !"__key", i1 false, i1 false}
!179 = !{!"../include/linux/completion.h", i32 87, i32 2}
!180 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"auto-init"}
!191 = !{i8 0, i8 2}
!192 = !{i64 2154397439}
!193 = !{i64 2148764961, i64 2148764966, i64 2148764979, i64 2148765023, i64 2148765057, i64 2148765078}
!194 = !{i64 2154398119}
!195 = !{i64 4941090}
!196 = !{i64 2154470586}
!197 = !{i64 2154473198}
!198 = !{!"branch_weights", i32 2000, i32 2002}
