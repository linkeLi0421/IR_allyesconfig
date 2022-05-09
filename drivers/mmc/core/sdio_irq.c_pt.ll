; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/sdio_irq.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sdio_signal_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_sdio_signal_irq\09\09\09\09"
module asm "\09.long\09__crc_sdio_signal_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_signal_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_signal_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_signal_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sdio_claim_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_sdio_claim_irq\09\09\09\09"
module asm "\09.long\09__crc_sdio_claim_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_claim_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_claim_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_claim_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sdio_release_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_sdio_release_irq\09\09\09\09"
module asm "\09.long\09__crc_sdio_release_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_release_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_release_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_release_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_sdio_signal_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_signal_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_signal_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_signal_irq to i32), ptr @__kstrtab_sdio_signal_irq, ptr @__kstrtabns_sdio_signal_irq }, section "___ksymtab_gpl+sdio_signal_irq", align 4
@sdio_claim_irq.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdio_claim_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mmc/core/sdio_irq.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SDIO: Enabling IRQ for %s...\0A\00", [34 x i8] zeroinitializer }, align 32
@sdio_claim_irq.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SDIO: IRQ for %s already in use.\0A\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_sdio_claim_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_claim_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_claim_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_claim_irq to i32), ptr @__kstrtab_sdio_claim_irq, ptr @__kstrtabns_sdio_claim_irq }, section "___ksymtab_gpl+sdio_claim_irq", align 4
@sdio_release_irq.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdio_release_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SDIO: Disabling IRQ for %s...\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_sdio_release_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_release_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_release_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_release_irq to i32), ptr @__kstrtab_sdio_release_irq, ptr @__kstrtabns_sdio_release_irq }, section "___ksymtab_gpl+sdio_release_irq", align 4
@process_sdio_pending_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: pending IRQ for non-existent function\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"process_sdio_pending_irqs\00", [38 x i8] zeroinitializer }, align 32
@process_sdio_pending_irqs._entry_ptr = internal global ptr @process_sdio_pending_irqs._entry, section ".printk_index", align 4
@process_sdio_pending_irqs._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: pending IRQ with no handler\0A\00", [61 x i8] zeroinitializer }, align 32
@process_sdio_pending_irqs._entry_ptr.11 = internal global ptr @process_sdio_pending_irqs._entry.9, section ".printk_index", align 4
@sdio_get_pending_irqs.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdio_get_pending_irqs\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: error %d reading SDIO_CCCR_INTx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ksdioirqd/%s\00", [19 x i8] zeroinitializer }, align 32
@sdio_irq_thread.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdio_irq_thread\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: IRQ thread started (poll period = %lu jiffies)\0A\00", [44 x i8] zeroinitializer }, align 32
@sdio_irq_thread.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.20, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: IRQ thread exiting with code %d\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 307, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 310, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 350, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 93, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 100, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 39, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 234, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 157, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [31 x i8] c"../drivers/mmc/core/sdio_irq.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 218, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_sdio_claim_irq, ptr @__ksymtab_sdio_release_irq, ptr @__ksymtab_sdio_signal_irq, ptr @process_sdio_pending_irqs._entry, ptr @process_sdio_pending_irqs._entry.9, ptr @process_sdio_pending_irqs._entry_ptr, ptr @process_sdio_pending_irqs._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.20], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sdio_pending_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sdio_pending_irqs._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdio_irq_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1368
  %call.i.i = tail call i32 @__mmc_claim_host(ptr noundef %add.ptr, ptr noundef null, ptr noundef null) #5
  %sdio_irqs.i = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %sdio_irqs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdio_irqs.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.sdio_run_irqs.exit_crit_edge, label %if.then.i

entry.sdio_run_irqs.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdio_run_irqs.exit

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @process_sdio_pending_irqs(ptr noundef %add.ptr) #5
  %sdio_irq_pending.i = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sdio_irq_pending.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.sdio_run_irqs.exit_crit_edge

if.then.i.sdio_run_irqs.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdio_run_irqs.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i = getelementptr i8, ptr %work, i32 -428
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %ack_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ack_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ack_sdio_irq.i, align 4
  tail call void %7(ptr noundef %add.ptr) #5
  br label %sdio_run_irqs.exit

sdio_run_irqs.exit:                               ; preds = %if.then2.i, %if.then.i.sdio_run_irqs.exit_crit_edge, %entry.sdio_run_irqs.exit_crit_edge
  tail call void @mmc_release_host(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdio_signal_irq(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdio_irq_pending = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 49
  %0 = ptrtoint ptr %sdio_irq_pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %sdio_irq_pending, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %sdio_irq_work = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 48
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %sdio_irq_work, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_claim_irq(ptr noundef %func, ptr noundef %handler) #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !60
  %tobool.not = icmp eq ptr %func, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_claim_irq.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_claim_irq, %if.then4)) #5
          to label %do.end [label %if.then4], !srcloc !61

if.then4:                                         ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.dev_name.exit_crit_edge

if.then4.dev_name.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then4.dev_name.exit_crit_edge
  %retval.0.i68 = phi ptr [ %4, %if.end.i ], [ %2, %if.then4.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_claim_irq.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i68) #5
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  %irq_handler = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 2
  %5 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_handler, align 8
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end27, label %do.body9

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_claim_irq.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_claim_irq, %if.then21)) #5
          to label %cleanup [label %if.then21], !srcloc !61

if.then21:                                        ; preds = %do.body9
  %init_name.i69 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %init_name.i69 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i69, align 8
  %tobool.not.i70 = icmp eq ptr %8, null
  br i1 %tobool.not.i70, label %if.end.i71, label %if.then21.dev_name.exit73_crit_edge

if.then21.dev_name.exit73_crit_edge:              ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit73

if.end.i71:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %dev22 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %9 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev22, align 4
  br label %dev_name.exit73

dev_name.exit73:                                  ; preds = %if.end.i71, %if.then21.dev_name.exit73_crit_edge
  %retval.0.i72 = phi ptr [ %10, %if.end.i71 ], [ %8, %if.then21.dev_name.exit73_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_claim_irq.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i72) #5
  br label %cleanup

if.end27:                                         ; preds = %do.end
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 8
  %call28 = call i32 @mmc_io_rw_direct(ptr noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num, align 4
  %shl = shl nuw i32 1, %14
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg, align 1
  %17 = trunc i32 %shl to i8
  %conv32 = or i8 %16, %17
  %18 = or i8 %conv32, 1
  store i8 %18, ptr %reg, align 1
  %19 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %func, align 8
  %call37 = call i32 @mmc_io_rw_direct(ptr noundef %20, i32 noundef 1, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %18, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %handler, ptr %irq_handler, align 8
  %22 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %claimed.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 29
  %26 = ptrtoint ptr %claimed.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %claimed.i, align 8
  %27 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i74 = icmp eq i16 %27, 0
  br i1 %tobool.not.i74, label %do.end.i, label %if.end40.if.end.i75_crit_edge, !prof !62

if.end40.if.end.i75_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i75

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i75

if.end.i75:                                       ; preds = %do.end.i, %if.end40.if.end.i75_crit_edge
  %sdio_irqs.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 46
  %28 = ptrtoint ptr %sdio_irqs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sdio_irqs.i, align 16
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %sdio_irqs.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not.i = icmp eq i32 %29, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end.i75.if.end47_crit_edge

if.end.i75.if.end47_crit_edge:                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then23.i:                                      ; preds = %if.end.i75
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 17
  %30 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps2.i, align 4
  %and.i = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.then23.i
  %sdio_irq_thread_abort.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 50
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sdio_irq_thread_abort.i, i32 noundef 4) #5
  %32 = ptrtoint ptr %sdio_irq_thread_abort.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %sdio_irq_thread_abort.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then25.i.dev_name.exit.i_crit_edge

if.then25.i.dev_name.exit.i_crit_edge:            ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 1
  %35 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then25.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %if.then25.i.dev_name.exit.i_crit_edge ]
  %call26.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @sdio_irq_thread, ptr noundef %25, i32 noundef -1, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i) #5
  %cmp.i.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sdio_card_irq_get.exit, label %if.end30.i

if.end30.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i = call i32 @wake_up_process(ptr noundef %call26.i) #5
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 47
  %37 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call26.i, ptr %sdio_irq_thread.i, align 4
  br label %if.end47

if.else.i:                                        ; preds = %if.then23.i
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 16
  %38 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %caps.i, align 32
  %and39.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.else.i.if.end47_crit_edge, label %if.then41.i

if.else.i.if.end47_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then41.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 3
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enable_sdio_irq.i, align 4
  call void %43(ptr noundef %25, i32 noundef 1) #5
  br label %if.end47

sdio_card_irq_get.exit:                           ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sdio_irq_thread61.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 47
  %44 = ptrtoint ptr %sdio_irq_thread61.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call26.i, ptr %sdio_irq_thread61.i, align 4
  %45 = ptrtoint ptr %sdio_irqs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sdio_irqs.i, align 16
  %dec.i = add i32 %46, -1
  store i32 %dec.i, ptr %sdio_irqs.i, align 16
  %47 = ptrtoint ptr %call26.i to i32
  %48 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %irq_handler, align 8
  br label %if.end47

if.end47:                                         ; preds = %sdio_card_irq_get.exit, %if.then41.i, %if.else.i.if.end47_crit_edge, %if.end30.i, %if.end.i75.if.end47_crit_edge
  %retval.0.i7686 = phi i32 [ %47, %sdio_card_irq_get.exit ], [ 0, %if.end30.i ], [ 0, %if.then41.i ], [ 0, %if.else.i.if.end47_crit_edge ], [ 0, %if.end.i75.if.end47_crit_edge ]
  %49 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %func, align 8
  %sdio_single_irq.i = getelementptr inbounds %struct.mmc_card, ptr %50, i32 0, i32 32
  %51 = ptrtoint ptr %sdio_single_irq.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %sdio_single_irq.i, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %50, align 8
  %caps.i77 = getelementptr inbounds %struct.mmc_host, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %caps.i77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %caps.i77, align 32
  %and.i78 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i79 = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i79, label %if.end47.cleanup_crit_edge, label %land.lhs.true.i

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end47
  %sdio_irqs.i80 = getelementptr inbounds %struct.mmc_host, ptr %53, i32 0, i32 46
  %56 = ptrtoint ptr %sdio_irqs.i80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sdio_irqs.i80, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i = icmp eq i32 %57, 1
  br i1 %cmp.i, label %for.cond.preheader.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %sdio_funcs.i = getelementptr inbounds %struct.mmc_card, ptr %50, i32 0, i32 27
  %58 = ptrtoint ptr %sdio_funcs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sdio_funcs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp218.not.i = icmp eq i32 %59, 0
  br i1 %cmp218.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i81, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mmc_card, ptr %50, i32 0, i32 31, i32 %i.019.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %61, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true4.i:                                 ; preds = %for.body.i
  %irq_handler.i = getelementptr inbounds %struct.sdio_func, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %irq_handler.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %irq_handler.i, align 8
  %tobool5.not.i = icmp eq ptr %63, null
  br i1 %tobool5.not.i, label %land.lhs.true4.i.for.inc.i_crit_edge, label %if.then6.i

land.lhs.true4.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %sdio_single_irq.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %sdio_single_irq.i, align 4
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i81 = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i81, %59
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.then6.i, %for.cond.preheader.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %dev_name.exit73, %do.body9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %dev_name.exit73 ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call37, %if.end31.cleanup_crit_edge ], [ -16, %do.body9 ], [ %retval.0.i7686, %if.end47.cleanup_crit_edge ], [ %retval.0.i7686, %land.lhs.true.i.cleanup_crit_edge ], [ %retval.0.i7686, %for.cond.preheader.i.cleanup_crit_edge ], [ %retval.0.i7686, %if.then6.i ], [ %retval.0.i7686, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_io_rw_direct(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_release_irq(ptr noundef %func) #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !60
  %tobool.not = icmp eq ptr %func, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_release_irq.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_release_irq, %if.then4)) #5
          to label %do.end [label %if.then4], !srcloc !61

if.then4:                                         ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.dev_name.exit_crit_edge

if.then4.dev_name.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then4.dev_name.exit_crit_edge
  %retval.0.i41 = phi ptr [ %4, %if.end.i ], [ %2, %if.then4.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_release_irq.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i41) #5
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  %irq_handler = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 2
  %5 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_handler, align 8
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %do.end.if.end12_crit_edge, label %if.then8

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8:                                         ; preds = %do.end
  %7 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %irq_handler, align 8
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %claimed.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 29
  %12 = ptrtoint ptr %claimed.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %claimed.i, align 8
  %13 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i42 = icmp eq i16 %13, 0
  br i1 %tobool.not.i42, label %do.end.i, label %if.then8.if.end.i43_crit_edge, !prof !62

if.then8.if.end.i43_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i43

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 253, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i43

if.end.i43:                                       ; preds = %do.end.i, %if.then8.if.end.i43_crit_edge
  %sdio_irqs.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 46
  %14 = ptrtoint ptr %sdio_irqs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdio_irqs.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.end.i43.sdio_card_irq_put.exit_crit_edge, label %if.end23.i

if.end.i43.sdio_card_irq_put.exit_crit_edge:      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdio_card_irq_put.exit

if.end23.i:                                       ; preds = %if.end.i43
  %dec.i = add i32 %15, -1
  %16 = ptrtoint ptr %sdio_irqs.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec.i, ptr %sdio_irqs.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool25.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end23.i.sdio_card_irq_put.exit_crit_edge

if.end23.i.sdio_card_irq_put.exit_crit_edge:      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdio_card_irq_put.exit

if.then26.i:                                      ; preds = %if.end23.i
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 17
  %17 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps2.i, align 4
  %and.i = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  %sdio_irq_thread_abort.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 50
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sdio_irq_thread_abort.i, i32 noundef 4) #5
  %19 = ptrtoint ptr %sdio_irq_thread_abort.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %sdio_irq_thread_abort.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 47
  %20 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdio_irq_thread.i, align 4
  %call.i = tail call i32 @kthread_stop(ptr noundef %21) #5
  br label %sdio_card_irq_put.exit

if.else.i:                                        ; preds = %if.then26.i
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 16
  %22 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps.i, align 32
  %and29.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else.i.sdio_card_irq_put.exit_crit_edge, label %if.then31.i

if.else.i.sdio_card_irq_put.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdio_card_irq_put.exit

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %27(ptr noundef %11, i32 noundef 0) #5
  br label %sdio_card_irq_put.exit

sdio_card_irq_put.exit:                           ; preds = %if.then31.i, %if.else.i.sdio_card_irq_put.exit_crit_edge, %if.then28.i, %if.end23.i.sdio_card_irq_put.exit_crit_edge, %if.end.i43.sdio_card_irq_put.exit_crit_edge
  %28 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %func, align 8
  %sdio_single_irq.i = getelementptr inbounds %struct.mmc_card, ptr %29, i32 0, i32 32
  %30 = ptrtoint ptr %sdio_single_irq.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %sdio_single_irq.i, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %29, align 8
  %caps.i44 = getelementptr inbounds %struct.mmc_host, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %caps.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %caps.i44, align 32
  %and.i45 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %sdio_card_irq_put.exit.if.end12_crit_edge, label %land.lhs.true.i

sdio_card_irq_put.exit.if.end12_crit_edge:        ; preds = %sdio_card_irq_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true.i:                                  ; preds = %sdio_card_irq_put.exit
  %sdio_irqs.i47 = getelementptr inbounds %struct.mmc_host, ptr %32, i32 0, i32 46
  %35 = ptrtoint ptr %sdio_irqs.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sdio_irqs.i47, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i48 = icmp eq i32 %36, 1
  br i1 %cmp.i48, label %for.cond.preheader.i, label %land.lhs.true.i.if.end12_crit_edge

land.lhs.true.i.if.end12_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %sdio_funcs.i = getelementptr inbounds %struct.mmc_card, ptr %29, i32 0, i32 27
  %37 = ptrtoint ptr %sdio_funcs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sdio_funcs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp218.not.i = icmp eq i32 %38, 0
  br i1 %cmp218.not.i, label %for.cond.preheader.i.if.end12_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end12_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mmc_card, ptr %29, i32 0, i32 31, i32 %i.019.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true4.i:                                 ; preds = %for.body.i
  %irq_handler.i = getelementptr inbounds %struct.sdio_func, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %irq_handler.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_handler.i, align 8
  %tobool5.not.i = icmp eq ptr %42, null
  br i1 %tobool5.not.i, label %land.lhs.true4.i.for.inc.i_crit_edge, label %if.then6.i

land.lhs.true4.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %sdio_single_irq.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %sdio_single_irq.i, align 4
  br label %if.end12

for.inc.i:                                        ; preds = %land.lhs.true4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %38
  br i1 %exitcond.not.i, label %for.inc.i.if.end12_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %for.inc.i.if.end12_crit_edge, %if.then6.i, %for.cond.preheader.i.if.end12_crit_edge, %land.lhs.true.i.if.end12_crit_edge, %sdio_card_irq_put.exit.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %44 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %func, align 8
  %call14 = call i32 @mmc_io_rw_direct(ptr noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %46 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num, align 4
  %shl = shl nuw i32 1, %47
  %48 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reg, align 1
  %50 = trunc i32 %shl to i8
  %51 = xor i8 %50, -1
  %conv18 = and i8 %49, %51
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv18)
  %tobool21.not = icmp ult i8 %conv18, 2
  %spec.store.select = select i1 %tobool21.not, i8 0, i8 %conv18
  %52 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %spec.store.select, ptr %reg, align 1
  %53 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %func, align 8
  %call25 = call i32 @mmc_io_rw_direct(ptr noundef %54, i32 noundef 1, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %spec.store.select, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call25, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_sdio_pending_irqs(ptr nocapture noundef %host) unnamed_addr #0 align 64 {
entry:
  %pending = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %sdio_irq_pending2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 49
  %2 = ptrtoint ptr %sdio_irq_pending2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sdio_irq_pending2, align 4, !range !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pending) #5
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %pending, align 1, !annotation !60
  %state = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %7 = ptrtoint ptr %sdio_irq_pending2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %sdio_irq_pending2, align 4
  %sdio_single_irq = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %sdio_single_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdio_single_irq, align 4
  %tobool5.not = icmp eq ptr %9, null
  %brmerge = select i1 %tobool5.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %irq_handler = getelementptr inbounds %struct.sdio_func, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_handler, align 8
  tail call void %11(ptr noundef nonnull %9) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call = call fastcc i32 @sdio_get_pending_irqs(ptr noundef %host, ptr noundef nonnull %pending)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8
  %init_name.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1, i32 3
  %dev = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %count.074 = phi i32 [ 0, %for.cond.preheader ], [ %count.1, %for.inc.for.body_crit_edge ]
  %ret.073 = phi i32 [ 0, %for.cond.preheader ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %i.071 = phi i32 [ 1, %for.cond.preheader ], [ %inc34, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pending, align 1
  %conv = zext i8 %13 to i32
  %shl = shl nuw nsw i32 1, %i.071
  %and12 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %sub = add nsw i32 %i.071, -1
  %arrayidx = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 31, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %do.end, label %if.else

do.end:                                           ; preds = %if.then14
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %do.end.dev_name.exit_crit_edge ]
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i) #8
  br label %for.inc

if.else:                                          ; preds = %if.then14
  %irq_handler19 = getelementptr inbounds %struct.sdio_func, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %irq_handler19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_handler19, align 8
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %do.end26, label %if.then21

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void %21(ptr noundef nonnull %15) #5
  %inc = add i32 %count.074, 1
  br label %for.inc

do.end26:                                         ; preds = %if.else
  %init_name.i66 = getelementptr inbounds %struct.sdio_func, ptr %15, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %init_name.i66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i66, align 8
  %tobool.not.i67 = icmp eq ptr %23, null
  br i1 %tobool.not.i67, label %if.end.i68, label %do.end26.dev_name.exit70_crit_edge

do.end26.dev_name.exit70_crit_edge:               ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit70

if.end.i68:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  %dev28 = getelementptr inbounds %struct.sdio_func, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev28, align 4
  br label %dev_name.exit70

dev_name.exit70:                                  ; preds = %if.end.i68, %do.end26.dev_name.exit70_crit_edge
  %retval.0.i69 = phi ptr [ %25, %if.end.i68 ], [ %23, %do.end26.dev_name.exit70_crit_edge ]
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i69) #8
  br label %for.inc

for.inc:                                          ; preds = %dev_name.exit70, %if.then21, %dev_name.exit, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.073, %if.then21 ], [ -22, %dev_name.exit70 ], [ -22, %dev_name.exit ], [ %ret.073, %for.body.for.inc_crit_edge ]
  %count.1 = phi i32 [ %inc, %if.then21 ], [ %count.074, %dev_name.exit70 ], [ %count.074, %dev_name.exit ], [ %count.074, %for.body.for.inc_crit_edge ]
  %inc34 = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc34, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool35.not = icmp eq i32 %count.1, 0
  %ret.0.count.0 = select i1 %tobool35.not, i32 %ret.1, i32 %count.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end8.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ %ret.0.count.0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pending) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdio_get_pending_irqs(ptr nocapture noundef readonly %host, ptr noundef %pending) unnamed_addr #0 align 64 {
entry:
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %claimed, align 8
  %3 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !62

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 35, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i32 @mmc_io_rw_direct(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 5, i8 noundef zeroext 0, ptr noundef %pending) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.end39, label %do.body24

do.body24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_get_pending_irqs.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_get_pending_irqs, %if.then34)) #5
          to label %cleanup [label %if.then34], !srcloc !61

if.then34:                                        ; preds = %do.body24
  %init_name.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then34.dev_name.exit_crit_edge

if.then34.dev_name.exit_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then34.dev_name.exit_crit_edge
  %retval.0.i58 = phi ptr [ %7, %if.end.i ], [ %5, %if.then34.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_get_pending_irqs.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i58, i32 noundef %call) #5
  br label %cleanup

if.end39:                                         ; preds = %if.end
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool40.not = icmp eq i8 %9, 0
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %land.lhs.true

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end39
  %quirks.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not = icmp eq i32 %and.i, 0
  br i1 %tobool42.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true43

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true43:                                  ; preds = %land.lhs.true
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 32
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true43.cleanup_crit_edge

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #5
  %14 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %dummy, align 1, !annotation !60
  %call46 = call i32 @mmc_io_rw_direct(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 255, i8 noundef zeroext 0, ptr noundef nonnull %dummy) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %land.lhs.true43.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %dev_name.exit, %do.body24
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_irq_thread(ptr noundef %_host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo_low(ptr noundef %3) #5
  %caps = getelementptr inbounds %struct.mmc_host, ptr %_host, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2147483647
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_irq_thread.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_irq_thread, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !61

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %_host, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %_host, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i418 = phi ptr [ %9, %if.end.i ], [ %7, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_irq_thread.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i418, i32 noundef %spec.select) #5
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %sdio_irq_thread_abort = getelementptr inbounds %struct.mmc_host, ptr %_host, i32 0, i32 50
  %ops = getelementptr inbounds %struct.mmc_host, ptr %_host, i32 0, i32 3
  br label %do.body7

do.body7:                                         ; preds = %__here322.do.body7_crit_edge, %do.end
  %period.0 = phi i32 [ %spec.select, %do.end ], [ %period.1, %__here322.do.body7_crit_edge ]
  %call8 = tail call i32 @__mmc_claim_host(ptr noundef %_host, ptr noundef null, ptr noundef %sdio_irq_thread_abort) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.body7.do.end356_crit_edge

do.body7.do.end356_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end356

if.end11:                                         ; preds = %do.body7
  %call12 = tail call fastcc i32 @process_sdio_pending_irqs(ptr noundef %_host)
  tail call void @mmc_release_host(ptr noundef %_host) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %__here, label %if.end11.if.end171_crit_edge

if.end11.if.end171_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end171

__here:                                           ; preds = %if.end11
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@sdio_irq_thread, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !63
  %call87 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call87, label %__here.__here141_crit_edge, label %if.then88

__here.__here141_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here141

if.then88:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  %call89 = tail call i32 @schedule_timeout(i32 noundef 100) #5
  br label %__here141

__here141:                                        ; preds = %if.then88, %__here.__here141_crit_edge
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change145 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change145 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@sdio_irq_thread, %__here141) to i32), ptr %task_state_change145, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %18, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !64
  br label %if.end171

if.end171:                                        ; preds = %__here141, %if.end11.if.end171_crit_edge
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %caps, align 32
  %and173 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  %div413 = lshr i32 %period.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp176.inv = icmp slt i32 %call12, 1
  %spec.select426 = select i1 %cmp176.inv, i32 1, i32 %div413
  %period.1 = select i1 %tobool174.not, i32 %spec.select426, i32 %period.0
  br label %__here233

__here233:                                        ; preds = %if.end171
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change237 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change237 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@sdio_irq_thread, %__here233) to i32), ptr %task_state_change237, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %25, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !65
  %27 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %caps, align 32
  %and264 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %__here233.if.end267_crit_edge, label %if.then266

__here233.if.end267_crit_edge:                    ; preds = %__here233
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end267

if.then266:                                       ; preds = %__here233
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %enable_sdio_irq = getelementptr inbounds %struct.mmc_host_ops, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %enable_sdio_irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enable_sdio_irq, align 4
  tail call void %32(ptr noundef %_host, i32 noundef 1) #5
  br label %if.end267

if.end267:                                        ; preds = %if.then266, %__here233.if.end267_crit_edge
  %call268 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call268, label %if.end267.__here322_crit_edge, label %if.then269

if.end267.__here322_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here322

if.then269:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #7
  %call270 = tail call i32 @schedule_timeout(i32 noundef %period.1) #5
  br label %__here322

__here322:                                        ; preds = %if.then269, %if.end267.__here322_crit_edge
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %task_state_change326 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change326 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@sdio_irq_thread, %__here322) to i32), ptr %task_state_change326, align 4
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %36, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !66
  %call353 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call353, label %__here322.do.end356_crit_edge, label %__here322.do.body7_crit_edge

__here322.do.body7_crit_edge:                     ; preds = %__here322
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body7

__here322.do.end356_crit_edge:                    ; preds = %__here322
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end356

do.end356:                                        ; preds = %__here322.do.end356_crit_edge, %do.body7.do.end356_crit_edge
  %ret.0 = phi i32 [ %call8, %do.body7.do.end356_crit_edge ], [ %call12, %__here322.do.end356_crit_edge ]
  %38 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %caps, align 32
  %and358 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  br i1 %tobool359.not, label %do.end356.do.body364_crit_edge, label %if.then360

do.end356.do.body364_crit_edge:                   ; preds = %do.end356
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body364

if.then360:                                       ; preds = %do.end356
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %enable_sdio_irq362 = getelementptr inbounds %struct.mmc_host_ops, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %enable_sdio_irq362 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enable_sdio_irq362, align 4
  tail call void %43(ptr noundef %_host, i32 noundef 0) #5
  br label %do.body364

do.body364:                                       ; preds = %if.then360, %do.end356.do.body364_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_irq_thread.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_irq_thread, %if.then376)) #5
          to label %do.end381 [label %if.then376], !srcloc !61

if.then376:                                       ; preds = %do.body364
  %init_name.i419 = getelementptr inbounds %struct.mmc_host, ptr %_host, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %init_name.i419 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i419, align 8
  %tobool.not.i420 = icmp eq ptr %45, null
  br i1 %tobool.not.i420, label %if.end.i421, label %if.then376.dev_name.exit423_crit_edge

if.then376.dev_name.exit423_crit_edge:            ; preds = %if.then376
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit423

if.end.i421:                                      ; preds = %if.then376
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev377 = getelementptr inbounds %struct.mmc_host, ptr %_host, i32 0, i32 1
  %46 = ptrtoint ptr %class_dev377 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %class_dev377, align 4
  br label %dev_name.exit423

dev_name.exit423:                                 ; preds = %if.end.i421, %if.then376.dev_name.exit423_crit_edge
  %retval.0.i422 = phi ptr [ %47, %if.end.i421 ], [ %45, %if.then376.dev_name.exit423_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_irq_thread.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i422, i32 noundef %ret.0) #5
  br label %do.end381

do.end381:                                        ; preds = %dev_name.exit423, %do.body364
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !46, !48}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_sdio_signal_irq, !1, !"__ksymtab_sdio_signal_irq", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/sdio_irq.c", i32 137, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/core/sdio_irq.c", i32 307, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @sdio_claim_irq.__UNIQUE_ID_ddebug274, !3, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mmc/core/sdio_irq.c", i32 310, i32 3}
!10 = !{ptr @sdio_claim_irq.__UNIQUE_ID_ddebug275, !9, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!11 = !{ptr @__ksymtab_sdio_claim_irq, !12, !"__ksymtab_sdio_claim_irq", i1 false, i1 false}
!12 = !{!"../drivers/mmc/core/sdio_irq.c", i32 334, i32 1}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mmc/core/sdio_irq.c", i32 350, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sdio_release_irq.__UNIQUE_ID_ddebug276, !14, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!17 = !{ptr @__ksymtab_sdio_release_irq, !18, !"__ksymtab_sdio_release_irq", i1 false, i1 false}
!18 = !{!"../drivers/mmc/core/sdio_irq.c", i32 374, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mmc/core/sdio_irq.c", i32 93, i32 5}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @process_sdio_pending_irqs._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @process_sdio_pending_irqs._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/core/sdio_irq.c", i32 100, i32 5}
!26 = !{ptr @process_sdio_pending_irqs._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @process_sdio_pending_irqs._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/core/sdio_irq.c", i32 39, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sdio_get_pending_irqs.__UNIQUE_ID_ddebug267, !29, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/core/sdio_irq.c", i32 234, i32 5}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/core/sdio_irq.c", i32 157, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sdio_irq_thread.__UNIQUE_ID_ddebug268, !35, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/mmc/core/sdio_irq.c", i32 186, i32 4}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/mmc/core/sdio_irq.c", i32 189, i32 4}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/mmc/core/sdio_irq.c", i32 207, i32 3}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/mmc/core/sdio_irq.c", i32 212, i32 3}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/core/sdio_irq.c", i32 218, i32 2}
!48 = !{ptr @sdio_irq_thread.__UNIQUE_ID_ddebug273, !47, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i8 0, i8 2}
!60 = !{!"auto-init"}
!61 = !{i64 2148698441, i64 2148698446, i64 2148698459, i64 2148698503, i64 2148698537, i64 2148698558}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2154444746}
!64 = !{i64 2154449492}
!65 = !{i64 2154454233}
!66 = !{i64 2154458974}
