; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/jr.c_pt.bc'
source_filename = "../drivers/crypto/caam/jr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+caam_jr_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_caam_jr_alloc\09\09\09\09"
module asm "\09.long\09__crc_caam_jr_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_jr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_jr_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_caam_jr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+caam_jr_free\22, \22a\22\09"
module asm "\09.weak\09__crc_caam_jr_free\09\09\09\09"
module asm "\09.long\09__crc_caam_jr_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_jr_free:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_jr_free\22\09\09\09\09\09"
module asm "__kstrtabns_caam_jr_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+caam_jr_enqueue\22, \22a\22\09"
module asm "\09.weak\09__crc_caam_jr_enqueue\09\09\09\09"
module asm "\09.long\09__crc_caam_jr_enqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_jr_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_jr_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_caam_jr_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.jr_driver_data = type { %struct.list_head, %struct.spinlock, [76 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.caam_drv_private_jr = type { %struct.list_head, ptr, i32, ptr, %struct.tasklet_struct, i32, i8, [79 x i8], %struct.atomic_t, ptr, [120 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, ptr, [56 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.154, i32 }
%union.anon.154 = type { ptr }
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
%struct.page = type { i32, %union.anon.2, %union.anon.129, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.129 = type { %struct.atomic_t }
%struct.caam_jrentry_info = type { ptr, ptr, ptr, i32, i32 }
%struct.caam_job_ring = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [900 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.159 = type { i32, i32 }
%struct.anon.160 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@driver_data = internal global %struct.jr_driver_data zeroinitializer, align 128
@__kstrtab_caam_jr_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_jr_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_jr_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_jr_alloc to i32), ptr @__kstrtab_caam_jr_alloc, ptr @__kstrtabns_caam_jr_alloc }, section "___ksymtab+caam_jr_alloc", align 4
@__kstrtab_caam_jr_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_jr_free = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_jr_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_jr_free to i32), ptr @__kstrtab_caam_jr_free, ptr @__kstrtabns_caam_jr_free }, section "___ksymtab+caam_jr_free", align 4
@caam_jr_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 378, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"caam_jr_enqueue(): can't map jobdesc\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"caam_jr_enqueue\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/crypto/caam/jr.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@caam_jr_enqueue._entry_ptr = internal global ptr @caam_jr_enqueue._entry, section ".printk_index", align 4
@__kstrtab_caam_jr_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_jr_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_jr_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_jr_enqueue to i32), ptr @__kstrtab_caam_jr_enqueue, ptr @__kstrtabns_caam_jr_enqueue }, section "___ksymtab+caam_jr_enqueue", align 4
@caam_jr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @caam_jr_probe, ptr @caam_jr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @caam_jr_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_caam_jr__513_634_jr_driver_init6 = internal global ptr @jr_driver_init, section ".initcall6.init", align 4
@__exitcall_jr_driver_exit = internal global ptr @jr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file514 = internal constant [41 x i8] c"caam_jr.file=drivers/crypto/caam/caam_jr\00", section ".modinfo", align 1
@__UNIQUE_ID_license515 = internal constant [20 x i8] c"caam_jr.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description516 = internal constant [48 x i8] c"caam_jr.description=FSL CAAM JR request backend\00", section ".modinfo", align 1
@__UNIQUE_ID_author517 = internal constant [49 x i8] c"caam_jr.author=Freescale Semiconductor - NMG/STC\00", section ".modinfo", align 1
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"caam_jr\00", [24 x i8] zeroinitializer }, align 32
@caam_jr_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sec-v4.0-job-ring\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sec4.0-job-ring\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@caam_jr_probe.total_jobrs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@caam_jr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 533, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"platform_get_resource() failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"caam_jr_probe\00", [18 x i8] zeroinitializer }, align 32
@caam_jr_probe._entry_ptr = internal global ptr @caam_jr_probe._entry, section ".printk_index", align 4
@caam_jr_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 539, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devm_ioremap() failed\0A\00", [41 x i8] zeroinitializer }, align 32
@caam_jr_probe._entry_ptr.12 = internal global ptr @caam_jr_probe._entry.10, section ".printk_index", align 4
@caam_jr_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 548, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dma_set_mask_and_coherent failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@caam_jr_probe._entry_ptr.15 = internal global ptr @caam_jr_probe._entry.13, section ".printk_index", align 4
@caam_jr_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 557, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not init crypto-engine\0A\00", [34 x i8] zeroinitializer }, align 32
@caam_jr_probe._entry_ptr.18 = internal global ptr @caam_jr_probe._entry.16, section ".printk_index", align 4
@caam_jr_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 569, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not start crypto-engine\0A\00", [33 x i8] zeroinitializer }, align 32
@caam_jr_probe._entry_ptr.21 = internal global ptr @caam_jr_probe._entry.19, section ".printk_index", align 4
@caam_jr_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq_of_parse_and_map failed\0A\00", [35 x i8] zeroinitializer }, align 32
@caam_jr_probe._entry_ptr.24 = internal global ptr @caam_jr_probe._entry.22, section ".printk_index", align 4
@caam_dpaa2 = external dso_local local_unnamed_addr global i8, align 1
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,sec-v5.0-job-ring\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,sec-v5.0\00", [19 x i8] zeroinitializer }, align 32
@caam_jr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&jrp->inplock\00", [18 x i8] zeroinitializer }, align 32
@caam_jr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 493, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't connect JobR %d interrupt (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"caam_jr_init\00", [19 x i8] zeroinitializer }, align 32
@caam_jr_init._entry_ptr = internal global ptr @caam_jr_init._entry, section ".printk_index", align 4
@caam_reset_hw_jr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to flush job ring %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"caam_reset_hw_jr\00", [47 x i8] zeroinitializer }, align 32
@caam_reset_hw_jr._entry_ptr = internal global ptr @caam_reset_hw_jr._entry, section ".printk_index", align 4
@caam_reset_hw_jr._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to reset job ring %d\0A\00", [35 x i8] zeroinitializer }, align 32
@caam_reset_hw_jr._entry_ptr.34 = internal global ptr @caam_reset_hw_jr._entry.32, section ".printk_index", align 4
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@caam_jr_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"job ring error: irqstate: %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"caam_jr_interrupt\00", [46 x i8] zeroinitializer }, align 32
@caam_jr_interrupt._entry_ptr = internal global ptr @caam_jr_interrupt._entry, section ".printk_index", align 4
@algs_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @algs_lock, i64 52), ptr getelementptr (i8, ptr @algs_lock, i64 52) }, ptr @algs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@active_devs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"algs_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"algs_lock\00", [22 x i8] zeroinitializer }, align 32
@caam_jr_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Device is busy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"caam_jr_remove\00", [17 x i8] zeroinitializer }, align 32
@caam_jr_remove._entry_ptr = internal global ptr @caam_jr_remove._entry, section ".printk_index", align 4
@caam_jr_remove._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to shut down job ring\0A\00", [34 x i8] zeroinitializer }, align 32
@caam_jr_remove._entry_ptr.43 = internal global ptr @caam_jr_remove._entry.41, section ".printk_index", align 4
@jr_driver_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&driver_data.jr_alloc_lock\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 378, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"caam_jr_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 613, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 326, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 615, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"caam_jr_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 602, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"total_jobrs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 514, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 533, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 539, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 547, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 557, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 569, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 576, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 216, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [32 x i8] c"../drivers/crypto/caam/intern.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 217, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 479, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 492, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 93, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 104, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 186, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [10 x i8] c"algs_lock\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"active_devs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 28, i32 21 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 27, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 145, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 160, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [28 x i8] c"../drivers/crypto/caam/jr.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 624, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author517, ptr @__UNIQUE_ID_description516, ptr @__UNIQUE_ID_file514, ptr @__UNIQUE_ID_license515, ptr @__exitcall_jr_driver_exit, ptr @__initcall__kmod_caam_jr__513_634_jr_driver_init6, ptr @__ksymtab_caam_jr_alloc, ptr @__ksymtab_caam_jr_enqueue, ptr @__ksymtab_caam_jr_free, ptr @caam_jr_enqueue._entry, ptr @caam_jr_enqueue._entry_ptr, ptr @caam_jr_init._entry, ptr @caam_jr_init._entry_ptr, ptr @caam_jr_interrupt._entry, ptr @caam_jr_interrupt._entry_ptr, ptr @caam_jr_probe._entry, ptr @caam_jr_probe._entry.10, ptr @caam_jr_probe._entry.13, ptr @caam_jr_probe._entry.16, ptr @caam_jr_probe._entry.19, ptr @caam_jr_probe._entry.22, ptr @caam_jr_probe._entry_ptr, ptr @caam_jr_probe._entry_ptr.12, ptr @caam_jr_probe._entry_ptr.15, ptr @caam_jr_probe._entry_ptr.18, ptr @caam_jr_probe._entry_ptr.21, ptr @caam_jr_probe._entry_ptr.24, ptr @caam_jr_remove._entry, ptr @caam_jr_remove._entry.41, ptr @caam_jr_remove._entry_ptr, ptr @caam_jr_remove._entry_ptr.43, ptr @caam_reset_hw_jr._entry, ptr @caam_reset_hw_jr._entry.32, ptr @caam_reset_hw_jr._entry_ptr, ptr @caam_reset_hw_jr._entry_ptr.34, ptr @jr_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @caam_jr_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @caam_jr_match, ptr @caam_jr_probe.total_jobrs, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @caam_jr_init.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @algs_lock, ptr @active_devs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @jr_driver_init.__key, ptr @.str.44], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_probe.total_jobrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_reset_hw_jr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_reset_hw_jr._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @active_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_jr_remove._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jr_driver_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @caam_jr_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1)) #9
  %0 = load volatile ptr, ptr @driver_data, align 128
  %cmp.i.not = icmp eq ptr %0, @driver_data
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.condthread-pre-split:                         ; preds = %for.body
  %1 = ptrtoint ptr %jrpriv.033 to i32
  call void @__asan_load4_noabort(i32 %1)
  %jrpriv.0.pr = load ptr, ptr %jrpriv.033, align 128
  %cmp.not = icmp eq ptr %jrpriv.0.pr, @driver_data
  br i1 %cmp.not, label %for.condthread-pre-split.for.end_crit_edge, label %for.condthread-pre-split.for.body_crit_edge

for.condthread-pre-split.for.body_crit_edge:      ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.condthread-pre-split.for.end_crit_edge:       ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.condthread-pre-split.for.body_crit_edge, %entry.for.body_crit_edge
  %min_jrpriv.035 = phi ptr [ %spec.select30, %for.condthread-pre-split.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %min_tfm_cnt.034 = phi i32 [ %4, %for.condthread-pre-split.for.body_crit_edge ], [ 2147483647, %entry.for.body_crit_edge ]
  %jrpriv.033 = phi ptr [ %jrpriv.0.pr, %for.condthread-pre-split.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %tfm_count = getelementptr inbounds %struct.caam_drv_private_jr, ptr %jrpriv.033, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tfm_count, i32 noundef 4) #9
  %2 = ptrtoint ptr %tfm_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tfm_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %min_tfm_cnt.034)
  %cmp4 = icmp slt i32 %3, %min_tfm_cnt.034
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 %min_tfm_cnt.034)
  %spec.select30 = select i1 %cmp4, ptr %jrpriv.033, ptr %min_jrpriv.035
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %for.body.for.end_crit_edge, label %for.condthread-pre-split

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.condthread-pre-split.for.end_crit_edge
  %tobool14.not = icmp eq ptr %spec.select30, null
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %if.then15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %tfm_count16 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %spec.select30, i32 0, i32 8
  %call.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfm_count16, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tfm_count16, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tfm_count16, ptr %tfm_count16, i32 1, ptr elementtype(i32) %tfm_count16) #9, !srcloc !118
  %dev17 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %spec.select30, i32 0, i32 1
  %6 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ %7, %if.then15 ], [ inttoptr (i32 -19 to ptr), %for.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1)) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @caam_jr_free(ptr nocapture noundef readonly %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tfm_count = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfm_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tfm_count, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tfm_count, ptr %tfm_count, i32 1, ptr elementtype(i32) %tfm_count) #9, !srcloc !119
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @caam_jr_enqueue(ptr noundef %dev, ptr noundef %desc, ptr noundef %cbk, ptr noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %4 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = lshr i32 %3, 24
  %retval.0.i = select i1 %tobool.not.i, i32 %3, i32 %5
  %and = shl i32 %retval.0.i, 2
  %mul = and i32 %and, 508
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %desc) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !121

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #9
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %desc, i32 noundef %mul) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %desc to i32
  %sub.i = add i32 %11, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %inplock = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %inplock) #9
  %head4 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %head4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head4, align 16
  %tail8 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %tail8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tail8, align 4
  %inpring_avail = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %inpring_avail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inpring_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %add = add i32 %13, 1
  %sub = sub i32 %15, %add
  %and10 = and i32 %sub, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp = icmp eq i32 %and10, 0
  br i1 %cmp, label %lor.lhs.false.if.then11_crit_edge, label %if.end13

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %inplock) #9
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %call41.i, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %entinfo = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %entinfo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entinfo, align 4
  %arrayidx = getelementptr %struct.caam_jrentry_info, ptr %19, i32 %13
  %desc_addr_virt = getelementptr %struct.caam_jrentry_info, ptr %19, i32 %13, i32 2
  %20 = ptrtoint ptr %desc_addr_virt to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %desc, ptr %desc_addr_virt, align 4
  %desc_size14 = getelementptr %struct.caam_jrentry_info, ptr %19, i32 %13, i32 4
  %21 = ptrtoint ptr %desc_size14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %desc_size14, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cbk, ptr %arrayidx, align 4
  %cbkarg = getelementptr %struct.caam_jrentry_info, ptr %19, i32 %13, i32 1
  %23 = ptrtoint ptr %cbkarg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %areq, ptr %cbkarg, align 4
  %desc_addr_dma = getelementptr %struct.caam_jrentry_info, ptr %19, i32 %13, i32 3
  %24 = ptrtoint ptr %desc_addr_dma to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call41.i, ptr %desc_addr_dma, align 4
  %inpring = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %inpring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %inpring, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %27 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i73 = icmp eq i8 %27, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #9
  %retval.0.i.i74 = select i1 %tobool.not.i.i73, i32 %call41.i, i32 %28
  %29 = getelementptr i32, ptr %26, i32 %13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i.i74, ptr %29, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !122
  %and24 = and i32 %add, 511
  %31 = ptrtoint ptr %head4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and24, ptr %head4, align 16
  %rregs = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rregs, align 16
  %inpring_jobadd = getelementptr inbounds %struct.caam_job_ring, ptr %33, i32 0, i32 6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %34 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i75 = icmp eq i8 %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i75, label %do.body.i, label %if.then.i76

if.then.i76:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inpring_jobadd, i32 16777216) #9, !srcloc !123
  br label %wr_reg32.exit

do.body.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inpring_jobadd, i32 1) #9, !srcloc !123
  br label %wr_reg32.exit

wr_reg32.exit:                                    ; preds = %do.body.i, %if.then.i76
  %35 = ptrtoint ptr %inpring_avail to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inpring_avail, align 4
  %dec = add i32 %36, -1
  store i32 %dec, ptr %inpring_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool28.not = icmp eq i32 %dec, 0
  br i1 %tobool28.not, label %if.then29, label %wr_reg32.exit.if.end34_crit_edge

wr_reg32.exit.if.end34_crit_edge:                 ; preds = %wr_reg32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then29:                                        ; preds = %wr_reg32.exit
  %37 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rregs, align 16
  %inpring_avail31 = getelementptr inbounds %struct.caam_job_ring, ptr %38, i32 0, i32 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %39 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i77 = icmp eq i8 %39, 0
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %inpring_avail31) #9
  br i1 %tobool.not.i77, label %if.end.i, label %if.then.i78

if.then.i78:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  br label %rd_reg32.exit

if.end.i:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i, %if.then.i78
  %retval.0.i79 = phi i32 [ %41, %if.then.i78 ], [ %40, %if.end.i ]
  %42 = ptrtoint ptr %inpring_avail to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i79, ptr %inpring_avail, align 4
  br label %if.end34

if.end34:                                         ; preds = %rd_reg32.exit, %wr_reg32.exit.if.end34_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %inplock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then11, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -28, %if.then11 ], [ -115, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jr_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @caam_jr_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jr_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), ptr noundef nonnull @.str.44, ptr noundef nonnull @jr_driver_init.__key, i16 noundef signext 3) #9
  store volatile ptr @driver_data, ptr @driver_data, align 128
  store ptr @driver_data, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @caam_jr_driver, ptr noundef null) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_jr_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %inpbusaddr.i = alloca i32, align 4
  %outbusaddr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 384, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %1 = load i32, ptr @caam_jr_probe.total_jobrs, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @caam_jr_probe.total_jobrs, align 4
  %ridx = getelementptr inbounds %struct.caam_drv_private_jr, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %ridx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ridx, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %8
  %call7 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %6, i32 noundef %add.i) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %rregs = getelementptr inbounds %struct.caam_drv_private_jr, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %rregs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %rregs, align 16
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %12 = load i32, ptr @caam_ptr_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end13.caam_get_dma_mask.exit_crit_edge

if.end13.caam_get_dma_mask.exit_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_get_dma_mask.exit

if.end.i:                                         ; preds = %if.end13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %13 = load i8, ptr @caam_dpaa2, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.caam_get_dma_mask.exit_crit_edge

if.end.i.caam_get_dma_mask.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_get_dma_mask.exit

if.end2.i:                                        ; preds = %if.end.i
  %call.i110 = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str.25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool3.not.i = icmp eq i32 %call.i110, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end2.i.caam_get_dma_mask.exit_crit_edge

if.end2.i.caam_get_dma_mask.exit_crit_edge:       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_get_dma_mask.exit

lor.lhs.false.i:                                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str.26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %spec.select.i = select i1 %tobool5.not.i, i64 68719476735, i64 1099511627775
  br label %caam_get_dma_mask.exit

caam_get_dma_mask.exit:                           ; preds = %lor.lhs.false.i, %if.end2.i.caam_get_dma_mask.exit_crit_edge, %if.end.i.caam_get_dma_mask.exit_crit_edge, %if.end13.caam_get_dma_mask.exit_crit_edge
  %retval.0.i = phi i64 [ 4294967295, %if.end13.caam_get_dma_mask.exit_crit_edge ], [ 562949953421311, %if.end.i.caam_get_dma_mask.exit_crit_edge ], [ 1099511627775, %if.end2.i.caam_get_dma_mask.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call.i111 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i = icmp eq i32 %call.i111, 0
  br i1 %cmp.i, label %if.end21, label %do.end20

do.end20:                                         ; preds = %caam_get_dma_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call.i111) #12
  br label %cleanup

if.end21:                                         ; preds = %caam_get_dma_mask.exit
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %retval.0.i) #9
  %call22 = tail call ptr @crypto_engine_alloc_init_and_set(ptr noundef %dev, i1 noundef zeroext true, ptr noundef null, i1 noundef zeroext false, i32 noundef 497) #9
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %call.i, i32 0, i32 18
  %14 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call22, ptr %engine, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call.i113 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @caam_jr_crypto_engine_exit, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i114, label %if.end33, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i, align 4
  %engine.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %engine.i, align 4
  %call1.i137 = tail call i32 @crypto_engine_exit(ptr noundef %18) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %19 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %engine, align 4
  %call35 = tail call i32 @crypto_engine_start(ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %call42 = tail call i32 @irq_of_parse_and_map(ptr noundef %4, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.caam_drv_private_jr, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call42, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool44.not = icmp eq i32 %call42, 0
  br i1 %tobool44.not, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %22 = inttoptr i32 %call42 to ptr
  %call.i117 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @caam_jr_irq_dispose_mapping, ptr noundef nonnull %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i118, label %if.end54, label %devm_add_action_or_reset.exit121

devm_add_action_or_reset.exit121:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @irq_dispose_mapping(i32 noundef %call42) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inpbusaddr.i) #9
  %23 = ptrtoint ptr %inpbusaddr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %inpbusaddr.i, align 4, !annotation !126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbusaddr.i) #9
  %24 = ptrtoint ptr %outbusaddr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %outbusaddr.i, align 4, !annotation !126
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i, align 4
  %call1.i122 = tail call fastcc i32 @caam_reset_hw_jr(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool.not.i123, label %if.end.i125, label %if.end54.caam_jr_init.exit.thread_crit_edge

if.end54.caam_jr_init.exit.thread_crit_edge:      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_jr_init.exit.thread

if.end.i125:                                      ; preds = %if.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %27 = load i32, ptr @caam_ptr_sz, align 4
  %mul.i = shl i32 %27, 9
  %call.i.i124 = call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef %mul.i, ptr noundef nonnull %inpbusaddr.i, i32 noundef 3264, i32 noundef 0) #9
  %inpring.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 14
  %28 = ptrtoint ptr %inpring.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i124, ptr %inpring.i, align 4
  %tobool4.not.i = icmp eq ptr %call.i.i124, null
  br i1 %tobool4.not.i, label %if.end.i125.caam_jr_init.exit.thread_crit_edge, label %if.end6.i

if.end.i125.caam_jr_init.exit.thread_crit_edge:   ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_jr_init.exit.thread

if.end6.i:                                        ; preds = %if.end.i125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %29 = load i32, ptr @caam_ptr_sz, align 4
  %add.i126 = shl i32 %29, 9
  %mul7.i = add i32 %add.i126, 2048
  %call.i74.i = call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef %mul7.i, ptr noundef nonnull %outbusaddr.i, i32 noundef 3264, i32 noundef 0) #9
  %outring.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 17
  %30 = ptrtoint ptr %outring.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i74.i, ptr %outring.i, align 64
  %tobool10.not.i = icmp eq ptr %call.i74.i, null
  br i1 %tobool10.not.i, label %if.end6.i.caam_jr_init.exit.thread_crit_edge, label %if.end12.i

if.end6.i.caam_jr_init.exit.thread_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_jr_init.exit.thread

if.end12.i:                                       ; preds = %if.end6.i
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 10240, i32 noundef 3520) #9
  %entinfo.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 9
  %31 = ptrtoint ptr %entinfo.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i.i, ptr %entinfo.i, align 4
  %tobool15.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool15.not.i, label %if.end12.i.caam_jr_init.exit.thread_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.caam_jr_init.exit.thread_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_jr_init.exit.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %i.084.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end12.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %entinfo.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %entinfo.i, align 4
  %desc_addr_dma.i = getelementptr %struct.caam_jrentry_info, ptr %33, i32 %i.084.i, i32 3
  %34 = ptrtoint ptr %desc_addr_dma.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %desc_addr_dma.i, align 4
  %inc.i = add nuw nsw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %out_ring_read_index.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 15
  %35 = ptrtoint ptr %out_ring_read_index.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %out_ring_read_index.i, align 8
  %head.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 13
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %head.i, align 16
  %tail.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tail.i, align 4
  %rregs.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 3
  %38 = ptrtoint ptr %rregs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rregs.i, align 16
  %40 = ptrtoint ptr %inpbusaddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %inpbusaddr.i, align 4
  %conv.i = zext i32 %41 to i64
  call fastcc void @wr_reg64(ptr noundef %39, i64 noundef %conv.i) #9
  %42 = ptrtoint ptr %rregs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rregs.i, align 16
  %outring_base.i = getelementptr inbounds %struct.caam_job_ring, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %outbusaddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %outbusaddr.i, align 4
  %conv20.i = zext i32 %45 to i64
  call fastcc void @wr_reg64(ptr noundef %outring_base.i, i64 noundef %conv20.i) #9
  %46 = ptrtoint ptr %rregs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rregs.i, align 16
  %inpring_size.i = getelementptr inbounds %struct.caam_job_ring, ptr %47, i32 0, i32 2
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %48 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inpring_size.i, i32 131072) #9, !srcloc !123
  br label %wr_reg32.exit.i

do.body.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inpring_size.i, i32 512) #9, !srcloc !123
  br label %wr_reg32.exit.i

wr_reg32.exit.i:                                  ; preds = %do.body.i.i, %if.then.i.i
  %49 = ptrtoint ptr %rregs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rregs.i, align 16
  %outring_size.i = getelementptr inbounds %struct.caam_job_ring, ptr %50, i32 0, i32 9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %51 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i75.i = icmp eq i8 %51, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i75.i, label %do.body.i77.i, label %if.then.i76.i

if.then.i76.i:                                    ; preds = %wr_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outring_size.i, i32 131072) #9, !srcloc !123
  br label %wr_reg32.exit78.i

do.body.i77.i:                                    ; preds = %wr_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outring_size.i, i32 512) #9, !srcloc !123
  br label %wr_reg32.exit78.i

wr_reg32.exit78.i:                                ; preds = %do.body.i77.i, %if.then.i76.i
  %inpring_avail.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 12
  %52 = ptrtoint ptr %inpring_avail.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 512, ptr %inpring_avail.i, align 4
  %inplock.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %inplock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @caam_jr_init.__key, i16 noundef signext 3) #9
  %53 = ptrtoint ptr %rregs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rregs.i, align 16
  %rconfig_lo.i = getelementptr inbounds %struct.caam_job_ring, ptr %54, i32 0, i32 19
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %55 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i79.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i79.i, label %do.body.i81.i, label %if.then.i80.i

if.then.i80.i:                                    ; preds = %wr_reg32.exit78.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo.i) #9, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  %57 = or i32 %56, 50266120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo.i, i32 %57) #9, !srcloc !123
  br label %clrsetbits_32.exit.i

do.body.i81.i:                                    ; preds = %wr_reg32.exit78.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  call void @arm_heavy_mb() #9
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo.i) #9, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %or4.i.i = or i32 %58, 134283010
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo.i, i32 %or4.i.i) #9, !srcloc !123
  br label %clrsetbits_32.exit.i

clrsetbits_32.exit.i:                             ; preds = %do.body.i81.i, %if.then.i80.i
  %irqtask.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 4
  %59 = ptrtoint ptr %dev to i32
  call void @tasklet_init(ptr noundef %irqtask.i, ptr noundef nonnull @caam_jr_dequeue, i32 noundef %59) #9
  %irq.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 5
  %60 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %62 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i82.i = icmp eq ptr %63, null
  br i1 %tobool.not.i82.i, label %if.end.i.i, label %clrsetbits_32.exit.i.dev_name.exit.i_crit_edge

clrsetbits_32.exit.i.dev_name.exit.i_crit_edge:   ; preds = %clrsetbits_32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %clrsetbits_32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %clrsetbits_32.exit.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %65, %if.end.i.i ], [ %63, %clrsetbits_32.exit.i.dev_name.exit.i_crit_edge ]
  %call.i83.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %61, ptr noundef nonnull @caam_jr_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i.i, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool27.not.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool27.not.i, label %if.end58, label %do.end31.i

do.end31.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %ridx.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %26, i32 0, i32 2
  %66 = ptrtoint ptr %ridx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ridx.i, align 4
  %68 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %67, i32 noundef %69) #12
  call void @tasklet_kill(ptr noundef %irqtask.i) #9
  br label %caam_jr_init.exit.thread

caam_jr_init.exit.thread:                         ; preds = %do.end31.i, %if.end12.i.caam_jr_init.exit.thread_crit_edge, %if.end6.i.caam_jr_init.exit.thread_crit_edge, %if.end.i125.caam_jr_init.exit.thread_crit_edge, %if.end54.caam_jr_init.exit.thread_crit_edge
  %retval.0.i127.ph = phi i32 [ %call.i83.i, %do.end31.i ], [ -12, %if.end12.i.caam_jr_init.exit.thread_crit_edge ], [ -12, %if.end6.i.caam_jr_init.exit.thread_crit_edge ], [ -12, %if.end.i125.caam_jr_init.exit.thread_crit_edge ], [ %call1.i122, %if.end54.caam_jr_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbusaddr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inpbusaddr.i) #9
  br label %cleanup

if.end58:                                         ; preds = %dev_name.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbusaddr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inpbusaddr.i) #9
  %dev59 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %call.i, i32 0, i32 1
  %70 = ptrtoint ptr %dev59 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %dev, ptr %dev59, align 8
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1)) #9
  %71 = load ptr, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %call.i.i128 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %71, ptr noundef nonnull @driver_data) #9
  br i1 %call.i.i128, label %if.end.i.i129, label %if.end58.list_add_tail.exit_crit_edge

if.end58.list_add_tail.exit_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i129:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call.i, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @driver_data, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %prev3.i.i, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %call.i, ptr %71, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i129, %if.end58.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1)) #9
  %tfm_count = getelementptr inbounds %struct.caam_drv_private_jr, ptr %call.i, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tfm_count, i32 noundef 4) #9
  %75 = ptrtoint ptr %tfm_count to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %tfm_count, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %76 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parent, align 8
  call void @mutex_lock_nested(ptr noundef nonnull @algs_lock, i32 noundef 0) #9
  %78 = load i32, ptr @active_devs, align 4
  %inc.i130 = add i32 %78, 1
  store i32 %inc.i130, ptr @active_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.not.i131 = icmp eq i32 %78, 0
  br i1 %cmp.not.i131, label %if.end.i135, label %list_add_tail.exit.register_algs.exit_crit_edge

list_add_tail.exit.register_algs.exit_crit_edge:  ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %register_algs.exit

if.end.i135:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i132 = call i32 @caam_algapi_init(ptr noundef %77) #9
  %call1.i133 = call i32 @caam_algapi_hash_init(ptr noundef %77) #9
  %call2.i = call i32 @caam_pkc_init(ptr noundef %77) #9
  %call3.i = call i32 @caam_rng_init(ptr noundef %77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i134 = icmp eq i32 %call3.i, 0
  %hwrng.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %call.i, i32 0, i32 6
  %frombool.i = zext i1 %tobool.not.i134 to i8
  %79 = ptrtoint ptr %hwrng.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool.i, ptr %hwrng.i, align 16
  br label %register_algs.exit

register_algs.exit:                               ; preds = %if.end.i135, %list_add_tail.exit.register_algs.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @algs_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %register_algs.exit, %caam_jr_init.exit.thread, %devm_add_action_or_reset.exit121, %do.end48, %do.end40, %devm_add_action_or_reset.exit, %do.end28, %do.end20, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i111, %do.end20 ], [ %call35, %do.end40 ], [ 0, %register_algs.exit ], [ -22, %do.end48 ], [ -12, %do.end28 ], [ -12, %do.end12 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call.i113, %devm_add_action_or_reset.exit ], [ %call.i117, %devm_add_action_or_reset.exit121 ], [ %retval.0.i127.ph, %caam_jr_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_jr_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hwrng = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %hwrng to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hwrng, align 16, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void @caam_rng_exit(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tfm_count = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tfm_count, i32 noundef 4) #9
  %6 = ptrtoint ptr %tfm_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tfm_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @algs_lock, i32 noundef 0) #9
  %8 = load i32, ptr @active_devs, align 4
  %dec.i = add i32 %8, -1
  store i32 %dec.i, ptr @active_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end4.unregister_algs.exit_crit_edge

if.end4.unregister_algs.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %unregister_algs.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @caam_pkc_exit() #9
  tail call void @caam_algapi_hash_exit() #9
  tail call void @caam_algapi_exit() #9
  br label %unregister_algs.exit

unregister_algs.exit:                             ; preds = %if.end.i, %if.end4.unregister_algs.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @algs_lock) #9
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1)) #9
  %call.i.i21 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i21, label %if.end.i.i, label %unregister_algs.exit.list_del.exit_crit_edge

unregister_algs.exit.list_del.exit_crit_edge:     ; preds = %unregister_algs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %unregister_algs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %unregister_algs.exit.list_del.exit_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1)) #9
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %call1.i = tail call fastcc i32 @caam_reset_hw_jr(ptr noundef %dev) #9
  %irqtask.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %18, i32 0, i32 4
  tail call void @tasklet_kill(ptr noundef %irqtask.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool6.not = icmp eq i32 %call1.i, 0
  br i1 %tobool6.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.cleanup.sink.split_crit_edge

list_del.exit.cleanup.sink.split_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %list_del.exit.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.42.sink = phi ptr [ @.str.39, %if.end.cleanup.sink.split_crit_edge ], [ @.str.42, %list_del.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -16, %if.end.cleanup.sink.split_crit_edge ], [ %call1.i, %list_del.exit.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.42.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %list_del.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init_and_set(ptr noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_jr_crypto_engine_exit(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine, align 4
  %call1 = tail call i32 @crypto_engine_exit(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_jr_irq_dispose_mapping(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  tail call void @irq_dispose_mapping(i32 noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @caam_reset_hw_jr(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rregs = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rregs, align 16
  %rconfig_lo = getelementptr inbounds %struct.caam_job_ring, ptr %3, i32 0, i32 19
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %4 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  %6 = or i32 %5, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo, i32 %6) #9, !srcloc !123
  br label %clrsetbits_32.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %or4.i = or i32 %7, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo, i32 %or4.i) #9, !srcloc !123
  br label %clrsetbits_32.exit

clrsetbits_32.exit:                               ; preds = %do.body.i, %if.then.i
  %8 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rregs, align 16
  %jrcommand = getelementptr inbounds %struct.caam_job_ring, ptr %9, i32 0, i32 25
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %10 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i65 = icmp eq i8 %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i65, label %do.body.i67, label %if.then.i66

if.then.i66:                                      ; preds = %clrsetbits_32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jrcommand, i32 16777216) #9, !srcloc !123
  br label %while.cond.preheader

do.body.i67:                                      ; preds = %clrsetbits_32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jrcommand, i32 1) #9, !srcloc !123
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.body.i67, %if.then.i66
  br label %while.cond

while.cond:                                       ; preds = %do.end, %while.cond.preheader
  %timeout.0 = phi i32 [ %dec, %do.end ], [ 100000, %while.cond.preheader ]
  %11 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rregs, align 16
  %jrintstatus = getelementptr inbounds %struct.caam_job_ring, ptr %12, i32 0, i32 17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %13 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i68 = icmp eq i8 %13, 0
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %jrintstatus) #9
  br i1 %tobool.not.i68, label %if.end.i, label %if.then.i69

if.then.i69:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  br label %rd_reg32.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i, %if.then.i69
  %retval.0.i = phi i32 [ %15, %if.then.i69 ], [ %14, %if.end.i ]
  %and = and i32 %retval.0.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %land.rhs, label %rd_reg32.exit.while.end_crit_edge

rd_reg32.exit.while.end_crit_edge:                ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %rd_reg32.exit
  %dec = add nsw i32 %timeout.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %do.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !132
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %rd_reg32.exit.while.end_crit_edge
  %16 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rregs, align 16
  %jrintstatus11 = getelementptr inbounds %struct.caam_job_ring, ptr %17, i32 0, i32 17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i70 = icmp eq i8 %18, 0
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %jrintstatus11) #9
  br i1 %tobool.not.i70, label %if.end.i72, label %if.then.i71

if.then.i71:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  br label %rd_reg32.exit74

if.end.i72:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  br label %rd_reg32.exit74

rd_reg32.exit74:                                  ; preds = %if.end.i72, %if.then.i71
  %retval.0.i73 = phi i32 [ %20, %if.then.i71 ], [ %19, %if.end.i72 ]
  %and13 = and i32 %retval.0.i73, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and13)
  %cmp14.not = icmp ne i32 %and13, 8
  %brmerge = select i1 %cmp14.not, i1 true, i1 %cmp
  br i1 %brmerge, label %do.end18, label %if.end

do.end18:                                         ; preds = %rd_reg32.exit74
  call void @__sanitizer_cov_trace_pc() #11
  %ridx = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %ridx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ridx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %22) #12
  br label %cleanup

if.end:                                           ; preds = %rd_reg32.exit74
  %23 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rregs, align 16
  %jrcommand20 = getelementptr inbounds %struct.caam_job_ring, ptr %24, i32 0, i32 25
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i75 = icmp eq i8 %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i75, label %do.body.i77, label %if.then.i76

if.then.i76:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jrcommand20, i32 16777216) #9, !srcloc !123
  br label %while.cond21.preheader

do.body.i77:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jrcommand20, i32 1) #9, !srcloc !123
  br label %while.cond21.preheader

while.cond21.preheader:                           ; preds = %do.body.i77, %if.then.i76
  br label %while.cond21

while.cond21:                                     ; preds = %do.end36, %while.cond21.preheader
  %timeout.2 = phi i32 [ %dec28, %do.end36 ], [ 100000, %while.cond21.preheader ]
  %26 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rregs, align 16
  %jrcommand23 = getelementptr inbounds %struct.caam_job_ring, ptr %27, i32 0, i32 25
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %28 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i80 = icmp eq i8 %28, 0
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %jrcommand23) #9
  br i1 %tobool.not.i80, label %if.end.i82, label %if.then.i81

if.then.i81:                                      ; preds = %while.cond21
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  br label %rd_reg32.exit84

if.end.i82:                                       ; preds = %while.cond21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  br label %rd_reg32.exit84

rd_reg32.exit84:                                  ; preds = %if.end.i82, %if.then.i81
  %retval.0.i83 = phi i32 [ %30, %if.then.i81 ], [ %29, %if.end.i82 ]
  %and25 = and i32 %retval.0.i83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end48, label %land.rhs27

land.rhs27:                                       ; preds = %rd_reg32.exit84
  %dec28 = add nsw i32 %timeout.2, -1
  %tobool29.not = icmp eq i32 %dec28, 0
  br i1 %tobool29.not, label %do.end46.critedge, label %do.end36

do.end36:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !134
  br label %while.cond21

do.end46.critedge:                                ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #11
  %ridx47 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %ridx47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ridx47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %32) #12
  br label %cleanup

if.end48:                                         ; preds = %rd_reg32.exit84
  %33 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rregs, align 16
  %rconfig_lo50 = getelementptr inbounds %struct.caam_job_ring, ptr %34, i32 0, i32 19
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %35 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i85 = icmp eq i8 %35, 0
  br i1 %tobool.not.i85, label %do.body.i87, label %if.then.i86

if.then.i86:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo50) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  %37 = and i32 %36, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo50, i32 %37) #9, !srcloc !123
  br label %cleanup

do.body.i87:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo50) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %and3.i = and i32 %38, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo50, i32 %and3.i) #9, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %do.body.i87, %if.then.i86, %do.end46.critedge, %do.end18
  %retval.0 = phi i32 [ -5, %do.end18 ], [ -5, %do.end46.critedge ], [ 0, %if.then.i86 ], [ 0, %do.body.i87 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wr_reg64(ptr noundef %reg, i64 noundef %data) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %0 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %1 = load i8, ptr @caam_imx, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 0) #9, !srcloc !123
  %conv3 = trunc i64 %data to i32
  %add.ptr = getelementptr i32, ptr %reg, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !123
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %reg, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !123
  %conv1.i = trunc i64 %data to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %3) #9, !srcloc !123
  br label %if.end5

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 0) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %conv3.i = trunc i64 %data to i32
  %add.ptr.i12 = getelementptr i8, ptr %reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %conv3.i) #9, !srcloc !123
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.else, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_jr_dequeue(i32 noundef %devarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %devarg to ptr
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %rregs = getelementptr inbounds %struct.caam_drv_private_jr, ptr %2, i32 0, i32 3
  %head4 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %2, i32 0, i32 13
  %tail5 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %2, i32 0, i32 16
  %out_ring_read_index = getelementptr inbounds %struct.caam_drv_private_jr, ptr %2, i32 0, i32 15
  %outring = getelementptr inbounds %struct.caam_drv_private_jr, ptr %2, i32 0, i32 17
  %entinfo = getelementptr inbounds %struct.caam_drv_private_jr, ptr %2, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %if.end76, %entry
  %outring_used.0 = phi i32 [ 0, %entry ], [ %dec, %if.end76 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outring_used.0)
  %tobool.not = icmp eq i32 %outring_used.0, 0
  br i1 %tobool.not, label %lor.rhs, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.rhs:                                          ; preds = %while.cond
  %3 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rregs, align 16
  %outring_used1 = getelementptr inbounds %struct.caam_job_ring, ptr %4, i32 0, i32 13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %5 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outring_used1) #9
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  br label %rd_reg32.exit

if.end.i:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %6, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %while.end, label %rd_reg32.exit.do.end_crit_edge

rd_reg32.exit.do.end_crit_edge:                   ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %rd_reg32.exit.do.end_crit_edge, %while.cond.do.end_crit_edge
  %outring_used.1 = phi i32 [ %outring_used.0, %while.cond.do.end_crit_edge ], [ %retval.0.i, %rd_reg32.exit.do.end_crit_edge ]
  %8 = ptrtoint ptr %head4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %head4, align 16
  %10 = ptrtoint ptr %tail5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail5, align 4
  %12 = ptrtoint ptr %out_ring_read_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_ring_read_index, align 8
  %sub135 = sub i32 %9, %11
  %and136 = and i32 %sub135, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %cmp.not137 = icmp eq i32 %and136, 0
  br i1 %cmp.not137, label %do.end.do.body22_crit_edge, label %for.body.lr.ph

do.end.do.body22_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

for.body.lr.ph:                                   ; preds = %do.end
  %14 = ptrtoint ptr %outring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %outring, align 64
  %arrayidx.i.i = getelementptr %struct.anon.159, ptr %15, i32 %13
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %desc.0.i = load i32, ptr %arrayidx.i.i, align 1
  %17 = ptrtoint ptr %entinfo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entinfo, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  %20 = sub i32 %9, %11
  %wide.trip.count = and i32 %20, 511
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0138, 1
  %add = add i32 %inc, %11
  %exitcond = icmp eq i32 %inc, %wide.trip.count
  br i1 %exitcond, label %for.cond.do.body22_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.do.body22_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %add139 = phi i32 [ %11, %for.body.lr.ph ], [ %add, %for.cond.for.body_crit_edge ]
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %and7 = and i32 %add139, 511
  %desc_addr_dma = getelementptr %struct.caam_jrentry_info, ptr %18, i32 %and7, i32 3
  %21 = ptrtoint ptr %desc_addr_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc_addr_dma, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %22, i32 %23
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %desc.0.i)
  %cmp11 = icmp eq i32 %retval.0.i.i, %desc.0.i
  br i1 %cmp11, label %do.end30, label %for.cond

do.body22:                                        ; preds = %for.cond.do.body22_crit_edge, %do.end.do.body22_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/caam/jr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 230, 0\0A.popsection", ""() #9, !srcloc !137
  unreachable

do.end30:                                         ; preds = %for.body
  %24 = ptrtoint ptr %outring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %outring, align 64
  %arrayidx.i.i119 = getelementptr %struct.anon.159, ptr %25, i32 %13
  %26 = ptrtoint ptr %arrayidx.i.i119 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %desc.0.i120 = load i32, ptr %arrayidx.i.i119, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %27 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i121 = icmp eq i8 %27, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %desc.0.i120) #9
  %retval.0.i.i122 = select i1 %tobool.not.i.i121, i32 %desc.0.i120, i32 %28
  %29 = ptrtoint ptr %entinfo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %entinfo, align 4
  %desc_size = getelementptr %struct.caam_jrentry_info, ptr %30, i32 %and7, i32 4
  %31 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %retval.0.i.i122, i32 noundef %32, i32 noundef 1, i32 noundef 0) #9
  %33 = ptrtoint ptr %entinfo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entinfo, align 4
  %desc_addr_dma40 = getelementptr %struct.caam_jrentry_info, ptr %34, i32 %and7, i32 3
  %35 = ptrtoint ptr %desc_addr_dma40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %desc_addr_dma40, align 4
  %36 = load ptr, ptr %entinfo, align 4
  %arrayidx42 = getelementptr %struct.caam_jrentry_info, ptr %36, i32 %and7
  %37 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx42, align 4
  %cbkarg = getelementptr %struct.caam_jrentry_info, ptr %36, i32 %and7, i32 1
  %39 = ptrtoint ptr %cbkarg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cbkarg, align 4
  %desc_addr_virt = getelementptr %struct.caam_jrentry_info, ptr %36, i32 %and7, i32 2
  %41 = ptrtoint ptr %desc_addr_virt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc_addr_virt, align 4
  %43 = ptrtoint ptr %outring to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %outring, align 64
  %jrstatus8.i.i = getelementptr %struct.anon.160, ptr %44, i32 %13, i32 1
  %45 = ptrtoint ptr %jrstatus8.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %storemerge.i.i = load i32, ptr %jrstatus8.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %46 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i124 = icmp eq i8 %46, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i.i) #9
  %retval.0.i125 = select i1 %tobool.not.i124, i32 %storemerge.i.i, i32 %47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rregs, align 16
  %outring_rmvd = getelementptr inbounds %struct.caam_job_ring, ptr %49, i32 0, i32 11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %50 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i126 = icmp eq i8 %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i126, label %do.body.i, label %if.then.i127

if.then.i127:                                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outring_rmvd, i32 16777216) #9, !srcloc !123
  br label %wr_reg32.exit

do.body.i:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outring_rmvd, i32 1) #9, !srcloc !123
  br label %wr_reg32.exit

wr_reg32.exit:                                    ; preds = %do.body.i, %if.then.i127
  %51 = ptrtoint ptr %out_ring_read_index to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %out_ring_read_index, align 8
  %add55 = add i32 %52, 1
  %and56 = and i32 %add55, 511
  store i32 %and56, ptr %out_ring_read_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %11)
  %cmp58 = icmp eq i32 %and7, %11
  br i1 %cmp58, label %wr_reg32.exit.do.body61_crit_edge, label %wr_reg32.exit.if.end76_crit_edge

wr_reg32.exit.if.end76_crit_edge:                 ; preds = %wr_reg32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

wr_reg32.exit.do.body61_crit_edge:                ; preds = %wr_reg32.exit
  br label %do.body61

do.body61:                                        ; preds = %land.rhs.do.body61_crit_edge, %wr_reg32.exit.do.body61_crit_edge
  %tail.0 = phi i32 [ %and63, %land.rhs.do.body61_crit_edge ], [ %11, %wr_reg32.exit.do.body61_crit_edge ]
  %add62 = add i32 %tail.0, 1
  %and63 = and i32 %add62, 511
  %sub65 = sub i32 %9, %add62
  %and66 = and i32 %sub65, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %cmp67.not = icmp eq i32 %and66, 0
  br i1 %cmp67.not, label %do.body61.do.end74_crit_edge, label %land.rhs

do.body61.do.end74_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

land.rhs:                                         ; preds = %do.body61
  %53 = ptrtoint ptr %entinfo to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %entinfo, align 4
  %desc_addr_dma71 = getelementptr %struct.caam_jrentry_info, ptr %54, i32 %and63, i32 3
  %55 = ptrtoint ptr %desc_addr_dma71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %desc_addr_dma71, align 4
  %cmp72 = icmp eq i32 %56, 0
  br i1 %cmp72, label %land.rhs.do.body61_crit_edge, label %land.rhs.do.end74_crit_edge

land.rhs.do.end74_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

land.rhs.do.body61_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61

do.end74:                                         ; preds = %land.rhs.do.end74_crit_edge, %do.body61.do.end74_crit_edge
  %57 = ptrtoint ptr %tail5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and63, ptr %tail5, align 4
  br label %if.end76

if.end76:                                         ; preds = %do.end74, %wr_reg32.exit.if.end76_crit_edge
  tail call void %38(ptr noundef %0, ptr noundef %42, i32 noundef %retval.0.i125, ptr noundef %40) #9
  %dec = add i32 %outring_used.1, -1
  br label %while.cond

while.end:                                        ; preds = %rd_reg32.exit
  %58 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rregs, align 16
  %rconfig_lo = getelementptr inbounds %struct.caam_job_ring, ptr %59, i32 0, i32 19
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %60 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i129 = icmp eq i8 %60, 0
  br i1 %tobool.not.i129, label %do.body.i131, label %if.then.i130

if.then.i130:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  %62 = and i32 %61, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo, i32 %62) #9, !srcloc !123
  br label %clrsetbits_32.exit

do.body.i131:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %and3.i = and i32 %63, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo, i32 %and3.i) #9, !srcloc !123
  br label %clrsetbits_32.exit

clrsetbits_32.exit:                               ; preds = %do.body.i131, %if.then.i130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_jr_interrupt(i32 noundef %irq, ptr noundef %st_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %st_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rregs = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rregs, align 16
  %jrintstatus = getelementptr inbounds %struct.caam_job_ring, ptr %3, i32 0, i32 17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %4 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %jrintstatus) #9
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  br label %rd_reg32.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %6, %if.then.i ], [ %5, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %rd_reg32.exit.cleanup_crit_edge, label %if.end

rd_reg32.exit.cleanup_crit_edge:                  ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rd_reg32.exit
  %and = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %st_dev, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/caam/jr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #9, !srcloc !139
  unreachable

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rregs, align 16
  %rconfig_lo = getelementptr inbounds %struct.caam_job_ring, ptr %8, i32 0, i32 19
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %9 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i31 = icmp eq i8 %9, 0
  br i1 %tobool.not.i31, label %do.body.i, label %if.then.i32

if.then.i32:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo, i32 %11) #9, !srcloc !123
  br label %clrsetbits_32.exit

do.body.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rconfig_lo) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %or4.i = or i32 %12, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rconfig_lo, i32 %or4.i) #9, !srcloc !123
  br label %clrsetbits_32.exit

clrsetbits_32.exit:                               ; preds = %do.body.i, %if.then.i32
  %13 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rregs, align 16
  %jrintstatus13 = getelementptr inbounds %struct.caam_job_ring, ptr %14, i32 0, i32 17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %15 = load i8, ptr @caam_little_end, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i34 = icmp eq i8 %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i34, label %do.body.i36, label %if.then.i35

if.then.i35:                                      ; preds = %clrsetbits_32.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jrintstatus13, i32 %16) #9, !srcloc !123
  br label %wr_reg32.exit

do.body.i36:                                      ; preds = %clrsetbits_32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jrintstatus13, i32 %retval.0.i) #9, !srcloc !123
  br label %wr_reg32.exit

wr_reg32.exit:                                    ; preds = %do.body.i36, %if.then.i35
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #9
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %20, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !140
  %state.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i38 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i38, label %if.then.i39, label %wr_reg32.exit.tasklet_schedule.exit_crit_edge

wr_reg32.exit.tasklet_schedule.exit_crit_edge:    ; preds = %wr_reg32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i39:                                      ; preds = %wr_reg32.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irqtask = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %irqtask) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i39, %wr_reg32.exit.tasklet_schedule.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !141
  %21 = tail call i32 @llvm.read_register.i32(metadata !108) #9
  %and.i.i.i29 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i30, align 4
  %sub.i = add i32 %24, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i30, align 4
  br label %cleanup

cleanup:                                          ; preds = %tasklet_schedule.exit, %rd_reg32.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %tasklet_schedule.exit ], [ 0, %rd_reg32.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_algapi_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_algapi_hash_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_pkc_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_rng_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_rng_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_pkc_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_algapi_hash_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_algapi_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107}
!llvm.named.register.sp = !{!108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__ksymtab_caam_jr_alloc, !1, !"__ksymtab_caam_jr_alloc", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/jr.c", i32 323, i32 1}
!2 = !{ptr @__ksymtab_caam_jr_free, !3, !"__ksymtab_caam_jr_free", i1 false, i1 false}
!3 = !{!"../drivers/crypto/caam/jr.c", i32 336, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/crypto/caam/jr.c", i32 378, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @caam_jr_enqueue._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @caam_jr_enqueue._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_caam_jr_enqueue, !13, !"__ksymtab_caam_jr_enqueue", i1 false, i1 false}
!13 = !{!"../drivers/crypto/caam/jr.c", i32 430, i32 1}
!14 = !{ptr @__initcall__kmod_caam_jr__513_634_jr_driver_init6, !15, !"__initcall__kmod_caam_jr__513_634_jr_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/crypto/caam/jr.c", i32 634, i32 1}
!16 = !{ptr @__exitcall_jr_driver_exit, !17, !"__exitcall_jr_driver_exit", i1 false, i1 false}
!17 = !{!"../drivers/crypto/caam/jr.c", i32 635, i32 1}
!18 = !{ptr @__UNIQUE_ID_file514, !19, !"__UNIQUE_ID_file514", i1 false, i1 false}
!19 = !{!"../drivers/crypto/caam/jr.c", i32 637, i32 1}
!20 = !{ptr @__UNIQUE_ID_license515, !19, !"__UNIQUE_ID_license515", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_description516, !22, !"__UNIQUE_ID_description516", i1 false, i1 false}
!22 = !{!"../drivers/crypto/caam/jr.c", i32 638, i32 1}
!23 = !{ptr @__UNIQUE_ID_author517, !24, !"__UNIQUE_ID_author517", i1 false, i1 false}
!24 = !{!"../drivers/crypto/caam/jr.c", i32 639, i32 1}
!25 = !{ptr @driver_data, !26, !"driver_data", i1 false, i1 false}
!26 = !{!"../drivers/crypto/caam/jr.c", i32 26, i32 30}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/caam/jr.c", i32 615, i32 11}
!33 = !{ptr @caam_jr_driver, !34, !"caam_jr_driver", i1 false, i1 false}
!34 = !{!"../drivers/crypto/caam/jr.c", i32 613, i32 31}
!35 = !{ptr @caam_jr_probe.total_jobrs, !36, !"total_jobrs", i1 false, i1 false}
!36 = !{!"../drivers/crypto/caam/jr.c", i32 514, i32 13}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/caam/jr.c", i32 533, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @caam_jr_probe._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @caam_jr_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/caam/jr.c", i32 539, i32 3}
!44 = !{ptr @caam_jr_probe._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @caam_jr_probe._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/caam/jr.c", i32 547, i32 3}
!48 = !{ptr @caam_jr_probe._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @caam_jr_probe._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/caam/jr.c", i32 557, i32 3}
!52 = !{ptr @caam_jr_probe._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @caam_jr_probe._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/caam/jr.c", i32 569, i32 3}
!56 = !{ptr @caam_jr_probe._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @caam_jr_probe._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/caam/jr.c", i32 576, i32 3}
!60 = !{ptr @caam_jr_probe._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @caam_jr_probe._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/caam/intern.h", i32 216, i32 37}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/caam/intern.h", i32 217, i32 37}
!66 = !{ptr @caam_jr_init.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/crypto/caam/jr.c", i32 479, i32 2}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/caam/jr.c", i32 492, i32 3}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @caam_jr_init._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @caam_jr_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/caam/jr.c", i32 93, i32 3}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @caam_reset_hw_jr._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @caam_reset_hw_jr._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/crypto/caam/jr.c", i32 104, i32 3}
!81 = !{ptr @caam_reset_hw_jr._entry.32, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @caam_reset_hw_jr._entry_ptr.34, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/crypto/caam/jr.c", i32 186, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @caam_jr_interrupt._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @caam_jr_interrupt._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/crypto/caam/jr.c", i32 27, i32 8}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @algs_lock, !89, !"algs_lock", i1 false, i1 false}
!92 = !{ptr @active_devs, !93, !"active_devs", i1 false, i1 false}
!93 = !{!"../drivers/crypto/caam/jr.c", i32 28, i32 21}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/caam/jr.c", i32 145, i32 3}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @caam_jr_remove._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @caam_jr_remove._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/crypto/caam/jr.c", i32 160, i32 3}
!101 = !{ptr @caam_jr_remove._entry.41, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @caam_jr_remove._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @caam_jr_match, !104, !"caam_jr_match", i1 false, i1 false}
!104 = !{!"../drivers/crypto/caam/jr.c", i32 602, i32 34}
!105 = !{ptr @jr_driver_init.__key, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/crypto/caam/jr.c", i32 624, i32 2}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{!"sp"}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2148539996, i64 2148540022, i64 2148540051, i64 2148540085, i64 2148540116, i64 2148540139}
!119 = !{i64 2148542461, i64 2148542487, i64 2148542516, i64 2148542550, i64 2148542581, i64 2148542604}
!120 = !{i8 0, i8 2}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2158542917}
!123 = !{i64 3647537}
!124 = !{i64 2151188304}
!125 = !{i64 2158414915}
!126 = !{!"auto-init"}
!127 = !{i64 3647955}
!128 = !{i64 2151189659}
!129 = !{i64 2158415794}
!130 = !{i64 2158416020}
!131 = !{i64 2158516272}
!132 = !{i64 2158516114}
!133 = !{i64 2158518209}
!134 = !{i64 2158518051}
!135 = !{i64 2158405758}
!136 = !{i64 2158406066}
!137 = !{i64 2158529885, i64 2158530374, i64 2158529922, i64 2158529978, i64 2158530012, i64 2158530036, i64 2158530077, i64 2158530098, i64 2158530126, i64 2158530160}
!138 = !{i64 2158531430}
!139 = !{i64 2158524925, i64 2158525414, i64 2158524962, i64 2158525018, i64 2158525052, i64 2158525076, i64 2158525117, i64 2158525138, i64 2158525166, i64 2158525200}
!140 = !{i64 2158526370}
!141 = !{i64 2158526467}
