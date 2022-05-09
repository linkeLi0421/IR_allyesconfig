; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/cqhci-core.c_pt.bc'
source_filename = "../drivers/mmc/host/cqhci-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cqhci_deactivate\22, \22a\22\09"
module asm "\09.weak\09__crc_cqhci_deactivate\09\09\09\09"
module asm "\09.long\09__crc_cqhci_deactivate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_deactivate\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cqhci_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_cqhci_resume\09\09\09\09"
module asm "\09.long\09__crc_cqhci_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_resume\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cqhci_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_cqhci_irq\09\09\09\09"
module asm "\09.long\09__crc_cqhci_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_irq\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cqhci_pltfm_init\22, \22a\22\09"
module asm "\09.weak\09__crc_cqhci_pltfm_init\09\09\09\09"
module asm "\09.long\09__crc_cqhci_pltfm_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_pltfm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_pltfm_init\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_pltfm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cqhci_init\22, \22a\22\09"
module asm "\09.weak\09__crc_cqhci_init\09\09\09\09"
module asm "\09.long\09__crc_cqhci_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_init\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cqhci_slot = type { ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.bio_crypt_ctx = type { ptr, [4 x i64] }

@__kstrtab_cqhci_deactivate = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_deactivate = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_deactivate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_deactivate to i32), ptr @__kstrtab_cqhci_deactivate, ptr @__kstrtabns_cqhci_deactivate }, section "___ksymtab+cqhci_deactivate", align 4
@__kstrtab_cqhci_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_resume to i32), ptr @__kstrtab_cqhci_resume, ptr @__kstrtabns_cqhci_resume }, section "___ksymtab+cqhci_resume", align 4
@cqhci_irq.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cqhci\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cqhci_irq\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mmc/host/cqhci-core.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: cqhci: IRQ status: 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@cqhci_irq.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: cqhci: TCN: 0x%08lx\0A\00", [39 x i8] zeroinitializer }, align 32
@cqhci_irq.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: cqhci: completing tag %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_cqhci_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_irq to i32), ptr @__kstrtab_cqhci_irq, ptr @__kstrtabns_cqhci_irq }, section "___ksymtab+cqhci_irq", align 4
@cqhci_pltfm_init.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cqhci_pltfm_init\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CMDQ not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@cqhci_pltfm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1146, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to remap cqhci regs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cqhci_pltfm_init._entry_ptr = internal global ptr @cqhci_pltfm_init._entry, section ".printk_index", align 4
@cqhci_pltfm_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CMDQ ioremap: done\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_cqhci_pltfm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_pltfm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_pltfm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_pltfm_init to i32), ptr @__kstrtab_cqhci_pltfm_init, ptr @__kstrtabns_cqhci_pltfm_init }, section "___ksymtab+cqhci_pltfm_init", align 4
@cqhci_cqe_ops = internal constant { %struct.mmc_cqe_ops, [60 x i8] } { %struct.mmc_cqe_ops { ptr @cqhci_enable, ptr @cqhci_disable, ptr @cqhci_request, ptr @cqhci_post_req, ptr @cqhci_off, ptr @cqhci_wait_for_idle, ptr @cqhci_timeout, ptr @cqhci_recovery_start, ptr @cqhci_recovery_finish }, [60 x i8] zeroinitializer }, align 32
@cqhci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: CQHCI crypto initialization failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cqhci_init\00", [21 x i8] zeroinitializer }, align 32
@cqhci_init._entry_ptr = internal global ptr @cqhci_init._entry, section ".printk_index", align 4
@cqhci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cq_host->lock\00", [17 x i8] zeroinitializer }, align 32
@cqhci_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cq_host->wait_queue\00", [43 x i8] zeroinitializer }, align 32
@cqhci_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: CQHCI version %u.%02u\0A\00", [35 x i8] zeroinitializer }, align 32
@cqhci_init._entry_ptr.19 = internal global ptr @cqhci_init._entry.17, section ".printk_index", align 4
@cqhci_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: CQHCI version %u.%02u failed to initialize, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cqhci_init._entry_ptr.22 = internal global ptr @cqhci_init._entry.20, section ".printk_index", align 4
@__kstrtab_cqhci_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_init to i32), ptr @__kstrtab_cqhci_init, ptr @__kstrtabns_cqhci_init }, section "___ksymtab+cqhci_init", align 4
@__UNIQUE_ID_author290 = internal constant [60 x i8] c"cqhci.author=Venkat Gopalakrishnan <venkatg@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [65 x i8] c"cqhci.description=Command Queue Host Controller Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [34 x i8] c"cqhci.file=drivers/mmc/host/cqhci\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"cqhci.license=GPL v2\00", section ".modinfo", align 1
@cqhci_error_irq.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cqhci_error_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s: cqhci: error IRQ status: 0x%08x cmd error %d data error %d TERRI: 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@cqhci_error_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s: cqhci: error when idle. IRQ status: 0x%08x cmd error %d data error %d TERRI: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@cqhci_error_irq.__already_done.26 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s: cqhci: invalid crypto configuration error. IRQ status: 0x%08x TDPE: 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@cqhci_recovery_needed.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cqhci_recovery_needed\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: cqhci: recovery needed\0A\00", [36 x i8] zeroinitializer }, align 32
@cqhci_finish_mrq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: cqhci: spurious TCN for tag %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cqhci_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to enable CQE, error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cqhci_enable\00", [19 x i8] zeroinitializer }, align 32
@cqhci_enable._entry_ptr = internal global ptr @cqhci_enable._entry, section ".printk_index", align 4
@cqhci_host_alloc_tdl.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cqhci_host_alloc_tdl\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: cqhci: desc_size: %zu data_sz: %zu slot-sz: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cqhci_host_alloc_tdl.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s: cqhci: desc-base: 0x%p trans-base: 0x%p\0A desc_dma 0x%llx trans_dma: 0x%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@cqhci_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: cqhci: not enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cqhci_request\00", [18 x i8] zeroinitializer }, align 32
@cqhci_request._entry_ptr = internal global ptr @cqhci_request._entry, section ".printk_index", align 4
@cqhci_request.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: cqhci: CQE on\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_request._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: cqhci: CQE failed to exit halt state\0A\00", [52 x i8] zeroinitializer }, align 32
@cqhci_request._entry_ptr.41 = internal global ptr @cqhci_request._entry.39, section ".printk_index", align 4
@cqhci_request._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: cqhci: failed to setup tx desc: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@cqhci_request._entry_ptr.44 = internal global ptr @cqhci_request._entry.42, section ".printk_index", align 4
@cqhci_request.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.45, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: cqhci: doorbell not set for tag %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cqhci_prep_task_desc.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cqhci_prep_task_desc\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: cqhci: tag %d task descriptor 0x%016llx%016llx\0A\00", [44 x i8] zeroinitializer }, align 32
@cqhci_prep_task_desc.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: cqhci: tag %d task descriptor 0x%016llx\0A\00", [51 x i8] zeroinitializer }, align 32
@cqhci_crypto_prep_task_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mmc/host/cqhci-crypto.h\00", [32 x i8] zeroinitializer }, align 32
@cqhci_prep_tran_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: %s: unable to map sg lists, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cqhci_prep_tran_desc\00", [43 x i8] zeroinitializer }, align 32
@cqhci_prep_tran_desc._entry_ptr = internal global ptr @cqhci_prep_tran_desc._entry, section ".printk_index", align 4
@cqhci_dma_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s: sg-len: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cqhci_dma_map\00", [18 x i8] zeroinitializer }, align 32
@cqhci_dma_map._entry_ptr = internal global ptr @cqhci_dma_map._entry, section ".printk_index", align 4
@cqhci_prep_dcmd_desc.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cqhci_prep_dcmd_desc\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: cqhci: dcmd: cmd: %d timing: %d resp: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cqhci_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: cqhci: CQE stuck on\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cqhci_off\00", [22 x i8] zeroinitializer }, align 32
@cqhci_off._entry_ptr = internal global ptr @cqhci_off._entry, section ".printk_index", align 4
@cqhci_off.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: cqhci: CQE off\0A\00", [44 x i8] zeroinitializer }, align 32
@cqhci_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: cqhci: timeout for tag %d, qcnt %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cqhci_timeout\00", [18 x i8] zeroinitializer }, align 32
@cqhci_timeout._entry_ptr = internal global ptr @cqhci_timeout._entry, section ".printk_index", align 4
@cqhci_dumpregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: cqhci: ============ CQHCI REGISTER DUMP ===========\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cqhci_dumpregs\00", [17 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr = internal global ptr @cqhci_dumpregs._entry, section ".printk_index", align 4
@cqhci_dumpregs._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: Caps:      0x%08x | Version:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.65 = internal global ptr @cqhci_dumpregs._entry.63, section ".printk_index", align 4
@cqhci_dumpregs._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: Config:    0x%08x | Control:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.68 = internal global ptr @cqhci_dumpregs._entry.66, section ".printk_index", align 4
@cqhci_dumpregs._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: Int stat:  0x%08x | Int enab: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.71 = internal global ptr @cqhci_dumpregs._entry.69, section ".printk_index", align 4
@cqhci_dumpregs._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: Int sig:   0x%08x | Int Coal: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.74 = internal global ptr @cqhci_dumpregs._entry.72, section ".printk_index", align 4
@cqhci_dumpregs._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: TDL base:  0x%08x | TDL up32: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.77 = internal global ptr @cqhci_dumpregs._entry.75, section ".printk_index", align 4
@cqhci_dumpregs._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.62, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: Doorbell:  0x%08x | TCN:      0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.80 = internal global ptr @cqhci_dumpregs._entry.78, section ".printk_index", align 4
@cqhci_dumpregs._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.62, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: Dev queue: 0x%08x | Dev Pend: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.83 = internal global ptr @cqhci_dumpregs._entry.81, section ".printk_index", align 4
@cqhci_dumpregs._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.62, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: Task clr:  0x%08x | SSC1:     0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.86 = internal global ptr @cqhci_dumpregs._entry.84, section ".printk_index", align 4
@cqhci_dumpregs._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.62, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: SSC2:      0x%08x | DCMD rsp: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.89 = internal global ptr @cqhci_dumpregs._entry.87, section ".printk_index", align 4
@cqhci_dumpregs._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.62, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: RED mask:  0x%08x | TERRI:    0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.92 = internal global ptr @cqhci_dumpregs._entry.90, section ".printk_index", align 4
@cqhci_dumpregs._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.62, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cqhci: Resp idx:  0x%08x | Resp arg: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.95 = internal global ptr @cqhci_dumpregs._entry.93, section ".printk_index", align 4
@cqhci_dumpregs._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.62, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: cqhci: : ===========================================\0A\00", [36 x i8] zeroinitializer }, align 32
@cqhci_dumpregs._entry_ptr.98 = internal global ptr @cqhci_dumpregs._entry.96, section ".printk_index", align 4
@cqhci_recovery_start.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.2, ptr @.str.100, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cqhci_recovery_start\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: cqhci: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@cqhci_halt.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cqhci_halt\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: cqhci: Failed to halt\0A\00", [37 x i8] zeroinitializer }, align 32
@cqhci_recovery_finish.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.100, i8 1, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cqhci_recovery_finish\00", [42 x i8] zeroinitializer }, align 32
@cqhci_recovery_finish.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 1, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: cqhci: disable / re-enable\0A\00", [32 x i8] zeroinitializer }, align 32
@cqhci_recovery_finish.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.105, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: cqhci: recovery done\0A\00", [38 x i8] zeroinitializer }, align 32
@cqhci_clear_all_tasks.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.2, ptr @.str.107, i8 0, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cqhci_clear_all_tasks\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: cqhci: Failed to clear tasks\0A\00", [62 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 822, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 832, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 839, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1135, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1146, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1149, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"cqhci_cqe_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1114, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1194, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1199, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1202, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1204, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1211, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 703, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 711, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 745, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 669, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 786, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 347, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 205, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 235, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 600, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 614, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 616, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 628, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 651, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 449, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 452, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [35 x i8] c"../drivers/mmc/host/cqhci-crypto.h\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 29, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 512, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 470, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 569, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 387, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 389, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 905, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 112, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 114, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 117, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 120, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 123, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 126, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 129, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 132, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 135, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 138, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 141, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 144, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 151, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 989, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 972, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1065, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1081, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1111, i32 2 }
@___asan_gen_.413 = private constant [33 x i8] c"../drivers/mmc/host/cqhci-core.c\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 938, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 87, i32 2 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_cqhci_deactivate, ptr @__ksymtab_cqhci_init, ptr @__ksymtab_cqhci_irq, ptr @__ksymtab_cqhci_pltfm_init, ptr @__ksymtab_cqhci_resume, ptr @cqhci_dma_map._entry, ptr @cqhci_dma_map._entry_ptr, ptr @cqhci_dumpregs._entry, ptr @cqhci_dumpregs._entry.63, ptr @cqhci_dumpregs._entry.66, ptr @cqhci_dumpregs._entry.69, ptr @cqhci_dumpregs._entry.72, ptr @cqhci_dumpregs._entry.75, ptr @cqhci_dumpregs._entry.78, ptr @cqhci_dumpregs._entry.81, ptr @cqhci_dumpregs._entry.84, ptr @cqhci_dumpregs._entry.87, ptr @cqhci_dumpregs._entry.90, ptr @cqhci_dumpregs._entry.93, ptr @cqhci_dumpregs._entry.96, ptr @cqhci_dumpregs._entry_ptr, ptr @cqhci_dumpregs._entry_ptr.65, ptr @cqhci_dumpregs._entry_ptr.68, ptr @cqhci_dumpregs._entry_ptr.71, ptr @cqhci_dumpregs._entry_ptr.74, ptr @cqhci_dumpregs._entry_ptr.77, ptr @cqhci_dumpregs._entry_ptr.80, ptr @cqhci_dumpregs._entry_ptr.83, ptr @cqhci_dumpregs._entry_ptr.86, ptr @cqhci_dumpregs._entry_ptr.89, ptr @cqhci_dumpregs._entry_ptr.92, ptr @cqhci_dumpregs._entry_ptr.95, ptr @cqhci_dumpregs._entry_ptr.98, ptr @cqhci_enable._entry, ptr @cqhci_enable._entry_ptr, ptr @cqhci_init._entry, ptr @cqhci_init._entry.17, ptr @cqhci_init._entry.20, ptr @cqhci_init._entry_ptr, ptr @cqhci_init._entry_ptr.19, ptr @cqhci_init._entry_ptr.22, ptr @cqhci_off._entry, ptr @cqhci_off._entry_ptr, ptr @cqhci_pltfm_init._entry, ptr @cqhci_pltfm_init._entry_ptr, ptr @cqhci_prep_tran_desc._entry, ptr @cqhci_prep_tran_desc._entry_ptr, ptr @cqhci_request._entry, ptr @cqhci_request._entry.39, ptr @cqhci_request._entry.42, ptr @cqhci_request._entry_ptr, ptr @cqhci_request._entry_ptr.41, ptr @cqhci_request._entry_ptr.44, ptr @cqhci_timeout._entry, ptr @cqhci_timeout._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cqhci_cqe_ops, ptr @.str.12, ptr @.str.13, ptr @cqhci_init.__key, ptr @.str.14, ptr @cqhci_init.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @init_completion.__key, ptr @.str.108], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_pltfm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_cqe_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_request._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_request._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_prep_tran_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dma_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_dumpregs._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cqhci_deactivate(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %enabled = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %activated = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %activated, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %read_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read_l.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_l.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !235

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %9(ptr noundef %1, i32 noundef 8) #6
  br label %cqhci_readl.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !236
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  br label %cqhci_readl.exit.i

cqhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %13, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %write_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %17, null
  br i1 %tobool.not.i5.i, label %if.else.i9.i, label %if.then.i6.i, !prof !235

if.then.i6.i:                                     ; preds = %cqhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef %1, i32 noundef %and.i, i32 noundef 8) #6
  br label %__cqhci_disable.exit

if.else.i9.i:                                     ; preds = %cqhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %mmio.i7.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %mmio.i7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %18) #6, !srcloc !237
  br label %__cqhci_disable.exit

__cqhci_disable.exit:                             ; preds = %if.else.i9.i, %if.then.i6.i
  %mmc.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc.i, align 4
  %cqe_on.i = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 66
  %23 = ptrtoint ptr %cqe_on.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %cqe_on.i, align 1
  %24 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %activated, align 1
  br label %if.end

if.end:                                           ; preds = %__cqhci_disable.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cqhci_resume(ptr nocapture readnone %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cqhci_irq(ptr noundef %mmc, i32 %intmask, i32 noundef %cmd_error, i32 noundef %data_error) #0 align 64 {
entry:
  %comp_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_status) #6
  %0 = ptrtoint ptr %comp_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %comp_status, align 4, !annotation !238
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %1 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cqe_private, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !235

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %6(ptr noundef %2, i32 noundef 16) #6
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !236
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i109 = phi i32 [ %call.i, %if.then.i ], [ %10, %if.else.i ]
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i110 = icmp eq ptr %14, null
  br i1 %tobool.not.i110, label %if.else.i114, label %if.then.i111, !prof !235

if.then.i111:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %14(ptr noundef %2, i32 noundef %retval.0.i109, i32 noundef 16) #6
  br label %cqhci_writel.exit

if.else.i114:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i109) #6
  %mmio.i112 = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %mmio.i112 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i112, align 4
  %add.ptr.i113 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %15) #6, !srcloc !237
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i114, %if.then.i111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_irq.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_irq, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !239

if.then:                                          ; preds = %cqhci_writel.exit
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i115 = icmp eq ptr %19, null
  br i1 %tobool.not.i115, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %20 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i116 = phi ptr [ %21, %if.end.i ], [ %19, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_irq.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i116, i32 noundef %retval.0.i109) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %cqhci_writel.exit
  %and = and i32 %retval.0.i109, 52
  %22 = or i32 %data_error, %cmd_error
  %23 = or i32 %22, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %do.end.if.end10_crit_edge, label %if.then9

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cqhci_error_irq(ptr noundef %mmc, i32 noundef %retval.0.i109, i32 noundef %cmd_error, i32 noundef %data_error)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end.if.end10_crit_edge
  %and11 = and i32 %retval.0.i109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end61_crit_edge, label %if.then13

if.end10.if.end61_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then13:                                        ; preds = %if.end10
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  %read_l.i117 = getelementptr inbounds %struct.cqhci_host_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %read_l.i117 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_l.i117, align 4
  %tobool.not.i118 = icmp eq ptr %28, null
  br i1 %tobool.not.i118, label %if.else.i123, label %if.then.i120, !prof !235

if.then.i120:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %call.i119 = tail call i32 %28(ptr noundef %2, i32 noundef 44) #6
  br label %cqhci_readl.exit125

if.else.i123:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i121 = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 1
  %29 = ptrtoint ptr %mmio.i121 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %30, i32 44
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #6, !srcloc !236
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  br label %cqhci_readl.exit125

cqhci_readl.exit125:                              ; preds = %if.else.i123, %if.then.i120
  %retval.0.i124 = phi i32 [ %call.i119, %if.then.i120 ], [ %32, %if.else.i123 ]
  %33 = ptrtoint ptr %comp_status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i124, ptr %comp_status, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %write_l.i126 = getelementptr inbounds %struct.cqhci_host_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_l.i126 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_l.i126, align 4
  %tobool.not.i127 = icmp eq ptr %37, null
  br i1 %tobool.not.i127, label %if.else.i131, label %if.then.i128, !prof !235

if.then.i128:                                     ; preds = %cqhci_readl.exit125
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %37(ptr noundef %2, i32 noundef %retval.0.i124, i32 noundef 44) #6
  br label %cqhci_writel.exit133

if.else.i131:                                     ; preds = %cqhci_readl.exit125
  call void @__sanitizer_cov_trace_pc() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i124) #6
  %mmio.i129 = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 1
  %39 = ptrtoint ptr %mmio.i129 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i129, align 4
  %add.ptr.i130 = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %38) #6, !srcloc !237
  br label %cqhci_writel.exit133

cqhci_writel.exit133:                             ; preds = %if.else.i131, %if.then.i128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_irq.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_irq, %if.then27)) #6
          to label %do.end32 [label %if.then27], !srcloc !239

if.then27:                                        ; preds = %cqhci_writel.exit133
  %init_name.i134 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %init_name.i134 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i134, align 8
  %tobool.not.i135 = icmp eq ptr %42, null
  br i1 %tobool.not.i135, label %if.end.i136, label %if.then27.dev_name.exit138_crit_edge

if.then27.dev_name.exit138_crit_edge:             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit138

if.end.i136:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev28 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %43 = ptrtoint ptr %class_dev28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %class_dev28, align 4
  br label %dev_name.exit138

dev_name.exit138:                                 ; preds = %if.end.i136, %if.then27.dev_name.exit138_crit_edge
  %retval.0.i137 = phi ptr [ %44, %if.end.i136 ], [ %42, %if.then27.dev_name.exit138_crit_edge ]
  %45 = ptrtoint ptr %comp_status to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %comp_status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_irq.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i137, i32 noundef %46) #6
  br label %do.end32

do.end32:                                         ; preds = %dev_name.exit138, %cqhci_writel.exit133
  %lock = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %num_slots = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 6
  %47 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_slots, align 4
  %call33 = call i32 @_find_next_bit_be(ptr noundef nonnull %comp_status, i32 noundef %48, i32 noundef 0) #6
  %49 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %50)
  %cmp149 = icmp ult i32 %call33, %50
  br i1 %cmp149, label %do.body35.lr.ph, label %do.end32.for.end_crit_edge

do.end32.for.end_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body35.lr.ph:                                  ; preds = %do.end32
  %init_name.i139 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %class_dev48 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  br label %do.body35

do.body35:                                        ; preds = %cqhci_finish_mrq.exit.do.body35_crit_edge, %do.body35.lr.ph
  %tag.0150 = phi i32 [ %call33, %do.body35.lr.ph ], [ %call54, %cqhci_finish_mrq.exit.do.body35_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_irq.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_irq, %if.then47)) #6
          to label %do.end52 [label %if.then47], !srcloc !239

if.then47:                                        ; preds = %do.body35
  %51 = ptrtoint ptr %init_name.i139 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i139, align 8
  %tobool.not.i140 = icmp eq ptr %52, null
  br i1 %tobool.not.i140, label %if.end.i141, label %if.then47.dev_name.exit143_crit_edge

if.then47.dev_name.exit143_crit_edge:             ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit143

if.end.i141:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %class_dev48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %class_dev48, align 4
  br label %dev_name.exit143

dev_name.exit143:                                 ; preds = %if.end.i141, %if.then47.dev_name.exit143_crit_edge
  %retval.0.i142 = phi ptr [ %54, %if.end.i141 ], [ %52, %if.then47.dev_name.exit143_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_irq.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i142, i32 noundef %tag.0150) #6
  br label %do.end52

do.end52:                                         ; preds = %dev_name.exit143, %do.body35
  %55 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cqe_private, align 4
  %slot1.i = getelementptr inbounds %struct.cqhci_host, ptr %56, i32 0, i32 29
  %57 = ptrtoint ptr %slot1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %slot1.i, align 4
  %arrayidx.i = getelementptr %struct.cqhci_slot, ptr %58, i32 %tag.0150
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i144 = icmp eq ptr %60, null
  br i1 %tobool.not.i144, label %land.end.i, label %if.end37.i

land.end.i:                                       ; preds = %do.end52
  %.b70.i = load i1, ptr @cqhci_finish_mrq.__already_done, align 1
  br i1 %.b70.i, label %land.end.i.cqhci_finish_mrq.exit_crit_edge, label %if.then8.i, !prof !235

land.end.i.cqhci_finish_mrq.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_finish_mrq.exit

if.then8.i:                                       ; preds = %land.end.i
  store i1 true, ptr @cqhci_finish_mrq.__already_done, align 1
  %61 = ptrtoint ptr %init_name.i139 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i139, align 8
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then8.i.dev_name.exit.i_crit_edge

if.then8.i.dev_name.exit.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %class_dev48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %class_dev48, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then8.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %64, %if.end.i.i ], [ %62, %if.then8.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 787, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i, i32 noundef %tag.0150) #6
  br label %cqhci_finish_mrq.exit

if.end37.i:                                       ; preds = %do.end52
  %recovery_halt.i = getelementptr inbounds %struct.cqhci_host, ptr %56, i32 0, i32 16
  %65 = ptrtoint ptr %recovery_halt.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %recovery_halt.i, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool38.not.i = icmp eq i8 %66, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i = getelementptr %struct.cqhci_slot, ptr %58, i32 %tag.0150, i32 1
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %68, 2
  store i32 %or.i, ptr %flags.i, align 4
  br label %cqhci_finish_mrq.exit

if.end40.i:                                       ; preds = %if.end37.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx.i, align 4
  %qcnt.i = getelementptr inbounds %struct.cqhci_host, ptr %56, i32 0, i32 7
  %70 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qcnt.i, align 4
  %sub.i = add i32 %71, -1
  store i32 %sub.i, ptr %qcnt.i, align 4
  %data42.i = getelementptr inbounds %struct.mmc_request, ptr %60, i32 0, i32 2
  %72 = ptrtoint ptr %data42.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data42.i, align 4
  %tobool43.not.i = icmp eq ptr %73, null
  br i1 %tobool43.not.i, label %if.end40.i.if.end49.i_crit_edge, label %if.then44.i

if.end40.i.if.end49.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then44.i:                                      ; preds = %if.end40.i
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool45.not.i = icmp eq i32 %75, 0
  br i1 %tobool45.not.i, label %if.else.i145, label %if.then44.i.if.end49.sink.split.i_crit_edge

if.then44.i.if.end49.sink.split.i_crit_edge:      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.sink.split.i

if.else.i145:                                     ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %blksz.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %73, i32 0, i32 3
  %78 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blocks.i, align 4
  %mul.i = mul i32 %79, %77
  br label %if.end49.sink.split.i

if.end49.sink.split.i:                            ; preds = %if.else.i145, %if.then44.i.if.end49.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %mul.i, %if.else.i145 ], [ 0, %if.then44.i.if.end49.sink.split.i_crit_edge ]
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %73, i32 0, i32 7
  %80 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.sink.i, ptr %bytes_xfered.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end49.sink.split.i, %if.end40.i.if.end49.i_crit_edge
  call void @mmc_cqe_request_done(ptr noundef %mmc, ptr noundef nonnull %60) #6
  br label %cqhci_finish_mrq.exit

cqhci_finish_mrq.exit:                            ; preds = %if.end49.i, %if.then39.i, %dev_name.exit.i, %land.end.i.cqhci_finish_mrq.exit_crit_edge
  %81 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_slots, align 4
  %add = add nuw i32 %tag.0150, 1
  %call54 = call i32 @_find_next_bit_be(ptr noundef nonnull %comp_status, i32 noundef %82, i32 noundef %add) #6
  %83 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_slots, align 4
  %cmp = icmp ult i32 %call54, %84
  br i1 %cmp, label %cqhci_finish_mrq.exit.do.body35_crit_edge, label %cqhci_finish_mrq.exit.for.end_crit_edge

cqhci_finish_mrq.exit.for.end_crit_edge:          ; preds = %cqhci_finish_mrq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cqhci_finish_mrq.exit.do.body35_crit_edge:        ; preds = %cqhci_finish_mrq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35

for.end:                                          ; preds = %cqhci_finish_mrq.exit.for.end_crit_edge, %do.end32.for.end_crit_edge
  %waiting_for_idle = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 15
  %85 = ptrtoint ptr %waiting_for_idle to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %waiting_for_idle, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool55.not = icmp eq i8 %86, 0
  br i1 %tobool55.not, label %for.end.if.end59_crit_edge, label %land.lhs.true

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

land.lhs.true:                                    ; preds = %for.end
  %qcnt = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 7
  %87 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %qcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool56.not = icmp eq i32 %88, 0
  br i1 %tobool56.not, label %if.then57, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %waiting_for_idle to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %waiting_for_idle, align 4
  %wait_queue = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 28
  call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true.if.end59_crit_edge, %for.end.if.end59_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %if.end61

if.end61:                                         ; preds = %if.end59, %if.end10.if.end61_crit_edge
  %and62 = and i32 %retval.0.i109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end66_crit_edge, label %if.then64

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %wait_queue65 = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 28
  call void @__wake_up(ptr noundef %wait_queue65, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end61.if.end66_crit_edge
  %and67 = and i32 %retval.0.i109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end71_crit_edge, label %if.then69

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %wait_queue70 = getelementptr inbounds %struct.cqhci_host, ptr %2, i32 0, i32 28
  call void @__wake_up(ptr noundef %wait_queue70, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66.if.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_status) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cqhci_error_irq(ptr nocapture noundef readonly %mmc, i32 noundef %status, i32 noundef %cmd_error, i32 noundef %data_error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %lock = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !235

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 84) #6
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 84
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !236
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i225 = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_error_irq.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_error_irq, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !239

if.then:                                          ; preds = %cqhci_readl.exit
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i226 = icmp eq ptr %11, null
  br i1 %tobool.not.i226, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %12 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i227 = phi ptr [ %13, %if.end.i ], [ %11, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_error_irq.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.24, ptr noundef %retval.0.i227, i32 noundef %status, i32 noundef %cmd_error, i32 noundef %data_error, i32 noundef %retval.0.i225) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %cqhci_readl.exit
  %recovery_halt = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %recovery_halt, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end7:                                          ; preds = %do.end
  %qcnt = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %land.end, label %if.end56

land.end:                                         ; preds = %if.end7
  %.b223 = load i1, ptr @cqhci_error_irq.__already_done, align 1
  br i1 %.b223, label %land.end.out_unlock_crit_edge, label %if.then20, !prof !235

land.end.out_unlock_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then20:                                        ; preds = %land.end
  store i1 true, ptr @cqhci_error_irq.__already_done, align 1
  %init_name.i228 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %init_name.i228 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i228, align 8
  %tobool.not.i229 = icmp eq ptr %19, null
  br i1 %tobool.not.i229, label %if.end.i230, label %if.then20.dev_name.exit232_crit_edge

if.then20.dev_name.exit232_crit_edge:             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit232

if.end.i230:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev33 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %20 = ptrtoint ptr %class_dev33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev33, align 4
  br label %dev_name.exit232

dev_name.exit232:                                 ; preds = %if.end.i230, %if.then20.dev_name.exit232_crit_edge
  %retval.0.i231 = phi ptr [ %21, %if.end.i230 ], [ %19, %if.then20.dev_name.exit232_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 713, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i231, i32 noundef %status, i32 noundef %cmd_error, i32 noundef %data_error, i32 noundef %retval.0.i225) #6
  br label %out_unlock

if.end56:                                         ; preds = %if.end7
  %and = and i32 %retval.0.i225, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.end56.if.end66_crit_edge, label %if.then58

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then58:                                        ; preds = %if.end56
  %and59 = lshr i32 %retval.0.i225, 8
  %shr = and i32 %and59, 31
  %slot60 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 29
  %22 = ptrtoint ptr %slot60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slot60, align 4
  %arrayidx = getelementptr %struct.cqhci_slot, ptr %23, i32 %shr
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool61.not = icmp eq ptr %25, null
  br i1 %tobool61.not, label %if.then58.if.end66_crit_edge, label %if.then62

if.then58.if.end66_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_error)
  %tobool.not.i233 = icmp eq i32 %cmd_error, 0
  %error2.error1.i = select i1 %tobool.not.i233, i32 %data_error, i32 %cmd_error
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %error2.error1.i)
  %switch.selectcmp.i = icmp eq i32 %error2.error1.i, -110
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %error2.error1.i)
  %switch.selectcmp3.i = icmp eq i32 %error2.error1.i, -84
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 4, i32 %switch.select.i
  %flags = getelementptr %struct.cqhci_slot, ptr %23, i32 %shr, i32 1
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.select4.i, ptr %flags, align 4
  %27 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cqe_private, align 4
  %recovery_halt.i = getelementptr inbounds %struct.cqhci_host, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %recovery_halt.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %recovery_halt.i, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i234 = icmp eq i8 %30, 0
  br i1 %tobool.not.i234, label %if.then.i235, label %if.then62.if.end66_crit_edge

if.then62.if.end66_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then.i235:                                     ; preds = %if.then62
  %31 = ptrtoint ptr %recovery_halt.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %recovery_halt.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_error_irq, %if.then6.i)) #6
          to label %do.end.i [label %if.then6.i], !srcloc !239

if.then6.i:                                       ; preds = %if.then.i235
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then6.i.dev_name.exit.i_crit_edge

if.then6.i.dev_name.exit.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %34 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then6.i.dev_name.exit.i_crit_edge
  %retval.0.i19.i = phi ptr [ %35, %if.end.i.i ], [ %33, %if.then6.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i19.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %dev_name.exit.i, %if.then.i235
  %wait_queue.i = getelementptr inbounds %struct.cqhci_host, ptr %28, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %wait_queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %recovery_notifier.i = getelementptr inbounds %struct.mmc_request, ptr %25, i32 0, i32 7
  %36 = ptrtoint ptr %recovery_notifier.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %recovery_notifier.i, align 4
  %tobool9.not.i = icmp eq ptr %37, null
  br i1 %tobool9.not.i, label %do.end.i.if.end66_crit_edge, label %if.then10.i

do.end.i.if.end66_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then10.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %37(ptr noundef nonnull %25) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then10.i, %do.end.i.if.end66_crit_edge, %if.then62.if.end66_crit_edge, %if.then58.if.end66_crit_edge, %if.end56.if.end66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i225)
  %tobool68.not = icmp sgt i32 %retval.0.i225, -1
  br i1 %tobool68.not, label %if.end66.if.end81_crit_edge, label %if.then69

if.end66.if.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then69:                                        ; preds = %if.end66
  %and70 = lshr i32 %retval.0.i225, 24
  %shr71 = and i32 %and70, 31
  %slot72 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 29
  %38 = ptrtoint ptr %slot72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slot72, align 4
  %arrayidx73 = getelementptr %struct.cqhci_slot, ptr %39, i32 %shr71
  %40 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx73, align 4
  %tobool75.not = icmp eq ptr %41, null
  br i1 %tobool75.not, label %if.then69.if.end81_crit_edge, label %if.then76

if.then69.if.end81_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then76:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_error)
  %tobool.not.i236 = icmp eq i32 %data_error, 0
  %error2.error1.i237 = select i1 %tobool.not.i236, i32 %cmd_error, i32 %data_error
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %error2.error1.i237)
  %switch.selectcmp.i238 = icmp eq i32 %error2.error1.i237, -110
  %switch.select.i239 = select i1 %switch.selectcmp.i238, i32 8, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %error2.error1.i237)
  %switch.selectcmp3.i240 = icmp eq i32 %error2.error1.i237, -84
  %switch.select4.i241 = select i1 %switch.selectcmp3.i240, i32 4, i32 %switch.select.i239
  %flags78 = getelementptr %struct.cqhci_slot, ptr %39, i32 %shr71, i32 1
  %42 = ptrtoint ptr %flags78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %switch.select4.i241, ptr %flags78, align 4
  %43 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cqe_private, align 4
  %recovery_halt.i243 = getelementptr inbounds %struct.cqhci_host, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %recovery_halt.i243 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %recovery_halt.i243, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i244 = icmp eq i8 %46, 0
  br i1 %tobool.not.i244, label %if.then.i245, label %if.then76.if.end81_crit_edge

if.then76.if.end81_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then.i245:                                     ; preds = %if.then76
  %47 = ptrtoint ptr %recovery_halt.i243 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %recovery_halt.i243, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_error_irq, %if.then6.i248)) #6
          to label %do.end.i254 [label %if.then6.i248], !srcloc !239

if.then6.i248:                                    ; preds = %if.then.i245
  %init_name.i.i246 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %init_name.i.i246 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i246, align 8
  %tobool.not.i.i247 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i247, label %if.end.i.i250, label %if.then6.i248.dev_name.exit.i252_crit_edge

if.then6.i248.dev_name.exit.i252_crit_edge:       ; preds = %if.then6.i248
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i252

if.end.i.i250:                                    ; preds = %if.then6.i248
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i249 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %50 = ptrtoint ptr %class_dev.i249 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %class_dev.i249, align 4
  br label %dev_name.exit.i252

dev_name.exit.i252:                               ; preds = %if.end.i.i250, %if.then6.i248.dev_name.exit.i252_crit_edge
  %retval.0.i19.i251 = phi ptr [ %51, %if.end.i.i250 ], [ %49, %if.then6.i248.dev_name.exit.i252_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i19.i251) #6
  br label %do.end.i254

do.end.i254:                                      ; preds = %dev_name.exit.i252, %if.then.i245
  %wait_queue.i253 = getelementptr inbounds %struct.cqhci_host, ptr %44, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %wait_queue.i253, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %recovery_notifier.i255 = getelementptr inbounds %struct.mmc_request, ptr %41, i32 0, i32 7
  %52 = ptrtoint ptr %recovery_notifier.i255 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %recovery_notifier.i255, align 4
  %tobool9.not.i256 = icmp eq ptr %53, null
  br i1 %tobool9.not.i256, label %do.end.i254.if.end81_crit_edge, label %if.then10.i257

do.end.i254.if.end81_crit_edge:                   ; preds = %do.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then10.i257:                                   ; preds = %do.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %53(ptr noundef nonnull %41) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then10.i257, %do.end.i254.if.end81_crit_edge, %if.then76.if.end81_crit_edge, %if.then69.if.end81_crit_edge, %if.end66.if.end81_crit_edge
  %and82 = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end81.if.end147_crit_edge, label %if.then84

if.end81.if.end147_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then84:                                        ; preds = %if.end81
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %read_l.i259 = getelementptr inbounds %struct.cqhci_host_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %read_l.i259 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_l.i259, align 4
  %tobool.not.i260 = icmp eq ptr %57, null
  br i1 %tobool.not.i260, label %if.else.i265, label %if.then.i262, !prof !235

if.then.i262:                                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %call.i261 = tail call i32 %57(ptr noundef %1, i32 noundef 60) #6
  br label %cqhci_readl.exit267

if.else.i265:                                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i263 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %mmio.i263 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i263, align 4
  %add.ptr.i264 = getelementptr i8, ptr %59, i32 60
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i264) #6, !srcloc !236
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  br label %cqhci_readl.exit267

cqhci_readl.exit267:                              ; preds = %if.else.i265, %if.then.i262
  %retval.0.i266 = phi i32 [ %call.i261, %if.then.i262 ], [ %61, %if.else.i265 ]
  %.b222224 = load i1, ptr @cqhci_error_irq.__already_done.26, align 1
  br i1 %.b222224, label %cqhci_readl.exit267.if.end128_crit_edge, label %if.then99, !prof !235

cqhci_readl.exit267.if.end128_crit_edge:          ; preds = %cqhci_readl.exit267
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then99:                                        ; preds = %cqhci_readl.exit267
  store i1 true, ptr @cqhci_error_irq.__already_done.26, align 1
  %init_name.i268 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %init_name.i268 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i268, align 8
  %tobool.not.i269 = icmp eq ptr %63, null
  br i1 %tobool.not.i269, label %if.end.i270, label %if.then99.dev_name.exit272_crit_edge

if.then99.dev_name.exit272_crit_edge:             ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit272

if.end.i270:                                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev113 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %64 = ptrtoint ptr %class_dev113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %class_dev113, align 4
  br label %dev_name.exit272

dev_name.exit272:                                 ; preds = %if.end.i270, %if.then99.dev_name.exit272_crit_edge
  %retval.0.i271 = phi ptr [ %65, %if.end.i270 ], [ %63, %if.then99.dev_name.exit272_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 747, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i271, i32 noundef %status, i32 noundef %retval.0.i266) #6
  br label %if.end128

if.end128:                                        ; preds = %dev_name.exit272, %cqhci_readl.exit267.if.end128_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i266)
  %cmp.not322 = icmp eq i32 %retval.0.i266, 0
  br i1 %cmp.not322, label %if.end128.if.end147_crit_edge, label %while.body.lr.ph

if.end128.if.end147_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

while.body.lr.ph:                                 ; preds = %if.end128
  %slot138 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_error)
  %tobool.not.i273 = icmp eq i32 %data_error, 0
  %error2.error1.i274 = select i1 %tobool.not.i273, i32 %cmd_error, i32 %data_error
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %error2.error1.i274)
  %switch.selectcmp.i275 = icmp eq i32 %error2.error1.i274, -110
  %switch.select.i276 = select i1 %switch.selectcmp.i275, i32 8, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %error2.error1.i274)
  %switch.selectcmp3.i277 = icmp eq i32 %error2.error1.i274, -84
  %switch.select4.i278 = select i1 %switch.selectcmp3.i277, i32 4, i32 %switch.select.i276
  %init_name.i.i283 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %class_dev.i286 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %tdpe.0323 = phi i32 [ %retval.0.i266, %while.body.lr.ph ], [ %and137, %while.cond.backedge.while.body_crit_edge ]
  %66 = tail call i32 @llvm.cttz.i32(i32 %tdpe.0323, i1 true) #6, !range !240
  %shl = shl nuw i32 1, %66
  %neg = xor i32 %shl, -1
  %and137 = and i32 %tdpe.0323, %neg
  %67 = ptrtoint ptr %slot138 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %slot138, align 4
  %arrayidx139 = getelementptr %struct.cqhci_slot, ptr %68, i32 %66
  %69 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx139, align 4
  %tobool141.not = icmp eq ptr %70, null
  br i1 %tobool141.not, label %while.body.while.cond.backedge_crit_edge, label %if.end143

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end143:                                        ; preds = %while.body
  %flags145 = getelementptr %struct.cqhci_slot, ptr %68, i32 %66, i32 1
  %71 = ptrtoint ptr %flags145 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %switch.select4.i278, ptr %flags145, align 4
  %72 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cqe_private, align 4
  %recovery_halt.i280 = getelementptr inbounds %struct.cqhci_host, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %recovery_halt.i280 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %recovery_halt.i280, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i281 = icmp eq i8 %75, 0
  br i1 %tobool.not.i281, label %if.then.i282, label %if.end143.while.cond.backedge_crit_edge

if.end143.while.cond.backedge_crit_edge:          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.then.i282:                                     ; preds = %if.end143
  %76 = ptrtoint ptr %recovery_halt.i280 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %recovery_halt.i280, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_error_irq, %if.then6.i285)) #6
          to label %do.end.i291 [label %if.then6.i285], !srcloc !239

if.then6.i285:                                    ; preds = %if.then.i282
  %77 = ptrtoint ptr %init_name.i.i283 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i.i283, align 8
  %tobool.not.i.i284 = icmp eq ptr %78, null
  br i1 %tobool.not.i.i284, label %if.end.i.i287, label %if.then6.i285.dev_name.exit.i289_crit_edge

if.then6.i285.dev_name.exit.i289_crit_edge:       ; preds = %if.then6.i285
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i289

if.end.i.i287:                                    ; preds = %if.then6.i285
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %class_dev.i286 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %class_dev.i286, align 4
  br label %dev_name.exit.i289

dev_name.exit.i289:                               ; preds = %if.end.i.i287, %if.then6.i285.dev_name.exit.i289_crit_edge
  %retval.0.i19.i288 = phi ptr [ %80, %if.end.i.i287 ], [ %78, %if.then6.i285.dev_name.exit.i289_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i19.i288) #6
  br label %do.end.i291

do.end.i291:                                      ; preds = %dev_name.exit.i289, %if.then.i282
  %wait_queue.i290 = getelementptr inbounds %struct.cqhci_host, ptr %73, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %wait_queue.i290, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %recovery_notifier.i292 = getelementptr inbounds %struct.mmc_request, ptr %70, i32 0, i32 7
  %81 = ptrtoint ptr %recovery_notifier.i292 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %recovery_notifier.i292, align 4
  %tobool9.not.i293 = icmp eq ptr %82, null
  br i1 %tobool9.not.i293, label %do.end.i291.while.cond.backedge_crit_edge, label %if.then10.i294

do.end.i291.while.cond.backedge_crit_edge:        ; preds = %do.end.i291
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.then10.i294:                                   ; preds = %do.end.i291
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %82(ptr noundef nonnull %70) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then10.i294, %do.end.i291.while.cond.backedge_crit_edge, %if.end143.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %cmp.not = icmp eq i32 %and137, 0
  br i1 %cmp.not, label %while.cond.backedge.if.end147_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.backedge.if.end147_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.end147:                                        ; preds = %while.cond.backedge.if.end147_crit_edge, %if.end128.if.end147_crit_edge, %if.end81.if.end147_crit_edge
  %83 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %recovery_halt, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool149.not = icmp eq i8 %84, 0
  br i1 %tobool149.not, label %for.cond.preheader, label %if.end147.out_unlock_crit_edge

if.end147.out_unlock_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

for.cond.preheader:                               ; preds = %if.end147
  %slot152 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 29
  %85 = ptrtoint ptr %slot152 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %slot152, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %tag.0324 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx153 = getelementptr %struct.cqhci_slot, ptr %86, i32 %tag.0324
  %87 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx153, align 4
  %tobool155.not = icmp eq ptr %88, null
  br i1 %tobool155.not, label %for.inc, label %if.end157

if.end157:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_error)
  %tobool.not.i296 = icmp eq i32 %data_error, 0
  %error2.error1.i297 = select i1 %tobool.not.i296, i32 %cmd_error, i32 %data_error
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %error2.error1.i297)
  %switch.selectcmp.i298 = icmp eq i32 %error2.error1.i297, -110
  %switch.select.i299 = select i1 %switch.selectcmp.i298, i32 8, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %error2.error1.i297)
  %switch.selectcmp3.i300 = icmp eq i32 %error2.error1.i297, -84
  %switch.select4.i301 = select i1 %switch.selectcmp3.i300, i32 4, i32 %switch.select.i299
  %flags159 = getelementptr %struct.cqhci_slot, ptr %86, i32 %tag.0324, i32 1
  %89 = ptrtoint ptr %flags159 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %switch.select4.i301, ptr %flags159, align 4
  %90 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cqe_private, align 4
  %recovery_halt.i303 = getelementptr inbounds %struct.cqhci_host, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %recovery_halt.i303 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %recovery_halt.i303, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i304 = icmp eq i8 %93, 0
  br i1 %tobool.not.i304, label %if.then.i305, label %if.end157.out_unlock_crit_edge

if.end157.out_unlock_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then.i305:                                     ; preds = %if.end157
  %94 = ptrtoint ptr %recovery_halt.i303 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %recovery_halt.i303, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_error_irq, %if.then6.i308)) #6
          to label %do.end.i314 [label %if.then6.i308], !srcloc !239

if.then6.i308:                                    ; preds = %if.then.i305
  %init_name.i.i306 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %init_name.i.i306 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i.i306, align 8
  %tobool.not.i.i307 = icmp eq ptr %96, null
  br i1 %tobool.not.i.i307, label %if.end.i.i310, label %if.then6.i308.dev_name.exit.i312_crit_edge

if.then6.i308.dev_name.exit.i312_crit_edge:       ; preds = %if.then6.i308
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i312

if.end.i.i310:                                    ; preds = %if.then6.i308
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i309 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %97 = ptrtoint ptr %class_dev.i309 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %class_dev.i309, align 4
  br label %dev_name.exit.i312

dev_name.exit.i312:                               ; preds = %if.end.i.i310, %if.then6.i308.dev_name.exit.i312_crit_edge
  %retval.0.i19.i311 = phi ptr [ %98, %if.end.i.i310 ], [ %96, %if.then6.i308.dev_name.exit.i312_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i19.i311) #6
  br label %do.end.i314

do.end.i314:                                      ; preds = %dev_name.exit.i312, %if.then.i305
  %wait_queue.i313 = getelementptr inbounds %struct.cqhci_host, ptr %91, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %wait_queue.i313, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %recovery_notifier.i315 = getelementptr inbounds %struct.mmc_request, ptr %88, i32 0, i32 7
  %99 = ptrtoint ptr %recovery_notifier.i315 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %recovery_notifier.i315, align 4
  %tobool9.not.i316 = icmp eq ptr %100, null
  br i1 %tobool9.not.i316, label %do.end.i314.out_unlock_crit_edge, label %if.then10.i317

do.end.i314.out_unlock_crit_edge:                 ; preds = %do.end.i314
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then10.i317:                                   ; preds = %do.end.i314
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %100(ptr noundef nonnull %88) #6
  br label %out_unlock

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %tag.0324, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.out_unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.out_unlock_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

out_unlock:                                       ; preds = %for.inc.out_unlock_crit_edge, %if.then10.i317, %do.end.i314.out_unlock_crit_edge, %if.end157.out_unlock_crit_edge, %if.end147.out_unlock_crit_edge, %dev_name.exit232, %land.end.out_unlock_crit_edge, %do.end.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cqhci_pltfm_init(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_pltfm_init.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_pltfm_init, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !239

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cqhci_pltfm_init.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev8, i32 noundef 248, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call16 = tail call ptr @devm_ioremap(ptr noundef %dev8, i32 noundef %1, i32 noundef %add.i) #6
  %mmio = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %mmio, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %do.end22, label %do.body26

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.8) #9
  br label %cleanup

do.body26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_pltfm_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_pltfm_init, %if.then38)) #6
          to label %cleanup [label %if.then38], !srcloc !239

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cqhci_pltfm_init.__UNIQUE_ID_ddebug289, ptr noundef %dev8, ptr noundef nonnull @.str.11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body26, %do.end22, %if.end7.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %do.end22 ], [ %call.i, %if.then38 ], [ inttoptr (i32 -22 to ptr), %do.body ], [ inttoptr (i32 -22 to ptr), %if.then5 ], [ inttoptr (i32 -12 to ptr), %if.end7.cleanup_crit_edge ], [ %call.i, %do.body26 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cqhci_init(ptr noundef %cq_host, ptr noundef %mmc, i1 noundef zeroext %dma64) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %dma64 to i8
  %dma641 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 5
  %0 = ptrtoint ptr %dma641 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %dma641, align 4
  %mmc3 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 2
  %1 = ptrtoint ptr %mmc3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mmc, ptr %mmc3, align 4
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %2 = ptrtoint ptr %cqe_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cq_host, ptr %cqe_private, align 4
  %num_slots = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 6
  %3 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %num_slots, align 4
  %dcmd_slot = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 8
  %4 = ptrtoint ptr %dcmd_slot to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 31, ptr %dcmd_slot, align 4
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 62
  %5 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cqhci_cqe_ops, ptr %cqe_ops, align 8
  %cqe_qdepth = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 64
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 17
  %6 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps2, align 4
  %and = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool5.not, i32 32, i32 31
  %8 = ptrtoint ptr %cqe_qdepth to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %cqe_qdepth, align 16
  %9 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_slots, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 8) #6
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !241

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %slot113 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 29
  %13 = ptrtoint ptr %slot113 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %slot113, align 4
  br label %do.end36

devm_kcalloc.exit:                                ; preds = %entry
  %14 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc, align 128
  %16 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef %16, i32 noundef 3520) #6
  %slot = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 29
  %17 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %slot, align 4
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %devm_kcalloc.exit.do.end36_crit_edge, label %if.end11

devm_kcalloc.exit.do.end36_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

if.end11:                                         ; preds = %devm_kcalloc.exit
  %call12 = tail call i32 @cqhci_crypto_init(ptr noundef %cq_host) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body18, label %do.end

do.end:                                           ; preds = %if.end11
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %20 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %do.end.dev_name.exit_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %retval.0.i) #9
  br label %do.end36

do.body18:                                        ; preds = %if.end11
  %lock = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @cqhci_init.__key, i16 noundef signext 3) #6
  %halt_comp = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 27
  %22 = ptrtoint ptr %halt_comp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %halt_comp, align 4
  %wait.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 27, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @init_completion.__key) #6
  %wait_queue = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 28
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.16, ptr noundef nonnull @cqhci_init.__key.15) #6
  %init_name.i69 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %init_name.i69 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i69, align 8
  %tobool.not.i70 = icmp eq ptr %24, null
  br i1 %tobool.not.i70, label %if.end.i71, label %do.body18.dev_name.exit73_crit_edge

do.body18.dev_name.exit73_crit_edge:              ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit73

if.end.i71:                                       ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev29 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %25 = ptrtoint ptr %class_dev29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %class_dev29, align 4
  br label %dev_name.exit73

dev_name.exit73:                                  ; preds = %if.end.i71, %do.body18.dev_name.exit73_crit_edge
  %retval.0.i72 = phi ptr [ %26, %if.end.i71 ], [ %24, %do.body18.dev_name.exit73_crit_edge ]
  %27 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cq_host, align 4
  %read_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %read_l.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_l.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !235

if.then.i.i:                                      ; preds = %dev_name.exit73
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %30(ptr noundef %cq_host, i32 noundef 0) #6
  br label %cqhci_ver_major.exit

if.else.i.i:                                      ; preds = %dev_name.exit73
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %31 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !236
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  br label %cqhci_ver_major.exit

cqhci_ver_major.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i74 = phi i32 [ %call.i.i, %if.then.i.i ], [ %34, %if.else.i.i ]
  %and.i = lshr i32 %retval.0.i.i74, 8
  %shr.i = and i32 %and.i, 15
  %35 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cq_host, align 4
  %read_l.i.i75 = getelementptr inbounds %struct.cqhci_host_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read_l.i.i75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_l.i.i75, align 4
  %tobool.not.i.i76 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i76, label %if.else.i.i80, label %if.then.i.i78, !prof !235

if.then.i.i78:                                    ; preds = %cqhci_ver_major.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i77 = tail call i32 %38(ptr noundef %cq_host, i32 noundef 0) #6
  br label %cqhci_ver_minor.exit

if.else.i.i80:                                    ; preds = %cqhci_ver_major.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i79 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %39 = ptrtoint ptr %mmio.i.i79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i79, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !236
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  br label %cqhci_ver_minor.exit

cqhci_ver_minor.exit:                             ; preds = %if.else.i.i80, %if.then.i.i78
  %retval.0.i.i81 = phi i32 [ %call.i.i77, %if.then.i.i78 ], [ %42, %if.else.i.i80 ]
  %and.i82 = lshr i32 %retval.0.i.i81, 4
  %shr.i83 = and i32 %and.i82, 15
  %mul.i = mul nuw nsw i32 %shr.i83, 10
  %and1.i = and i32 %retval.0.i.i81, 15
  %add.i = add nuw nsw i32 %mul.i, %and1.i
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i72, i32 noundef %shr.i, i32 noundef %add.i) #9
  br label %cleanup

do.end36:                                         ; preds = %dev_name.exit, %devm_kcalloc.exit.do.end36_crit_edge, %devm_kcalloc.exit.thread
  %err.0 = phi i32 [ %call12, %dev_name.exit ], [ -12, %devm_kcalloc.exit.do.end36_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  %init_name.i84 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %init_name.i84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i84, align 8
  %tobool.not.i85 = icmp eq ptr %44, null
  br i1 %tobool.not.i85, label %if.end.i86, label %do.end36.dev_name.exit88_crit_edge

do.end36.dev_name.exit88_crit_edge:               ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit88

if.end.i86:                                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev38 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %45 = ptrtoint ptr %class_dev38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %class_dev38, align 4
  br label %dev_name.exit88

dev_name.exit88:                                  ; preds = %if.end.i86, %do.end36.dev_name.exit88_crit_edge
  %retval.0.i87 = phi ptr [ %46, %if.end.i86 ], [ %44, %do.end36.dev_name.exit88_crit_edge ]
  %47 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cq_host, align 4
  %read_l.i.i89 = getelementptr inbounds %struct.cqhci_host_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %read_l.i.i89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_l.i.i89, align 4
  %tobool.not.i.i90 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i90, label %if.else.i.i94, label %if.then.i.i92, !prof !235

if.then.i.i92:                                    ; preds = %dev_name.exit88
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i91 = tail call i32 %50(ptr noundef %cq_host, i32 noundef 0) #6
  br label %cqhci_ver_major.exit98

if.else.i.i94:                                    ; preds = %dev_name.exit88
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i93 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %51 = ptrtoint ptr %mmio.i.i93 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i.i93, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !236
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  br label %cqhci_ver_major.exit98

cqhci_ver_major.exit98:                           ; preds = %if.else.i.i94, %if.then.i.i92
  %retval.0.i.i95 = phi i32 [ %call.i.i91, %if.then.i.i92 ], [ %54, %if.else.i.i94 ]
  %and.i96 = lshr i32 %retval.0.i.i95, 8
  %shr.i97 = and i32 %and.i96, 15
  %55 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cq_host, align 4
  %read_l.i.i99 = getelementptr inbounds %struct.cqhci_host_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %read_l.i.i99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_l.i.i99, align 4
  %tobool.not.i.i100 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i100, label %if.else.i.i104, label %if.then.i.i102, !prof !235

if.then.i.i102:                                   ; preds = %cqhci_ver_major.exit98
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i101 = tail call i32 %58(ptr noundef %cq_host, i32 noundef 0) #6
  br label %cqhci_ver_minor.exit111

if.else.i.i104:                                   ; preds = %cqhci_ver_major.exit98
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i103 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %59 = ptrtoint ptr %mmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i.i103, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #6, !srcloc !236
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  br label %cqhci_ver_minor.exit111

cqhci_ver_minor.exit111:                          ; preds = %if.else.i.i104, %if.then.i.i102
  %retval.0.i.i105 = phi i32 [ %call.i.i101, %if.then.i.i102 ], [ %62, %if.else.i.i104 ]
  %and.i106 = lshr i32 %retval.0.i.i105, 4
  %shr.i107 = and i32 %and.i106, 15
  %mul.i108 = mul nuw nsw i32 %shr.i107, 10
  %and1.i109 = and i32 %retval.0.i.i105, 15
  %add.i110 = add nuw nsw i32 %mul.i108, %and1.i109
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %retval.0.i87, i32 noundef %shr.i97, i32 noundef %add.i110, i32 noundef %err.0) #9
  br label %cleanup

cleanup:                                          ; preds = %cqhci_ver_minor.exit111, %cqhci_ver_minor.exit
  %retval.0 = phi i32 [ %err.0, %cqhci_ver_minor.exit111 ], [ 0, %cqhci_ver_minor.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_crypto_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cqe_request_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqhci_enable(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %cmdq_en = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 40
  %2 = ptrtoint ptr %cmdq_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmdq_en, align 2, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rca = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 3
  %6 = ptrtoint ptr %rca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rca, align 4
  %rca4 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rca4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rca4, align 4
  %call = tail call fastcc i32 @cqhci_host_alloc_tdl(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end3
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %do.end.dev_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %retval.0.i, i32 noundef %call) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__cqhci_enable(ptr noundef %1)
  %13 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %dev_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %dev_name.exit ], [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cqhci_disable(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %enabled = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cqhci_off(ptr noundef %mmc)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %read_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read_l.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_l.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !235

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %7(ptr noundef %1, i32 noundef 8) #6
  br label %cqhci_readl.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !236
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  br label %cqhci_readl.exit.i

cqhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %11, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %write_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %15, null
  br i1 %tobool.not.i5.i, label %if.else.i9.i, label %if.then.i6.i, !prof !235

if.then.i6.i:                                     ; preds = %cqhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef %1, i32 noundef %and.i, i32 noundef 8) #6
  br label %__cqhci_disable.exit

if.else.i9.i:                                     ; preds = %cqhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %mmio.i7.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %mmio.i7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %16) #6, !srcloc !237
  br label %__cqhci_disable.exit

__cqhci_disable.exit:                             ; preds = %if.else.i9.i, %if.then.i6.i
  %mmc.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc.i, align 4
  %cqe_on.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 66
  %21 = ptrtoint ptr %cqe_on.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %cqe_on.i, align 1
  %activated.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %activated.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %activated.i, align 1
  %23 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmc, align 128
  %data_size = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_size, align 4
  %trans_desc_base = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 23
  %27 = ptrtoint ptr %trans_desc_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trans_desc_base, align 4
  %trans_desc_dma_base = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 26
  %29 = ptrtoint ptr %trans_desc_dma_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %trans_desc_dma_base, align 4
  tail call void @dmam_free_coherent(ptr noundef %24, i32 noundef %26, ptr noundef %28, i32 noundef %30) #6
  %31 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmc, align 128
  %desc_size = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 17
  %33 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %desc_size, align 4
  %desc_base = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 19
  %35 = ptrtoint ptr %desc_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_base, align 4
  %desc_dma_base = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 25
  %37 = ptrtoint ptr %desc_dma_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %desc_dma_base, align 4
  tail call void @dmam_free_coherent(ptr noundef %32, i32 noundef %34, ptr noundef %36, i32 noundef %38) #6
  %39 = ptrtoint ptr %trans_desc_base to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %trans_desc_base, align 4
  %40 = ptrtoint ptr %desc_base to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %desc_base, align 4
  %41 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %__cqhci_disable.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqhci_request(ptr noundef %mmc, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.cqhci_tag.exit_crit_edge

entry.cqhci_tag.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_tag.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tag.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %2 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag.i, align 4
  br label %cqhci_tag.exit

cqhci_tag.exit:                                   ; preds = %cond.false.i, %entry.cqhci_tag.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.false.i ], [ 31, %entry.cqhci_tag.exit_crit_edge ]
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %4 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cqe_private, align 4
  %enabled = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %cqhci_tag.exit
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i156 = icmp eq ptr %9, null
  br i1 %tobool.not.i156, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i157 = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i157) #9
  br label %cleanup

if.end:                                           ; preds = %cqhci_tag.exit
  %activated = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %activated, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__cqhci_enable(ptr noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %cqe_on = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 66
  %14 = ptrtoint ptr %cqe_on to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cqe_on, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end43_crit_edge

if.end5.if.end43_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then7:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %pre_enable = getelementptr inbounds %struct.cqhci_host_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %pre_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pre_enable, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %if.then7.if.end12_crit_edge, label %if.then9

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %19(ptr noundef %mmc) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then7.if.end12_crit_edge
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i158 = icmp eq ptr %23, null
  br i1 %tobool.not.i158, label %if.else.i, label %if.then.i, !prof !235

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %23(ptr noundef %5, i32 noundef 0, i32 noundef 12) #6
  br label %cqhci_writel.exit

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !237
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i, %if.then.i
  %26 = ptrtoint ptr %cqe_on to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %cqe_on, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_request.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_request, %if.then20)) #6
          to label %do.end25 [label %if.then20], !srcloc !239

if.then20:                                        ; preds = %cqhci_writel.exit
  %init_name.i160 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %init_name.i160 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i160, align 8
  %tobool.not.i161 = icmp eq ptr %28, null
  br i1 %tobool.not.i161, label %if.end.i162, label %if.then20.dev_name.exit164_crit_edge

if.then20.dev_name.exit164_crit_edge:             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit164

if.end.i162:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev21 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %29 = ptrtoint ptr %class_dev21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %class_dev21, align 4
  br label %dev_name.exit164

dev_name.exit164:                                 ; preds = %if.end.i162, %if.then20.dev_name.exit164_crit_edge
  %retval.0.i163 = phi ptr [ %30, %if.end.i162 ], [ %28, %if.then20.dev_name.exit164_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_request.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i163) #6
  br label %do.end25

do.end25:                                         ; preds = %dev_name.exit164, %cqhci_writel.exit
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i165 = icmp eq ptr %34, null
  br i1 %tobool.not.i165, label %if.else.i169, label %if.then.i166, !prof !235

if.then.i166:                                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %34(ptr noundef %5, i32 noundef 12) #6
  br label %cqhci_readl.exit

if.else.i169:                                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i167 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %35 = ptrtoint ptr %mmio.i167 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i167, align 4
  %add.ptr.i168 = getelementptr i8, ptr %36, i32 12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #6, !srcloc !236
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i169, %if.then.i166
  %retval.0.i170 = phi i32 [ %call.i, %if.then.i166 ], [ %38, %if.else.i169 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i170)
  %tobool27.not = icmp eq i32 %retval.0.i170, 0
  br i1 %tobool27.not, label %cqhci_readl.exit.if.end36_crit_edge, label %do.end31

cqhci_readl.exit.if.end36_crit_edge:              ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end31:                                         ; preds = %cqhci_readl.exit
  %init_name.i171 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %init_name.i171 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i171, align 8
  %tobool.not.i172 = icmp eq ptr %40, null
  br i1 %tobool.not.i172, label %if.end.i173, label %do.end31.dev_name.exit175_crit_edge

do.end31.dev_name.exit175_crit_edge:              ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit175

if.end.i173:                                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev33 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %41 = ptrtoint ptr %class_dev33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %class_dev33, align 4
  br label %dev_name.exit175

dev_name.exit175:                                 ; preds = %if.end.i173, %do.end31.dev_name.exit175_crit_edge
  %retval.0.i174 = phi ptr [ %42, %if.end.i173 ], [ %40, %do.end31.dev_name.exit175_crit_edge ]
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %retval.0.i174) #9
  br label %if.end36

if.end36:                                         ; preds = %dev_name.exit175, %cqhci_readl.exit.if.end36_crit_edge
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 4
  %enable = getelementptr inbounds %struct.cqhci_host_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %enable, align 4
  %tobool38.not = icmp eq ptr %46, null
  br i1 %tobool38.not, label %if.end36.if.end43_crit_edge, label %if.then39

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %46(ptr noundef %mmc) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36.if.end43_crit_edge, %if.end5.if.end43_crit_edge
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %tobool44.not = icmp eq ptr %48, null
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end43
  tail call fastcc void @cqhci_prep_task_desc(ptr noundef %mrq, ptr noundef %5, i32 noundef %cond.i)
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %dma642.i = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 5
  %51 = ptrtoint ptr %dma642.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dma642.i, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i176 = icmp eq i8 %52, 0
  %host.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 8
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.then45.do.end.i_crit_edge, label %if.end.i.i

if.then45.do.end.i_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then45
  %53 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 128
  %sg.i.i = getelementptr inbounds %struct.mmc_data, ptr %50, i32 0, i32 12
  %57 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sg.i.i, align 4
  %sg_len.i.i = getelementptr inbounds %struct.mmc_data, ptr %50, i32 0, i32 10
  %59 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sg_len.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %50, i32 0, i32 6
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 2, i32 1
  %call.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %56, ptr noundef %58, i32 noundef %60, i32 noundef %cond.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %cqhci_dma_map.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sg_len.i.i, align 4
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %64) #9
  br label %do.end.i

cqhci_dma_map.exit.i:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %cqhci_dma_map.exit.i.do.end.i_crit_edge, label %for.body.preheader.i

cqhci_dma_map.exit.i.do.end.i_crit_edge:          ; preds = %cqhci_dma_map.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %cqhci_dma_map.exit.i.do.end.i_crit_edge, %do.end.i.i, %if.then45.do.end.i_crit_edge
  %retval.0.i48.i = phi i32 [ %call.i.i, %cqhci_dma_map.exit.i.do.end.i_crit_edge ], [ -22, %if.then45.do.end.i_crit_edge ], [ -12, %do.end.i.i ]
  %65 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %host.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %66, i32 0, i32 1, i32 3
  %67 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i41.i = icmp eq ptr %68, null
  br i1 %tobool.not.i41.i, label %if.end.i42.i, label %do.end.i.do.end51_crit_edge

do.end.i.do.end51_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

if.end.i42.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %class_dev.i, align 4
  br label %do.end51

for.body.preheader.i:                             ; preds = %cqhci_dma_map.exit.i
  %trans_desc_len.i.i.i = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 24
  %71 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sg.i.i, align 4
  %trans_desc_base.i.i = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 23
  %73 = ptrtoint ptr %trans_desc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %trans_desc_base.i.i, align 4
  %conv2.i.i.i = and i32 %cond.i, 255
  %75 = ptrtoint ptr %trans_desc_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %trans_desc_len.i.i.i, align 4
  %conv.i.i.i = zext i8 %76 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv2.i.i.i, %conv.i.i.i
  %mmc.i.i.i = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 2
  %77 = ptrtoint ptr %mmc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmc.i.i.i, align 4
  %max_segs.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 21
  %79 = ptrtoint ptr %max_segs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %max_segs.i.i.i, align 4
  %conv1.i.i.i = zext i16 %80 to i32
  %mul3.i.i.i = mul nuw i32 %mul.i.i.i, %conv1.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 %mul3.i.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %cqhci_set_tran_desc.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %sg.053.i = phi ptr [ %call17.i, %cqhci_set_tran_desc.exit.i.for.body.i_crit_edge ], [ %72, %for.body.preheader.i ]
  %desc.052.i = phi ptr [ %add.ptr.i177, %cqhci_set_tran_desc.exit.i.for.body.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i ]
  %i.050.i = phi i32 [ %add.i, %cqhci_set_tran_desc.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.053.i, i32 0, i32 3
  %81 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.053.i, i32 0, i32 4
  %83 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma_length.i, align 4
  %add.i = add nuw nsw i32 %i.050.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %call.i.i)
  %cmp10.i = icmp eq i32 %add.i, %call.i.i
  %or3.i.i = select i1 %cmp10.i, i32 35, i32 33
  %shl5.i.i = shl i32 %84, 16
  %or6.i.i = or i32 %shl5.i.i, %or3.i.i
  %85 = ptrtoint ptr %desc.052.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or6.i.i, ptr %desc.052.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %desc.052.i, i32 4
  br i1 %tobool.not.i176, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i32 %82 to i64
  %86 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #6
  %87 = ptrtoint ptr %add.ptr.i44.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %add.ptr.i44.i, align 8
  br label %cqhci_set_tran_desc.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = tail call i32 @llvm.bswap.i32(i32 %82) #6
  %89 = ptrtoint ptr %add.ptr.i44.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %add.ptr.i44.i, align 4
  br label %cqhci_set_tran_desc.exit.i

cqhci_set_tran_desc.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %90 = ptrtoint ptr %trans_desc_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %trans_desc_len.i.i.i, align 4
  %conv16.i = zext i8 %91 to i32
  %add.ptr.i177 = getelementptr i8, ptr %desc.052.i, i32 %conv16.i
  %call17.i = tail call ptr @sg_next(ptr noundef %sg.053.i) #6
  br i1 %cmp10.i, label %cqhci_set_tran_desc.exit.i.do.body59_crit_edge, label %cqhci_set_tran_desc.exit.i.for.body.i_crit_edge

cqhci_set_tran_desc.exit.i.for.body.i_crit_edge:  ; preds = %cqhci_set_tran_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cqhci_set_tran_desc.exit.i.do.body59_crit_edge:   ; preds = %cqhci_set_tran_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body59

do.end51:                                         ; preds = %if.end.i42.i, %do.end.i.do.end51_crit_edge
  %retval.0.i43.i = phi ptr [ %70, %if.end.i42.i ], [ %68, %do.end.i.do.end51_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %retval.0.i43.i, ptr noundef nonnull @.str.51, i32 noundef %retval.0.i48.i) #9
  %init_name.i179 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %92 = ptrtoint ptr %init_name.i179 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %init_name.i179, align 8
  %tobool.not.i180 = icmp eq ptr %93, null
  br i1 %tobool.not.i180, label %if.end.i181, label %do.end51.dev_name.exit183_crit_edge

do.end51.dev_name.exit183_crit_edge:              ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit183

if.end.i181:                                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev53 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %94 = ptrtoint ptr %class_dev53 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %class_dev53, align 4
  br label %dev_name.exit183

dev_name.exit183:                                 ; preds = %if.end.i181, %do.end51.dev_name.exit183_crit_edge
  %retval.0.i182 = phi ptr [ %95, %if.end.i181 ], [ %93, %do.end51.dev_name.exit183_crit_edge ]
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %retval.0.i182, i32 noundef %retval.0.i48.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cqhci_prep_dcmd_desc(ptr noundef %mmc, ptr noundef %mrq)
  br label %do.body59

do.body59:                                        ; preds = %if.else, %cqhci_set_tran_desc.exit.i.do.body59_crit_edge
  %lock = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 3
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %recovery_halt = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 16
  %96 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %recovery_halt, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool67.not = icmp eq i8 %97, 0
  br i1 %tobool67.not, label %if.end69, label %if.then102

if.end69:                                         ; preds = %do.body59
  %slot = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 29
  %98 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %slot, align 4
  %arrayidx = getelementptr %struct.cqhci_slot, ptr %99, i32 %cond.i
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %mrq, ptr %arrayidx, align 4
  %101 = load ptr, ptr %slot, align 4
  %flags73 = getelementptr %struct.cqhci_slot, ptr %101, i32 %cond.i, i32 1
  %102 = ptrtoint ptr %flags73 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %flags73, align 4
  %qcnt = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 7
  %103 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %qcnt, align 4
  %add = add i32 %104, 1
  store i32 %add, ptr %qcnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  tail call void @arm_heavy_mb() #6
  %shl = shl nuw i32 1, %cond.i
  %105 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %5, align 4
  %write_l.i184 = getelementptr inbounds %struct.cqhci_host_ops, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_l.i184 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_l.i184, align 4
  %tobool.not.i185 = icmp eq ptr %108, null
  br i1 %tobool.not.i185, label %if.else.i189, label %if.then.i186, !prof !235

if.then.i186:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %108(ptr noundef %5, i32 noundef %shl, i32 noundef 40) #6
  br label %cqhci_writel.exit191

if.else.i189:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %109 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  %mmio.i187 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %110 = ptrtoint ptr %mmio.i187 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio.i187, align 4
  %add.ptr.i188 = getelementptr i8, ptr %111, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %109) #6, !srcloc !237
  br label %cqhci_writel.exit191

cqhci_writel.exit191:                             ; preds = %if.else.i189, %if.then.i186
  %112 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %5, align 4
  %read_l.i192 = getelementptr inbounds %struct.cqhci_host_ops, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %read_l.i192 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read_l.i192, align 4
  %tobool.not.i193 = icmp eq ptr %115, null
  br i1 %tobool.not.i193, label %if.else.i198, label %if.then.i195, !prof !235

if.then.i195:                                     ; preds = %cqhci_writel.exit191
  call void @__sanitizer_cov_trace_pc() #8
  %call.i194 = tail call i32 %115(ptr noundef %5, i32 noundef 40) #6
  br label %cqhci_readl.exit200

if.else.i198:                                     ; preds = %cqhci_writel.exit191
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i196 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %116 = ptrtoint ptr %mmio.i196 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i196, align 4
  %add.ptr.i197 = getelementptr i8, ptr %117, i32 40
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #6, !srcloc !236
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #6
  br label %cqhci_readl.exit200

cqhci_readl.exit200:                              ; preds = %if.else.i198, %if.then.i195
  %retval.0.i199 = phi i32 [ %call.i194, %if.then.i195 ], [ %119, %if.else.i198 ]
  %and = and i32 %retval.0.i199, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %do.body81, label %cqhci_readl.exit200.out_unlock.thread_crit_edge

cqhci_readl.exit200.out_unlock.thread_crit_edge:  ; preds = %cqhci_readl.exit200
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.thread

do.body81:                                        ; preds = %cqhci_readl.exit200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_request.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_request, %if.then93)) #6
          to label %out_unlock [label %if.then93], !srcloc !239

if.then93:                                        ; preds = %do.body81
  %init_name.i201 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %120 = ptrtoint ptr %init_name.i201 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %init_name.i201, align 8
  %tobool.not.i202 = icmp eq ptr %121, null
  br i1 %tobool.not.i202, label %if.end.i203, label %if.then93.dev_name.exit205_crit_edge

if.then93.dev_name.exit205_crit_edge:             ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit205

if.end.i203:                                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev94 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %122 = ptrtoint ptr %class_dev94 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %class_dev94, align 4
  br label %dev_name.exit205

dev_name.exit205:                                 ; preds = %if.end.i203, %if.then93.dev_name.exit205_crit_edge
  %retval.0.i204 = phi ptr [ %123, %if.end.i203 ], [ %121, %if.then93.dev_name.exit205_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_request.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.45, ptr noundef %retval.0.i204, i32 noundef %cond.i) #6
  br label %out_unlock.thread

out_unlock.thread:                                ; preds = %dev_name.exit205, %cqhci_readl.exit200.out_unlock.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call62) #6
  br label %cleanup

out_unlock:                                       ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call62) #6
  br label %cleanup

if.then102:                                       ; preds = %do.body59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call62) #6
  %124 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data, align 4
  %tobool.not.i207 = icmp eq ptr %125, null
  br i1 %tobool.not.i207, label %if.then102.cleanup_crit_edge, label %if.then.i209

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i209:                                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmc, align 128
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %125, i32 0, i32 12
  %128 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %125, i32 0, i32 10
  %130 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sg_len.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %125, i32 0, i32 6
  %132 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %133, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %cond.i208 = select i1 %tobool2.not.i, i32 1, i32 2
  tail call void @dma_unmap_sg_attrs(ptr noundef %127, ptr noundef %129, i32 noundef %131, i32 noundef %cond.i208, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i209, %if.then102.cleanup_crit_edge, %out_unlock, %out_unlock.thread, %dev_name.exit183, %dev_name.exit
  %retval.0 = phi i32 [ %retval.0.i48.i, %dev_name.exit183 ], [ -22, %dev_name.exit ], [ 0, %out_unlock ], [ 0, %out_unlock.thread ], [ -16, %if.then102.cleanup_crit_edge ], [ -16, %if.then.i209 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cqhci_post_req(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 128
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_len, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool2.not, i32 1, i32 2
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %cond, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cqhci_off(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %enabled = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cqe_on = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 66
  %4 = ptrtoint ptr %cqe_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cqe_on, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %recovery_halt = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %recovery_halt, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %disable = getelementptr inbounds %struct.cqhci_host_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %mmc, i1 noundef zeroext false) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !235

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef %1, i32 noundef 1, i32 noundef 12) #6
  br label %cqhci_writel.exit

if.else.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !237
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i, %if.then.i
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 100000
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %cqhci_writel.exit
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %read_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read_l.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_l.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !235

if.then.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %21(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_read_ctl.exit

if.else.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !236
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  br label %cqhci_read_ctl.exit

cqhci_read_ctl.exit:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %25, %if.else.i.i ]
  %and = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %land.lhs.true, label %cqhci_read_ctl.exit.for.end_crit_edge

cqhci_read_ctl.exit.for.end_crit_edge:            ; preds = %cqhci_read_ctl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %cqhci_read_ctl.exit
  %call23 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %if.then26, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then26:                                        ; preds = %land.lhs.true
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %read_l.i.i85 = getelementptr inbounds %struct.cqhci_host_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %read_l.i.i85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_l.i.i85, align 4
  %tobool.not.i.i86 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i86, label %if.else.i.i91, label %if.then.i.i88, !prof !235

if.then.i.i88:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i87 = tail call i32 %29(ptr noundef %1, i32 noundef 12) #6
  br label %for.end

if.else.i.i91:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %31, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i90) #6, !srcloc !236
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  br label %for.end

for.end:                                          ; preds = %if.else.i.i91, %if.then.i.i88, %cqhci_read_ctl.exit.for.end_crit_edge
  %reg.0 = phi i32 [ %call.i.i87, %if.then.i.i88 ], [ %33, %if.else.i.i91 ], [ %retval.0.i.i, %cqhci_read_ctl.exit.for.end_crit_edge ]
  %and32 = and i32 %reg.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.end38, label %do.body42

do.end38:                                         ; preds = %for.end
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i94 = icmp eq ptr %35, null
  br i1 %tobool.not.i94, label %if.end.i, label %do.end38.dev_name.exit_crit_edge

do.end38.dev_name.exit_crit_edge:                 ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %36 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end38.dev_name.exit_crit_edge
  %retval.0.i95 = phi ptr [ %37, %if.end.i ], [ %35, %do.end38.dev_name.exit_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %retval.0.i95) #9
  br label %if.end54

do.body42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_off.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_off, %if.then48)) #6
          to label %if.end54 [label %if.then48], !srcloc !239

if.then48:                                        ; preds = %do.body42
  %init_name.i96 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %init_name.i96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i96, align 8
  %tobool.not.i97 = icmp eq ptr %39, null
  br i1 %tobool.not.i97, label %if.end.i98, label %if.then48.dev_name.exit100_crit_edge

if.then48.dev_name.exit100_crit_edge:             ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit100

if.end.i98:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev49 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %40 = ptrtoint ptr %class_dev49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %class_dev49, align 4
  br label %dev_name.exit100

dev_name.exit100:                                 ; preds = %if.end.i98, %if.then48.dev_name.exit100_crit_edge
  %retval.0.i99 = phi ptr [ %41, %if.end.i98 ], [ %39, %if.then48.dev_name.exit100_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_off.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.58, ptr noundef %retval.0.i99) #6
  br label %if.end54

if.end54:                                         ; preds = %dev_name.exit100, %do.body42, %dev_name.exit
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %post_disable = getelementptr inbounds %struct.cqhci_host_ops, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %post_disable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %post_disable, align 4
  %tobool56.not = icmp eq ptr %45, null
  br i1 %tobool56.not, label %if.end54.if.end60_crit_edge, label %if.then57

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %45(ptr noundef %mmc) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end54.if.end60_crit_edge
  %46 = ptrtoint ptr %cqe_on to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %cqe_on, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqhci_wait_for_idle(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 881) #6
  %lock.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %qcnt.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.cqhci_is_idle.exit_crit_edge, label %lor.rhs.i

entry.cqhci_is_idle.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_is_idle.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %recovery_halt.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %recovery_halt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %recovery_halt.i, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.i = icmp ne i8 %5, 0
  br label %cqhci_is_idle.exit

cqhci_is_idle.exit:                               ; preds = %lor.rhs.i, %entry.cqhci_is_idle.exit_crit_edge
  %6 = phi i1 [ true, %entry.cqhci_is_idle.exit_crit_edge ], [ %tobool5.i, %lor.rhs.i ]
  %recovery_halt7.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %recovery_halt7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %recovery_halt7.i, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not.i = icmp eq i8 %8, 0
  %cond.i = select i1 %tobool8.not.i, i32 0, i32 -16
  %lnot.i = xor i1 %6, true
  %waiting_for_idle.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 15
  %frombool11.i = zext i1 %lnot.i to i8
  %9 = ptrtoint ptr %waiting_for_idle.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool11.i, ptr %waiting_for_idle.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  br i1 %6, label %cqhci_is_idle.exit.do.end11_crit_edge, label %if.end

cqhci_is_idle.exit.do.end11_crit_edge:            ; preds = %cqhci_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.end:                                           ; preds = %cqhci_is_idle.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait_queue = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 28
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %call2.i18 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %11 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i20 = icmp eq i32 %12, 0
  br i1 %tobool.not.i20, label %for.cond.cqhci_is_idle.exit30_crit_edge, label %lor.rhs.i23

for.cond.cqhci_is_idle.exit30_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_is_idle.exit30

lor.rhs.i23:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %recovery_halt7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %recovery_halt7.i, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.i22 = icmp ne i8 %14, 0
  br label %cqhci_is_idle.exit30

cqhci_is_idle.exit30:                             ; preds = %lor.rhs.i23, %for.cond.cqhci_is_idle.exit30_crit_edge
  %15 = phi i1 [ true, %for.cond.cqhci_is_idle.exit30_crit_edge ], [ %tobool5.i22, %lor.rhs.i23 ]
  %16 = ptrtoint ptr %recovery_halt7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %recovery_halt7.i, align 1, !range !234
  %lnot.i27 = xor i1 %15, true
  %frombool11.i29 = zext i1 %lnot.i27 to i8
  %18 = ptrtoint ptr %waiting_for_idle.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool11.i29, ptr %waiting_for_idle.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i18) #6
  br i1 %15, label %for.end, label %cleanup

cleanup:                                          ; preds = %cqhci_is_idle.exit30
  call void @__sanitizer_cov_trace_pc() #8
  call void @schedule() #6
  br label %for.cond

for.end:                                          ; preds = %cqhci_is_idle.exit30
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i25 = icmp eq i8 %17, 0
  %cond.i26 = select i1 %tobool8.not.i25, i32 0, i32 -16
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %do.end11

do.end11:                                         ; preds = %for.end, %cqhci_is_idle.exit.do.end11_crit_edge
  %ret.0 = phi i32 [ %cond.i, %cqhci_is_idle.exit.do.end11_crit_edge ], [ %cond.i26, %for.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cqhci_timeout(ptr nocapture noundef readonly %mmc, ptr noundef readonly %mrq, ptr nocapture noundef writeonly %recovery_needed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.cqhci_tag.exit_crit_edge

entry.cqhci_tag.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_tag.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tag.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %4 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag.i, align 4
  br label %cqhci_tag.exit

cqhci_tag.exit:                                   ; preds = %cond.false.i, %entry.cqhci_tag.exit_crit_edge
  %cond.i = phi i32 [ %5, %cond.false.i ], [ 31, %entry.cqhci_tag.exit_crit_edge ]
  %slot1 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slot1, align 4
  %arrayidx = getelementptr %struct.cqhci_slot, ptr %7, i32 %cond.i
  %lock = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp8 = icmp eq ptr %9, %mrq
  br i1 %cmp8, label %if.then, label %if.end22.critedge

if.then:                                          ; preds = %cqhci_tag.exit
  %flags10 = getelementptr %struct.cqhci_slot, ptr %7, i32 %cond.i, i32 1
  %10 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags10, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %flags10, align 4
  %12 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cqe_private, align 4
  %recovery_halt.i = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %recovery_halt.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %recovery_halt.i, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i37 = icmp eq i8 %15, 0
  br i1 %tobool.not.i37, label %if.then.i, label %if.then.cqhci_recovery_needed.exit_crit_edge

if.then.cqhci_recovery_needed.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_recovery_needed.exit

if.then.i:                                        ; preds = %if.then
  %16 = ptrtoint ptr %recovery_halt.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %recovery_halt.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_timeout, %if.then6.i)) #6
          to label %do.end.i [label %if.then6.i], !srcloc !239

if.then6.i:                                       ; preds = %if.then.i
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then6.i.dev_name.exit.i_crit_edge

if.then6.i.dev_name.exit.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %19 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then6.i.dev_name.exit.i_crit_edge
  %retval.0.i19.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then6.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i19.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %dev_name.exit.i, %if.then.i
  %wait_queue.i = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %wait_queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cqhci_recovery_needed.exit

cqhci_recovery_needed.exit:                       ; preds = %do.end.i, %if.then.cqhci_recovery_needed.exit_crit_edge
  %recovery_halt = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %recovery_halt, align 1, !range !234
  %23 = ptrtoint ptr %recovery_needed to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %recovery_needed, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i38 = icmp eq ptr %25, null
  br i1 %tobool.not.i38, label %if.end.i, label %cqhci_recovery_needed.exit.dev_name.exit_crit_edge

cqhci_recovery_needed.exit.dev_name.exit_crit_edge: ; preds = %cqhci_recovery_needed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %cqhci_recovery_needed.exit
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %26 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %cqhci_recovery_needed.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %cqhci_recovery_needed.exit.dev_name.exit_crit_edge ]
  %qcnt = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qcnt, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %retval.0.i, i32 noundef %cond.i, i32 noundef %29) #9
  %mmc1.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %mmc1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc1.i, align 4
  %class_dev.i39 = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1
  %init_name.i.i40 = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i.i41 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i41, label %if.end.i.i42, label %dev_name.exit.dev_name.exit.i43_crit_edge

dev_name.exit.dev_name.exit.i43_crit_edge:        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i43

if.end.i.i42:                                     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit.i43

dev_name.exit.i43:                                ; preds = %if.end.i.i42, %dev_name.exit.dev_name.exit.i43_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i42 ], [ %33, %dev_name.exit.dev_name.exit.i43_crit_edge ]
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %retval.0.i.i) #9
  %36 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i149.i = icmp eq ptr %37, null
  br i1 %tobool.not.i149.i, label %if.end.i150.i, label %dev_name.exit.i43.dev_name.exit152.i_crit_edge

dev_name.exit.i43.dev_name.exit152.i_crit_edge:   ; preds = %dev_name.exit.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit152.i

if.end.i150.i:                                    ; preds = %dev_name.exit.i43
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit152.i

dev_name.exit152.i:                               ; preds = %if.end.i150.i, %dev_name.exit.i43.dev_name.exit152.i_crit_edge
  %retval.0.i151.i = phi ptr [ %39, %if.end.i150.i ], [ %37, %dev_name.exit.i43.dev_name.exit152.i_crit_edge ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %read_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %read_l.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_l.i.i, align 4
  %tobool.not.i153.i = icmp eq ptr %43, null
  br i1 %tobool.not.i153.i, label %if.else.i.i, label %if.then.i.i, !prof !235

if.then.i.i:                                      ; preds = %dev_name.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %43(ptr noundef %1, i32 noundef 4) #6
  br label %cqhci_readl.exit.i

if.else.i.i:                                      ; preds = %dev_name.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !236
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  br label %cqhci_readl.exit.i

cqhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i154.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %47, %if.else.i.i ]
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %read_l.i155.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %read_l.i155.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_l.i155.i, align 4
  %tobool.not.i156.i = icmp eq ptr %51, null
  br i1 %tobool.not.i156.i, label %if.else.i160.i, label %if.then.i158.i, !prof !235

if.then.i158.i:                                   ; preds = %cqhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i157.i = tail call i32 %51(ptr noundef %1, i32 noundef 0) #6
  br label %cqhci_readl.exit162.i

if.else.i160.i:                                   ; preds = %cqhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i159.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %mmio.i159.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i159.i, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !236
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  br label %cqhci_readl.exit162.i

cqhci_readl.exit162.i:                            ; preds = %if.else.i160.i, %if.then.i158.i
  %retval.0.i161.i = phi i32 [ %call.i157.i, %if.then.i158.i ], [ %55, %if.else.i160.i ]
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %retval.0.i151.i, i32 noundef %retval.0.i154.i, i32 noundef %retval.0.i161.i) #9
  %56 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i164.i = icmp eq ptr %57, null
  br i1 %tobool.not.i164.i, label %if.end.i165.i, label %cqhci_readl.exit162.i.dev_name.exit167.i_crit_edge

cqhci_readl.exit162.i.dev_name.exit167.i_crit_edge: ; preds = %cqhci_readl.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit167.i

if.end.i165.i:                                    ; preds = %cqhci_readl.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit167.i

dev_name.exit167.i:                               ; preds = %if.end.i165.i, %cqhci_readl.exit162.i.dev_name.exit167.i_crit_edge
  %retval.0.i166.i = phi ptr [ %59, %if.end.i165.i ], [ %57, %cqhci_readl.exit162.i.dev_name.exit167.i_crit_edge ]
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %read_l.i168.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %read_l.i168.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_l.i168.i, align 4
  %tobool.not.i169.i = icmp eq ptr %63, null
  br i1 %tobool.not.i169.i, label %if.else.i174.i, label %if.then.i171.i, !prof !235

if.then.i171.i:                                   ; preds = %dev_name.exit167.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i170.i = tail call i32 %63(ptr noundef %1, i32 noundef 8) #6
  br label %cqhci_readl.exit176.i

if.else.i174.i:                                   ; preds = %dev_name.exit167.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i172.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %mmio.i172.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i172.i, align 4
  %add.ptr.i173.i = getelementptr i8, ptr %65, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173.i) #6, !srcloc !236
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  br label %cqhci_readl.exit176.i

cqhci_readl.exit176.i:                            ; preds = %if.else.i174.i, %if.then.i171.i
  %retval.0.i175.i = phi i32 [ %call.i170.i, %if.then.i171.i ], [ %67, %if.else.i174.i ]
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %read_l.i177.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %read_l.i177.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read_l.i177.i, align 4
  %tobool.not.i178.i = icmp eq ptr %71, null
  br i1 %tobool.not.i178.i, label %if.else.i183.i, label %if.then.i180.i, !prof !235

if.then.i180.i:                                   ; preds = %cqhci_readl.exit176.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i179.i = tail call i32 %71(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_readl.exit185.i

if.else.i183.i:                                   ; preds = %cqhci_readl.exit176.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i181.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %mmio.i181.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i181.i, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %73, i32 12
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182.i) #6, !srcloc !236
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #6
  br label %cqhci_readl.exit185.i

cqhci_readl.exit185.i:                            ; preds = %if.else.i183.i, %if.then.i180.i
  %retval.0.i184.i = phi i32 [ %call.i179.i, %if.then.i180.i ], [ %75, %if.else.i183.i ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %retval.0.i166.i, i32 noundef %retval.0.i175.i, i32 noundef %retval.0.i184.i) #9
  %76 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i187.i = icmp eq ptr %77, null
  br i1 %tobool.not.i187.i, label %if.end.i188.i, label %cqhci_readl.exit185.i.dev_name.exit190.i_crit_edge

cqhci_readl.exit185.i.dev_name.exit190.i_crit_edge: ; preds = %cqhci_readl.exit185.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit190.i

if.end.i188.i:                                    ; preds = %cqhci_readl.exit185.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit190.i

dev_name.exit190.i:                               ; preds = %if.end.i188.i, %cqhci_readl.exit185.i.dev_name.exit190.i_crit_edge
  %retval.0.i189.i = phi ptr [ %79, %if.end.i188.i ], [ %77, %cqhci_readl.exit185.i.dev_name.exit190.i_crit_edge ]
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %read_l.i191.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %read_l.i191.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read_l.i191.i, align 4
  %tobool.not.i192.i = icmp eq ptr %83, null
  br i1 %tobool.not.i192.i, label %if.else.i197.i, label %if.then.i194.i, !prof !235

if.then.i194.i:                                   ; preds = %dev_name.exit190.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i193.i = tail call i32 %83(ptr noundef %1, i32 noundef 16) #6
  br label %cqhci_readl.exit199.i

if.else.i197.i:                                   ; preds = %dev_name.exit190.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i195.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %84 = ptrtoint ptr %mmio.i195.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i195.i, align 4
  %add.ptr.i196.i = getelementptr i8, ptr %85, i32 16
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.i) #6, !srcloc !236
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #6
  br label %cqhci_readl.exit199.i

cqhci_readl.exit199.i:                            ; preds = %if.else.i197.i, %if.then.i194.i
  %retval.0.i198.i = phi i32 [ %call.i193.i, %if.then.i194.i ], [ %87, %if.else.i197.i ]
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %read_l.i200.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %read_l.i200.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read_l.i200.i, align 4
  %tobool.not.i201.i = icmp eq ptr %91, null
  br i1 %tobool.not.i201.i, label %if.else.i206.i, label %if.then.i203.i, !prof !235

if.then.i203.i:                                   ; preds = %cqhci_readl.exit199.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i202.i = tail call i32 %91(ptr noundef %1, i32 noundef 20) #6
  br label %cqhci_readl.exit208.i

if.else.i206.i:                                   ; preds = %cqhci_readl.exit199.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i204.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %mmio.i204.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i204.i, align 4
  %add.ptr.i205.i = getelementptr i8, ptr %93, i32 20
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205.i) #6, !srcloc !236
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #6
  br label %cqhci_readl.exit208.i

cqhci_readl.exit208.i:                            ; preds = %if.else.i206.i, %if.then.i203.i
  %retval.0.i207.i = phi i32 [ %call.i202.i, %if.then.i203.i ], [ %95, %if.else.i206.i ]
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %retval.0.i189.i, i32 noundef %retval.0.i198.i, i32 noundef %retval.0.i207.i) #9
  %96 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i210.i = icmp eq ptr %97, null
  br i1 %tobool.not.i210.i, label %if.end.i211.i, label %cqhci_readl.exit208.i.dev_name.exit213.i_crit_edge

cqhci_readl.exit208.i.dev_name.exit213.i_crit_edge: ; preds = %cqhci_readl.exit208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit213.i

if.end.i211.i:                                    ; preds = %cqhci_readl.exit208.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit213.i

dev_name.exit213.i:                               ; preds = %if.end.i211.i, %cqhci_readl.exit208.i.dev_name.exit213.i_crit_edge
  %retval.0.i212.i = phi ptr [ %99, %if.end.i211.i ], [ %97, %cqhci_readl.exit208.i.dev_name.exit213.i_crit_edge ]
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %read_l.i214.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %read_l.i214.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read_l.i214.i, align 4
  %tobool.not.i215.i = icmp eq ptr %103, null
  br i1 %tobool.not.i215.i, label %if.else.i220.i, label %if.then.i217.i, !prof !235

if.then.i217.i:                                   ; preds = %dev_name.exit213.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i216.i = tail call i32 %103(ptr noundef %1, i32 noundef 24) #6
  br label %cqhci_readl.exit222.i

if.else.i220.i:                                   ; preds = %dev_name.exit213.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i218.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %mmio.i218.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i218.i, align 4
  %add.ptr.i219.i = getelementptr i8, ptr %105, i32 24
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219.i) #6, !srcloc !236
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #6
  br label %cqhci_readl.exit222.i

cqhci_readl.exit222.i:                            ; preds = %if.else.i220.i, %if.then.i217.i
  %retval.0.i221.i = phi i32 [ %call.i216.i, %if.then.i217.i ], [ %107, %if.else.i220.i ]
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %read_l.i223.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %read_l.i223.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read_l.i223.i, align 4
  %tobool.not.i224.i = icmp eq ptr %111, null
  br i1 %tobool.not.i224.i, label %if.else.i229.i, label %if.then.i226.i, !prof !235

if.then.i226.i:                                   ; preds = %cqhci_readl.exit222.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i225.i = tail call i32 %111(ptr noundef %1, i32 noundef 28) #6
  br label %cqhci_readl.exit231.i

if.else.i229.i:                                   ; preds = %cqhci_readl.exit222.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i227.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %112 = ptrtoint ptr %mmio.i227.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio.i227.i, align 4
  %add.ptr.i228.i = getelementptr i8, ptr %113, i32 28
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228.i) #6, !srcloc !236
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #6
  br label %cqhci_readl.exit231.i

cqhci_readl.exit231.i:                            ; preds = %if.else.i229.i, %if.then.i226.i
  %retval.0.i230.i = phi i32 [ %call.i225.i, %if.then.i226.i ], [ %115, %if.else.i229.i ]
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %retval.0.i212.i, i32 noundef %retval.0.i221.i, i32 noundef %retval.0.i230.i) #9
  %116 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i233.i = icmp eq ptr %117, null
  br i1 %tobool.not.i233.i, label %if.end.i234.i, label %cqhci_readl.exit231.i.dev_name.exit236.i_crit_edge

cqhci_readl.exit231.i.dev_name.exit236.i_crit_edge: ; preds = %cqhci_readl.exit231.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit236.i

if.end.i234.i:                                    ; preds = %cqhci_readl.exit231.i
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit236.i

dev_name.exit236.i:                               ; preds = %if.end.i234.i, %cqhci_readl.exit231.i.dev_name.exit236.i_crit_edge
  %retval.0.i235.i = phi ptr [ %119, %if.end.i234.i ], [ %117, %cqhci_readl.exit231.i.dev_name.exit236.i_crit_edge ]
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %read_l.i237.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %read_l.i237.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read_l.i237.i, align 4
  %tobool.not.i238.i = icmp eq ptr %123, null
  br i1 %tobool.not.i238.i, label %if.else.i243.i, label %if.then.i240.i, !prof !235

if.then.i240.i:                                   ; preds = %dev_name.exit236.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i239.i = tail call i32 %123(ptr noundef %1, i32 noundef 32) #6
  br label %cqhci_readl.exit245.i

if.else.i243.i:                                   ; preds = %dev_name.exit236.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i241.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %124 = ptrtoint ptr %mmio.i241.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i241.i, align 4
  %add.ptr.i242.i = getelementptr i8, ptr %125, i32 32
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242.i) #6, !srcloc !236
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #6
  br label %cqhci_readl.exit245.i

cqhci_readl.exit245.i:                            ; preds = %if.else.i243.i, %if.then.i240.i
  %retval.0.i244.i = phi i32 [ %call.i239.i, %if.then.i240.i ], [ %127, %if.else.i243.i ]
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %read_l.i246.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %read_l.i246.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read_l.i246.i, align 4
  %tobool.not.i247.i = icmp eq ptr %131, null
  br i1 %tobool.not.i247.i, label %if.else.i252.i, label %if.then.i249.i, !prof !235

if.then.i249.i:                                   ; preds = %cqhci_readl.exit245.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i248.i = tail call i32 %131(ptr noundef %1, i32 noundef 36) #6
  br label %cqhci_readl.exit254.i

if.else.i252.i:                                   ; preds = %cqhci_readl.exit245.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i250.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %132 = ptrtoint ptr %mmio.i250.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmio.i250.i, align 4
  %add.ptr.i251.i = getelementptr i8, ptr %133, i32 36
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i251.i) #6, !srcloc !236
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #6
  br label %cqhci_readl.exit254.i

cqhci_readl.exit254.i:                            ; preds = %if.else.i252.i, %if.then.i249.i
  %retval.0.i253.i = phi i32 [ %call.i248.i, %if.then.i249.i ], [ %135, %if.else.i252.i ]
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %retval.0.i235.i, i32 noundef %retval.0.i244.i, i32 noundef %retval.0.i253.i) #9
  %136 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i256.i = icmp eq ptr %137, null
  br i1 %tobool.not.i256.i, label %if.end.i257.i, label %cqhci_readl.exit254.i.dev_name.exit259.i_crit_edge

cqhci_readl.exit254.i.dev_name.exit259.i_crit_edge: ; preds = %cqhci_readl.exit254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit259.i

if.end.i257.i:                                    ; preds = %cqhci_readl.exit254.i
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit259.i

dev_name.exit259.i:                               ; preds = %if.end.i257.i, %cqhci_readl.exit254.i.dev_name.exit259.i_crit_edge
  %retval.0.i258.i = phi ptr [ %139, %if.end.i257.i ], [ %137, %cqhci_readl.exit254.i.dev_name.exit259.i_crit_edge ]
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %read_l.i260.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %read_l.i260.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read_l.i260.i, align 4
  %tobool.not.i261.i = icmp eq ptr %143, null
  br i1 %tobool.not.i261.i, label %if.else.i266.i, label %if.then.i263.i, !prof !235

if.then.i263.i:                                   ; preds = %dev_name.exit259.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i262.i = tail call i32 %143(ptr noundef %1, i32 noundef 40) #6
  br label %cqhci_readl.exit268.i

if.else.i266.i:                                   ; preds = %dev_name.exit259.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i264.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %144 = ptrtoint ptr %mmio.i264.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio.i264.i, align 4
  %add.ptr.i265.i = getelementptr i8, ptr %145, i32 40
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265.i) #6, !srcloc !236
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #6
  br label %cqhci_readl.exit268.i

cqhci_readl.exit268.i:                            ; preds = %if.else.i266.i, %if.then.i263.i
  %retval.0.i267.i = phi i32 [ %call.i262.i, %if.then.i263.i ], [ %147, %if.else.i266.i ]
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %read_l.i269.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %read_l.i269.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read_l.i269.i, align 4
  %tobool.not.i270.i = icmp eq ptr %151, null
  br i1 %tobool.not.i270.i, label %if.else.i275.i, label %if.then.i272.i, !prof !235

if.then.i272.i:                                   ; preds = %cqhci_readl.exit268.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i271.i = tail call i32 %151(ptr noundef %1, i32 noundef 44) #6
  br label %cqhci_readl.exit277.i

if.else.i275.i:                                   ; preds = %cqhci_readl.exit268.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i273.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %152 = ptrtoint ptr %mmio.i273.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mmio.i273.i, align 4
  %add.ptr.i274.i = getelementptr i8, ptr %153, i32 44
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i274.i) #6, !srcloc !236
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #6
  br label %cqhci_readl.exit277.i

cqhci_readl.exit277.i:                            ; preds = %if.else.i275.i, %if.then.i272.i
  %retval.0.i276.i = phi i32 [ %call.i271.i, %if.then.i272.i ], [ %155, %if.else.i275.i ]
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %retval.0.i258.i, i32 noundef %retval.0.i267.i, i32 noundef %retval.0.i276.i) #9
  %156 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i279.i = icmp eq ptr %157, null
  br i1 %tobool.not.i279.i, label %if.end.i280.i, label %cqhci_readl.exit277.i.dev_name.exit282.i_crit_edge

cqhci_readl.exit277.i.dev_name.exit282.i_crit_edge: ; preds = %cqhci_readl.exit277.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit282.i

if.end.i280.i:                                    ; preds = %cqhci_readl.exit277.i
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit282.i

dev_name.exit282.i:                               ; preds = %if.end.i280.i, %cqhci_readl.exit277.i.dev_name.exit282.i_crit_edge
  %retval.0.i281.i = phi ptr [ %159, %if.end.i280.i ], [ %157, %cqhci_readl.exit277.i.dev_name.exit282.i_crit_edge ]
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %read_l.i283.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %read_l.i283.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read_l.i283.i, align 4
  %tobool.not.i284.i = icmp eq ptr %163, null
  br i1 %tobool.not.i284.i, label %if.else.i289.i, label %if.then.i286.i, !prof !235

if.then.i286.i:                                   ; preds = %dev_name.exit282.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i285.i = tail call i32 %163(ptr noundef %1, i32 noundef 48) #6
  br label %cqhci_readl.exit291.i

if.else.i289.i:                                   ; preds = %dev_name.exit282.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i287.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %164 = ptrtoint ptr %mmio.i287.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio.i287.i, align 4
  %add.ptr.i288.i = getelementptr i8, ptr %165, i32 48
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i288.i) #6, !srcloc !236
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #6
  br label %cqhci_readl.exit291.i

cqhci_readl.exit291.i:                            ; preds = %if.else.i289.i, %if.then.i286.i
  %retval.0.i290.i = phi i32 [ %call.i285.i, %if.then.i286.i ], [ %167, %if.else.i289.i ]
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %read_l.i292.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %read_l.i292.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read_l.i292.i, align 4
  %tobool.not.i293.i = icmp eq ptr %171, null
  br i1 %tobool.not.i293.i, label %if.else.i298.i, label %if.then.i295.i, !prof !235

if.then.i295.i:                                   ; preds = %cqhci_readl.exit291.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i294.i = tail call i32 %171(ptr noundef %1, i32 noundef 52) #6
  br label %cqhci_readl.exit300.i

if.else.i298.i:                                   ; preds = %cqhci_readl.exit291.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i296.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %172 = ptrtoint ptr %mmio.i296.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mmio.i296.i, align 4
  %add.ptr.i297.i = getelementptr i8, ptr %173, i32 52
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i297.i) #6, !srcloc !236
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #6
  br label %cqhci_readl.exit300.i

cqhci_readl.exit300.i:                            ; preds = %if.else.i298.i, %if.then.i295.i
  %retval.0.i299.i = phi i32 [ %call.i294.i, %if.then.i295.i ], [ %175, %if.else.i298.i ]
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %retval.0.i281.i, i32 noundef %retval.0.i290.i, i32 noundef %retval.0.i299.i) #9
  %176 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i302.i = icmp eq ptr %177, null
  br i1 %tobool.not.i302.i, label %if.end.i303.i, label %cqhci_readl.exit300.i.dev_name.exit305.i_crit_edge

cqhci_readl.exit300.i.dev_name.exit305.i_crit_edge: ; preds = %cqhci_readl.exit300.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit305.i

if.end.i303.i:                                    ; preds = %cqhci_readl.exit300.i
  call void @__sanitizer_cov_trace_pc() #8
  %178 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit305.i

dev_name.exit305.i:                               ; preds = %if.end.i303.i, %cqhci_readl.exit300.i.dev_name.exit305.i_crit_edge
  %retval.0.i304.i = phi ptr [ %179, %if.end.i303.i ], [ %177, %cqhci_readl.exit300.i.dev_name.exit305.i_crit_edge ]
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %1, align 4
  %read_l.i306.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %read_l.i306.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %read_l.i306.i, align 4
  %tobool.not.i307.i = icmp eq ptr %183, null
  br i1 %tobool.not.i307.i, label %if.else.i312.i, label %if.then.i309.i, !prof !235

if.then.i309.i:                                   ; preds = %dev_name.exit305.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i308.i = tail call i32 %183(ptr noundef %1, i32 noundef 56) #6
  br label %cqhci_readl.exit314.i

if.else.i312.i:                                   ; preds = %dev_name.exit305.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i310.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %184 = ptrtoint ptr %mmio.i310.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mmio.i310.i, align 4
  %add.ptr.i311.i = getelementptr i8, ptr %185, i32 56
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i311.i) #6, !srcloc !236
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #6
  br label %cqhci_readl.exit314.i

cqhci_readl.exit314.i:                            ; preds = %if.else.i312.i, %if.then.i309.i
  %retval.0.i313.i = phi i32 [ %call.i308.i, %if.then.i309.i ], [ %187, %if.else.i312.i ]
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 4
  %read_l.i315.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %read_l.i315.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %read_l.i315.i, align 4
  %tobool.not.i316.i = icmp eq ptr %191, null
  br i1 %tobool.not.i316.i, label %if.else.i321.i, label %if.then.i318.i, !prof !235

if.then.i318.i:                                   ; preds = %cqhci_readl.exit314.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i317.i = tail call i32 %191(ptr noundef %1, i32 noundef 64) #6
  br label %cqhci_readl.exit323.i

if.else.i321.i:                                   ; preds = %cqhci_readl.exit314.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i319.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %192 = ptrtoint ptr %mmio.i319.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mmio.i319.i, align 4
  %add.ptr.i320.i = getelementptr i8, ptr %193, i32 64
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i320.i) #6, !srcloc !236
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #6
  br label %cqhci_readl.exit323.i

cqhci_readl.exit323.i:                            ; preds = %if.else.i321.i, %if.then.i318.i
  %retval.0.i322.i = phi i32 [ %call.i317.i, %if.then.i318.i ], [ %195, %if.else.i321.i ]
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %retval.0.i304.i, i32 noundef %retval.0.i313.i, i32 noundef %retval.0.i322.i) #9
  %196 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i325.i = icmp eq ptr %197, null
  br i1 %tobool.not.i325.i, label %if.end.i326.i, label %cqhci_readl.exit323.i.dev_name.exit328.i_crit_edge

cqhci_readl.exit323.i.dev_name.exit328.i_crit_edge: ; preds = %cqhci_readl.exit323.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit328.i

if.end.i326.i:                                    ; preds = %cqhci_readl.exit323.i
  call void @__sanitizer_cov_trace_pc() #8
  %198 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit328.i

dev_name.exit328.i:                               ; preds = %if.end.i326.i, %cqhci_readl.exit323.i.dev_name.exit328.i_crit_edge
  %retval.0.i327.i = phi ptr [ %199, %if.end.i326.i ], [ %197, %cqhci_readl.exit323.i.dev_name.exit328.i_crit_edge ]
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 4
  %read_l.i329.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %read_l.i329.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read_l.i329.i, align 4
  %tobool.not.i330.i = icmp eq ptr %203, null
  br i1 %tobool.not.i330.i, label %if.else.i335.i, label %if.then.i332.i, !prof !235

if.then.i332.i:                                   ; preds = %dev_name.exit328.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i331.i = tail call i32 %203(ptr noundef %1, i32 noundef 68) #6
  br label %cqhci_readl.exit337.i

if.else.i335.i:                                   ; preds = %dev_name.exit328.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i333.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %204 = ptrtoint ptr %mmio.i333.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mmio.i333.i, align 4
  %add.ptr.i334.i = getelementptr i8, ptr %205, i32 68
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334.i) #6, !srcloc !236
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #6
  br label %cqhci_readl.exit337.i

cqhci_readl.exit337.i:                            ; preds = %if.else.i335.i, %if.then.i332.i
  %retval.0.i336.i = phi i32 [ %call.i331.i, %if.then.i332.i ], [ %207, %if.else.i335.i ]
  %208 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %1, align 4
  %read_l.i338.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %read_l.i338.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read_l.i338.i, align 4
  %tobool.not.i339.i = icmp eq ptr %211, null
  br i1 %tobool.not.i339.i, label %if.else.i344.i, label %if.then.i341.i, !prof !235

if.then.i341.i:                                   ; preds = %cqhci_readl.exit337.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i340.i = tail call i32 %211(ptr noundef %1, i32 noundef 72) #6
  br label %cqhci_readl.exit346.i

if.else.i344.i:                                   ; preds = %cqhci_readl.exit337.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i342.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %212 = ptrtoint ptr %mmio.i342.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mmio.i342.i, align 4
  %add.ptr.i343.i = getelementptr i8, ptr %213, i32 72
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i343.i) #6, !srcloc !236
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #6
  br label %cqhci_readl.exit346.i

cqhci_readl.exit346.i:                            ; preds = %if.else.i344.i, %if.then.i341.i
  %retval.0.i345.i = phi i32 [ %call.i340.i, %if.then.i341.i ], [ %215, %if.else.i344.i ]
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %retval.0.i327.i, i32 noundef %retval.0.i336.i, i32 noundef %retval.0.i345.i) #9
  %216 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i348.i = icmp eq ptr %217, null
  br i1 %tobool.not.i348.i, label %if.end.i349.i, label %cqhci_readl.exit346.i.dev_name.exit351.i_crit_edge

cqhci_readl.exit346.i.dev_name.exit351.i_crit_edge: ; preds = %cqhci_readl.exit346.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit351.i

if.end.i349.i:                                    ; preds = %cqhci_readl.exit346.i
  call void @__sanitizer_cov_trace_pc() #8
  %218 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit351.i

dev_name.exit351.i:                               ; preds = %if.end.i349.i, %cqhci_readl.exit346.i.dev_name.exit351.i_crit_edge
  %retval.0.i350.i = phi ptr [ %219, %if.end.i349.i ], [ %217, %cqhci_readl.exit346.i.dev_name.exit351.i_crit_edge ]
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 4
  %read_l.i352.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %221, i32 0, i32 2
  %222 = ptrtoint ptr %read_l.i352.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %read_l.i352.i, align 4
  %tobool.not.i353.i = icmp eq ptr %223, null
  br i1 %tobool.not.i353.i, label %if.else.i358.i, label %if.then.i355.i, !prof !235

if.then.i355.i:                                   ; preds = %dev_name.exit351.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i354.i = tail call i32 %223(ptr noundef %1, i32 noundef 80) #6
  br label %cqhci_readl.exit360.i

if.else.i358.i:                                   ; preds = %dev_name.exit351.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i356.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %224 = ptrtoint ptr %mmio.i356.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mmio.i356.i, align 4
  %add.ptr.i357.i = getelementptr i8, ptr %225, i32 80
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i357.i) #6, !srcloc !236
  %227 = tail call i32 @llvm.bswap.i32(i32 %226) #6
  br label %cqhci_readl.exit360.i

cqhci_readl.exit360.i:                            ; preds = %if.else.i358.i, %if.then.i355.i
  %retval.0.i359.i = phi i32 [ %call.i354.i, %if.then.i355.i ], [ %227, %if.else.i358.i ]
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 4
  %read_l.i361.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %read_l.i361.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read_l.i361.i, align 4
  %tobool.not.i362.i = icmp eq ptr %231, null
  br i1 %tobool.not.i362.i, label %if.else.i367.i, label %if.then.i364.i, !prof !235

if.then.i364.i:                                   ; preds = %cqhci_readl.exit360.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i363.i = tail call i32 %231(ptr noundef %1, i32 noundef 84) #6
  br label %cqhci_readl.exit369.i

if.else.i367.i:                                   ; preds = %cqhci_readl.exit360.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i365.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %232 = ptrtoint ptr %mmio.i365.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mmio.i365.i, align 4
  %add.ptr.i366.i = getelementptr i8, ptr %233, i32 84
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i366.i) #6, !srcloc !236
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #6
  br label %cqhci_readl.exit369.i

cqhci_readl.exit369.i:                            ; preds = %if.else.i367.i, %if.then.i364.i
  %retval.0.i368.i = phi i32 [ %call.i363.i, %if.then.i364.i ], [ %235, %if.else.i367.i ]
  %call92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %retval.0.i350.i, i32 noundef %retval.0.i359.i, i32 noundef %retval.0.i368.i) #9
  %236 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i371.i = icmp eq ptr %237, null
  br i1 %tobool.not.i371.i, label %if.end.i372.i, label %cqhci_readl.exit369.i.dev_name.exit374.i_crit_edge

cqhci_readl.exit369.i.dev_name.exit374.i_crit_edge: ; preds = %cqhci_readl.exit369.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit374.i

if.end.i372.i:                                    ; preds = %cqhci_readl.exit369.i
  call void @__sanitizer_cov_trace_pc() #8
  %238 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit374.i

dev_name.exit374.i:                               ; preds = %if.end.i372.i, %cqhci_readl.exit369.i.dev_name.exit374.i_crit_edge
  %retval.0.i373.i = phi ptr [ %239, %if.end.i372.i ], [ %237, %cqhci_readl.exit369.i.dev_name.exit374.i_crit_edge ]
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %1, align 4
  %read_l.i375.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %read_l.i375.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %read_l.i375.i, align 4
  %tobool.not.i376.i = icmp eq ptr %243, null
  br i1 %tobool.not.i376.i, label %if.else.i381.i, label %if.then.i378.i, !prof !235

if.then.i378.i:                                   ; preds = %dev_name.exit374.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i377.i = tail call i32 %243(ptr noundef %1, i32 noundef 88) #6
  br label %cqhci_readl.exit383.i

if.else.i381.i:                                   ; preds = %dev_name.exit374.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i379.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %244 = ptrtoint ptr %mmio.i379.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mmio.i379.i, align 4
  %add.ptr.i380.i = getelementptr i8, ptr %245, i32 88
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i380.i) #6, !srcloc !236
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #6
  br label %cqhci_readl.exit383.i

cqhci_readl.exit383.i:                            ; preds = %if.else.i381.i, %if.then.i378.i
  %retval.0.i382.i = phi i32 [ %call.i377.i, %if.then.i378.i ], [ %247, %if.else.i381.i ]
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 4
  %read_l.i384.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %249, i32 0, i32 2
  %250 = ptrtoint ptr %read_l.i384.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %read_l.i384.i, align 4
  %tobool.not.i385.i = icmp eq ptr %251, null
  br i1 %tobool.not.i385.i, label %if.else.i390.i, label %if.then.i387.i, !prof !235

if.then.i387.i:                                   ; preds = %cqhci_readl.exit383.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i386.i = tail call i32 %251(ptr noundef %1, i32 noundef 92) #6
  br label %cqhci_readl.exit392.i

if.else.i390.i:                                   ; preds = %cqhci_readl.exit383.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i388.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %252 = ptrtoint ptr %mmio.i388.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mmio.i388.i, align 4
  %add.ptr.i389.i = getelementptr i8, ptr %253, i32 92
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i389.i) #6, !srcloc !236
  %255 = tail call i32 @llvm.bswap.i32(i32 %254) #6
  br label %cqhci_readl.exit392.i

cqhci_readl.exit392.i:                            ; preds = %if.else.i390.i, %if.then.i387.i
  %retval.0.i391.i = phi i32 [ %call.i386.i, %if.then.i387.i ], [ %255, %if.else.i390.i ]
  %call101.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %retval.0.i373.i, i32 noundef %retval.0.i382.i, i32 noundef %retval.0.i391.i) #9
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %1, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %257, align 4
  %tobool.not.i44 = icmp eq ptr %259, null
  br i1 %tobool.not.i44, label %do.end106.i, label %if.then.i45

if.then.i45:                                      ; preds = %cqhci_readl.exit392.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %259(ptr noundef %31) #6
  br label %if.end22

do.end106.i:                                      ; preds = %cqhci_readl.exit392.i
  %260 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i394.i = icmp eq ptr %261, null
  br i1 %tobool.not.i394.i, label %if.end.i395.i, label %do.end106.i.dev_name.exit397.i_crit_edge

do.end106.i.dev_name.exit397.i_crit_edge:         ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit397.i

if.end.i395.i:                                    ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  %262 = ptrtoint ptr %class_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %class_dev.i39, align 4
  br label %dev_name.exit397.i

dev_name.exit397.i:                               ; preds = %if.end.i395.i, %do.end106.i.dev_name.exit397.i_crit_edge
  %retval.0.i396.i = phi ptr [ %263, %if.end.i395.i ], [ %261, %do.end106.i.dev_name.exit397.i_crit_edge ]
  %call110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i396.i) #9
  br label %if.end22

if.end22.critedge:                                ; preds = %cqhci_tag.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  br label %if.end22

if.end22:                                         ; preds = %if.end22.critedge, %dev_name.exit397.i, %if.then.i45
  ret i1 %cmp8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cqhci_recovery_start(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_recovery_start.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_recovery_start, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !239

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i49 = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_recovery_start.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.100, ptr noundef %retval.0.i49, ptr noundef nonnull @.str.99) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %recovery_halt = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %recovery_halt, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %do.end22, label %do.end.if.end28_crit_edge, !prof !241

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %do.end.if.end28_crit_edge
  %call36 = tail call fastcc zeroext i1 @cqhci_halt(ptr noundef %mmc, i32 noundef 5)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %disable = getelementptr inbounds %struct.cqhci_host_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable, align 4
  %tobool37.not = icmp eq ptr %11, null
  br i1 %tobool37.not, label %if.end28.if.end41_crit_edge, label %if.then38

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %mmc, i1 noundef zeroext true) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end28.if.end41_crit_edge
  %cqe_on = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 66
  %12 = ptrtoint ptr %cqe_on to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %cqe_on, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cqhci_recovery_finish(ptr nocapture noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_recovery_finish.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_recovery_finish, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !239

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i198 = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_recovery_finish.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.100, ptr noundef %retval.0.i198, ptr noundef nonnull @.str.103) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %recovery_halt = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %recovery_halt, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %do.end22, label %do.end.if.end28_crit_edge, !prof !241

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1067, i32 noundef 9, ptr noundef null) #6
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %do.end.if.end28_crit_edge
  %call36 = tail call fastcc zeroext i1 @cqhci_halt(ptr noundef %mmc, i32 noundef 20)
  %call38 = tail call fastcc zeroext i1 @cqhci_clear_all_tasks(ptr noundef %mmc)
  %spec.select = select i1 %call38, i1 %call36, i1 false
  br i1 %spec.select, label %if.end28.if.end100_crit_edge, label %do.body43

if.end28.if.end100_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

do.body43:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_recovery_finish.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_recovery_finish, %if.then55)) #6
          to label %do.end60 [label %if.then55], !srcloc !239

if.then55:                                        ; preds = %do.body43
  %init_name.i199 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %init_name.i199 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i199, align 8
  %tobool.not.i200 = icmp eq ptr %9, null
  br i1 %tobool.not.i200, label %if.end.i201, label %if.then55.dev_name.exit203_crit_edge

if.then55.dev_name.exit203_crit_edge:             ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit203

if.end.i201:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev56 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %10 = ptrtoint ptr %class_dev56 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev56, align 4
  br label %dev_name.exit203

dev_name.exit203:                                 ; preds = %if.end.i201, %if.then55.dev_name.exit203_crit_edge
  %retval.0.i202 = phi ptr [ %11, %if.end.i201 ], [ %9, %if.then55.dev_name.exit203_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_recovery_finish.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.104, ptr noundef %retval.0.i202) #6
  br label %do.end60

do.end60:                                         ; preds = %dev_name.exit203, %do.body43
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i204 = icmp eq ptr %15, null
  br i1 %tobool.not.i204, label %if.else.i, label %if.then.i, !prof !235

if.then.i:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %15(ptr noundef %1, i32 noundef 8) #6
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !236
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i205 = phi i32 [ %call.i, %if.then.i ], [ %19, %if.else.i ]
  %and = and i32 %retval.0.i205, -2
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i206 = icmp eq ptr %23, null
  br i1 %tobool.not.i206, label %if.else.i210, label %if.then.i207, !prof !235

if.then.i207:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %23(ptr noundef %1, i32 noundef %and, i32 noundef 8) #6
  br label %cqhci_writel.exit

if.else.i210:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %mmio.i208 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %mmio.i208 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i208, align 4
  %add.ptr.i209 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 %24) #6, !srcloc !237
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i210, %if.then.i207
  %or = or i32 %retval.0.i205, 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %write_l.i212 = getelementptr inbounds %struct.cqhci_host_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_l.i212 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_l.i212, align 4
  %tobool.not.i213 = icmp eq ptr %30, null
  br i1 %tobool.not.i213, label %if.else.i217, label %if.then.i214, !prof !235

if.then.i214:                                     ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %30(ptr noundef %1, i32 noundef %or, i32 noundef 8) #6
  br label %cqhci_writel.exit219

if.else.i217:                                     ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %mmio.i215 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %mmio.i215 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i215, align 4
  %add.ptr.i216 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 %31) #6, !srcloc !237
  br label %cqhci_writel.exit219

cqhci_writel.exit219:                             ; preds = %if.else.i217, %if.then.i214
  %call62 = tail call fastcc zeroext i1 @cqhci_halt(ptr noundef %mmc, i32 noundef 20)
  %call64 = tail call fastcc zeroext i1 @cqhci_clear_all_tasks(ptr noundef %mmc)
  %spec.select191 = select i1 %call64, i1 %call62, i1 false
  br i1 %spec.select191, label %cqhci_writel.exit219.if.end100_crit_edge, label %do.end86, !prof !235

cqhci_writel.exit219.if.end100_crit_edge:         ; preds = %cqhci_writel.exit219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

do.end86:                                         ; preds = %cqhci_writel.exit219
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1091, i32 noundef 9, ptr noundef null) #6
  br label %if.end100

if.end100:                                        ; preds = %do.end86, %cqhci_writel.exit219.if.end100_crit_edge, %if.end28.if.end100_crit_edge
  %num_slots.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.i = icmp sgt i32 %35, 0
  br i1 %cmp4.i, label %for.body.lr.ph.i, label %if.end100.cqhci_recover_mrqs.exit_crit_edge

if.end100.cqhci_recover_mrqs.exit_crit_edge:      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_recover_mrqs.exit

for.body.lr.ph.i:                                 ; preds = %if.end100
  %slot1.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 29
  %qcnt.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 7
  %mmc.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cqhci_recover_mrq.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cqhci_recover_mrq.exit.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %slot1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slot1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.cqhci_slot, ptr %37, i32 %i.05.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %for.body.i.cqhci_recover_mrq.exit.i_crit_edge, label %if.end.i.i

for.body.i.cqhci_recover_mrq.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_recover_mrq.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx.i.i, align 4
  %41 = ptrtoint ptr %qcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qcnt.i.i, align 4
  %sub.i.i = add i32 %42, -1
  store i32 %sub.i.i, ptr %qcnt.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.mmc_request, ptr %39, i32 0, i32 2
  %43 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data4.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %44, null
  br i1 %tobool5.not.i.i, label %if.else.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %bytes_xfered.i.i = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %bytes_xfered.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %bytes_xfered.i.i, align 4
  %flags.i.i = getelementptr %struct.cqhci_slot, ptr %37, i32 %i.05.i, i32 1
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.cqhci_error_from_flags.exit.i.i_crit_edge, label %if.end.i.i.i

if.then6.i.i.cqhci_error_from_flags.exit.i.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_error_from_flags.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then6.i.i
  %and.i.i.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end3.i.i.i, label %if.end.i.i.i.cqhci_error_from_flags.exit.i.i_crit_edge

if.end.i.i.i.cqhci_error_from_flags.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_error_from_flags.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and4.i.i.i = and i32 %47, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  %..i.i.i = select i1 %tobool5.not.i.i.i, i32 -5, i32 -110
  br label %cqhci_error_from_flags.exit.i.i

cqhci_error_from_flags.exit.i.i:                  ; preds = %if.end3.i.i.i, %if.end.i.i.i.cqhci_error_from_flags.exit.i.i_crit_edge, %if.then6.i.i.cqhci_error_from_flags.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.then6.i.i.cqhci_error_from_flags.exit.i.i_crit_edge ], [ -84, %if.end.i.i.i.cqhci_error_from_flags.exit.i.i_crit_edge ], [ %..i.i.i, %if.end3.i.i.i ]
  %error.i.i = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 5
  %48 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i.i.i, ptr %error.i.i, align 4
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %flags7.i.i = getelementptr %struct.cqhci_slot, ptr %37, i32 %i.05.i, i32 1
  %49 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i24.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i24.i.i, label %if.else.i.i.cqhci_error_from_flags.exit33.i.i_crit_edge, label %if.end.i27.i.i

if.else.i.i.cqhci_error_from_flags.exit33.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_error_from_flags.exit33.i.i

if.end.i27.i.i:                                   ; preds = %if.else.i.i
  %and.i25.i.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i.i)
  %tobool1.not.i26.i.i = icmp eq i32 %and.i25.i.i, 0
  br i1 %tobool1.not.i26.i.i, label %if.end3.i31.i.i, label %if.end.i27.i.i.cqhci_error_from_flags.exit33.i.i_crit_edge

if.end.i27.i.i.cqhci_error_from_flags.exit33.i.i_crit_edge: ; preds = %if.end.i27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_error_from_flags.exit33.i.i

if.end3.i31.i.i:                                  ; preds = %if.end.i27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and4.i28.i.i = and i32 %50, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i28.i.i)
  %tobool5.not.i29.i.i = icmp eq i32 %and4.i28.i.i, 0
  %..i30.i.i = select i1 %tobool5.not.i29.i.i, i32 -5, i32 -110
  br label %cqhci_error_from_flags.exit33.i.i

cqhci_error_from_flags.exit33.i.i:                ; preds = %if.end3.i31.i.i, %if.end.i27.i.i.cqhci_error_from_flags.exit33.i.i_crit_edge, %if.else.i.i.cqhci_error_from_flags.exit33.i.i_crit_edge
  %retval.0.i32.i.i = phi i32 [ 0, %if.else.i.i.cqhci_error_from_flags.exit33.i.i_crit_edge ], [ -84, %if.end.i27.i.i.cqhci_error_from_flags.exit33.i.i_crit_edge ], [ %..i30.i.i, %if.end3.i31.i.i ]
  %cmd.i.i = getelementptr inbounds %struct.mmc_request, ptr %39, i32 0, i32 1
  %51 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd.i.i, align 4
  %error9.i.i = getelementptr inbounds %struct.mmc_command, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %error9.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i32.i.i, ptr %error9.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %cqhci_error_from_flags.exit33.i.i, %cqhci_error_from_flags.exit.i.i
  %54 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmc.i.i, align 4
  tail call void @mmc_cqe_request_done(ptr noundef %55, ptr noundef nonnull %39) #6
  br label %cqhci_recover_mrq.exit.i

cqhci_recover_mrq.exit.i:                         ; preds = %if.end10.i.i, %for.body.i.cqhci_recover_mrq.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %56 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %57
  br i1 %cmp.i, label %cqhci_recover_mrq.exit.i.for.body.i_crit_edge, label %cqhci_recover_mrq.exit.i.cqhci_recover_mrqs.exit_crit_edge

cqhci_recover_mrq.exit.i.cqhci_recover_mrqs.exit_crit_edge: ; preds = %cqhci_recover_mrq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_recover_mrqs.exit

cqhci_recover_mrq.exit.i.for.body.i_crit_edge:    ; preds = %cqhci_recover_mrq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cqhci_recover_mrqs.exit:                          ; preds = %cqhci_recover_mrq.exit.i.cqhci_recover_mrqs.exit_crit_edge, %if.end100.cqhci_recover_mrqs.exit_crit_edge
  %qcnt = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 7
  %58 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool102.not = icmp eq i32 %59, 0
  br i1 %tobool102.not, label %cqhci_recover_mrqs.exit.if.end124_crit_edge, label %do.end118, !prof !235

cqhci_recover_mrqs.exit.if.end124_crit_edge:      ; preds = %cqhci_recover_mrqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

do.end118:                                        ; preds = %cqhci_recover_mrqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1096, i32 noundef 9, ptr noundef null) #6
  br label %if.end124

if.end124:                                        ; preds = %do.end118, %cqhci_recover_mrqs.exit.if.end124_crit_edge
  %lock = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 3
  %call136 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %60 = ptrtoint ptr %qcnt to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %qcnt, align 4
  %61 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %recovery_halt, align 1
  %cqe_on = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 66
  %62 = ptrtoint ptr %cqe_on to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %cqe_on, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call136) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %write_l.i220 = getelementptr inbounds %struct.cqhci_host_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_l.i220 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_l.i220, align 4
  %tobool.not.i221 = icmp eq ptr %66, null
  br i1 %tobool.not.i221, label %if.else.i225, label %if.then.i222, !prof !235

if.then.i222:                                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %66(ptr noundef %1, i32 noundef 9, i32 noundef 16) #6
  br label %cqhci_writel.exit227

if.else.i225:                                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i223 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %mmio.i223 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i223, align 4
  %add.ptr.i224 = getelementptr i8, ptr %68, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 150994944) #6, !srcloc !237
  br label %cqhci_writel.exit227

cqhci_writel.exit227:                             ; preds = %if.else.i225, %if.then.i222
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %write_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i.i228 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i228, label %if.else.i.i229, label %if.then.i.i, !prof !235

if.then.i.i:                                      ; preds = %cqhci_writel.exit227
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %72(ptr noundef %1, i32 noundef 54, i32 noundef 20) #6
  br label %cqhci_writel.exit.i

if.else.i.i229:                                   ; preds = %cqhci_writel.exit227
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 905969664) #6, !srcloc !237
  br label %cqhci_writel.exit.i

cqhci_writel.exit.i:                              ; preds = %if.else.i.i229, %if.then.i.i
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %write_l.i3.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_l.i3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_l.i3.i, align 4
  %tobool.not.i4.i = icmp eq ptr %78, null
  br i1 %tobool.not.i4.i, label %if.else.i8.i, label %if.then.i5.i, !prof !235

if.then.i5.i:                                     ; preds = %cqhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %78(ptr noundef %1, i32 noundef 54, i32 noundef 24) #6
  br label %cqhci_set_irqs.exit

if.else.i8.i:                                     ; preds = %cqhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i6.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %mmio.i6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %80, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 905969664) #6, !srcloc !237
  br label %cqhci_set_irqs.exit

cqhci_set_irqs.exit:                              ; preds = %if.else.i8.i, %if.then.i5.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_recovery_finish.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_recovery_finish, %if.then159)) #6
          to label %do.end164 [label %if.then159], !srcloc !239

if.then159:                                       ; preds = %cqhci_set_irqs.exit
  %init_name.i230 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %init_name.i230 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i230, align 8
  %tobool.not.i231 = icmp eq ptr %82, null
  br i1 %tobool.not.i231, label %if.end.i232, label %if.then159.dev_name.exit234_crit_edge

if.then159.dev_name.exit234_crit_edge:            ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit234

if.end.i232:                                      ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev160 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %83 = ptrtoint ptr %class_dev160 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %class_dev160, align 4
  br label %dev_name.exit234

dev_name.exit234:                                 ; preds = %if.end.i232, %if.then159.dev_name.exit234_crit_edge
  %retval.0.i233 = phi ptr [ %84, %if.end.i232 ], [ %82, %if.then159.dev_name.exit234_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_recovery_finish.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.105, ptr noundef %retval.0.i233) #6
  br label %do.end164

do.end164:                                        ; preds = %dev_name.exit234, %cqhci_set_irqs.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cqhci_host_alloc_tdl(ptr noundef %cq_host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 9
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_host, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !235

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %5(ptr noundef %cq_host, i32 noundef 8) #6
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !236
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i136 = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %or = or i32 %retval.0.i136, 256
  %10 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cq_host, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i137 = icmp eq ptr %13, null
  br i1 %tobool.not.i137, label %if.else.i141, label %if.then.i138, !prof !235

if.then.i138:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %cq_host, i32 noundef %or, i32 noundef 8) #6
  br label %if.end

if.else.i141:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %mmio.i139 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %15 = ptrtoint ptr %mmio.i139 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i139, align 4
  %add.ptr.i140 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %14) #6, !srcloc !237
  br label %if.end

if.end:                                           ; preds = %if.else.i141, %if.then.i138, %entry.if.end_crit_edge
  %.sink161 = phi i8 [ 16, %if.then.i138 ], [ 16, %if.else.i141 ], [ 8, %entry.if.end_crit_edge ]
  %task_desc_len1 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 21
  %17 = ptrtoint ptr %task_desc_len1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink161, ptr %task_desc_len1, align 1
  %dma64 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 5
  %18 = ptrtoint ptr %dma64 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dma64, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not = icmp eq i8 %19, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %quirks = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 10
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks, align 4
  %and4 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool5.not, i8 16, i8 12
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.end.if.end13_crit_edge
  %.sink162 = phi i8 [ %spec.select, %if.then3 ], [ 8, %if.end.if.end13_crit_edge ]
  %.sink = phi i8 [ 16, %if.then3 ], [ 8, %if.end.if.end13_crit_edge ]
  %trans_desc_len11 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 24
  %22 = ptrtoint ptr %trans_desc_len11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink162, ptr %trans_desc_len11, align 4
  %link_desc_len12 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 22
  %23 = ptrtoint ptr %link_desc_len12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %link_desc_len12, align 2
  %task_desc_len14 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 21
  %24 = ptrtoint ptr %task_desc_len14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %task_desc_len14, align 1
  %link_desc_len15 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 22
  %add = add i8 %.sink, %25
  %slot_sz = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 20
  %26 = ptrtoint ptr %slot_sz to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %add, ptr %slot_sz, align 4
  %conv19 = zext i8 %add to i32
  %num_slots = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 6
  %27 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_slots, align 4
  %mul = mul i32 %28, %conv19
  %desc_size = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 17
  %29 = ptrtoint ptr %desc_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %desc_size, align 4
  %mmc = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 2
  %30 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc, align 4
  %cqe_qdepth = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 64
  %32 = ptrtoint ptr %cqe_qdepth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cqe_qdepth, align 16
  %trans_desc_len.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 24
  %34 = ptrtoint ptr %trans_desc_len.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %trans_desc_len.i, align 4
  %conv.i = zext i8 %35 to i32
  %max_segs.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 21
  %36 = ptrtoint ptr %max_segs.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_segs.i, align 4
  %conv1.i = zext i16 %37 to i32
  %conv2.i = and i32 %33, 255
  %mul.i = mul nuw nsw i32 %conv2.i, %conv.i
  %mul3.i = mul nuw i32 %mul.i, %conv1.i
  %data_size = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 18
  %38 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul3.i, ptr %data_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_host_alloc_tdl.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_host_alloc_tdl, %if.then26)) #6
          to label %do.end [label %if.then26], !srcloc !239

if.then26:                                        ; preds = %if.end13
  %39 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmc, align 4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i142 = icmp eq ptr %42, null
  br i1 %tobool.not.i142, label %if.end.i, label %if.then26.dev_name.exit_crit_edge

if.then26.dev_name.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then26.dev_name.exit_crit_edge
  %retval.0.i143 = phi ptr [ %44, %if.end.i ], [ %42, %if.then26.dev_name.exit_crit_edge ]
  %45 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %desc_size, align 4
  %47 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_size, align 4
  %49 = ptrtoint ptr %slot_sz to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %slot_sz, align 4
  %conv32 = zext i8 %50 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_host_alloc_tdl.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.34, ptr noundef %retval.0.i143, i32 noundef %46, i32 noundef %48, i32 noundef %conv32) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.end13
  %51 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmc, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 128
  %55 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %desc_size, align 4
  %desc_dma_base = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 25
  %call.i144 = tail call ptr @dmam_alloc_attrs(ptr noundef %54, i32 noundef %56, ptr noundef %desc_dma_base, i32 noundef 3264, i32 noundef 0) #6
  %desc_base = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 19
  %57 = ptrtoint ptr %desc_base to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i144, ptr %desc_base, align 4
  %tobool38.not = icmp eq ptr %call.i144, null
  br i1 %tobool38.not, label %do.end.cleanup_crit_edge, label %if.end40

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %do.end
  %58 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmc, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 128
  %62 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_size, align 4
  %trans_desc_dma_base = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 26
  %call.i145 = tail call ptr @dmam_alloc_attrs(ptr noundef %61, i32 noundef %63, ptr noundef %trans_desc_dma_base, i32 noundef 3264, i32 noundef 0) #6
  %trans_desc_base = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 23
  %64 = ptrtoint ptr %trans_desc_base to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i145, ptr %trans_desc_base, align 4
  %tobool46.not = icmp eq ptr %call.i145, null
  br i1 %tobool46.not, label %if.then47, label %do.body56

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmc, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 128
  %69 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %desc_size, align 4
  %71 = ptrtoint ptr %desc_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %desc_base, align 4
  %73 = ptrtoint ptr %desc_dma_base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %desc_dma_base, align 4
  tail call void @dmam_free_coherent(ptr noundef %68, i32 noundef %70, ptr noundef %72, i32 noundef %74) #6
  %75 = ptrtoint ptr %desc_base to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %desc_base, align 4
  %76 = ptrtoint ptr %desc_dma_base to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %desc_dma_base, align 4
  br label %cleanup

do.body56:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_host_alloc_tdl.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_host_alloc_tdl, %if.then68)) #6
          to label %do.end80 [label %if.then68], !srcloc !239

if.then68:                                        ; preds = %do.body56
  %77 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmc, align 4
  %init_name.i146 = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 1, i32 3
  %79 = ptrtoint ptr %init_name.i146 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i146, align 8
  %tobool.not.i147 = icmp eq ptr %80, null
  br i1 %tobool.not.i147, label %if.end.i148, label %if.then68.dev_name.exit150_crit_edge

if.then68.dev_name.exit150_crit_edge:             ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit150

if.end.i148:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev70 = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %class_dev70 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %class_dev70, align 4
  br label %dev_name.exit150

dev_name.exit150:                                 ; preds = %if.end.i148, %if.then68.dev_name.exit150_crit_edge
  %retval.0.i149 = phi ptr [ %82, %if.end.i148 ], [ %80, %if.then68.dev_name.exit150_crit_edge ]
  %83 = ptrtoint ptr %desc_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %desc_base, align 4
  %85 = ptrtoint ptr %trans_desc_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %trans_desc_base, align 4
  %87 = ptrtoint ptr %desc_dma_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %desc_dma_base, align 4
  %conv75 = zext i32 %88 to i64
  %89 = ptrtoint ptr %trans_desc_dma_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %trans_desc_dma_base, align 4
  %conv77 = zext i32 %90 to i64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_host_alloc_tdl.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i149, ptr noundef %84, ptr noundef %86, i64 noundef %conv75, i64 noundef %conv77) #6
  br label %do.end80

do.end80:                                         ; preds = %dev_name.exit150, %do.body56
  %91 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp159 = icmp sgt i32 %92, 0
  br i1 %cmp159, label %do.end80.for.body_crit_edge, label %do.end80.cleanup_crit_edge

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end80.for.body_crit_edge:                      ; preds = %do.end80
  br label %for.body

for.body:                                         ; preds = %setup_trans_desc.exit.for.body_crit_edge, %do.end80.for.body_crit_edge
  %i.0160 = phi i32 [ %inc, %setup_trans_desc.exit.for.body_crit_edge ], [ 0, %do.end80.for.body_crit_edge ]
  %conv83 = trunc i32 %i.0160 to i8
  %93 = ptrtoint ptr %desc_base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %desc_base, align 4
  %conv.i.i.i = and i32 %i.0160, 255
  %95 = ptrtoint ptr %slot_sz to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %slot_sz, align 4
  %conv1.i.i.i = zext i8 %96 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv.i.i.i, %conv1.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %94, i32 %mul.i.i.i
  %97 = ptrtoint ptr %task_desc_len14 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %task_desc_len14, align 1
  %conv.i.i = zext i8 %98 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv.i.i
  %99 = ptrtoint ptr %trans_desc_len.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %trans_desc_len.i, align 4
  %conv.i.i32.i = zext i8 %100 to i32
  %101 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmc, align 4
  %max_segs.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %102, i32 0, i32 21
  %103 = ptrtoint ptr %max_segs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %max_segs.i.i.i, align 4
  %conv1.i.i33.i = zext i16 %104 to i32
  %mul.i.i34.i = mul nuw nsw i32 %conv.i.i.i, %conv.i.i32.i
  %mul3.i.i.i = mul nuw i32 %mul.i.i34.i, %conv1.i.i33.i
  %105 = ptrtoint ptr %trans_desc_dma_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %trans_desc_dma_base, align 4
  %add.i.i = add i32 %mul3.i.i.i, %106
  %107 = ptrtoint ptr %link_desc_len15 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %link_desc_len15, align 2
  %conv.i151 = zext i8 %108 to i32
  %109 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %conv.i151)
  %110 = load i8, ptr %link_desc_len15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %110)
  %cmp.i = icmp ugt i8 %110, 8
  br i1 %cmp.i, label %if.then.i153, label %for.body.if.end.i154_crit_edge

for.body.if.end.i154_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i154

if.then.i153:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i152 = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %111 = ptrtoint ptr %add.ptr.i152 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %add.ptr.i152, align 1
  br label %if.end.i154

if.end.i154:                                      ; preds = %if.then.i153, %for.body.if.end.i154_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %conv83)
  %cmp6.i = icmp eq i8 %conv83, 31
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i154.if.end9.i_crit_edge

if.end.i154.if.end9.i_crit_edge:                  ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i154
  %112 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmc, align 4
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %113, i32 0, i32 17
  %114 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %caps2.i, align 4
  %and.i = and i32 %115, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i155 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i155, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then8.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 2, ptr %add.ptr.i.i, align 1
  br label %setup_trans_desc.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i154.if.end9.i_crit_edge
  %117 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 49, ptr %add.ptr.i.i, align 1
  %118 = ptrtoint ptr %dma64 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %dma64, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool10.not.i = icmp eq i8 %119, 0
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  br i1 %tobool10.not.i, label %if.else.i156, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = zext i32 %add.i.i to i64
  %120 = tail call i64 @llvm.bswap.i64(i64 %conv13.i) #6
  %121 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %add.ptr15.i, align 8
  br label %setup_trans_desc.exit

if.else.i156:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %123 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %add.ptr15.i, align 4
  br label %setup_trans_desc.exit

setup_trans_desc.exit:                            ; preds = %if.else.i156, %if.then11.i, %if.then8.i
  %inc = add nuw nsw i32 %i.0160, 1
  %124 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_slots, align 4
  %cmp = icmp slt i32 %inc, %125
  br i1 %cmp, label %setup_trans_desc.exit.for.body_crit_edge, label %setup_trans_desc.exit.cleanup_crit_edge

setup_trans_desc.exit.cleanup_crit_edge:          ; preds = %setup_trans_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

setup_trans_desc.exit.for.body_crit_edge:         ; preds = %setup_trans_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %setup_trans_desc.exit.cleanup_crit_edge, %do.end80.cleanup_crit_edge, %if.then47, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then47 ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %do.end80.cleanup_crit_edge ], [ 0, %setup_trans_desc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cqhci_enable(ptr noundef %cq_host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 2
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %2 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_host, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !235

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %5(ptr noundef %cq_host, i32 noundef 8) #6
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !236
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cqhci_readl.exit.if.end_crit_edge, label %if.then

cqhci_readl.exit.if.end_crit_edge:                ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cqhci_readl.exit
  %and2 = and i32 %retval.0.i, -2
  %10 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cq_host, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i63 = icmp eq ptr %13, null
  br i1 %tobool.not.i63, label %if.else.i67, label %if.then.i64, !prof !235

if.then.i64:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %cq_host, i32 noundef %and2, i32 noundef 8) #6
  br label %if.end

if.else.i67:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and2) #6
  %mmio.i65 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %15 = ptrtoint ptr %mmio.i65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %14) #6, !srcloc !237
  br label %if.end

if.end:                                           ; preds = %if.else.i67, %if.then.i64, %cqhci_readl.exit.if.end_crit_edge
  %cqcfg.0 = phi i32 [ %retval.0.i, %cqhci_readl.exit.if.end_crit_edge ], [ %and2, %if.then.i64 ], [ %and2, %if.else.i67 ]
  %and3 = and i32 %cqcfg.0, -4353
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps2, align 4
  %and4 = lshr i32 %18, 12
  %19 = and i32 %and4, 4096
  %20 = or i32 %19, %and3
  %caps = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 9
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps, align 4
  %and8 = shl i32 %22, 8
  %23 = and i32 %and8, 256
  %and14 = lshr i32 %18, 26
  %24 = and i32 %and14, 2
  %25 = or i32 %20, %24
  %26 = or i32 %25, %23
  %27 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cq_host, align 4
  %write_l.i68 = getelementptr inbounds %struct.cqhci_host_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_l.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_l.i68, align 4
  %tobool.not.i69 = icmp eq ptr %30, null
  br i1 %tobool.not.i69, label %if.else.i73, label %if.then.i70, !prof !235

if.then.i70:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %30(ptr noundef %cq_host, i32 noundef %26, i32 noundef 8) #6
  br label %cqhci_writel.exit74

if.else.i73:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %mmio.i71 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %32 = ptrtoint ptr %mmio.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %31) #6, !srcloc !237
  br label %cqhci_writel.exit74

cqhci_writel.exit74:                              ; preds = %if.else.i73, %if.then.i70
  %desc_dma_base = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 25
  %34 = ptrtoint ptr %desc_dma_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_dma_base, align 4
  %36 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cq_host, align 4
  %write_l.i75 = getelementptr inbounds %struct.cqhci_host_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_l.i75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_l.i75, align 4
  %tobool.not.i76 = icmp eq ptr %39, null
  br i1 %tobool.not.i76, label %if.else.i80, label %if.then.i77, !prof !235

if.then.i77:                                      ; preds = %cqhci_writel.exit74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %39(ptr noundef %cq_host, i32 noundef %35, i32 noundef 32) #6
  br label %cqhci_writel.exit81

if.else.i80:                                      ; preds = %cqhci_writel.exit74
  call void @__sanitizer_cov_trace_pc() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %mmio.i78 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %41 = ptrtoint ptr %mmio.i78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %40) #6, !srcloc !237
  br label %cqhci_writel.exit81

cqhci_writel.exit81:                              ; preds = %if.else.i80, %if.then.i77
  %43 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cq_host, align 4
  %write_l.i82 = getelementptr inbounds %struct.cqhci_host_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_l.i82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_l.i82, align 4
  %tobool.not.i83 = icmp eq ptr %46, null
  br i1 %tobool.not.i83, label %if.else.i87, label %if.then.i84, !prof !235

if.then.i84:                                      ; preds = %cqhci_writel.exit81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %46(ptr noundef %cq_host, i32 noundef 0, i32 noundef 36) #6
  br label %cqhci_writel.exit88

if.else.i87:                                      ; preds = %cqhci_writel.exit81
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i85 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %47 = ptrtoint ptr %mmio.i85 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i85, align 4
  %add.ptr.i86 = getelementptr i8, ptr %48, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 0) #6, !srcloc !237
  br label %cqhci_writel.exit88

cqhci_writel.exit88:                              ; preds = %if.else.i87, %if.then.i84
  %rca = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 4
  %49 = ptrtoint ptr %rca to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rca, align 4
  %51 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cq_host, align 4
  %write_l.i89 = getelementptr inbounds %struct.cqhci_host_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write_l.i89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_l.i89, align 4
  %tobool.not.i90 = icmp eq ptr %54, null
  br i1 %tobool.not.i90, label %if.else.i94, label %if.then.i91, !prof !235

if.then.i91:                                      ; preds = %cqhci_writel.exit88
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %54(ptr noundef %cq_host, i32 noundef %50, i32 noundef 68) #6
  br label %cqhci_writel.exit95

if.else.i94:                                      ; preds = %cqhci_writel.exit88
  call void @__sanitizer_cov_trace_pc() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  %mmio.i92 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %56 = ptrtoint ptr %mmio.i92 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i92, align 4
  %add.ptr.i93 = getelementptr i8, ptr %57, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %55) #6, !srcloc !237
  br label %cqhci_writel.exit95

cqhci_writel.exit95:                              ; preds = %if.else.i94, %if.then.i91
  %58 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cq_host, align 4
  %write_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !235

if.then.i.i:                                      ; preds = %cqhci_writel.exit95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %61(ptr noundef %cq_host, i32 noundef 0, i32 noundef 20) #6
  br label %cqhci_writel.exit.i

if.else.i.i:                                      ; preds = %cqhci_writel.exit95
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %62 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !237
  br label %cqhci_writel.exit.i

cqhci_writel.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %64 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cq_host, align 4
  %write_l.i3.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_l.i3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_l.i3.i, align 4
  %tobool.not.i4.i = icmp eq ptr %67, null
  br i1 %tobool.not.i4.i, label %if.else.i8.i, label %if.then.i5.i, !prof !235

if.then.i5.i:                                     ; preds = %cqhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %67(ptr noundef %cq_host, i32 noundef 0, i32 noundef 24) #6
  br label %cqhci_set_irqs.exit

if.else.i8.i:                                     ; preds = %cqhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i6.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %68 = ptrtoint ptr %mmio.i6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %69, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #6, !srcloc !237
  br label %cqhci_set_irqs.exit

cqhci_set_irqs.exit:                              ; preds = %if.else.i8.i, %if.then.i5.i
  %or22 = or i32 %26, 1
  %70 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cq_host, align 4
  %write_l.i96 = getelementptr inbounds %struct.cqhci_host_ops, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_l.i96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_l.i96, align 4
  %tobool.not.i97 = icmp eq ptr %73, null
  br i1 %tobool.not.i97, label %if.else.i101, label %if.then.i98, !prof !235

if.then.i98:                                      ; preds = %cqhci_set_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %73(ptr noundef %cq_host, i32 noundef %or22, i32 noundef 8) #6
  br label %cqhci_writel.exit102

if.else.i101:                                     ; preds = %cqhci_set_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %74 = tail call i32 @llvm.bswap.i32(i32 %or22) #6
  %mmio.i99 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %75 = ptrtoint ptr %mmio.i99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i99, align 4
  %add.ptr.i100 = getelementptr i8, ptr %76, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %74) #6, !srcloc !237
  br label %cqhci_writel.exit102

cqhci_writel.exit102:                             ; preds = %if.else.i101, %if.then.i98
  %77 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cq_host, align 4
  %read_l.i103 = getelementptr inbounds %struct.cqhci_host_ops, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %read_l.i103 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read_l.i103, align 4
  %tobool.not.i104 = icmp eq ptr %80, null
  br i1 %tobool.not.i104, label %if.else.i109, label %if.then.i106, !prof !235

if.then.i106:                                     ; preds = %cqhci_writel.exit102
  call void @__sanitizer_cov_trace_pc() #8
  %call.i105 = tail call i32 %80(ptr noundef %cq_host, i32 noundef 12) #6
  br label %cqhci_readl.exit111

if.else.i109:                                     ; preds = %cqhci_writel.exit102
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i107 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %81 = ptrtoint ptr %mmio.i107 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i107, align 4
  %add.ptr.i108 = getelementptr i8, ptr %82, i32 12
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #6, !srcloc !236
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  br label %cqhci_readl.exit111

cqhci_readl.exit111:                              ; preds = %if.else.i109, %if.then.i106
  %retval.0.i110 = phi i32 [ %call.i105, %if.then.i106 ], [ %84, %if.else.i109 ]
  %and24 = and i32 %retval.0.i110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cqhci_readl.exit111.if.end27_crit_edge, label %if.then26

cqhci_readl.exit111.if.end27_crit_edge:           ; preds = %cqhci_readl.exit111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then26:                                        ; preds = %cqhci_readl.exit111
  %85 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cq_host, align 4
  %write_l.i112 = getelementptr inbounds %struct.cqhci_host_ops, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_l.i112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_l.i112, align 4
  %tobool.not.i113 = icmp eq ptr %88, null
  br i1 %tobool.not.i113, label %if.else.i117, label %if.then.i114, !prof !235

if.then.i114:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %88(ptr noundef %cq_host, i32 noundef 0, i32 noundef 12) #6
  br label %if.end27

if.else.i117:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i115 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %89 = ptrtoint ptr %mmio.i115 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i115, align 4
  %add.ptr.i116 = getelementptr i8, ptr %90, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 0) #6, !srcloc !237
  br label %if.end27

if.end27:                                         ; preds = %if.else.i117, %if.then.i114, %cqhci_readl.exit111.if.end27_crit_edge
  %cqe_on = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 66
  %91 = ptrtoint ptr %cqe_on to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %cqe_on, align 1
  %92 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cq_host, align 4
  %enable = getelementptr inbounds %struct.cqhci_host_ops, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %enable, align 4
  %tobool28.not = icmp eq ptr %95, null
  br i1 %tobool28.not, label %if.end27.do.body_crit_edge, label %if.then29

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %95(ptr noundef %1) #6
  br label %do.body

do.body:                                          ; preds = %if.then29, %if.end27.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cq_host, align 4
  %write_l.i.i119 = getelementptr inbounds %struct.cqhci_host_ops, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write_l.i.i119 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_l.i.i119, align 4
  %tobool.not.i.i120 = icmp eq ptr %99, null
  br i1 %tobool.not.i.i120, label %if.else.i.i124, label %if.then.i.i121, !prof !235

if.then.i.i121:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %99(ptr noundef %cq_host, i32 noundef 54, i32 noundef 20) #6
  br label %cqhci_writel.exit.i127

if.else.i.i124:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i122 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %100 = ptrtoint ptr %mmio.i.i122 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio.i.i122, align 4
  %add.ptr.i.i123 = getelementptr i8, ptr %101, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 905969664) #6, !srcloc !237
  br label %cqhci_writel.exit.i127

cqhci_writel.exit.i127:                           ; preds = %if.else.i.i124, %if.then.i.i121
  %102 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cq_host, align 4
  %write_l.i3.i125 = getelementptr inbounds %struct.cqhci_host_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %write_l.i3.i125 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_l.i3.i125, align 4
  %tobool.not.i4.i126 = icmp eq ptr %105, null
  br i1 %tobool.not.i4.i126, label %if.else.i8.i131, label %if.then.i5.i128, !prof !235

if.then.i5.i128:                                  ; preds = %cqhci_writel.exit.i127
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %105(ptr noundef %cq_host, i32 noundef 54, i32 noundef 24) #6
  br label %cqhci_set_irqs.exit132

if.else.i8.i131:                                  ; preds = %cqhci_writel.exit.i127
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i6.i129 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %106 = ptrtoint ptr %mmio.i6.i129 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i6.i129, align 4
  %add.ptr.i7.i130 = getelementptr i8, ptr %107, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i130, i32 905969664) #6, !srcloc !237
  br label %cqhci_set_irqs.exit132

cqhci_set_irqs.exit132:                           ; preds = %if.else.i8.i131, %if.then.i5.i128
  %activated = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 14
  %108 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %activated, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmam_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cqhci_prep_task_desc(ptr nocapture noundef readonly %mrq, ptr nocapture noundef readonly %cq_host, i32 noundef %tag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_base.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 19
  %0 = ptrtoint ptr %desc_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_base.i, align 4
  %conv.i = and i32 %tag, 255
  %slot_sz.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 20
  %2 = ptrtoint ptr %slot_sz.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %slot_sz.i, align 4
  %conv1.i = zext i8 %3 to i32
  %mul.i = mul nuw nsw i32 %conv.i, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = lshr i32 %7, 8
  %shl = and i32 %8, 64
  %9 = lshr i32 %7, 2
  %shl10 = and i32 %9, 2048
  %10 = shl i32 %7, 3
  %shl19 = and i32 %10, 4096
  %11 = shl i32 %7, 2
  %shl28 = and i32 %11, 8192
  %12 = shl i32 %7, 4
  %shl37 = and i32 %12, 16384
  %shl46 = and i32 %10, 32768
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blocks, align 4
  %shl50 = shl i32 %14, 16
  %or38 = or i32 %shl, %shl10
  %or29 = or i32 %or38, %shl19
  %or20 = or i32 %or29, %shl28
  %or11 = or i32 %or20, %shl37
  %or = or i32 %or11, %shl46
  %or47 = or i32 %or, %shl50
  %or51 = or i32 %or47, 47
  %conv52 = zext i32 %or51 to i64
  %blk_addr = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %blk_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blk_addr, align 4
  %conv54 = zext i32 %16 to i64
  %shl56 = shl nuw i64 %conv54, 32
  %or57 = or i64 %shl56, %conv52
  %17 = tail call i64 @llvm.bswap.i64(i64 %or57)
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %add.ptr.i, align 8
  %caps = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 9
  %19 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %caps, align 4
  %and58 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body72, label %if.then

if.then:                                          ; preds = %entry
  %crypto_ctx.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 11
  %21 = ptrtoint ptr %crypto_ctx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crypto_ctx.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.cqhci_crypto_prep_task_desc.exit_crit_edge, label %if.end.i

if.then.cqhci_crypto_prep_task_desc.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cqhci_crypto_prep_task_desc.exit

if.end.i:                                         ; preds = %if.then
  %bc_dun.i = getelementptr inbounds %struct.bio_crypt_ctx, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %bc_dun.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bc_dun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %24)
  %cmp.i = icmp ugt i64 %24, 4294967295
  br i1 %cmp.i, label %land.rhs.i, label %if.end.i.if.end31.i_crit_edge

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b49.i = load i1, ptr @cqhci_crypto_prep_task_desc.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then9.i, !prof !235

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cqhci_crypto_prep_task_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 29, i32 noundef 9, ptr noundef null) #6
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then9.i, %land.rhs.i.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %crypto_key_slot.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 12
  %25 = ptrtoint ptr %crypto_key_slot.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %crypto_key_slot.i, align 4
  %conv48.i = zext i32 %26 to i64
  %shl.i = shl nuw i64 %conv48.i, 32
  %27 = ptrtoint ptr %crypto_ctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crypto_ctx.i, align 4
  %bc_dun40.i = getelementptr inbounds %struct.bio_crypt_ctx, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bc_dun40.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bc_dun40.i, align 8
  %or.i = or i64 %shl.i, %30
  %or42.i = or i64 %or.i, 140737488355328
  br label %cqhci_crypto_prep_task_desc.exit

cqhci_crypto_prep_task_desc.exit:                 ; preds = %if.end31.i, %if.then.cqhci_crypto_prep_task_desc.exit_crit_edge
  %retval.0.i113 = phi i64 [ %or42.i, %if.end31.i ], [ 0, %if.then.cqhci_crypto_prep_task_desc.exit_crit_edge ]
  %31 = tail call i64 @llvm.bswap.i64(i64 %retval.0.i113)
  %arrayidx61 = getelementptr i64, ptr %add.ptr.i, i32 1
  %32 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx61, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_prep_task_desc.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_prep_task_desc, %if.then69)) #6
          to label %if.end92 [label %if.then69], !srcloc !239

if.then69:                                        ; preds = %cqhci_crypto_prep_task_desc.exit
  %host = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 8
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i114 = icmp eq ptr %36, null
  br i1 %tobool.not.i114, label %if.end.i115, label %if.then69.dev_name.exit_crit_edge

if.then69.dev_name.exit_crit_edge:                ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i115:                                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i115, %if.then69.dev_name.exit_crit_edge
  %retval.0.i116 = phi ptr [ %38, %if.end.i115 ], [ %36, %if.then69.dev_name.exit_crit_edge ]
  %tag71 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %39 = ptrtoint ptr %tag71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tag71, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_prep_task_desc.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.47, ptr noundef %retval.0.i116, i32 noundef %40, i64 noundef %retval.0.i113, i64 noundef %or57) #6
  br label %if.end92

do.body72:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_prep_task_desc.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_prep_task_desc, %if.then84)) #6
          to label %if.end92 [label %if.then84], !srcloc !239

if.then84:                                        ; preds = %do.body72
  %host85 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 8
  %41 = ptrtoint ptr %host85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host85, align 4
  %init_name.i117 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %init_name.i117 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i117, align 8
  %tobool.not.i118 = icmp eq ptr %44, null
  br i1 %tobool.not.i118, label %if.end.i119, label %if.then84.dev_name.exit121_crit_edge

if.then84.dev_name.exit121_crit_edge:             ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit121

if.end.i119:                                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev86 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %class_dev86 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %class_dev86, align 4
  br label %dev_name.exit121

dev_name.exit121:                                 ; preds = %if.end.i119, %if.then84.dev_name.exit121_crit_edge
  %retval.0.i120 = phi ptr [ %46, %if.end.i119 ], [ %44, %if.then84.dev_name.exit121_crit_edge ]
  %tag88 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %47 = ptrtoint ptr %tag88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tag88, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_prep_task_desc.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.48, ptr noundef %retval.0.i120, i32 noundef %48, i64 noundef %or57) #6
  br label %if.end92

if.end92:                                         ; preds = %dev_name.exit121, %do.body72, %dev_name.exit, %cqhci_crypto_prep_task_desc.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cqhci_prep_dcmd_desc(ptr noundef %mmc, ptr noundef %mrq) unnamed_addr #0 align 64 {
entry:
  %data = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #6
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %5, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %.55 = select i1 %tobool4.not, i32 2, i32 3
  %6 = xor i32 %and, 1
  %resp_type.0 = select i1 %tobool.not, i32 0, i32 %.55
  %dcmd_slot = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dcmd_slot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dcmd_slot, align 4
  %desc_base.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %desc_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_base.i, align 4
  %conv.i = and i32 %8, 255
  %slot_sz.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %slot_sz.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %slot_sz.i, align 4
  %conv1.i = zext i8 %12 to i32
  %mul.i = mul nuw nsw i32 %conv.i, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  %task_desc_len = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %task_desc_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %task_desc_len, align 1
  %conv8 = zext i8 %14 to i32
  %15 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %conv8)
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and10 = shl i32 %19, 16
  %shl = and i32 %and10, 4128768
  %shl13 = shl nuw nsw i32 %6, 22
  %or = or i32 %shl, %shl13
  %shl17 = shl nuw nsw i32 %resp_type.0, 23
  %or14 = or i32 %or, %shl17
  %or18 = or i32 %or14, 16431
  %conv19 = zext i32 %or18 to i64
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv19, ptr %data, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %update_dcmd_desc = getelementptr inbounds %struct.cqhci_host_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %update_dcmd_desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %update_dcmd_desc, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %entry.if.end25_crit_edge, label %if.then22

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void %24(ptr noundef %mmc, ptr noundef %mrq, ptr noundef nonnull %data) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %entry.if.end25_crit_edge
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %data, align 8
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.i, align 8
  %or26 = or i64 %28, %26
  store i64 %or26, ptr %add.ptr.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_prep_dcmd_desc.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_prep_dcmd_desc, %if.then31)) #6
          to label %do.end [label %if.then31], !srcloc !239

if.then31:                                        ; preds = %if.end25
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then31.dev_name.exit_crit_edge

if.then31.dev_name.exit_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %31 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then31.dev_name.exit_crit_edge
  %retval.0.i56 = phi ptr [ %32, %if.end.i ], [ %30, %if.then31.dev_name.exit_crit_edge ]
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_prep_dcmd_desc.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.55, ptr noundef %retval.0.i56, i32 noundef %36, i32 noundef %6, i32 noundef %resp_type.0) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.end25
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 4
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arg, align 4
  %conv39 = zext i32 %40 to i64
  %41 = call i64 @llvm.bswap.i64(i64 %conv39)
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %add.ptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cqhci_halt(ptr nocapture noundef readonly %mmc, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !235

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %5(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_halted.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !236
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  br label %cqhci_halted.exit

cqhci_halted.exit:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %9, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %cqhci_halted.exit.cleanup60_crit_edge

cqhci_halted.exit.cleanup60_crit_edge:            ; preds = %cqhci_halted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

if.end:                                           ; preds = %cqhci_halted.exit
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %write_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i.i92 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i92, label %if.else.i.i96, label %if.then.i.i93, !prof !235

if.then.i.i93:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %1, i32 noundef 1, i32 noundef 20) #6
  br label %cqhci_writel.exit.i

if.else.i.i96:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i94 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mmio.i.i94 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i94, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95, i32 16777216) #6, !srcloc !237
  br label %cqhci_writel.exit.i

cqhci_writel.exit.i:                              ; preds = %if.else.i.i96, %if.then.i.i93
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %write_l.i3.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_l.i3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_l.i3.i, align 4
  %tobool.not.i4.i = icmp eq ptr %19, null
  br i1 %tobool.not.i4.i, label %if.else.i8.i, label %if.then.i5.i, !prof !235

if.then.i5.i:                                     ; preds = %cqhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %19(ptr noundef %1, i32 noundef 1, i32 noundef 24) #6
  br label %cqhci_set_irqs.exit

if.else.i8.i:                                     ; preds = %cqhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i6.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %mmio.i6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 16777216) #6, !srcloc !237
  br label %cqhci_set_irqs.exit

cqhci_set_irqs.exit:                              ; preds = %if.else.i8.i, %if.then.i5.i
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.else.i97, label %if.then.i, !prof !235

if.then.i:                                        ; preds = %cqhci_set_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %25(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_readl.exit

if.else.i97:                                      ; preds = %cqhci_set_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !236
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i97, %if.then.i
  %retval.0.i98 = phi i32 [ %call.i, %if.then.i ], [ %29, %if.else.i97 ]
  %or = or i32 %retval.0.i98, 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i99 = icmp eq ptr %33, null
  br i1 %tobool.not.i99, label %if.else.i103, label %if.then.i100, !prof !235

if.then.i100:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %33(ptr noundef %1, i32 noundef %or, i32 noundef 12) #6
  br label %if.else.i

if.else.i103:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %mmio.i101 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %mmio.i101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i101, align 4
  %add.ptr.i102 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %34) #6, !srcloc !237
  br label %if.else.i

if.else.i:                                        ; preds = %if.else.i103, %if.then.i100
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 965) #6
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %read_l.i.i105 = getelementptr inbounds %struct.cqhci_host_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %read_l.i.i105 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_l.i.i105, align 4
  %tobool.not.i.i106 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i106, label %if.else.i.i111, label %if.then.i.i108, !prof !235

if.then.i.i108:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i107 = tail call i32 %40(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_halted.exit115

if.else.i.i111:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i109 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %mmio.i.i109 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i.i109, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %42, i32 12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i110) #6, !srcloc !236
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  br label %cqhci_halted.exit115

cqhci_halted.exit115:                             ; preds = %if.else.i.i111, %if.then.i.i108
  %retval.0.i.i112 = phi i32 [ %call.i.i107, %if.then.i.i108 ], [ %44, %if.else.i.i111 ]
  %and.i113 = and i32 %retval.0.i.i112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.i114 = icmp ne i32 %and.i113, 0
  %not.tobool.i114 = xor i1 %tobool.i114, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %tobool11.not159 = icmp eq i32 %call2.i, -1
  %tobool11.not = select i1 %not.tobool.i114, i1 %tobool11.not159, i1 false
  %45 = select i1 %tobool.i114, i1 true, i1 %tobool11.not
  br i1 %45, label %cqhci_halted.exit115.if.end39_crit_edge, label %if.then13

cqhci_halted.exit115.if.end39_crit_edge:          ; preds = %cqhci_halted.exit115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then13:                                        ; preds = %cqhci_halted.exit115
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %46 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i87 = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #6
  %add16 = add i32 %call2.i87, 1
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait_queue = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 28
  %mmio.i.i120 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then13
  %__ret14.0 = phi i32 [ %add16, %if.then13 ], [ %call36, %cleanup ]
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %read_l.i.i116 = getelementptr inbounds %struct.cqhci_host_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %read_l.i.i116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_l.i.i116, align 4
  %tobool.not.i.i117 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i117, label %if.else.i.i122, label %if.then.i.i119, !prof !235

if.then.i.i119:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i118 = call i32 %50(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_halted.exit126

if.else.i.i122:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %mmio.i.i120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i.i120, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %52, i32 12
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i121) #6, !srcloc !236
  %54 = call i32 @llvm.bswap.i32(i32 %53) #6
  br label %cqhci_halted.exit126

cqhci_halted.exit126:                             ; preds = %if.else.i.i122, %if.then.i.i119
  %retval.0.i.i123 = phi i32 [ %call.i.i118, %if.then.i.i119 ], [ %54, %if.else.i.i122 ]
  %and.i124 = and i32 %retval.0.i.i123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool.i125 = icmp ne i32 %and.i124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.0)
  %tobool23.not = icmp eq i32 %__ret14.0, 0
  %55 = select i1 %tobool.i125, i1 %tobool23.not, i1 false
  %__ret14.1 = select i1 %55, i32 1, i32 %__ret14.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool29.not = icmp eq i32 %__ret14.1, 0
  %56 = select i1 %tobool.i125, i1 true, i1 %tobool29.not
  br i1 %56, label %for.end, label %cleanup

cleanup:                                          ; preds = %cqhci_halted.exit126
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = call i32 @schedule_timeout(i32 noundef %__ret14.1) #6
  br label %for.cond

for.end:                                          ; preds = %cqhci_halted.exit126
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end39

if.end39:                                         ; preds = %for.end, %cqhci_halted.exit115.if.end39_crit_edge
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %write_l.i.i127 = getelementptr inbounds %struct.cqhci_host_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_l.i.i127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_l.i.i127, align 4
  %tobool.not.i.i128 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i128, label %if.else.i.i132, label %if.then.i.i129, !prof !235

if.then.i.i129:                                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void %60(ptr noundef %1, i32 noundef 0, i32 noundef 20) #6
  br label %cqhci_writel.exit.i135

if.else.i.i132:                                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i130 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %mmio.i.i130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i.i130, align 4
  %add.ptr.i.i131 = getelementptr i8, ptr %62, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i131, i32 0) #6, !srcloc !237
  br label %cqhci_writel.exit.i135

cqhci_writel.exit.i135:                           ; preds = %if.else.i.i132, %if.then.i.i129
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %write_l.i3.i133 = getelementptr inbounds %struct.cqhci_host_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_l.i3.i133 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_l.i3.i133, align 4
  %tobool.not.i4.i134 = icmp eq ptr %66, null
  br i1 %tobool.not.i4.i134, label %if.else.i8.i139, label %if.then.i5.i136, !prof !235

if.then.i5.i136:                                  ; preds = %cqhci_writel.exit.i135
  call void @__sanitizer_cov_trace_pc() #8
  call void %66(ptr noundef %1, i32 noundef 0, i32 noundef 24) #6
  br label %cqhci_set_irqs.exit140

if.else.i8.i139:                                  ; preds = %cqhci_writel.exit.i135
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i6.i137 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %mmio.i6.i137 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i6.i137, align 4
  %add.ptr.i7.i138 = getelementptr i8, ptr %68, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i138, i32 0) #6, !srcloc !237
  br label %cqhci_set_irqs.exit140

cqhci_set_irqs.exit140:                           ; preds = %if.else.i8.i139, %if.then.i5.i136
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %read_l.i.i141 = getelementptr inbounds %struct.cqhci_host_ops, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %read_l.i.i141 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read_l.i.i141, align 4
  %tobool.not.i.i142 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i142, label %if.else.i.i147, label %if.then.i.i144, !prof !235

if.then.i.i144:                                   ; preds = %cqhci_set_irqs.exit140
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i143 = call i32 %72(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_halted.exit151

if.else.i.i147:                                   ; preds = %cqhci_set_irqs.exit140
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i145 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %mmio.i.i145 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i145, align 4
  %add.ptr.i.i146 = getelementptr i8, ptr %74, i32 12
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i146) #6, !srcloc !236
  %76 = call i32 @llvm.bswap.i32(i32 %75) #6
  br label %cqhci_halted.exit151

cqhci_halted.exit151:                             ; preds = %if.else.i.i147, %if.then.i.i144
  %retval.0.i.i148 = phi i32 [ %call.i.i143, %if.then.i.i144 ], [ %76, %if.else.i.i147 ]
  %and.i149 = and i32 %retval.0.i.i148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool.i150.not = icmp eq i32 %and.i149, 0
  br i1 %tobool.i150.not, label %do.body45, label %cqhci_halted.exit151.cleanup60_crit_edge

cqhci_halted.exit151.cleanup60_crit_edge:         ; preds = %cqhci_halted.exit151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

do.body45:                                        ; preds = %cqhci_halted.exit151
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_halt.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_halt, %if.then53)) #6
          to label %cleanup60 [label %if.then53], !srcloc !239

if.then53:                                        ; preds = %do.body45
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i152 = icmp eq ptr %78, null
  br i1 %tobool.not.i152, label %if.end.i153, label %if.then53.dev_name.exit_crit_edge

if.then53.dev_name.exit_crit_edge:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i153:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %79 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i153, %if.then53.dev_name.exit_crit_edge
  %retval.0.i154 = phi ptr [ %80, %if.end.i153 ], [ %78, %if.then53.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_halt.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.102, ptr noundef %retval.0.i154) #6
  br label %cleanup60

cleanup60:                                        ; preds = %dev_name.exit, %do.body45, %cqhci_halted.exit151.cleanup60_crit_edge, %cqhci_halted.exit.cleanup60_crit_edge
  %retval.0 = phi i1 [ true, %cqhci_halted.exit.cleanup60_crit_edge ], [ false, %dev_name.exit ], [ true, %cqhci_halted.exit151.cleanup60_crit_edge ], [ false, %do.body45 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cqhci_clear_all_tasks(ptr nocapture noundef readonly %mmc) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !235

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %1, i32 noundef 8, i32 noundef 20) #6
  br label %cqhci_writel.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134217728) #6, !srcloc !237
  br label %cqhci_writel.exit.i

cqhci_writel.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %write_l.i3.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_l.i3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i3.i, align 4
  %tobool.not.i4.i = icmp eq ptr %11, null
  br i1 %tobool.not.i4.i, label %if.else.i8.i, label %if.then.i5.i, !prof !235

if.then.i5.i:                                     ; preds = %cqhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %1, i32 noundef 8, i32 noundef 24) #6
  br label %cqhci_set_irqs.exit

if.else.i8.i:                                     ; preds = %cqhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i6.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mmio.i6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 134217728) #6, !srcloc !237
  br label %cqhci_set_irqs.exit

cqhci_set_irqs.exit:                              ; preds = %if.else.i8.i, %if.then.i5.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !235

if.then.i:                                        ; preds = %cqhci_set_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %17(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %cqhci_set_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !236
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i1 = phi i32 [ %call.i, %if.then.i ], [ %21, %if.else.i ]
  %or = or i32 %retval.0.i1, 256
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i2 = icmp eq ptr %25, null
  br i1 %tobool.not.i2, label %if.else.i6, label %if.then.i3, !prof !235

if.then.i3:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %25(ptr noundef %1, i32 noundef %or, i32 noundef 12) #6
  br label %cqhci_writel.exit

if.else.i6:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %mmio.i4 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %mmio.i4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %26) #6, !srcloc !237
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i6, %if.then.i3
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 931) #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %read_l.i.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %read_l.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_l.i.i, align 4
  %tobool.not.i.i7 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i7, label %if.else.i.i11, label %if.then.i.i8, !prof !235

if.then.i.i8:                                     ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %32(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_tasks_cleared.exit

if.else.i.i11:                                    ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i9 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %mmio.i.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i9, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %34, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #6, !srcloc !236
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  br label %cqhci_tasks_cleared.exit

cqhci_tasks_cleared.exit:                         ; preds = %if.else.i.i11, %if.then.i.i8
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i8 ], [ %36, %if.else.i.i11 ]
  %and.i = and i32 %retval.0.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i12 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i12, label %cqhci_tasks_cleared.exit.if.end36_crit_edge, label %if.then10

cqhci_tasks_cleared.exit.if.end36_crit_edge:      ; preds = %cqhci_tasks_cleared.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then10:                                        ; preds = %cqhci_tasks_cleared.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %37 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait_queue = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 28
  %mmio.i.i17 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then10
  %__ret11.0 = phi i32 [ 3, %if.then10 ], [ %call33, %cleanup ]
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %read_l.i.i13 = getelementptr inbounds %struct.cqhci_host_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %read_l.i.i13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_l.i.i13, align 4
  %tobool.not.i.i14 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i14, label %if.else.i.i19, label %if.then.i.i16, !prof !235

if.then.i.i16:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i15 = call i32 %41(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_tasks_cleared.exit23

if.else.i.i19:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %mmio.i.i17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i.i17, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %43, i32 12
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #6, !srcloc !236
  %45 = call i32 @llvm.bswap.i32(i32 %44) #6
  br label %cqhci_tasks_cleared.exit23

cqhci_tasks_cleared.exit23:                       ; preds = %if.else.i.i19, %if.then.i.i16
  %retval.0.i.i20 = phi i32 [ %call.i.i15, %if.then.i.i16 ], [ %45, %if.else.i.i19 ]
  %and.i21 = and i32 %retval.0.i.i20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.not.i22 = icmp eq i32 %and.i21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.0)
  %tobool20.not = icmp eq i32 %__ret11.0, 0
  %46 = select i1 %tobool.not.i22, i1 %tobool20.not, i1 false
  %__ret11.1 = select i1 %46, i32 1, i32 %__ret11.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool26.not = icmp eq i32 %__ret11.1, 0
  %47 = select i1 %tobool.not.i22, i1 true, i1 %tobool26.not
  br i1 %47, label %for.end, label %cleanup

cleanup:                                          ; preds = %cqhci_tasks_cleared.exit23
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret11.1) #6
  br label %for.cond

for.end:                                          ; preds = %cqhci_tasks_cleared.exit23
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end36

if.end36:                                         ; preds = %for.end, %cqhci_tasks_cleared.exit.if.end36_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %write_l.i.i24 = getelementptr inbounds %struct.cqhci_host_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write_l.i.i24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_l.i.i24, align 4
  %tobool.not.i.i25 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i25, label %if.else.i.i29, label %if.then.i.i26, !prof !235

if.then.i.i26:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void %51(ptr noundef %1, i32 noundef 0, i32 noundef 20) #6
  br label %cqhci_writel.exit.i32

if.else.i.i29:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i27 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %mmio.i.i27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i27, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %53, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28, i32 0) #6, !srcloc !237
  br label %cqhci_writel.exit.i32

cqhci_writel.exit.i32:                            ; preds = %if.else.i.i29, %if.then.i.i26
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %write_l.i3.i30 = getelementptr inbounds %struct.cqhci_host_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_l.i3.i30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_l.i3.i30, align 4
  %tobool.not.i4.i31 = icmp eq ptr %57, null
  br i1 %tobool.not.i4.i31, label %if.else.i8.i36, label %if.then.i5.i33, !prof !235

if.then.i5.i33:                                   ; preds = %cqhci_writel.exit.i32
  call void @__sanitizer_cov_trace_pc() #8
  call void %57(ptr noundef %1, i32 noundef 0, i32 noundef 24) #6
  br label %cqhci_set_irqs.exit37

if.else.i8.i36:                                   ; preds = %cqhci_writel.exit.i32
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i6.i34 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %mmio.i6.i34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i6.i34, align 4
  %add.ptr.i7.i35 = getelementptr i8, ptr %59, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i35, i32 0) #6, !srcloc !237
  br label %cqhci_set_irqs.exit37

cqhci_set_irqs.exit37:                            ; preds = %if.else.i8.i36, %if.then.i5.i33
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %read_l.i.i38 = getelementptr inbounds %struct.cqhci_host_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %read_l.i.i38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_l.i.i38, align 4
  %tobool.not.i.i39 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i39, label %if.else.i.i44, label %if.then.i.i41, !prof !235

if.then.i.i41:                                    ; preds = %cqhci_set_irqs.exit37
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i40 = call i32 %63(ptr noundef %1, i32 noundef 12) #6
  br label %cqhci_tasks_cleared.exit48

if.else.i.i44:                                    ; preds = %cqhci_set_irqs.exit37
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i.i42 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %mmio.i.i42 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i42, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %65, i32 12
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #6, !srcloc !236
  %67 = call i32 @llvm.bswap.i32(i32 %66) #6
  br label %cqhci_tasks_cleared.exit48

cqhci_tasks_cleared.exit48:                       ; preds = %if.else.i.i44, %if.then.i.i41
  %retval.0.i.i45 = phi i32 [ %call.i.i40, %if.then.i.i41 ], [ %67, %if.else.i.i44 ]
  %and.i46 = and i32 %retval.0.i.i45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i47 = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i47, label %cqhci_tasks_cleared.exit48.if.end55_crit_edge, label %do.body42

cqhci_tasks_cleared.exit48.if.end55_crit_edge:    ; preds = %cqhci_tasks_cleared.exit48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.body42:                                        ; preds = %cqhci_tasks_cleared.exit48
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cqhci_clear_all_tasks.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cqhci_clear_all_tasks, %if.then50)) #6
          to label %if.end55 [label %if.then50], !srcloc !239

if.then50:                                        ; preds = %do.body42
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i49 = icmp eq ptr %69, null
  br i1 %tobool.not.i49, label %if.end.i, label %if.then50.dev_name.exit_crit_edge

if.then50.dev_name.exit_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %70 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then50.dev_name.exit_crit_edge
  %retval.0.i50 = phi ptr [ %71, %if.end.i ], [ %69, %if.then50.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cqhci_clear_all_tasks.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.107, ptr noundef %retval.0.i50) #6
  br label %if.end55

if.end55:                                         ; preds = %dev_name.exit, %do.body42, %cqhci_tasks_cleared.exit48.if.end55_crit_edge
  ret i1 %tobool.not.i47
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !222, !224}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @__ksymtab_cqhci_deactivate, !1, !"__ksymtab_cqhci_deactivate", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/cqhci-core.c", i32 323, i32 1}
!2 = !{ptr @__ksymtab_cqhci_resume, !3, !"__ksymtab_cqhci_resume", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/cqhci-core.c", i32 330, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/cqhci-core.c", i32 822, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cqhci_irq.__UNIQUE_ID_ddebug279, !5, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/cqhci-core.c", i32 832, i32 3}
!12 = !{ptr @cqhci_irq.__UNIQUE_ID_ddebug280, !11, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/cqhci-core.c", i32 839, i32 4}
!15 = !{ptr @cqhci_irq.__UNIQUE_ID_ddebug281, !14, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!16 = !{ptr @__ksymtab_cqhci_irq, !17, !"__ksymtab_cqhci_irq", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/cqhci-core.c", i32 860, i32 1}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1135, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cqhci_pltfm_init.__UNIQUE_ID_ddebug288, !19, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1146, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cqhci_pltfm_init._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @cqhci_pltfm_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1149, i32 2}
!30 = !{ptr @cqhci_pltfm_init.__UNIQUE_ID_ddebug289, !29, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!31 = !{ptr @__ksymtab_cqhci_pltfm_init, !32, !"__ksymtab_cqhci_pltfm_init", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1153, i32 1}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1194, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cqhci_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @cqhci_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @cqhci_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1199, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cqhci_init.__key.15, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1202, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1204, i32 2}
!46 = !{ptr @cqhci_init._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cqhci_init._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1211, i32 2}
!50 = !{ptr @cqhci_init._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cqhci_init._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @__ksymtab_cqhci_init, !53, !"__ksymtab_cqhci_init", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1216, i32 1}
!54 = !{ptr @__UNIQUE_ID_author290, !55, !"__UNIQUE_ID_author290", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1218, i32 1}
!56 = !{ptr @__UNIQUE_ID_description291, !57, !"__UNIQUE_ID_description291", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1219, i32 1}
!58 = !{ptr @__UNIQUE_ID_file292, !59, !"__UNIQUE_ID_file292", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1220, i32 1}
!60 = !{ptr @__UNIQUE_ID_license293, !59, !"__UNIQUE_ID_license293", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/cqhci-core.c", i32 703, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cqhci_error_irq.__UNIQUE_ID_ddebug278, !62, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/cqhci-core.c", i32 711, i32 3}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/cqhci-core.c", i32 745, i32 3}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/cqhci-core.c", i32 669, i32 3}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cqhci_recovery_needed.__UNIQUE_ID_ddebug277, !72, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/cqhci-core.c", i32 786, i32 3}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cqhci_cqe_ops, !79, !"cqhci_cqe_ops", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1114, i32 33}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/cqhci-core.c", i32 347, i32 3}
!82 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @cqhci_enable._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @cqhci_enable._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/cqhci-core.c", i32 205, i32 2}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cqhci_host_alloc_tdl.__UNIQUE_ID_ddebug269, !86, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mmc/host/cqhci-core.c", i32 235, i32 2}
!91 = !{ptr @cqhci_host_alloc_tdl.__UNIQUE_ID_ddebug270, !90, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/cqhci-core.c", i32 600, i32 3}
!94 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @cqhci_request._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @cqhci_request._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/cqhci-core.c", i32 614, i32 3}
!99 = !{ptr @cqhci_request.__UNIQUE_ID_ddebug275, !98, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/cqhci-core.c", i32 616, i32 4}
!102 = !{ptr @cqhci_request._entry.39, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cqhci_request._entry_ptr.41, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/cqhci-core.c", i32 628, i32 4}
!106 = !{ptr @cqhci_request._entry.42, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cqhci_request._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/cqhci-core.c", i32 651, i32 3}
!110 = !{ptr @cqhci_request.__UNIQUE_ID_ddebug276, !109, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/cqhci-core.c", i32 449, i32 3}
!113 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cqhci_prep_task_desc.__UNIQUE_ID_ddebug272, !112, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mmc/host/cqhci-core.c", i32 452, i32 3}
!117 = !{ptr @cqhci_prep_task_desc.__UNIQUE_ID_ddebug273, !116, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../drivers/mmc/host/cqhci-crypto.h", i32 29, i32 2}
!120 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/cqhci-core.c", i32 512, i32 3}
!123 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cqhci_prep_tran_desc._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @cqhci_prep_tran_desc._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/cqhci-core.c", i32 470, i32 3}
!128 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @cqhci_dma_map._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @cqhci_dma_map._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/cqhci-core.c", i32 569, i32 2}
!133 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @cqhci_prep_dcmd_desc.__UNIQUE_ID_ddebug274, !132, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/cqhci-core.c", i32 387, i32 3}
!137 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @cqhci_off._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @cqhci_off._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/host/cqhci-core.c", i32 389, i32 3}
!142 = !{ptr @cqhci_off.__UNIQUE_ID_ddebug271, !141, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mmc/host/cqhci-core.c", i32 905, i32 3}
!145 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @cqhci_timeout._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @cqhci_timeout._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/cqhci-core.c", i32 112, i32 2}
!150 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @cqhci_dumpregs._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @cqhci_dumpregs._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/cqhci-core.c", i32 114, i32 2}
!155 = !{ptr @cqhci_dumpregs._entry.63, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cqhci_dumpregs._entry_ptr.65, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mmc/host/cqhci-core.c", i32 117, i32 2}
!159 = !{ptr @cqhci_dumpregs._entry.66, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cqhci_dumpregs._entry_ptr.68, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mmc/host/cqhci-core.c", i32 120, i32 2}
!163 = !{ptr @cqhci_dumpregs._entry.69, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cqhci_dumpregs._entry_ptr.71, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mmc/host/cqhci-core.c", i32 123, i32 2}
!167 = !{ptr @cqhci_dumpregs._entry.72, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cqhci_dumpregs._entry_ptr.74, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mmc/host/cqhci-core.c", i32 126, i32 2}
!171 = !{ptr @cqhci_dumpregs._entry.75, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @cqhci_dumpregs._entry_ptr.77, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mmc/host/cqhci-core.c", i32 129, i32 2}
!175 = !{ptr @cqhci_dumpregs._entry.78, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @cqhci_dumpregs._entry_ptr.80, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mmc/host/cqhci-core.c", i32 132, i32 2}
!179 = !{ptr @cqhci_dumpregs._entry.81, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @cqhci_dumpregs._entry_ptr.83, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mmc/host/cqhci-core.c", i32 135, i32 2}
!183 = !{ptr @cqhci_dumpregs._entry.84, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @cqhci_dumpregs._entry_ptr.86, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mmc/host/cqhci-core.c", i32 138, i32 2}
!187 = !{ptr @cqhci_dumpregs._entry.87, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @cqhci_dumpregs._entry_ptr.89, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mmc/host/cqhci-core.c", i32 141, i32 2}
!191 = !{ptr @cqhci_dumpregs._entry.90, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @cqhci_dumpregs._entry_ptr.92, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mmc/host/cqhci-core.c", i32 144, i32 2}
!195 = !{ptr @cqhci_dumpregs._entry.93, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @cqhci_dumpregs._entry_ptr.95, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mmc/host/cqhci-core.c", i32 151, i32 3}
!199 = !{ptr @cqhci_dumpregs._entry.96, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @cqhci_dumpregs._entry_ptr.98, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mmc/host/cqhci-core.c", i32 989, i32 2}
!203 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @cqhci_recovery_start.__UNIQUE_ID_ddebug284, !202, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!205 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mmc/host/cqhci-core.c", i32 972, i32 3}
!207 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @cqhci_halt.__UNIQUE_ID_ddebug283, !206, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!209 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1065, i32 2}
!211 = !{ptr @cqhci_recovery_finish.__UNIQUE_ID_ddebug285, !210, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!212 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1081, i32 3}
!214 = !{ptr @cqhci_recovery_finish.__UNIQUE_ID_ddebug286, !213, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/mmc/host/cqhci-core.c", i32 1111, i32 2}
!217 = !{ptr @cqhci_recovery_finish.__UNIQUE_ID_ddebug287, !216, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/mmc/host/cqhci-core.c", i32 938, i32 3}
!220 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @cqhci_clear_all_tasks.__UNIQUE_ID_ddebug282, !219, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!222 = !{ptr @init_completion.__key, !223, !"__key", i1 false, i1 false}
!223 = !{!"../include/linux/completion.h", i32 87, i32 2}
!224 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{i8 0, i8 2}
!235 = !{!"branch_weights", i32 2000, i32 1}
!236 = !{i64 5915608}
!237 = !{i64 5915190}
!238 = !{!"auto-init"}
!239 = !{i64 2148785503, i64 2148785508, i64 2148785521, i64 2148785565, i64 2148785599, i64 2148785620}
!240 = !{i32 0, i32 33}
!241 = !{!"branch_weights", i32 1, i32 2000}
!242 = !{i64 2154586750}
!243 = !{i64 2154637907}
!244 = !{i64 2154554813}
