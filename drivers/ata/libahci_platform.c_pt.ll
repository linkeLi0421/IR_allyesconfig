; ModuleID = '/llk/IR_all_yes/drivers/ata/libahci_platform.c_pt.bc'
source_filename = "../drivers/ata/libahci_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_ops\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_enable_phys\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_enable_phys\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_enable_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_enable_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_enable_phys\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_enable_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_disable_phys\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_disable_phys\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_disable_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_disable_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_disable_phys\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_disable_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_enable_clks\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_enable_clks\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_enable_clks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_enable_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_enable_clks\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_enable_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_disable_clks\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_disable_clks\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_disable_clks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_disable_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_disable_clks\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_disable_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_enable_regulators\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_enable_regulators\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_enable_regulators\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_enable_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_enable_regulators\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_enable_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_disable_regulators\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_disable_regulators\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_disable_regulators\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_disable_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_disable_regulators\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_disable_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_enable_resources\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_enable_resources\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_enable_resources\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_enable_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_enable_resources\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_enable_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_disable_resources\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_disable_resources\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_disable_resources\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_disable_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_disable_resources\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_disable_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_get_resources\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_get_resources\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_get_resources\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_get_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_get_resources\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_get_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_init_host\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_init_host\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_init_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_init_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_init_host\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_init_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_shutdown\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_suspend_host\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_suspend_host\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_suspend_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_suspend_host\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_resume_host\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_resume_host\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_resume_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_resume_host\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_suspend\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_platform_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_platform_resume\09\09\09\09"
module asm "\09.long\09__crc_ahci_platform_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.85, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.85 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }

@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_platform_ops = dso_local global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_ahci_platform_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_ops to i32), ptr @__kstrtab_ahci_platform_ops, ptr @__kstrtabns_ahci_platform_ops }, section "___ksymtab_gpl+ahci_platform_ops", align 4
@__kstrtab_ahci_platform_enable_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_enable_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_enable_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_enable_phys to i32), ptr @__kstrtab_ahci_platform_enable_phys, ptr @__kstrtabns_ahci_platform_enable_phys }, section "___ksymtab_gpl+ahci_platform_enable_phys", align 4
@__kstrtab_ahci_platform_disable_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_disable_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_disable_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_disable_phys to i32), ptr @__kstrtab_ahci_platform_disable_phys, ptr @__kstrtabns_ahci_platform_disable_phys }, section "___ksymtab_gpl+ahci_platform_disable_phys", align 4
@__kstrtab_ahci_platform_enable_clks = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_enable_clks = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_enable_clks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_enable_clks to i32), ptr @__kstrtab_ahci_platform_enable_clks, ptr @__kstrtabns_ahci_platform_enable_clks }, section "___ksymtab_gpl+ahci_platform_enable_clks", align 4
@__kstrtab_ahci_platform_disable_clks = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_disable_clks = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_disable_clks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_disable_clks to i32), ptr @__kstrtab_ahci_platform_disable_clks, ptr @__kstrtabns_ahci_platform_disable_clks }, section "___ksymtab_gpl+ahci_platform_disable_clks", align 4
@__kstrtab_ahci_platform_enable_regulators = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_enable_regulators = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_enable_regulators = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_enable_regulators to i32), ptr @__kstrtab_ahci_platform_enable_regulators, ptr @__kstrtabns_ahci_platform_enable_regulators }, section "___ksymtab_gpl+ahci_platform_enable_regulators", align 4
@__kstrtab_ahci_platform_disable_regulators = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_disable_regulators = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_disable_regulators = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_disable_regulators to i32), ptr @__kstrtab_ahci_platform_disable_regulators, ptr @__kstrtabns_ahci_platform_disable_regulators }, section "___ksymtab_gpl+ahci_platform_disable_regulators", align 4
@__kstrtab_ahci_platform_enable_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_enable_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_enable_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_enable_resources to i32), ptr @__kstrtab_ahci_platform_enable_resources, ptr @__kstrtabns_ahci_platform_enable_resources }, section "___ksymtab_gpl+ahci_platform_enable_resources", align 4
@__kstrtab_ahci_platform_disable_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_disable_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_disable_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_disable_resources to i32), ptr @__kstrtab_ahci_platform_disable_resources, ptr @__kstrtabns_ahci_platform_disable_resources }, section "___ksymtab_gpl+ahci_platform_disable_resources", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ahci_platform_put_resources\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahci\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ahci_platform_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 494, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid port number %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ahci_platform_get_resources\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/ata/libahci_platform.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ahci_platform_get_resources._entry_ptr = internal global ptr @ahci_platform_get_resources._entry, section ".printk_index", align 4
@ahci_platform_get_resources._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 523, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No port enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@ahci_platform_get_resources._entry_ptr.11 = internal global ptr @ahci_platform_get_resources._entry.9, section ".printk_index", align 4
@__kstrtab_ahci_platform_get_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_get_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_get_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_get_resources to i32), ptr @__kstrtab_ahci_platform_get_resources, ptr @__kstrtabns_ahci_platform_get_resources }, section "___ksymtab_gpl+ahci_platform_get_resources", align 4
@ahci_ignore_sss = external dso_local local_unnamed_addr global i32, align 4
@ahci_platform_init_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 618, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SSS flag set, parallel bus scan disabled\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahci_platform_init_host\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ahci_platform_init_host._entry_ptr = internal global ptr @ahci_platform_init_host._entry, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmio %pR\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"port 0x%x\00", [22 x i8] zeroinitializer }, align 32
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_platform_init_host._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.6, i32 642, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to enable 64-bit DMA.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ahci_platform_init_host._entry_ptr.20 = internal global ptr @ahci_platform_init_host._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_ahci_platform_init_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_init_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_init_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_init_host to i32), ptr @__kstrtab_ahci_platform_init_host, ptr @__kstrtabns_ahci_platform_init_host }, section "___ksymtab_gpl+ahci_platform_init_host", align 4
@__kstrtab_ahci_platform_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_shutdown to i32), ptr @__kstrtab_ahci_platform_shutdown, ptr @__kstrtabns_ahci_platform_shutdown }, section "___ksymtab_gpl+ahci_platform_shutdown", align 4
@ahci_platform_suspend_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 719, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"firmware update required for suspend/resume\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ahci_platform_suspend_host\00", [37 x i8] zeroinitializer }, align 32
@ahci_platform_suspend_host._entry_ptr = internal global ptr @ahci_platform_suspend_host._entry, section ".printk_index", align 4
@__kstrtab_ahci_platform_suspend_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_suspend_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_suspend_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_suspend_host to i32), ptr @__kstrtab_ahci_platform_suspend_host, ptr @__kstrtabns_ahci_platform_suspend_host }, section "___ksymtab_gpl+ahci_platform_suspend_host", align 4
@__kstrtab_ahci_platform_resume_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_resume_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_resume_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_resume_host to i32), ptr @__kstrtab_ahci_platform_resume_host, ptr @__kstrtabns_ahci_platform_resume_host }, section "___ksymtab_gpl+ahci_platform_resume_host", align 4
@__kstrtab_ahci_platform_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_suspend to i32), ptr @__kstrtab_ahci_platform_suspend, ptr @__kstrtabns_ahci_platform_suspend }, section "___ksymtab_gpl+ahci_platform_suspend", align 4
@__kstrtab_ahci_platform_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_resume to i32), ptr @__kstrtab_ahci_platform_resume, ptr @__kstrtabns_ahci_platform_resume }, section "___ksymtab_gpl+ahci_platform_resume", align 4
@__UNIQUE_ID_description322 = internal constant [56 x i8] c"libahci_platform.description=AHCI SATA platform library\00", section ".modinfo", align 1
@__UNIQUE_ID_author323 = internal constant [67 x i8] c"libahci_platform.author=Anton Vorontsov <avorontsov@ru.mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [51 x i8] c"libahci_platform.file=drivers/ata/libahci_platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [29 x i8] c"libahci_platform.license=GPL\00", section ".modinfo", align 1
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"target\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@ahci_platform_get_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 326, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't get PHY in node %pOFn: ENOSYS\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahci_platform_get_phy\00", [42 x i8] zeroinitializer }, align 32
@ahci_platform_get_phy._entry_ptr = internal global ptr @ahci_platform_get_phy._entry, section ".printk_index", align 4
@ahci_platform_get_phy._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.6, i32 342, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't get PHY in node %pOFn: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ahci_platform_get_phy._entry_ptr.30 = internal global ptr @ahci_platform_get_phy._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 4294966779, i64 4294967258, i64 4294967277]
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"ahci_platform_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 29, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 398, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 433, i32 50 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 440, i32 49 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 487, i32 36 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 494, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 523, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 618, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 626, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 628, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 642, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 652, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 719, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 356, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 323, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 324, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [34 x i8] c"../drivers/ata/libahci_platform.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 340, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__ksymtab_ahci_platform_disable_clks, ptr @__ksymtab_ahci_platform_disable_phys, ptr @__ksymtab_ahci_platform_disable_regulators, ptr @__ksymtab_ahci_platform_disable_resources, ptr @__ksymtab_ahci_platform_enable_clks, ptr @__ksymtab_ahci_platform_enable_phys, ptr @__ksymtab_ahci_platform_enable_regulators, ptr @__ksymtab_ahci_platform_enable_resources, ptr @__ksymtab_ahci_platform_get_resources, ptr @__ksymtab_ahci_platform_init_host, ptr @__ksymtab_ahci_platform_ops, ptr @__ksymtab_ahci_platform_resume, ptr @__ksymtab_ahci_platform_resume_host, ptr @__ksymtab_ahci_platform_shutdown, ptr @__ksymtab_ahci_platform_suspend, ptr @__ksymtab_ahci_platform_suspend_host, ptr @ahci_platform_get_phy._entry, ptr @ahci_platform_get_phy._entry.28, ptr @ahci_platform_get_phy._entry_ptr, ptr @ahci_platform_get_phy._entry_ptr.30, ptr @ahci_platform_get_resources._entry, ptr @ahci_platform_get_resources._entry.9, ptr @ahci_platform_get_resources._entry_ptr, ptr @ahci_platform_get_resources._entry_ptr.11, ptr @ahci_platform_init_host._entry, ptr @ahci_platform_init_host._entry.17, ptr @ahci_platform_init_host._entry_ptr, ptr @ahci_platform_init_host._entry_ptr.20, ptr @ahci_platform_suspend_host._entry, ptr @ahci_platform_suspend_host._entry_ptr, ptr @ahci_platform_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_get_resources._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_init_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_init_host._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_suspend_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_get_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_get_phy._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_host_stop(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @ahci_platform_disable_resources(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_enable_phys(ptr nocapture noundef readonly %hpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 22
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp62.not = icmp eq i32 %1, 0
  br i1 %cmp62.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %phys = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.063
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_init(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.disable_phys_crit_edge

for.body.disable_phys_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_phys

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %i.063
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @phy_set_mode_ext(ptr noundef %9, i32 noundef 17, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %if.end.disable_phys.sink.split_crit_edge

if.end.disable_phys.sink.split_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_phys.sink.split

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys, align 4
  %arrayidx11 = getelementptr ptr, ptr %11, i32 %i.063
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 4
  %call12 = tail call i32 @phy_power_on(ptr noundef %13) #6
  %14 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %if.end9.disable_phys.sink.split_crit_edge [
    i32 0, label %if.end9.for.inc_crit_edge
    i32 -95, label %land.lhs.true15
  ]

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end9.disable_phys.sink.split_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_phys.sink.split

land.lhs.true15:                                  ; preds = %if.end9
  %15 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hpriv, align 4
  %and = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %land.lhs.true15.disable_phys.sink.split_crit_edge, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true15.disable_phys.sink.split_crit_edge: ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_phys.sink.split

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %if.end9.for.inc_crit_edge
  %inc = add nuw i32 %i.063, 1
  %17 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

disable_phys.sink.split:                          ; preds = %land.lhs.true15.disable_phys.sink.split_crit_edge, %if.end9.disable_phys.sink.split_crit_edge, %if.end.disable_phys.sink.split_crit_edge
  %rc.0.ph = phi i32 [ %call3, %if.end.disable_phys.sink.split_crit_edge ], [ %call12, %if.end9.disable_phys.sink.split_crit_edge ], [ %call12, %land.lhs.true15.disable_phys.sink.split_crit_edge ]
  %19 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phys, align 4
  %arrayidx19 = getelementptr ptr, ptr %20, i32 %i.063
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx19, align 4
  %call20 = tail call i32 @phy_exit(ptr noundef %22) #6
  br label %disable_phys

disable_phys:                                     ; preds = %disable_phys.sink.split, %for.body.disable_phys_crit_edge
  %rc.0 = phi i32 [ %rc.0.ph, %disable_phys.sink.split ], [ %call, %for.body.disable_phys_crit_edge ]
  %dec65 = add i32 %i.063, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec65)
  %cmp2266 = icmp sgt i32 %dec65, -1
  br i1 %cmp2266, label %disable_phys.while.body_crit_edge, label %disable_phys.cleanup_crit_edge

disable_phys.cleanup_crit_edge:                   ; preds = %disable_phys
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

disable_phys.while.body_crit_edge:                ; preds = %disable_phys
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %disable_phys.while.body_crit_edge
  %dec67 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec65, %disable_phys.while.body_crit_edge ]
  %23 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phys, align 4
  %arrayidx24 = getelementptr ptr, ptr %24, i32 %dec67
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx24, align 4
  %call25 = tail call i32 @phy_power_off(ptr noundef %26) #6
  %27 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phys, align 4
  %arrayidx27 = getelementptr ptr, ptr %28, i32 %dec67
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx27, align 4
  %call28 = tail call i32 @phy_exit(ptr noundef %30) #6
  %dec = add nsw i32 %dec67, -1
  %cmp22 = icmp sgt i32 %dec67, 0
  br i1 %cmp22, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %disable_phys.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %disable_phys.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %rc.0, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_platform_disable_phys(ptr nocapture noundef readonly %hpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 22
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %phys = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %5) #6
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %i.010
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %9) #6
  %inc = add nuw i32 %i.010, 1
  %10 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_enable_clks(ptr nocapture noundef readonly %hpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %clk_prepare_enable.exit

clk_prepare_enable.exit.thread45:                 ; preds = %if.end.i.4.clk_prepare_enable.exit.thread45_crit_edge, %if.end.i.3.clk_prepare_enable.exit.thread45_crit_edge, %if.end.i.2.clk_prepare_enable.exit.thread45_crit_edge, %if.end.i.1.clk_prepare_enable.exit.thread45_crit_edge
  %c.024.lcssa33.ph = phi i32 [ 4, %if.end.i.4.clk_prepare_enable.exit.thread45_crit_edge ], [ 3, %if.end.i.3.clk_prepare_enable.exit.thread45_crit_edge ], [ 2, %if.end.i.2.clk_prepare_enable.exit.thread45_crit_edge ], [ 1, %if.end.i.1.clk_prepare_enable.exit.thread45_crit_edge ]
  %.lcssa31.ph = phi ptr [ %9, %if.end.i.4.clk_prepare_enable.exit.thread45_crit_edge ], [ %7, %if.end.i.3.clk_prepare_enable.exit.thread45_crit_edge ], [ %5, %if.end.i.2.clk_prepare_enable.exit.thread45_crit_edge ], [ %3, %if.end.i.1.clk_prepare_enable.exit.thread45_crit_edge ]
  %call1.i.lcssa.ph = phi i32 [ %call1.i.4, %if.end.i.4.clk_prepare_enable.exit.thread45_crit_edge ], [ %call1.i.3, %if.end.i.3.clk_prepare_enable.exit.thread45_crit_edge ], [ %call1.i.2, %if.end.i.2.clk_prepare_enable.exit.thread45_crit_edge ], [ %call1.i.1, %if.end.i.1.clk_prepare_enable.exit.thread45_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.lcssa31.ph) #6
  br label %while.body

clk_prepare_enable.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef nonnull %1) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  %arrayidx.1 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.cleanup_crit_edge, label %for.body.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef nonnull %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %for.body.1.while.body_crit_edge

for.body.1.while.body_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.i.1:                                       ; preds = %for.body.1
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef nonnull %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %for.inc.1, label %if.end.i.1.clk_prepare_enable.exit.thread45_crit_edge

if.end.i.1.clk_prepare_enable.exit.thread45_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.thread45

for.inc.1:                                        ; preds = %if.end.i.1
  %arrayidx.2 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %for.body.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %for.body.2.while.body_crit_edge

for.body.2.while.body_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.i.2:                                       ; preds = %for.body.2
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef nonnull %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %for.inc.2, label %if.end.i.2.clk_prepare_enable.exit.thread45_crit_edge

if.end.i.2.clk_prepare_enable.exit.thread45_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.thread45

for.inc.2:                                        ; preds = %if.end.i.2
  %arrayidx.3 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %for.body.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  %call.i.3 = tail call i32 @clk_prepare(ptr noundef nonnull %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %if.end.i.3, label %for.body.3.while.body_crit_edge

for.body.3.while.body_crit_edge:                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.i.3:                                       ; preds = %for.body.3
  %call1.i.3 = tail call i32 @clk_enable(ptr noundef nonnull %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool2.not.i.3 = icmp eq i32 %call1.i.3, 0
  br i1 %tobool2.not.i.3, label %for.inc.3, label %if.end.i.3.clk_prepare_enable.exit.thread45_crit_edge

if.end.i.3.clk_prepare_enable.exit.thread45_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.thread45

for.inc.3:                                        ; preds = %if.end.i.3
  %arrayidx.4 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %for.inc.3.cleanup_crit_edge, label %for.body.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.4:                                       ; preds = %for.inc.3
  %call.i.4 = tail call i32 @clk_prepare(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.i.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.i.4, label %if.end.i.4, label %for.body.4.while.body_crit_edge

for.body.4.while.body_crit_edge:                  ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.i.4:                                       ; preds = %for.body.4
  %call1.i.4 = tail call i32 @clk_enable(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4)
  %tobool2.not.i.4 = icmp eq i32 %call1.i.4, 0
  br i1 %tobool2.not.i.4, label %if.end.i.4.cleanup_crit_edge, label %if.end.i.4.clk_prepare_enable.exit.thread45_crit_edge

if.end.i.4.clk_prepare_enable.exit.thread45_crit_edge: ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.thread45

if.end.i.4.cleanup_crit_edge:                     ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %for.body.4.while.body_crit_edge, %for.body.3.while.body_crit_edge, %for.body.2.while.body_crit_edge, %for.body.1.while.body_crit_edge, %clk_prepare_enable.exit.thread45
  %retval.0.i39 = phi i32 [ %call1.i.lcssa.ph, %clk_prepare_enable.exit.thread45 ], [ %call.i.4, %for.body.4.while.body_crit_edge ], [ %call.i.3, %for.body.3.while.body_crit_edge ], [ %call.i.2, %for.body.2.while.body_crit_edge ], [ %call.i.1, %for.body.1.while.body_crit_edge ]
  %c.0243438 = phi i32 [ %c.024.lcssa33.ph, %clk_prepare_enable.exit.thread45 ], [ 4, %for.body.4.while.body_crit_edge ], [ 3, %for.body.3.while.body_crit_edge ], [ 2, %for.body.2.while.body_crit_edge ], [ 1, %for.body.1.while.body_crit_edge ]
  %dec27 = add nsw i32 %c.0243438, -1
  %arrayidx6 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 %dec27
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %c.0243438)
  %cmp4 = icmp ugt i32 %c.0243438, 1
  br i1 %cmp4, label %while.body.1, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  %dec27.1 = add nsw i32 %c.0243438, -2
  %arrayidx6.1 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 %dec27.1
  %12 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.1, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec27)
  %cmp4.1 = icmp ugt i32 %dec27, 1
  br i1 %cmp4.1, label %while.body.2, label %while.body.1.cleanup_crit_edge

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  %dec27.2 = add nsw i32 %c.0243438, -3
  %arrayidx6.2 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 %dec27.2
  %14 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.2, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec27.1)
  %cmp4.2 = icmp ugt i32 %dec27.1, 1
  br i1 %cmp4.2, label %while.body.3, label %while.body.2.cleanup_crit_edge

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  %dec27.3 = add nsw i32 %c.0243438, -4
  %arrayidx6.3 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 %dec27.3
  %16 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.3, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.3, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.i.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %clk_prepare_enable.exit, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %clk_prepare_enable.exit ], [ 0, %if.end.i.4.cleanup_crit_edge ], [ 0, %for.inc.3.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ], [ 0, %for.inc.1.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ], [ %retval.0.i39, %while.body.3 ], [ %retval.0.i39, %while.body.2.cleanup_crit_edge ], [ %retval.0.i39, %while.body.1.cleanup_crit_edge ], [ %retval.0.i39, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_platform_disable_clks(ptr nocapture noundef readonly %hpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef nonnull %1) #6
  tail call void @clk_unprepare(ptr noundef nonnull %1) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef nonnull %3) #6
  tail call void @clk_unprepare(ptr noundef nonnull %3) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef nonnull %5) #6
  tail call void @clk_unprepare(ptr noundef nonnull %5) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef nonnull %7) #6
  tail call void @clk_unprepare(ptr noundef nonnull %7) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 16, i32 0
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef nonnull %9) #6
  tail call void @clk_unprepare(ptr noundef nonnull %9) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_enable_regulators(ptr nocapture noundef readonly %hpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ahci_regulator = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 19
  %0 = ptrtoint ptr %ahci_regulator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ahci_regulator, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_regulator = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 20
  %2 = ptrtoint ptr %phy_regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_regulator, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.disable_ahci_pwrs_crit_edge

if.end.disable_ahci_pwrs_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ahci_pwrs

for.cond.preheader:                               ; preds = %if.end
  %nports = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 22
  %4 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp48.not = icmp eq i32 %5, 0
  br i1 %cmp48.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %target_pwrs = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %target_pwrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %target_pwrs, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.049
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %call10 = tail call i32 @regulator_enable(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.for.inc_crit_edge, label %while.cond.preheader

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end7
  %dec51 = add i32 %i.049, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec51)
  %cmp1452 = icmp sgt i32 %dec51, -1
  br i1 %cmp1452, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.049, 1
  %10 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec53 = phi i32 [ %dec, %if.end22.while.body_crit_edge ], [ %dec51, %while.cond.preheader.while.body_crit_edge ]
  %12 = ptrtoint ptr %target_pwrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %target_pwrs, align 4
  %arrayidx16 = getelementptr ptr, ptr %13, i32 %dec53
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %while.body.if.end22_crit_edge, label %if.then18

while.body.if.end22_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 @regulator_disable(ptr noundef nonnull %15) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %while.body.if.end22_crit_edge
  %dec = add i32 %dec53, -1
  %cmp14 = icmp sgt i32 %dec, -1
  br i1 %cmp14, label %if.end22.while.body_crit_edge, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %16 = ptrtoint ptr %phy_regulator to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_regulator, align 4
  %call24 = tail call i32 @regulator_disable(ptr noundef %17) #6
  br label %disable_ahci_pwrs

disable_ahci_pwrs:                                ; preds = %while.end, %if.end.disable_ahci_pwrs_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.disable_ahci_pwrs_crit_edge ], [ %call10, %while.end ]
  %18 = ptrtoint ptr %ahci_regulator to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ahci_regulator, align 4
  %call26 = tail call i32 @regulator_disable(ptr noundef %19) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_ahci_pwrs, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %disable_ahci_pwrs ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_platform_disable_regulators(ptr nocapture noundef readonly %hpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 22
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %target_pwrs = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %target_pwrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target_pwrs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %5) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.013, 1
  %6 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ahci_regulator = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 19
  %8 = ptrtoint ptr %ahci_regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ahci_regulator, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %9) #6
  %phy_regulator = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 20
  %10 = ptrtoint ptr %phy_regulator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_regulator, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %11) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_enable_resources(ptr nocapture noundef readonly %hpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ahci_platform_enable_regulators(ptr noundef %hpriv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ahci_platform_enable_clks(ptr noundef %hpriv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.disable_regulator_crit_edge

if.end.disable_regulator_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulator

if.end4:                                          ; preds = %if.end
  %rsts = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 17
  %0 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsts, align 4
  %call5 = tail call i32 @reset_control_deassert(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.disable_clks_crit_edge

if.end4.disable_clks_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clks

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @ahci_platform_enable_phys(ptr noundef %hpriv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %disable_resets

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

disable_resets:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsts, align 4
  %call14 = tail call i32 @reset_control_assert(ptr noundef %3) #6
  br label %disable_clks

disable_clks:                                     ; preds = %disable_resets, %if.end4.disable_clks_crit_edge
  %rc.0 = phi i32 [ %call5, %if.end4.disable_clks_crit_edge ], [ %call9, %disable_resets ]
  tail call void @ahci_platform_disable_clks(ptr noundef %hpriv)
  br label %disable_regulator

disable_regulator:                                ; preds = %disable_clks, %if.end.disable_regulator_crit_edge
  %rc.1 = phi i32 [ %call1, %if.end.disable_regulator_crit_edge ], [ %rc.0, %disable_clks ]
  %nports.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 22
  %4 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %disable_regulator.ahci_platform_disable_regulators.exit_crit_edge, label %for.body.lr.ph.i

disable_regulator.ahci_platform_disable_regulators.exit_crit_edge: ; preds = %disable_regulator
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahci_platform_disable_regulators.exit

for.body.lr.ph.i:                                 ; preds = %disable_regulator
  %target_pwrs.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %target_pwrs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %target_pwrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @regulator_disable(ptr noundef nonnull %9) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %10 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ahci_platform_disable_regulators.exit_crit_edge

for.inc.i.ahci_platform_disable_regulators.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahci_platform_disable_regulators.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ahci_platform_disable_regulators.exit:            ; preds = %for.inc.i.ahci_platform_disable_regulators.exit_crit_edge, %disable_regulator.ahci_platform_disable_regulators.exit_crit_edge
  %ahci_regulator.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 19
  %12 = ptrtoint ptr %ahci_regulator.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ahci_regulator.i, align 4
  %call3.i = tail call i32 @regulator_disable(ptr noundef %13) #6
  %phy_regulator.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 20
  %14 = ptrtoint ptr %phy_regulator.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_regulator.i, align 4
  %call4.i = tail call i32 @regulator_disable(ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %ahci_platform_disable_regulators.exit, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %ahci_platform_disable_regulators.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_platform_disable_resources(ptr nocapture noundef readonly %hpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nports.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 22
  %0 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not.i = icmp eq i32 %1, 0
  br i1 %cmp9.not.i, label %entry.ahci_platform_disable_phys.exit_crit_edge, label %for.body.lr.ph.i

entry.ahci_platform_disable_phys.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahci_platform_disable_phys.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %phys.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 21
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.010.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %5) #6
  %6 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %7, i32 %i.010.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  %call3.i = tail call i32 @phy_exit(ptr noundef %9) #6
  %inc.i = add nuw i32 %i.010.i, 1
  %10 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ahci_platform_disable_phys.exit_crit_edge

for.body.i.ahci_platform_disable_phys.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahci_platform_disable_phys.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ahci_platform_disable_phys.exit:                  ; preds = %for.body.i.ahci_platform_disable_phys.exit_crit_edge, %entry.ahci_platform_disable_phys.exit_crit_edge
  %rsts = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 17
  %12 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rsts, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %13) #6
  tail call void @ahci_platform_disable_clks(ptr noundef %hpriv)
  %14 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12.not.i = icmp eq i32 %15, 0
  br i1 %cmp12.not.i, label %ahci_platform_disable_phys.exit.ahci_platform_disable_regulators.exit_crit_edge, label %for.body.lr.ph.i5

ahci_platform_disable_phys.exit.ahci_platform_disable_regulators.exit_crit_edge: ; preds = %ahci_platform_disable_phys.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahci_platform_disable_regulators.exit

for.body.lr.ph.i5:                                ; preds = %ahci_platform_disable_phys.exit
  %target_pwrs.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 18
  br label %for.body.i7

for.body.i7:                                      ; preds = %for.inc.i.for.body.i7_crit_edge, %for.body.lr.ph.i5
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i5 ], [ %inc.i9, %for.inc.i.for.body.i7_crit_edge ]
  %16 = ptrtoint ptr %target_pwrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %target_pwrs.i, align 4
  %arrayidx.i6 = getelementptr ptr, ptr %17, i32 %i.013.i
  %18 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i6, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.i7.for.inc.i_crit_edge, label %if.end.i

for.body.i7.for.inc.i_crit_edge:                  ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i8 = tail call i32 @regulator_disable(ptr noundef nonnull %19) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i7.for.inc.i_crit_edge
  %inc.i9 = add nuw i32 %i.013.i, 1
  %20 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nports.i, align 4
  %cmp.i10 = icmp ult i32 %inc.i9, %21
  br i1 %cmp.i10, label %for.inc.i.for.body.i7_crit_edge, label %for.inc.i.ahci_platform_disable_regulators.exit_crit_edge

for.inc.i.ahci_platform_disable_regulators.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ahci_platform_disable_regulators.exit

for.inc.i.for.body.i7_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i7

ahci_platform_disable_regulators.exit:            ; preds = %for.inc.i.ahci_platform_disable_regulators.exit_crit_edge, %ahci_platform_disable_phys.exit.ahci_platform_disable_regulators.exit_crit_edge
  %ahci_regulator.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 19
  %22 = ptrtoint ptr %ahci_regulator.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ahci_regulator.i, align 4
  %call3.i11 = tail call i32 @regulator_disable(ptr noundef %23) #6
  %phy_regulator.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 20
  %24 = ptrtoint ptr %phy_regulator.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_regulator.i, align 4
  %call4.i = tail call i32 @regulator_disable(ptr noundef %25) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef %flags) #0 align 64 {
entry:
  %port = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devres_open_group(ptr noundef %dev1, ptr noundef null, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup135_crit_edge, label %if.end

entry.cleanup135_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

if.end:                                           ; preds = %entry
  %call3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @ahci_platform_put_resources, i32 noundef 132, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.err_out_crit_edge, label %if.end6

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end6:                                          ; preds = %if.end
  tail call void @devres_add(ptr noundef %dev1, ptr noundef nonnull %call3) #6
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call7) #6
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 3
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call8, ptr %mmio, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call8 to i32
  br label %err_out

if.end19:                                         ; preds = %if.end6
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %call17 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i222 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.end19.if.then21_crit_edge, label %if.end19.1

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.then21:                                        ; preds = %if.end19.4.if.then21_crit_edge, %if.end19.3.if.then21_crit_edge, %if.end19.2.if.then21_crit_edge, %if.end19.1.if.then21_crit_edge, %if.end19.if.then21_crit_edge
  %clk.0.lcssa = phi ptr [ %call17, %if.end19.if.then21_crit_edge ], [ %call18.1, %if.end19.1.if.then21_crit_edge ], [ %call18.2, %if.end19.2.if.then21_crit_edge ], [ %call18.3, %if.end19.3.if.then21_crit_edge ], [ %call18.4, %if.end19.4.if.then21_crit_edge ]
  %cmp23 = icmp eq ptr %clk.0.lcssa, inttoptr (i32 -517 to ptr)
  br i1 %cmp23, label %if.then21.err_out_crit_edge, label %if.then21.for.end_crit_edge

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then21.err_out_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end19.1:                                       ; preds = %if.end19
  %arrayidx = getelementptr %struct.ahci_host_priv, ptr %call3, i32 0, i32 16, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call17, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call18.1 = tail call ptr @of_clk_get(ptr noundef %4, i32 noundef 1) #6
  %cmp.i222.1 = icmp ugt ptr %call18.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.1, label %if.end19.1.if.then21_crit_edge, label %if.end19.2

if.end19.1.if.then21_crit_edge:                   ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end19.2:                                       ; preds = %if.end19.1
  %arrayidx.1 = getelementptr %struct.ahci_host_priv, ptr %call3, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18.1, ptr %arrayidx.1, align 4
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call18.2 = tail call ptr @of_clk_get(ptr noundef %7, i32 noundef 2) #6
  %cmp.i222.2 = icmp ugt ptr %call18.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.2, label %if.end19.2.if.then21_crit_edge, label %if.end19.3

if.end19.2.if.then21_crit_edge:                   ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end19.3:                                       ; preds = %if.end19.2
  %arrayidx.2 = getelementptr %struct.ahci_host_priv, ptr %call3, i32 0, i32 16, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18.2, ptr %arrayidx.2, align 4
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call18.3 = tail call ptr @of_clk_get(ptr noundef %10, i32 noundef 3) #6
  %cmp.i222.3 = icmp ugt ptr %call18.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.3, label %if.end19.3.if.then21_crit_edge, label %if.end19.4

if.end19.3.if.then21_crit_edge:                   ; preds = %if.end19.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end19.4:                                       ; preds = %if.end19.3
  %arrayidx.3 = getelementptr %struct.ahci_host_priv, ptr %call3, i32 0, i32 16, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18.3, ptr %arrayidx.3, align 4
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call18.4 = tail call ptr @of_clk_get(ptr noundef %13, i32 noundef 4) #6
  %cmp.i222.4 = icmp ugt ptr %call18.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.4, label %if.end19.4.if.then21_crit_edge, label %if.end26.4

if.end19.4.if.then21_crit_edge:                   ; preds = %if.end19.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end26.4:                                       ; preds = %if.end19.4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.4 = getelementptr %struct.ahci_host_priv, ptr %call3, i32 0, i32 16, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call18.4, ptr %arrayidx.4, align 4
  br label %for.end

for.end:                                          ; preds = %if.end26.4, %if.then21.for.end_crit_edge
  %call27 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %ahci_regulator = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 19
  %15 = ptrtoint ptr %ahci_regulator to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call27, ptr %ahci_regulator, align 4
  %cmp.i223 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %if.then30, label %if.end36

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call27 to i32
  br label %err_out

if.end36:                                         ; preds = %for.end
  %call37 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %phy_regulator = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 20
  %17 = ptrtoint ptr %phy_regulator to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call37, ptr %phy_regulator, align 4
  %cmp.i224 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call37 to i32
  br label %err_out

if.end43:                                         ; preds = %if.end36
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.end43.if.end53_crit_edge, label %if.then45

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then45:                                        ; preds = %if.end43
  %call.i = tail call ptr @devm_reset_control_array_get(ptr noundef %dev1, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %rsts = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 17
  %19 = ptrtoint ptr %rsts to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %rsts, align 4
  %cmp.i225 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then49, label %if.then45.if.end53_crit_edge

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call.i to i32
  br label %err_out

if.end53:                                         ; preds = %if.then45.if.end53_crit_edge, %if.end43.if.end53_crit_edge
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call.i226 = tail call ptr @of_get_next_child(ptr noundef %22, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i226, null
  br i1 %cmp.not5.i, label %if.end53.of_get_child_count.exit_crit_edge, label %if.end53.for.body.i_crit_edge

if.end53.for.body.i_crit_edge:                    ; preds = %if.end53
  br label %for.body.i

if.end53.of_get_child_count.exit_crit_edge:       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end53.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end53.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i226, %if.end53.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %22, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.of_get_child_count.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit

of_get_child_count.exit:                          ; preds = %for.body.i.of_get_child_count.exit_crit_edge, %if.end53.of_get_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end53.of_get_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_child_count.exit_crit_edge ]
  %nports = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.lcssa.i)
  %tobool56.not = icmp eq i32 %num.0.lcssa.i, 0
  %spec.select = select i1 %tobool56.not, i32 1, i32 %num.0.lcssa.i
  %23 = ptrtoint ptr %nports to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %nports, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 4) #6
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !105

devm_kcalloc.exit.thread:                         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  %phys239 = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 21
  %26 = ptrtoint ptr %phys239 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %phys239, align 4
  br label %err_out

devm_kcalloc.exit:                                ; preds = %of_get_child_count.exit
  %27 = extractvalue { i32, i1 } %24, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %27, i32 noundef 3520) #6
  %phys = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 21
  %28 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i, ptr %phys, align 4
  %tobool63.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool63.not, label %devm_kcalloc.exit.err_out_crit_edge, label %if.end65

devm_kcalloc.exit.err_out_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end65:                                         ; preds = %devm_kcalloc.exit
  %29 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nports, align 4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 4) #6
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !105

kcalloc.exit.thread:                              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %target_pwrs242 = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 18
  %33 = ptrtoint ptr %target_pwrs242 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %target_pwrs242, align 4
  br label %err_out

if.end7.i.i:                                      ; preds = %if.end65
  %34 = extractvalue { i32, i1 } %31, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #9
  %target_pwrs = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 18
  %35 = ptrtoint ptr %target_pwrs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call8.i.i, ptr %target_pwrs, align 4
  %tobool69.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool69.not, label %if.end7.i.i.err_out_crit_edge, label %if.end71

if.end7.i.i.err_out_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end71:                                         ; preds = %if.end7.i.i
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  br i1 %tobool56.not, label %if.else121, label %if.then73

if.then73:                                        ; preds = %if.end71
  %call75 = tail call ptr @of_get_next_child(ptr noundef %37, ptr noundef null) #6
  %cmp77.not270 = icmp eq ptr %call75, null
  br i1 %cmp77.not270, label %if.then73.do.end114_crit_edge, label %if.then73.for.body78_crit_edge

if.then73.for.body78_crit_edge:                   ; preds = %if.then73
  br label %for.body78

if.then73.do.end114_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114

for.body78:                                       ; preds = %for.inc106.for.body78_crit_edge, %if.then73.for.body78_crit_edge
  %mask_port_map.0275 = phi i32 [ %mask_port_map.1.ph, %for.inc106.for.body78_crit_edge ], [ 0, %if.then73.for.body78_crit_edge ]
  %enabled_ports.0273 = phi i32 [ %enabled_ports.1.ph, %for.inc106.for.body78_crit_edge ], [ 0, %if.then73.for.body78_crit_edge ]
  %child.0271 = phi ptr [ %call108, %for.inc106.for.body78_crit_edge ], [ %call75, %if.then73.for.body78_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #6
  %38 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %port, align 4, !annotation !106
  %call79 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %child.0271) #6
  br i1 %call79, label %if.end81, label %for.body78.for.inc106_crit_edge

for.body78.for.inc106_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc106

if.end81:                                         ; preds = %for.body78
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0271, ptr noundef nonnull @.str.3, ptr noundef nonnull %port, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool83.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool83.not, label %if.end85, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %if.end81
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %41 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp87.not = icmp ult i32 %40, %42
  br i1 %cmp87.not, label %if.end89, label %do.end

do.end:                                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %40) #10
  br label %for.inc106

if.end89:                                         ; preds = %if.end85
  %shl = shl nuw i32 1, %40
  %or = or i32 %shl, %mask_port_map.0275
  %call90 = call ptr @of_platform_device_create(ptr noundef nonnull %child.0271, ptr noundef null, ptr noundef null) #6
  %call91 = call ptr @of_find_device_by_node(ptr noundef nonnull %child.0271) #6
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.end89.if.end99_crit_edge, label %if.then93

if.end89.if.end99_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then93:                                        ; preds = %if.end89
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %dev94 = getelementptr inbounds %struct.platform_device, ptr %call91, i32 0, i32 3
  %call.i229 = call ptr @regulator_get(ptr noundef %dev94, ptr noundef nonnull @.str.24) #6
  %cmp.i.i = icmp ugt ptr %call.i229, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ahci_platform_get_regulator.exit, label %ahci_platform_get_regulator.exit.thread

ahci_platform_get_regulator.exit.thread:          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %target_pwrs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %target_pwrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %46, i32 %44
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i229, ptr %arrayidx.i, align 4
  br label %if.end99

ahci_platform_get_regulator.exit:                 ; preds = %if.then93
  %cmp96 = icmp eq ptr %call.i229, inttoptr (i32 -517 to ptr)
  br i1 %cmp96, label %ahci_platform_get_regulator.exit.cleanup_crit_edge, label %ahci_platform_get_regulator.exit.if.end99_crit_edge

ahci_platform_get_regulator.exit.if.end99_crit_edge: ; preds = %ahci_platform_get_regulator.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

ahci_platform_get_regulator.exit.cleanup_crit_edge: ; preds = %ahci_platform_get_regulator.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end99:                                         ; preds = %ahci_platform_get_regulator.exit.if.end99_crit_edge, %ahci_platform_get_regulator.exit.thread, %if.end89.if.end99_crit_edge
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %call100 = call fastcc i32 @ahci_platform_get_phy(ptr noundef nonnull %call3, i32 noundef %49, ptr noundef %dev1, ptr noundef nonnull %child.0271)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end103:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %inc104 = add i32 %enabled_ports.0273, 1
  br label %for.inc106

cleanup:                                          ; preds = %if.end99.cleanup_crit_edge, %ahci_platform_get_regulator.exit.cleanup_crit_edge, %if.end81.cleanup_crit_edge
  %rc.3 = phi i32 [ -22, %if.end81.cleanup_crit_edge ], [ -517, %ahci_platform_get_regulator.exit.cleanup_crit_edge ], [ %call100, %if.end99.cleanup_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0271) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #6
  br label %err_out

for.inc106:                                       ; preds = %if.end103, %do.end, %for.body78.for.inc106_crit_edge
  %enabled_ports.1.ph = phi i32 [ %enabled_ports.0273, %for.body78.for.inc106_crit_edge ], [ %inc104, %if.end103 ], [ %enabled_ports.0273, %do.end ]
  %mask_port_map.1.ph = phi i32 [ %mask_port_map.0275, %for.body78.for.inc106_crit_edge ], [ %or, %if.end103 ], [ %mask_port_map.0275, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #6
  %50 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node, align 8
  %call108 = call ptr @of_get_next_child(ptr noundef %51, ptr noundef nonnull %child.0271) #6
  %cmp77.not = icmp eq ptr %call108, null
  br i1 %cmp77.not, label %for.end109, label %for.inc106.for.body78_crit_edge

for.inc106.for.body78_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body78

for.end109:                                       ; preds = %for.inc106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled_ports.1.ph)
  %tobool110.not = icmp eq i32 %enabled_ports.1.ph, 0
  br i1 %tobool110.not, label %for.end109.do.end114_crit_edge, label %if.end115

for.end109.do.end114_crit_edge:                   ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114

do.end114:                                        ; preds = %for.end109.do.end114_crit_edge, %if.then73.do.end114_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %err_out

if.end115:                                        ; preds = %for.end109
  %mask_port_map116 = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 2
  %52 = ptrtoint ptr %mask_port_map116 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mask_port_map116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool117.not = icmp eq i32 %53, 0
  br i1 %tobool117.not, label %if.then118, label %if.end115.if.end131_crit_edge

if.end115.if.end131_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %mask_port_map116 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mask_port_map.1.ph, ptr %mask_port_map116, align 4
  br label %if.end131

if.else121:                                       ; preds = %if.end71
  %call123 = tail call fastcc i32 @ahci_platform_get_phy(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef %dev1, ptr noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.else121.err_out_crit_edge

if.else121.err_out_crit_edge:                     ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end126:                                        ; preds = %if.else121
  %call.i230 = tail call ptr @regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.24) #6
  %cmp.i.i231 = icmp ugt ptr %call.i230, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i231, label %ahci_platform_get_regulator.exit236, label %ahci_platform_get_regulator.exit236.thread

ahci_platform_get_regulator.exit236.thread:       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %target_pwrs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %target_pwrs, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i230, ptr %56, align 4
  br label %if.end131

ahci_platform_get_regulator.exit236:              ; preds = %if.end126
  %cmp128 = icmp eq ptr %call.i230, inttoptr (i32 -517 to ptr)
  br i1 %cmp128, label %ahci_platform_get_regulator.exit236.err_out_crit_edge, label %ahci_platform_get_regulator.exit236.if.end131_crit_edge

ahci_platform_get_regulator.exit236.if.end131_crit_edge: ; preds = %ahci_platform_get_regulator.exit236
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

ahci_platform_get_regulator.exit236.err_out_crit_edge: ; preds = %ahci_platform_get_regulator.exit236
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end131:                                        ; preds = %ahci_platform_get_regulator.exit236.if.end131_crit_edge, %ahci_platform_get_regulator.exit236.thread, %if.then118, %if.end115.if.end131_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i237 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  %got_runtime_pm = getelementptr inbounds %struct.ahci_host_priv, ptr %call3, i32 0, i32 15
  %58 = ptrtoint ptr %got_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %got_runtime_pm, align 4
  call void @devres_remove_group(ptr noundef %dev1, ptr noundef null) #6
  br label %cleanup135

err_out:                                          ; preds = %ahci_platform_get_regulator.exit236.err_out_crit_edge, %if.else121.err_out_crit_edge, %do.end114, %cleanup, %if.end7.i.i.err_out_crit_edge, %kcalloc.exit.thread, %devm_kcalloc.exit.err_out_crit_edge, %devm_kcalloc.exit.thread, %if.then49, %if.then40, %if.then30, %if.then21.err_out_crit_edge, %if.then11, %if.end.err_out_crit_edge
  %rc.4 = phi i32 [ %1, %if.then11 ], [ -517, %if.then21.err_out_crit_edge ], [ %16, %if.then30 ], [ %18, %if.then40 ], [ %20, %if.then49 ], [ %rc.3, %cleanup ], [ -19, %do.end114 ], [ %call123, %if.else121.err_out_crit_edge ], [ -517, %ahci_platform_get_regulator.exit236.err_out_crit_edge ], [ -12, %if.end.err_out_crit_edge ], [ -12, %devm_kcalloc.exit.err_out_crit_edge ], [ -12, %if.end7.i.i.err_out_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %kcalloc.exit.thread ]
  %call133 = call i32 @devres_release_group(ptr noundef %dev1, ptr noundef null) #6
  %59 = inttoptr i32 %rc.4 to ptr
  br label %cleanup135

cleanup135:                                       ; preds = %err_out, %if.end131, %entry.cleanup135_crit_edge
  %retval.0 = phi ptr [ %59, %err_out ], [ %call3, %if.end131 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup135_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_platform_put_resources(ptr noundef %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %got_runtime_pm = getelementptr inbounds %struct.ahci_host_priv, ptr %res, i32 0, i32 15
  %0 = ptrtoint ptr %got_runtime_pm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %got_runtime_pm, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.ahci_host_priv, ptr %res, i32 0, i32 16, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end
  tail call void @clk_put(ptr noundef nonnull %3) #6
  %arrayidx.1 = getelementptr %struct.ahci_host_priv, ptr %res, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool1.not.1 = icmp eq ptr %5, null
  br i1 %tobool1.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.body
  tail call void @clk_put(ptr noundef nonnull %5) #6
  %arrayidx.2 = getelementptr %struct.ahci_host_priv, ptr %res, i32 0, i32 16, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool1.not.2 = icmp eq ptr %7, null
  br i1 %tobool1.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  tail call void @clk_put(ptr noundef nonnull %7) #6
  %arrayidx.3 = getelementptr %struct.ahci_host_priv, ptr %res, i32 0, i32 16, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %tobool1.not.3 = icmp eq ptr %9, null
  br i1 %tobool1.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  tail call void @clk_put(ptr noundef nonnull %9) #6
  %arrayidx.4 = getelementptr %struct.ahci_host_priv, ptr %res, i32 0, i32 16, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  %tobool1.not.4 = icmp eq ptr %11, null
  br i1 %tobool1.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_put(ptr noundef nonnull %11) #6
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %nports = getelementptr inbounds %struct.ahci_host_priv, ptr %res, i32 0, i32 22
  %12 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp537.not = icmp eq i32 %13, 0
  br i1 %cmp537.not, label %for.end.for.end17_crit_edge, label %for.body6.lr.ph

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end17

for.body6.lr.ph:                                  ; preds = %for.end
  %target_pwrs = getelementptr inbounds %struct.ahci_host_priv, ptr %res, i32 0, i32 18
  br label %for.body6

for.body6:                                        ; preds = %for.inc15.for.body6_crit_edge, %for.body6.lr.ph
  %c.138 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc16, %for.inc15.for.body6_crit_edge ]
  %14 = ptrtoint ptr %target_pwrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %target_pwrs, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %for.body6.for.inc15_crit_edge, label %land.lhs.true

for.body6.for.inc15_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc15

land.lhs.true:                                    ; preds = %for.body6
  %arrayidx9 = getelementptr ptr, ptr %15, i32 %c.138
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %land.lhs.true.for.inc15_crit_edge, label %if.then11

land.lhs.true.for.inc15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc15

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @regulator_put(ptr noundef nonnull %17) #6
  br label %for.inc15

for.inc15:                                        ; preds = %if.then11, %land.lhs.true.for.inc15_crit_edge, %for.body6.for.inc15_crit_edge
  %inc16 = add nuw i32 %c.138, 1
  %18 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nports, align 4
  %cmp5 = icmp ult i32 %inc16, %19
  br i1 %cmp5, label %for.inc15.for.body6_crit_edge, label %for.inc15.for.end17_crit_edge

for.inc15.for.end17_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end17

for.inc15.for.body6_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.end17:                                        ; preds = %for.inc15.for.end17_crit_edge, %for.end.for.end17_crit_edge
  %target_pwrs18 = getelementptr inbounds %struct.ahci_host_priv, ptr %res, i32 0, i32 18
  %20 = ptrtoint ptr %target_pwrs18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %target_pwrs18, align 4
  tail call void @kfree(ptr noundef %21) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahci_platform_get_phy(ptr nocapture noundef readonly %hpriv, i32 noundef %port, ptr noundef %dev, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_of_phy_get(ptr noundef %dev, ptr noundef %node, ptr noundef null) #6
  %phys = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 21
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arrayidx, align 4
  %3 = load ptr, ptr %phys, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %port
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %6, label %do.end15 [
    i32 -38, label %sw.bb
    i32 -19, label %if.end.sw.bb10_crit_edge
    i32 -517, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

sw.bb:                                            ; preds = %if.end
  %call7 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.25, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %sw.bb.sw.bb10_crit_edge, label %do.end

sw.bb.sw.bb10_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef %node) #10
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge
  %8 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys, align 4
  %arrayidx12 = getelementptr ptr, ptr %9, i32 %port
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx12, align 4
  br label %cleanup

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %node, i32 noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %sw.bb10, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %6, %do.end15 ], [ %6, %if.end.cleanup_crit_edge ], [ 0, %sw.bb10 ], [ -38, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %hpriv, ptr nocapture noundef readonly %pi_template, ptr noundef %sht) #0 align 64 {
entry:
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #6
  %0 = getelementptr inbounds %struct.ata_port_info, ptr %pi, i32 0, i32 6
  %1 = call ptr @memcpy(ptr %pi, ptr %pi_template, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %2 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pi, ptr %ppi, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %2, align 4
  %call = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %irq4 = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 24
  %5 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %irq4, align 4
  %6 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hpriv, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  call void @ahci_save_initial_config(ptr noundef %dev1, ptr noundef %hpriv) #6
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 4
  %10 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap, align 4
  %and = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end3.if.end8_crit_edge, label %if.then6

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pi, align 4
  %or = or i32 %13, 1024
  store i32 %or, ptr %pi, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3.if.end8_crit_edge
  %and10 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pi, align 4
  %or14 = or i32 %15, 524288
  store i32 %or14, ptr %pi, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  call void @ahci_set_em_messages(ptr noundef %hpriv, ptr noundef nonnull %pi) #6
  %16 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cap, align 4
  %and.i = and i32 %17, 31
  %add.i = add nuw nsw i32 %and.i, 1
  %port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 7
  %18 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  %20 = call i32 @llvm.ctlz.i32(i32 %19, i1 true) #6, !range !108
  %sub.i = sub nuw nsw i32 32, %20
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %21 = call i32 @llvm.umax.i32(i32 %add.i, i32 %cond.i)
  %call20 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef %21) #6
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end15.cleanup_crit_edge, label %if.end23

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %private_data24 = getelementptr inbounds %struct.ata_host, ptr %call20, i32 0, i32 5
  %22 = ptrtoint ptr %private_data24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %hpriv, ptr %private_data24, align 4
  %23 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cap, align 4
  %and26 = and i32 %24, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end23.if.then29_crit_edge, label %lor.lhs.false

if.end23.if.then29_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahci_ignore_sss to i32))
  %25 = load i32, ptr @ahci_ignore_sss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool28.not = icmp eq i32 %25, 0
  br i1 %tobool28.not, label %do.end, label %lor.lhs.false.if.then29_crit_edge

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end23.if.then29_crit_edge
  %flags30 = getelementptr inbounds %struct.ata_host, ptr %call20, i32 0, i32 7
  %26 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags30, align 4
  %or31 = or i32 %27, 4
  store i32 %or31, ptr %flags30, align 4
  br label %if.end32

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.then29
  %28 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pi, align 4
  %and34 = and i32 %29, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end38_crit_edge, label %if.then36

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = call i32 @ahci_reset_em(ptr noundef nonnull %call20) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  %n_ports39 = getelementptr inbounds %struct.ata_host, ptr %call20, i32 0, i32 3
  %30 = ptrtoint ptr %n_ports39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_ports39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp40119.not = icmp eq i32 %31, 0
  br i1 %cmp40119.not, label %if.end38.for.end_crit_edge, label %for.body.lr.ph

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end38
  %em_msg_type = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end51.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %call20, i32 0, i32 12, i32 %i.0120
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %call41 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %33, ptr noundef nonnull @.str.15, ptr noundef %call41) #6
  %port_no = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_no, align 4
  %mul = shl i32 %35, 7
  %add = add i32 %mul, 256
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %33, ptr noundef nonnull @.str.16, i32 noundef %add) #6
  %flags42 = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags42, align 4
  %and43 = and i32 %37, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %for.body.if.end46_crit_edge, label %if.then45

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %em_msg_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %em_msg_type, align 4
  %em_message_type = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 47
  %40 = ptrtoint ptr %em_message_type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %em_message_type, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %for.body.if.end46_crit_edge
  %41 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_map, align 4
  %shl = shl nuw i32 1, %i.0120
  %and48 = and i32 %42, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 1
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ata_dummy_port_ops, ptr %ops, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46.if.end51_crit_edge
  %inc = add nuw i32 %i.0120, 1
  %44 = ptrtoint ptr %n_ports39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_ports39, align 4
  %cmp40 = icmp ult i32 %inc, %45
  br i1 %cmp40, label %if.end51.for.body_crit_edge, label %if.end51.for.end_crit_edge

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end51.for.end_crit_edge, %if.end38.for.end_crit_edge
  %46 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool54.not = icmp sgt i32 %47, -1
  br i1 %tobool54.not, label %for.end.if.end63_crit_edge, label %if.then55

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then55:                                        ; preds = %for.end
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %48 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %do.end61

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #6
  br label %if.end63

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end63:                                         ; preds = %dma_coerce_mask_and_coherent.exit.thread, %for.end.if.end63_crit_edge
  %call64 = call i32 @ahci_reset_controller(ptr noundef nonnull %call20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void @ahci_init_controller(ptr noundef nonnull %call20) #6
  call void @ahci_print_info(ptr noundef nonnull %call20, ptr noundef nonnull @.str.21) #6
  %call68 = call i32 @ahci_host_activate(ptr noundef nonnull %call20, ptr noundef %sht) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end63.cleanup_crit_edge, %do.end61, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end61 ], [ %call68, %if.end67 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_save_initial_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_set_em_messages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_em(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_init_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_print_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_host_activate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_platform_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio1, align 4
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp39.not = icmp eq i32 %7, 0
  br i1 %cmp39.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %1, i32 0, i32 12, i32 %i.040
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %freeze = getelementptr inbounds %struct.ata_port_operations, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %freeze to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %freeze, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %port_stop = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %port_stop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_stop, align 4
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef %9) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %inc = add nuw i32 %i.040, 1
  %18 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %21 = and i32 %20, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #6, !srcloc !112
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_ports, align 4
  %sub = sub i32 31, %24
  %shr = lshr i32 -1, %sub
  %25 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %add.ptr24 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %25) #6, !srcloc !112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_suspend_host(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %9 = and i32 %8, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !112
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %and16 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end.if.end19_crit_edge, label %if.then18

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end
  %nports.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 22
  %13 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.not.i = icmp eq i32 %14, 0
  br i1 %cmp9.not.i, label %if.then18.if.end19_crit_edge, label %for.body.lr.ph.i

if.then18.if.end19_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.body.lr.ph.i:                                 ; preds = %if.then18
  %phys.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 21
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phys.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %i.010.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %18) #6
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phys.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %20, i32 %i.010.i
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx2.i, align 4
  %call3.i = tail call i32 @phy_exit(ptr noundef %22) #6
  %inc.i = add nuw i32 %i.010.i, 1
  %23 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end19_crit_edge

for.body.i.if.end19_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end19:                                         ; preds = %for.body.i.if.end19_crit_edge, %if.then18.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %call20 = tail call i32 @ata_host_suspend(ptr noundef %1, [1 x i32] [i32 2]) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call20, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_resume_host(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ahci_reset_controller(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahci_init_controller(ptr noundef %1) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %and = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @ahci_platform_enable_phys(ptr noundef %3)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  tail call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @ahci_platform_suspend_host(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahci_platform_disable_resources(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @ahci_platform_enable_resources(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %power.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %8 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end3.i_crit_edge

if.end.if.end3.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call i32 @ahci_reset_controller(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %disable_resources

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahci_init_controller(ptr noundef %5) #6
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %if.end.if.end3.i_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %and.i = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end5_crit_edge, label %if.then5.i

if.end3.i.if.end5_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 @ahci_platform_enable_phys(ptr noundef %7) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then5.i, %if.end3.i.if.end5_crit_edge
  tail call void @ata_host_resume(ptr noundef %5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  br label %cleanup

disable_resources:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahci_platform_disable_resources(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %disable_resources, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %disable_resources ], [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !83, !85, !87, !89, !90, !91, !92, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @ahci_platform_ops, !1, !"ahci_platform_ops", i1 false, i1 false}
!1 = !{!"../drivers/ata/libahci_platform.c", i32 29, i32 28}
!2 = !{ptr @__ksymtab_ahci_platform_ops, !3, !"__ksymtab_ahci_platform_ops", i1 false, i1 false}
!3 = !{!"../drivers/ata/libahci_platform.c", i32 33, i32 1}
!4 = !{ptr @__ksymtab_ahci_platform_enable_phys, !5, !"__ksymtab_ahci_platform_enable_phys", i1 false, i1 false}
!5 = !{!"../drivers/ata/libahci_platform.c", i32 77, i32 1}
!6 = !{ptr @__ksymtab_ahci_platform_disable_phys, !7, !"__ksymtab_ahci_platform_disable_phys", i1 false, i1 false}
!7 = !{!"../drivers/ata/libahci_platform.c", i32 94, i32 1}
!8 = !{ptr @__ksymtab_ahci_platform_enable_clks, !9, !"__ksymtab_ahci_platform_enable_clks", i1 false, i1 false}
!9 = !{!"../drivers/ata/libahci_platform.c", i32 123, i32 1}
!10 = !{ptr @__ksymtab_ahci_platform_disable_clks, !11, !"__ksymtab_ahci_platform_disable_clks", i1 false, i1 false}
!11 = !{!"../drivers/ata/libahci_platform.c", i32 140, i32 1}
!12 = !{ptr @__ksymtab_ahci_platform_enable_regulators, !13, !"__ksymtab_ahci_platform_enable_regulators", i1 false, i1 false}
!13 = !{!"../drivers/ata/libahci_platform.c", i32 187, i32 1}
!14 = !{ptr @__ksymtab_ahci_platform_disable_regulators, !15, !"__ksymtab_ahci_platform_disable_regulators", i1 false, i1 false}
!15 = !{!"../drivers/ata/libahci_platform.c", i32 209, i32 1}
!16 = !{ptr @__ksymtab_ahci_platform_enable_resources, !17, !"__ksymtab_ahci_platform_enable_resources", i1 false, i1 false}
!17 = !{!"../drivers/ata/libahci_platform.c", i32 260, i32 1}
!18 = !{ptr @__ksymtab_ahci_platform_disable_resources, !19, !"__ksymtab_ahci_platform_disable_resources", i1 false, i1 false}
!19 = !{!"../drivers/ata/libahci_platform.c", i32 283, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ata/libahci_platform.c", i32 398, i32 10}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/libahci_platform.c", i32 433, i32 50}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/libahci_platform.c", i32 440, i32 49}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/libahci_platform.c", i32 487, i32 36}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/libahci_platform.c", i32 494, i32 5}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ahci_platform_get_resources._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @ahci_platform_get_resources._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/libahci_platform.c", i32 523, i32 4}
!38 = !{ptr @ahci_platform_get_resources._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ahci_platform_get_resources._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_ahci_platform_get_resources, !41, !"__ksymtab_ahci_platform_get_resources", i1 false, i1 false}
!41 = !{!"../drivers/ata/libahci_platform.c", i32 554, i32 1}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/libahci_platform.c", i32 618, i32 3}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ahci_platform_init_host._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @ahci_platform_init_host._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/ata/libahci_platform.c", i32 626, i32 21}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/libahci_platform.c", i32 628, i32 21}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ata/libahci_platform.c", i32 642, i32 4}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ahci_platform_init_host._entry.17, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ahci_platform_init_host._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/libahci_platform.c", i32 652, i32 24}
!59 = !{ptr @__ksymtab_ahci_platform_init_host, !60, !"__ksymtab_ahci_platform_init_host", i1 false, i1 false}
!60 = !{!"../drivers/ata/libahci_platform.c", i32 656, i32 1}
!61 = !{ptr @__ksymtab_ahci_platform_shutdown, !62, !"__ksymtab_ahci_platform_shutdown", i1 false, i1 false}
!62 = !{!"../drivers/ata/libahci_platform.c", i32 697, i32 1}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ata/libahci_platform.c", i32 719, i32 3}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ahci_platform_suspend_host._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ahci_platform_suspend_host._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @__ksymtab_ahci_platform_suspend_host, !69, !"__ksymtab_ahci_platform_suspend_host", i1 false, i1 false}
!69 = !{!"../drivers/ata/libahci_platform.c", i32 738, i32 1}
!70 = !{ptr @__ksymtab_ahci_platform_resume_host, !71, !"__ksymtab_ahci_platform_resume_host", i1 false, i1 false}
!71 = !{!"../drivers/ata/libahci_platform.c", i32 772, i32 1}
!72 = !{ptr @__ksymtab_ahci_platform_suspend, !73, !"__ksymtab_ahci_platform_suspend", i1 false, i1 false}
!73 = !{!"../drivers/ata/libahci_platform.c", i32 798, i32 1}
!74 = !{ptr @__ksymtab_ahci_platform_resume, !75, !"__ksymtab_ahci_platform_resume", i1 false, i1 false}
!75 = !{!"../drivers/ata/libahci_platform.c", i32 836, i32 1}
!76 = !{ptr @__UNIQUE_ID_description322, !77, !"__UNIQUE_ID_description322", i1 false, i1 false}
!77 = !{!"../drivers/ata/libahci_platform.c", i32 839, i32 1}
!78 = !{ptr @__UNIQUE_ID_author323, !79, !"__UNIQUE_ID_author323", i1 false, i1 false}
!79 = !{!"../drivers/ata/libahci_platform.c", i32 840, i32 1}
!80 = !{ptr @__UNIQUE_ID_file324, !81, !"__UNIQUE_ID_file324", i1 false, i1 false}
!81 = !{!"../drivers/ata/libahci_platform.c", i32 841, i32 1}
!82 = !{ptr @__UNIQUE_ID_license325, !81, !"__UNIQUE_ID_license325", i1 false, i1 false}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/ata/libahci_platform.c", i32 356, i32 34}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/ata/libahci_platform.c", i32 323, i32 30}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ata/libahci_platform.c", i32 324, i32 4}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ahci_platform_get_phy._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ahci_platform_get_phy._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/libahci_platform.c", i32 340, i32 3}
!94 = !{ptr @ahci_platform_get_phy._entry.28, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ahci_platform_get_phy._entry_ptr.30, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{!"auto-init"}
!107 = !{i8 0, i8 2}
!108 = !{i32 0, i32 33}
!109 = !{i64 2156518147}
!110 = !{i64 4702592}
!111 = !{i64 2156519064}
!112 = !{i64 4702174}
!113 = !{i64 2156519569}
!114 = !{i64 2156520859}
!115 = !{i64 2156525861}
!116 = !{i64 2156526073}
!117 = !{i64 2156526724}
