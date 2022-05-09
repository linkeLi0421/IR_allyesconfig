; ModuleID = '/llk/IR_all_yes/drivers/mtd/chips/cfi_cmdset_0002.c_pt.bc'
source_filename = "../drivers/mtd/chips/cfi_cmdset_0002.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cfi_cmdset_0002\22, \22a\22\09"
module asm "\09.weak\09__crc_cfi_cmdset_0002\09\09\09\09"
module asm "\09.long\09__crc_cfi_cmdset_0002\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0002:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0002\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0002:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cfi_cmdset_0006\22, \22a\22\09"
module asm "\09.weak\09__crc_cfi_cmdset_0006\09\09\09\09"
module asm "\09.long\09__crc_cfi_cmdset_0006\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0006:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0006\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0006:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cfi_cmdset_0701\22, \22a\22\09"
module asm "\09.weak\09__crc_cfi_cmdset_0701\09\09\09\09"
module asm "\09.long\09__crc_cfi_cmdset_0701\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0701:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0701\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0701:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cfi_fixup = type { i16, i16, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%union.map_word = type { [8 x i32] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>
%struct.cfi_pri_amdstd = type { [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ppb_lock = type { ptr, i32, i32 }
%struct.fwh_xxlock_thunk = type { i32, i32 }
%struct.otp_info = type { i32, i32, i32 }

@cfi_cmdset_0002.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str, ptr @.str.1, ptr @.str.2, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfi_cmdset_0002\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/chips/cfi_cmdset_0002.c\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MTD %s(): write buffer size %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Amd/Fujitsu\00", [20 x i8] zeroinitializer }, align 32
@cfi_cmdset_0002._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str, ptr @.str.1, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013  Unknown Amd/Fujitsu Extended Query version %c.%c (%#02x/%#02x).\0A\00", [59 x i8] zeroinitializer }, align 32
@cfi_cmdset_0002._entry_ptr = internal global ptr @cfi_cmdset_0002._entry, section ".printk_index", align 4
@cfi_cmdset_0002._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str, ptr @.str.1, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016  Amd/Fujitsu Extended Query version %c.%c.\0A\00", [49 x i8] zeroinitializer }, align 32
@cfi_cmdset_0002._entry_ptr.7 = internal global ptr @cfi_cmdset_0002._entry.5, section ".printk_index", align 4
@cfi_fixup_table = internal global { [21 x %struct.cfi_fixup], [56 x i8] } { [21 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 31, i16 -1, ptr @fixup_convert_atmel_pri }, %struct.cfi_fixup { i16 1, i16 -1, ptr @fixup_amd_bootblock }, %struct.cfi_fixup { i16 55, i16 -1, ptr @fixup_amd_bootblock }, %struct.cfi_fixup { i16 194, i16 -1, ptr @fixup_amd_bootblock }, %struct.cfi_fixup { i16 1, i16 80, ptr @fixup_use_secsi }, %struct.cfi_fixup { i16 1, i16 83, ptr @fixup_use_secsi }, %struct.cfi_fixup { i16 1, i16 85, ptr @fixup_use_secsi }, %struct.cfi_fixup { i16 1, i16 86, ptr @fixup_use_secsi }, %struct.cfi_fixup { i16 1, i16 92, ptr @fixup_use_secsi }, %struct.cfi_fixup { i16 1, i16 95, ptr @fixup_use_secsi }, %struct.cfi_fixup { i16 1, i16 3073, ptr @fixup_s29gl064n_sectors }, %struct.cfi_fixup { i16 1, i16 4865, ptr @fixup_s29gl064n_sectors }, %struct.cfi_fixup { i16 1, i16 6656, ptr @fixup_s29gl032n_sectors }, %struct.cfi_fixup { i16 1, i16 6657, ptr @fixup_s29gl032n_sectors }, %struct.cfi_fixup { i16 1, i16 16128, ptr @fixup_s29ns512p_sectors }, %struct.cfi_fixup { i16 191, i16 21354, ptr @fixup_sst38vf640x_sectorsize }, %struct.cfi_fixup { i16 191, i16 21355, ptr @fixup_sst38vf640x_sectorsize }, %struct.cfi_fixup { i16 191, i16 21356, ptr @fixup_sst38vf640x_sectorsize }, %struct.cfi_fixup { i16 191, i16 21357, ptr @fixup_sst38vf640x_sectorsize }, %struct.cfi_fixup { i16 -1, i16 -1, ptr @fixup_use_write_buffers }, %struct.cfi_fixup zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"use-advanced-sector-protection\00", [33 x i8] zeroinitializer }, align 32
@cfi_cmdset_0002._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str, ptr @.str.1, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016  Advanced Sector Protection (PPB Locking) supported\0A\00", [40 x i8] zeroinitializer }, align 32
@cfi_cmdset_0002._entry_ptr.11 = internal global ptr @cfi_cmdset_0002._entry.9, section ".printk_index", align 4
@cfi_cmdset_0002._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str, ptr @.str.1, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014%s: CFI contains unrecognised boot bank location (%d). Assuming bottom.\0A\00", [53 x i8] zeroinitializer }, align 32
@cfi_cmdset_0002._entry_ptr.14 = internal global ptr @cfi_cmdset_0002._entry.12, section ".printk_index", align 4
@cfi_cmdset_0002._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str, ptr @.str.1, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: Swapping erase regions for top-boot CFI table.\0A\00", [42 x i8] zeroinitializer }, align 32
@cfi_cmdset_0002._entry_ptr.17 = internal global ptr @cfi_cmdset_0002._entry.15, section ".printk_index", align 4
@cfi_nopri_fixup_table = internal global { [9 x %struct.cfi_fixup], [56 x i8] } { [9 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 191, i16 9034, ptr @fixup_sst39vf }, %struct.cfi_fixup { i16 191, i16 9035, ptr @fixup_sst39vf }, %struct.cfi_fixup { i16 191, i16 9050, ptr @fixup_sst39vf }, %struct.cfi_fixup { i16 191, i16 9051, ptr @fixup_sst39vf }, %struct.cfi_fixup { i16 191, i16 9052, ptr @fixup_sst39vf_rev_b }, %struct.cfi_fixup { i16 191, i16 9053, ptr @fixup_sst39vf_rev_b }, %struct.cfi_fixup { i16 191, i16 9068, ptr @fixup_sst39vf_rev_b }, %struct.cfi_fixup { i16 191, i16 9069, ptr @fixup_sst39vf_rev_b }, %struct.cfi_fixup zeroinitializer], [56 x i8] zeroinitializer }, align 32
@jedec_fixup_table = internal global { [4 x %struct.cfi_fixup], [32 x i8] } { [4 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 191, i16 96, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 191, i16 80, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 191, i16 90, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup zeroinitializer], [32 x i8] zeroinitializer }, align 32
@fixup_table = internal global { [3 x %struct.cfi_fixup], [40 x i8] } { [3 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 -1, i16 -1, ptr @fixup_use_erase_chip }, %struct.cfi_fixup { i16 31, i16 214, ptr @fixup_use_atmel_lock }, %struct.cfi_fixup zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cfi_cmdset_0002.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(cfi->chips[i].wq)\00", [44 x i8] zeroinitializer }, align 32
@cfi_amdstd_chipdrv = internal global { %struct.mtd_chip_driver, [40 x i8] } { %struct.mtd_chip_driver { ptr null, ptr @cfi_amdstd_destroy, ptr null, ptr @.str, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_cfi_cmdset_0002 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0002 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0002 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0002 to i32), ptr @__kstrtab_cfi_cmdset_0002, ptr @__kstrtabns_cfi_cmdset_0002 }, section "___ksymtab_gpl+cfi_cmdset_0002", align 4
@__kstrtab_cfi_cmdset_0006 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0006 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0006 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0002 to i32), ptr @__kstrtab_cfi_cmdset_0006, ptr @__kstrtabns_cfi_cmdset_0006 }, section "___ksymtab_gpl+cfi_cmdset_0006", align 4
@__kstrtab_cfi_cmdset_0701 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0701 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0701 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0002 to i32), ptr @__kstrtab_cfi_cmdset_0701, ptr @__kstrtabns_cfi_cmdset_0701 }, section "___ksymtab_gpl+cfi_cmdset_0701", align 4
@__UNIQUE_ID_file222 = internal constant [55 x i8] c"cfi_cmdset_0002.file=drivers/mtd/chips/cfi_cmdset_0002\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [28 x i8] c"cfi_cmdset_0002.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author224 = internal constant [65 x i8] c"cfi_cmdset_0002.author=Crossnet Co. <info@crossnet.co.jp> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [72 x i8] c"cfi_cmdset_0002.description=MTD chip driver for AMD/Fujitsu flash chips\00", section ".modinfo", align 1
@__UNIQUE_ID_alias226 = internal constant [38 x i8] c"cfi_cmdset_0002.alias=cfi_cmdset_0006\00", section ".modinfo", align 1
@__UNIQUE_ID_alias227 = internal constant [38 x i8] c"cfi_cmdset_0002.alias=cfi_cmdset_0701\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cfi_fixup_major_minor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.1, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015  Fixing Samsung's Amd/Fujitsu Extended Query version to 1.%c\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cfi_fixup_major_minor\00", [42 x i8] zeroinitializer }, align 32
@cfi_fixup_major_minor._entry_ptr = internal global ptr @cfi_fixup_major_minor._entry, section ".printk_index", align 4
@fixup_amd_bootblock.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.1, ptr @.str.22, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fixup_amd_bootblock\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: JEDEC Vendor ID is 0x%02X Device ID is 0x%02X\0A\00", [45 x i8] zeroinitializer }, align 32
@fixup_amd_bootblock.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.1, ptr @.str.23, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Macronix MX29LV400C with bottom boot block detected\0A\00", [39 x i8] zeroinitializer }, align 32
@fixup_amd_bootblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.1, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014%s: JEDEC Device ID is 0x%02X. Assuming broken CFI table.\0A\00", [35 x i8] zeroinitializer }, align 32
@fixup_amd_bootblock._entry_ptr = internal global ptr @fixup_amd_bootblock._entry, section ".printk_index", align 4
@fixup_amd_bootblock.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.1, ptr @.str.25, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: AMD CFI PRI V%c.%c has no boot block field; deduced %s from Device ID\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bottom\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"top\00", [28 x i8] zeroinitializer }, align 32
@fixup_s29gl064n_sectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.1, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014%s: Bad S29GL064N CFI data; adjust from 64 to 128 sectors\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fixup_s29gl064n_sectors\00", [40 x i8] zeroinitializer }, align 32
@fixup_s29gl064n_sectors._entry_ptr = internal global ptr @fixup_s29gl064n_sectors._entry, section ".printk_index", align 4
@fixup_s29gl032n_sectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.1, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014%s: Bad S29GL032N CFI data; adjust from 127 to 63 sectors\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fixup_s29gl032n_sectors\00", [40 x i8] zeroinitializer }, align 32
@fixup_s29gl032n_sectors._entry_ptr = internal global ptr @fixup_s29gl032n_sectors._entry, section ".printk_index", align 4
@fixup_s29ns512p_sectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.1, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: Bad S29NS512P CFI data; adjust to 512 sectors\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fixup_s29ns512p_sectors\00", [40 x i8] zeroinitializer }, align 32
@fixup_s29ns512p_sectors._entry_ptr = internal global ptr @fixup_s29ns512p_sectors._entry, section ".printk_index", align 4
@fixup_sst38vf640x_sectorsize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.1, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014%s: Bad 38VF640x CFI data; adjusting sector size from 64 to 8KiB\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fixup_sst38vf640x_sectorsize\00", [35 x i8] zeroinitializer }, align 32
@fixup_sst38vf640x_sectorsize._entry_ptr = internal global ptr @fixup_sst38vf640x_sectorsize._entry, section ".printk_index", align 4
@fixup_use_write_buffers.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.1, ptr @.str.37, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fixup_use_write_buffers\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Using buffer write method\0A\00", [37 x i8] zeroinitializer }, align 32
@do_write_buffer.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.1, ptr @.str.39, i8 2, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_write_buffer\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MTD %s(): WRITE 0x%.8lx(0x%.8lx)\0A\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@get_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.1, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Waiting for chip to be ready timed out.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"get_chip\00", [23 x i8] zeroinitializer }, align 32
@get_chip._entry_ptr = internal global ptr @get_chip._entry, section ".printk_index", align 4
@get_chip._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.1, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013MTD %s(): chip not ready after erase suspend\0A\00", [48 x i8] zeroinitializer }, align 32
@get_chip._entry_ptr.44 = internal global ptr @get_chip._entry.42, section ".printk_index", align 4
@do_write_buffer_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.1, i32 1984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013MTD %s(): software timeout, address:0x%.8lx.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"do_write_buffer_wait\00", [43 x i8] zeroinitializer }, align 32
@do_write_buffer_wait._entry_ptr = internal global ptr @do_write_buffer_wait._entry, section ".printk_index", align 4
@cfi_check_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.1, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s erase operation failed, status %lx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cfi_check_err_status\00", [43 x i8] zeroinitializer }, align 32
@cfi_check_err_status._entry_ptr = internal global ptr @cfi_check_err_status._entry, section ".printk_index", align 4
@cfi_check_err_status._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.1, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s program operation failed, status %lx\0A\00", [53 x i8] zeroinitializer }, align 32
@cfi_check_err_status._entry_ptr.51 = internal global ptr @cfi_check_err_status._entry.49, section ".printk_index", align 4
@cfi_check_err_status._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.1, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s buffer program command aborted, status %lx\0A\00", [47 x i8] zeroinitializer }, align 32
@cfi_check_err_status._entry_ptr.54 = internal global ptr @cfi_check_err_status._entry.52, section ".printk_index", align 4
@cfi_check_err_status._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.1, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s sector write protected, status %lx\0A\00", [55 x i8] zeroinitializer }, align 32
@cfi_check_err_status._entry_ptr.57 = internal global ptr @cfi_check_err_status._entry.55, section ".printk_index", align 4
@put_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.1, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013MTD: put_chip() called with oldstate %d!!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_chip\00", [23 x i8] zeroinitializer }, align 32
@put_chip._entry_ptr = internal global ptr @put_chip._entry, section ".printk_index", align 4
@fixup_use_fwh_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.62, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015using fwh lock/unlock method\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fixup_use_fwh_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/chips/fwh_lock.h\00", [35 x i8] zeroinitializer }, align 32
@fixup_use_fwh_lock._entry_ptr = internal global ptr @fixup_use_fwh_lock._entry, section ".printk_index", align 4
@fwh_xxlock_oneblock.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.62, ptr @.str.64, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fwh_xxlock_oneblock\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MTD %s(): chip->start: %lx wanted >= 0x400000\0A\00", [49 x i8] zeroinitializer }, align 32
@do_erase_chip.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.1, ptr @.str.66, i8 2, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_erase_chip\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MTD %s(): ERASE 0x%.8lx\0A\00", [39 x i8] zeroinitializer }, align 32
@do_erase_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.1, i32 2489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014MTD %s(): software timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@do_erase_chip._entry_ptr = internal global ptr @do_erase_chip._entry, section ".printk_index", align 4
@do_atmel_lock.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.1, ptr @.str.69, i8 2, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_atmel_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MTD %s(): LOCK 0x%08lx len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@do_atmel_unlock.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.1, ptr @.str.69, i8 2, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_atmel_unlock\00", [16 x i8] zeroinitializer }, align 32
@cfi_amdstd_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.1, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015number of %s chips: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cfi_amdstd_setup\00", [47 x i8] zeroinitializer }, align 32
@cfi_amdstd_setup._entry_ptr = internal global ptr @cfi_amdstd_setup._entry, section ".printk_index", align 4
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CFI\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"JEDEC\00", [26 x i8] zeroinitializer }, align 32
@cfi_amdstd_setup._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.72, ptr @.str.1, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014Sum of regions (%lx) != total size of set of interleaved chips (%lx)\0A\00", [56 x i8] zeroinitializer }, align 32
@cfi_amdstd_setup._entry_ptr.77 = internal global ptr @cfi_amdstd_setup._entry.75, section ".printk_index", align 4
@do_write_oneword.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.1, ptr @.str.39, i8 1, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_write_oneword\00", [47 x i8] zeroinitializer }, align 32
@do_write_oneword_retry.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.1, ptr @.str.80, i8 1, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"do_write_oneword_retry\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MTD %s(): NOP\0A\00", [17 x i8] zeroinitializer }, align 32
@do_write_oneword_once._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.81, ptr @.str.1, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"do_write_oneword_once\00", [42 x i8] zeroinitializer }, align 32
@do_write_oneword_once._entry_ptr = internal global ptr @do_write_oneword_once._entry, section ".printk_index", align 4
@do_otp_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.82, ptr @.str.1, i32 1470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_otp_lock\00", [20 x i8] zeroinitializer }, align 32
@do_otp_lock._entry_ptr = internal global ptr @do_otp_lock._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@do_panic_write_oneword.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.1, ptr @.str.85, i8 2, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"do_panic_write_oneword\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MTD %s(): PANIC WRITE 0x%.8lx(0x%.8lx)\0A\00", [56 x i8] zeroinitializer }, align 32
@do_panic_write_oneword.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.1, ptr @.str.80, i8 2, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@do_erase_oneblock.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.1, ptr @.str.66, i8 2, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_erase_oneblock\00", [46 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.86, ptr @.str.1, i32 2588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr = internal global ptr @do_erase_oneblock._entry, section ".printk_index", align 4
@do_ppb_xxlock.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.1, ptr @.str.88, i8 2, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_ppb_xxlock\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MTD %s(): XXLOCK 0x%08lx len %d\0A\00", [63 x i8] zeroinitializer }, align 32
@do_ppb_xxlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.87, ptr @.str.1, i32 2778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_ppb_xxlock._entry_ptr = internal global ptr @do_ppb_xxlock._entry, section ".printk_index", align 4
@cfi_ppb_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.1, i32 2881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Only %d sectors for PPB locking supported!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfi_ppb_unlock\00", [17 x i8] zeroinitializer }, align 32
@cfi_ppb_unlock._entry_ptr = internal global ptr @cfi_ppb_unlock._entry, section ".printk_index", align 4
@cfi_amdstd_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.1, i32 3052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Argh. Chip not in PM_SUSPENDED state upon resume()\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cfi_amdstd_resume\00", [46 x i8] zeroinitializer }, align 32
@cfi_amdstd_resume._entry_ptr = internal global ptr @cfi_amdstd_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 17]
@__sancov_gen_cov_switch_values.95 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 13]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 51]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 186, i64 8890]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.102 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 7, i64 17]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 17]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 18]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 618, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 629, i32 72 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 646, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 655, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"cfi_fixup_table\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 452, i32 25 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 671, i32 13 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 673, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 682, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 689, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"cfi_nopri_fixup_table\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 440, i32 25 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"jedec_fixup_table\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 479, i32 25 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"fixup_table\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 486, i32 25 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 739, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [19 x i8] c"cfi_amdstd_chipdrv\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 105, i32 31 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 509, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 232, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 252, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 257, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 263, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 408, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 420, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 435, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 397, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 280, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2049, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 900, i32 5 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 945, i32 5 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1983, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 147, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 150, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 153, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 156, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1011, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 103, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/chips/fwh_lock.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 38, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2437, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2488, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2650, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2685, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 760, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 789, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1808, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1775, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1704, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1470, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2255, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2536, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2587, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2740, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2778, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2880, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.439 = private constant [39 x i8] c"../drivers/mtd/chips/cfi_cmdset_0002.c\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 3052, i32 4 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__ksymtab_cfi_cmdset_0002, ptr @__ksymtab_cfi_cmdset_0006, ptr @__ksymtab_cfi_cmdset_0701, ptr @cfi_amdstd_resume._entry, ptr @cfi_amdstd_resume._entry_ptr, ptr @cfi_amdstd_setup._entry, ptr @cfi_amdstd_setup._entry.75, ptr @cfi_amdstd_setup._entry_ptr, ptr @cfi_amdstd_setup._entry_ptr.77, ptr @cfi_check_err_status._entry, ptr @cfi_check_err_status._entry.49, ptr @cfi_check_err_status._entry.52, ptr @cfi_check_err_status._entry.55, ptr @cfi_check_err_status._entry_ptr, ptr @cfi_check_err_status._entry_ptr.51, ptr @cfi_check_err_status._entry_ptr.54, ptr @cfi_check_err_status._entry_ptr.57, ptr @cfi_cmdset_0002._entry, ptr @cfi_cmdset_0002._entry.12, ptr @cfi_cmdset_0002._entry.15, ptr @cfi_cmdset_0002._entry.5, ptr @cfi_cmdset_0002._entry.9, ptr @cfi_cmdset_0002._entry_ptr, ptr @cfi_cmdset_0002._entry_ptr.11, ptr @cfi_cmdset_0002._entry_ptr.14, ptr @cfi_cmdset_0002._entry_ptr.17, ptr @cfi_cmdset_0002._entry_ptr.7, ptr @cfi_fixup_major_minor._entry, ptr @cfi_fixup_major_minor._entry_ptr, ptr @cfi_ppb_unlock._entry, ptr @cfi_ppb_unlock._entry_ptr, ptr @do_erase_chip._entry, ptr @do_erase_chip._entry_ptr, ptr @do_erase_oneblock._entry, ptr @do_erase_oneblock._entry_ptr, ptr @do_otp_lock._entry, ptr @do_otp_lock._entry_ptr, ptr @do_ppb_xxlock._entry, ptr @do_ppb_xxlock._entry_ptr, ptr @do_write_buffer_wait._entry, ptr @do_write_buffer_wait._entry_ptr, ptr @do_write_oneword_once._entry, ptr @do_write_oneword_once._entry_ptr, ptr @fixup_amd_bootblock._entry, ptr @fixup_amd_bootblock._entry_ptr, ptr @fixup_s29gl032n_sectors._entry, ptr @fixup_s29gl032n_sectors._entry_ptr, ptr @fixup_s29gl064n_sectors._entry, ptr @fixup_s29gl064n_sectors._entry_ptr, ptr @fixup_s29ns512p_sectors._entry, ptr @fixup_s29ns512p_sectors._entry_ptr, ptr @fixup_sst38vf640x_sectorsize._entry, ptr @fixup_sst38vf640x_sectorsize._entry_ptr, ptr @fixup_use_fwh_lock._entry, ptr @fixup_use_fwh_lock._entry_ptr, ptr @get_chip._entry, ptr @get_chip._entry.42, ptr @get_chip._entry_ptr, ptr @get_chip._entry_ptr.44, ptr @put_chip._entry, ptr @put_chip._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @cfi_fixup_table, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @cfi_nopri_fixup_table, ptr @jedec_fixup_table, ptr @fixup_table, ptr @cfi_cmdset_0002.__key, ptr @.str.18, ptr @cfi_amdstd_chipdrv, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0002._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0002._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_fixup_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0002._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0002._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0002._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_nopri_fixup_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_fixup_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0002.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_amdstd_chipdrv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_fixup_major_minor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_amd_bootblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_s29gl064n_sectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_s29gl032n_sectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_s29ns512p_sectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_sst38vf640x_sectorsize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_chip._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_check_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_check_err_status._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_check_err_status._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_check_err_status._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_use_fwh_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_amdstd_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_amdstd_setup._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_oneword_once._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_otp_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_ppb_xxlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_ppb_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_amdstd_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@cfi_cmdset_0006 = dso_local alias ptr (ptr, i32), ptr @cfi_cmdset_0002
@cfi_cmdset_0701 = dso_local alias ptr (ptr, i32), ptr @cfi_cmdset_0002

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfi_cmdset_0002(ptr noundef %map, i32 noundef %primary) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %device_node = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 16
  %2 = ptrtoint ptr %device_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_node, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1408) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup209_crit_edge, label %if.end

entry.cleanup209_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup209

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 54
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %map, ptr %priv, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %call7.i.i, align 8
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 21
  %7 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cfi_amdstd_erase_varsize, ptr %_erase, align 8
  %_write = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 25
  %8 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cfi_amdstd_write_words, ptr %_write, align 8
  %_read = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 24
  %9 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cfi_amdstd_read, ptr %_read, align 4
  %_sync = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 37
  %10 = ptrtoint ptr %_sync to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cfi_amdstd_sync, ptr %_sync, align 8
  %_suspend = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 45
  %11 = ptrtoint ptr %_suspend to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cfi_amdstd_suspend, ptr %_suspend, align 8
  %_resume = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 46
  %12 = ptrtoint ptr %_resume to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cfi_amdstd_resume, ptr %_resume, align 4
  %_read_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 32
  %13 = ptrtoint ptr %_read_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @cfi_amdstd_read_user_prot_reg, ptr %_read_user_prot_reg, align 4
  %_read_fact_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 30
  %14 = ptrtoint ptr %_read_fact_prot_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cfi_amdstd_read_fact_prot_reg, ptr %_read_fact_prot_reg, align 4
  %_get_fact_prot_info = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 29
  %15 = ptrtoint ptr %_get_fact_prot_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cfi_amdstd_get_fact_prot_info, ptr %_get_fact_prot_info, align 8
  %_get_user_prot_info = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 31
  %16 = ptrtoint ptr %_get_user_prot_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cfi_amdstd_get_user_prot_info, ptr %_get_user_prot_info, align 8
  %_write_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 33
  %17 = ptrtoint ptr %_write_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cfi_amdstd_write_user_prot_reg, ptr %_write_user_prot_reg, align 8
  %_lock_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 34
  %18 = ptrtoint ptr %_lock_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cfi_amdstd_lock_user_prot_reg, ptr %_lock_user_prot_reg, align 4
  %flags = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3072, ptr %flags, align 4
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %name1 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %name1, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %writesize, align 4
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %interleave, align 4
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfiq, align 4
  %MaxBufWriteSize = getelementptr inbounds %struct.cfi_ident, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %MaxBufWriteSize to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %MaxBufWriteSize, align 1
  %conv = zext i16 %29 to i32
  %shl = shl i32 %25, %conv
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl, ptr %writebufsize, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfi_cmdset_0002.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cfi_cmdset_0002, %if.then6)) #14
          to label %do.end [label %if.then6], !srcloc !252

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %writebufsize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %writebufsize, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfi_cmdset_0002.__UNIQUE_ID_ddebug194, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef %32) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %_panic_write = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 26
  %33 = ptrtoint ptr %_panic_write to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @cfi_amdstd_panic_write, ptr %_panic_write, align 4
  %reboot_notifier = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 51
  %34 = ptrtoint ptr %reboot_notifier to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @cfi_amdstd_reboot, ptr %reboot_notifier, align 8
  %cfi_mode = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %cfi_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cfi_mode, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %do.end.if.end143_crit_edge [
    i32 1, label %if.then10
    i32 0, label %if.then141
  ]

do.end.if.end143_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %primary)
  %tobool11.not = icmp eq i32 %primary, 0
  %38 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfiq, align 4
  %P_ADR = getelementptr inbounds %struct.cfi_ident, ptr %39, i32 0, i32 2
  %A_ADR = getelementptr inbounds %struct.cfi_ident, ptr %39, i32 0, i32 4
  %cond.in.in = select i1 %tobool11.not, ptr %A_ADR, ptr %P_ADR
  %40 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %cond.in326 = load i16, ptr %cond.in.in, align 1
  %call17 = tail call ptr @cfi_read_pri(ptr noundef %map, i16 noundef zeroext %cond.in326, i16 noundef zeroext 20, ptr noundef nonnull @.str.3) #14
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then10.if.end128_crit_edge, label %if.then19

if.then10.if.end128_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

if.then19:                                        ; preds = %if.then10
  tail call fastcc void @cfi_fixup_major_minor(ptr noundef %1, ptr noundef nonnull %call17)
  %MajorVersion = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %call17, i32 0, i32 1
  %41 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %MajorVersion, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %42)
  %cmp21.not = icmp eq i8 %42, 49
  br i1 %cmp21.not, label %land.lhs.true, label %if.then19.do.end38_crit_edge

if.then19.do.end38_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38

land.lhs.true:                                    ; preds = %if.then19
  %MinorVersion = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %call17, i32 0, i32 2
  %43 = ptrtoint ptr %MinorVersion to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %MinorVersion, align 1
  %45 = add i8 %44, -54
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %45)
  %46 = icmp ult i8 %45, -6
  br i1 %46, label %land.lhs.true.do.end38_crit_edge, label %do.end52

land.lhs.true.do.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38

do.end38:                                         ; preds = %land.lhs.true.do.end38_crit_edge, %if.then19.do.end38_crit_edge
  %conv41 = zext i8 %42 to i32
  %MinorVersion42 = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %call17, i32 0, i32 2
  %47 = ptrtoint ptr %MinorVersion42 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %MinorVersion42, align 1
  %conv43 = zext i8 %48 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv41, i32 noundef %conv43, i32 noundef %conv41, i32 noundef %conv43) #18
  tail call void @kfree(ptr noundef nonnull %call17) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup209

do.end52:                                         ; preds = %land.lhs.true
  %conv57 = zext i8 %44 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 49, i32 noundef %conv57) #18
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call17, ptr %cmdset_priv, align 4
  tail call void @cfi_fixup(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cfi_fixup_table) #14
  %tobool59.not = icmp eq ptr %3, null
  br i1 %tobool59.not, label %do.end52.if.end73_crit_edge, label %land.lhs.true60

do.end52.if.end73_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

land.lhs.true60:                                  ; preds = %do.end52
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, ptr noundef null) #14
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %land.lhs.true60.if.end73_crit_edge, label %land.lhs.true63

land.lhs.true60.if.end73_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %BlkProtUnprot = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %call17, i32 0, i32 7
  %50 = ptrtoint ptr %BlkProtUnprot to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %BlkProtUnprot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %51)
  %cmp65 = icmp eq i8 %51, 8
  br i1 %cmp65, label %do.end70, label %land.lhs.true63.if.end73_crit_edge

land.lhs.true63.if.end73_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

do.end70:                                         ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #18
  %_lock = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 38
  %52 = ptrtoint ptr %_lock to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @cfi_ppb_lock, ptr %_lock, align 4
  %_unlock = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 39
  %53 = ptrtoint ptr %_unlock to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @cfi_ppb_unlock, ptr %_unlock, align 8
  %_is_locked = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 40
  %54 = ptrtoint ptr %_is_locked to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @cfi_ppb_is_locked, ptr %_is_locked, align 4
  br label %if.end73

if.end73:                                         ; preds = %do.end70, %land.lhs.true63.if.end73_crit_edge, %land.lhs.true60.if.end73_crit_edge, %do.end52.if.end73_crit_edge
  %TopBottom = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %call17, i32 0, i32 13
  %55 = ptrtoint ptr %TopBottom to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %TopBottom, align 1
  %57 = add i8 %56, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %57)
  %58 = icmp ult i8 %57, -4
  br i1 %58, label %if.end89.thread, label %if.end89

if.end89.thread:                                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %conv74 = zext i8 %56 to i32
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map, align 4
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %60, i32 noundef %conv74) #18
  br label %if.end127

if.end89:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %56)
  %cmp91 = icmp eq i8 %56, 3
  br i1 %cmp91, label %land.lhs.true93, label %if.end89.if.end127_crit_edge

if.end89.if.end127_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

land.lhs.true93:                                  ; preds = %if.end89
  %61 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfiq, align 4
  %NumEraseRegions = getelementptr inbounds %struct.cfi_ident, ptr %62, i32 0, i32 20
  %63 = ptrtoint ptr %NumEraseRegions to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %NumEraseRegions, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp96 = icmp ugt i8 %64, 1
  br i1 %cmp96, label %do.end101, label %land.lhs.true93.if.end127_crit_edge

land.lhs.true93.if.end127_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

do.end101:                                        ; preds = %land.lhs.true93
  %65 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map, align 4
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %66) #18
  %67 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfiq, align 4
  %NumEraseRegions106335 = getelementptr inbounds %struct.cfi_ident, ptr %68, i32 0, i32 20
  %69 = ptrtoint ptr %NumEraseRegions106335 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %NumEraseRegions106335, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %70)
  %cmp108338.not = icmp ult i8 %70, 2
  br i1 %cmp108338.not, label %do.end101.if.end127_crit_edge, label %for.body.preheader

do.end101.if.end127_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

for.body.preheader:                               ; preds = %do.end101
  %conv107336 = zext i8 %70 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %conv107340 = phi i32 [ %conv107, %for.body.for.body_crit_edge ], [ %conv107336, %for.body.preheader ]
  %71 = phi ptr [ %80, %for.body.for.body_crit_edge ], [ %68, %for.body.preheader ]
  %i.0339 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %72 = xor i32 %i.0339, -1
  %sub113 = add nsw i32 %conv107340, %72
  %arrayidx = getelementptr %struct.cfi_ident, ptr %71, i32 0, i32 21, i32 %i.0339
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %arrayidx, align 1
  %arrayidx118 = getelementptr %struct.cfi_ident, ptr %71, i32 0, i32 21, i32 %sub113
  %75 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %arrayidx118, align 1
  store i32 %76, ptr %arrayidx, align 1
  %77 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfiq, align 4
  %arrayidx124 = getelementptr %struct.cfi_ident, ptr %78, i32 0, i32 21, i32 %sub113
  %79 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %74, ptr %arrayidx124, align 1
  %inc = add nuw nsw i32 %i.0339, 1
  %80 = load ptr, ptr %cfiq, align 4
  %NumEraseRegions106 = getelementptr inbounds %struct.cfi_ident, ptr %80, i32 0, i32 20
  %81 = ptrtoint ptr %NumEraseRegions106 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %NumEraseRegions106, align 1
  %conv107 = zext i8 %82 to i32
  %div327 = lshr i32 %conv107, 1
  %cmp108 = icmp ult i32 %inc, %div327
  br i1 %cmp108, label %for.body.for.body_crit_edge, label %for.body.if.end127_crit_edge

for.body.if.end127_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end127:                                        ; preds = %for.body.if.end127_crit_edge, %do.end101.if.end127_crit_edge, %land.lhs.true93.if.end127_crit_edge, %if.end89.if.end127_crit_edge, %if.end89.thread
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %83 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1365, ptr %addr_unlock1, align 4
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 6
  %84 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 682, ptr %addr_unlock2, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then10.if.end128_crit_edge
  tail call void @cfi_fixup(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cfi_nopri_fixup_table) #14
  %addr_unlock1129 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %85 = ptrtoint ptr %addr_unlock1129 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %addr_unlock1129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool130.not = icmp eq i32 %86, 0
  br i1 %tobool130.not, label %if.end128.if.then134_crit_edge, label %lor.lhs.false131

if.end128.if.then134_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

lor.lhs.false131:                                 ; preds = %if.end128
  %addr_unlock2132 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 6
  %87 = ptrtoint ptr %addr_unlock2132 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr_unlock2132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool133.not = icmp eq i32 %88, 0
  br i1 %tobool133.not, label %lor.lhs.false131.if.then134_crit_edge, label %lor.lhs.false131.if.end143_crit_edge

lor.lhs.false131.if.end143_crit_edge:             ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

lor.lhs.false131.if.then134_crit_edge:            ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.then134:                                       ; preds = %lor.lhs.false131.if.then134_crit_edge, %if.end128.if.then134_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup209

if.then141:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @cfi_fixup(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @jedec_fixup_table) #14
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %lor.lhs.false131.if.end143_crit_edge, %do.end.if.end143_crit_edge
  tail call void @cfi_fixup(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fixup_table) #14
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 11
  %89 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp145341 = icmp sgt i32 %90, 0
  br i1 %cmp145341, label %if.end143.for.body147_crit_edge, label %if.end143.for.end207_crit_edge

if.end143.for.end207_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end207

if.end143.for.body147_crit_edge:                  ; preds = %if.end143
  br label %for.body147

for.body147:                                      ; preds = %if.end184.for.body147_crit_edge, %if.end143.for.body147_crit_edge
  %i.1342 = phi i32 [ %inc206, %if.end184.for.body147_crit_edge ], [ 0, %if.end143.for.body147_crit_edge ]
  %91 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cfiq, align 4
  %WordWriteTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %WordWriteTimeoutTyp to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %WordWriteTimeoutTyp, align 1
  %conv149 = zext i8 %94 to i32
  %shl150 = shl nuw i32 1, %conv149
  %word_write_time = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.1342, i32 9
  %95 = ptrtoint ptr %word_write_time to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %shl150, ptr %word_write_time, align 4
  %BufWriteTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %92, i32 0, i32 10
  %96 = ptrtoint ptr %BufWriteTimeoutTyp to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %BufWriteTimeoutTyp, align 1
  %conv153 = zext i8 %97 to i32
  %shl154 = shl nuw i32 1, %conv153
  %buffer_write_time = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.1342, i32 10
  %98 = ptrtoint ptr %buffer_write_time to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %shl154, ptr %buffer_write_time, align 4
  %99 = load ptr, ptr %cfiq, align 4
  %BlockEraseTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %99, i32 0, i32 11
  %100 = ptrtoint ptr %BlockEraseTimeoutTyp to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %BlockEraseTimeoutTyp, align 1
  %conv158 = zext i8 %101 to i32
  %shl159 = shl nuw i32 1, %conv158
  %erase_time = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.1342, i32 11
  %102 = ptrtoint ptr %erase_time to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %shl159, ptr %erase_time, align 4
  %BufWriteTimeoutTyp163 = getelementptr inbounds %struct.cfi_ident, ptr %99, i32 0, i32 10
  %103 = ptrtoint ptr %BufWriteTimeoutTyp163 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %BufWriteTimeoutTyp163, align 1
  %conv164 = zext i8 %104 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool165.not = icmp eq i8 %104, 0
  br i1 %tobool165.not, label %for.body147.if.end184_crit_edge, label %land.lhs.true166

for.body147.if.end184_crit_edge:                  ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184

land.lhs.true166:                                 ; preds = %for.body147
  %BufWriteTimeoutMax = getelementptr inbounds %struct.cfi_ident, ptr %99, i32 0, i32 14
  %105 = ptrtoint ptr %BufWriteTimeoutMax to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %BufWriteTimeoutMax, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool169.not = icmp eq i8 %106, 0
  br i1 %tobool169.not, label %land.lhs.true166.if.end184_crit_edge, label %if.then170

land.lhs.true166.if.end184_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184

if.then170:                                       ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #16
  %conv168 = zext i8 %106 to i32
  %add = add nuw nsw i32 %conv168, %conv164
  %shl177 = shl nuw i32 1, %add
  br label %if.end184

if.end184:                                        ; preds = %if.then170, %land.lhs.true166.if.end184_crit_edge, %for.body147.if.end184_crit_edge
  %.sink = phi i32 [ %shl177, %if.then170 ], [ 0, %land.lhs.true166.if.end184_crit_edge ], [ 0, %for.body147.if.end184_crit_edge ]
  %buffer_write_time_max187 = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.1342, i32 13
  %107 = tail call i32 @llvm.smax.i32(i32 %.sink, i32 2000)
  %108 = ptrtoint ptr %buffer_write_time_max187 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %buffer_write_time_max187, align 4
  %ref_point_counter = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.1342, i32 1
  %109 = ptrtoint ptr %ref_point_counter to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %ref_point_counter, align 4
  %wq = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.1342, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.18, ptr noundef nonnull @cfi_cmdset_0002.__key) #14
  %inc206 = add nuw nsw i32 %i.1342, 1
  %110 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %numchips, align 4
  %cmp145 = icmp slt i32 %inc206, %111
  br i1 %cmp145, label %if.end184.for.body147_crit_edge, label %if.end184.for.end207_crit_edge

if.end184.for.end207_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end207

if.end184.for.body147_crit_edge:                  ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body147

for.end207:                                       ; preds = %if.end184.for.end207_crit_edge, %if.end143.for.end207_crit_edge
  %fldrv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 18
  %112 = ptrtoint ptr %fldrv to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @cfi_amdstd_chipdrv, ptr %fldrv, align 4
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv, align 8
  %fldrv_priv.i = getelementptr inbounds %struct.map_info, ptr %114, i32 0, i32 17
  %115 = ptrtoint ptr %fldrv_priv.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fldrv_priv.i, align 4
  %cfiq.i = getelementptr inbounds %struct.cfi_private, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfiq.i, align 4
  %DevSize.i = getelementptr inbounds %struct.cfi_ident, ptr %118, i32 0, i32 17
  %119 = ptrtoint ptr %DevSize.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %DevSize.i, align 1
  %conv.i = zext i8 %120 to i32
  %interleave.i = getelementptr inbounds %struct.cfi_private, ptr %116, i32 0, i32 2
  %121 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %interleave.i, align 4
  %mul.i = shl i32 %122, %conv.i
  %cfi_mode.i = getelementptr inbounds %struct.cfi_private, ptr %116, i32 0, i32 4
  %123 = ptrtoint ptr %cfi_mode.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cfi_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp.i = icmp eq i32 %124, 1
  %cond.i = select i1 %cmp.i, ptr @.str.73, ptr @.str.74
  %numchips.i = getelementptr inbounds %struct.cfi_private, ptr %116, i32 0, i32 11
  %125 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %numchips.i, align 4
  %call.i330 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull %cond.i, i32 noundef %126) #18
  %127 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %numchips.i, align 4
  %mul3.i = mul i32 %128, %mul.i
  %conv4.i = zext i32 %mul3.i to i64
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 2
  %129 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv4.i, ptr %size.i, align 8
  %130 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions.i = getelementptr inbounds %struct.cfi_ident, ptr %131, i32 0, i32 20
  %132 = ptrtoint ptr %NumEraseRegions.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %NumEraseRegions.i, align 1
  %conv6.i = zext i8 %133 to i32
  %134 = load i32, ptr %numchips.i, align 4
  %mul8.i = mul i32 %134, %conv6.i
  %numeraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 19
  %135 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %mul8.i, ptr %numeraseregions.i, align 8
  %136 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul8.i, i32 24) #14
  %137 = extractvalue { i32, i1 } %136, 1
  br i1 %137, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !253

kmalloc_array.exit.thread.i:                      ; preds = %for.end207
  call void @__sanitizer_cov_trace_pc() #16
  %eraseregions132.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 20
  %138 = ptrtoint ptr %eraseregions132.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %eraseregions132.i, align 4
  br label %setup_err.i

if.end7.i.i:                                      ; preds = %for.end207
  %139 = extractvalue { i32, i1 } %136, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %139, i32 noundef 3264) #19
  %eraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 20
  %140 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call8.i.i, ptr %eraseregions.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.setup_err.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.setup_err.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %setup_err.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %141 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions13137.i = getelementptr inbounds %struct.cfi_ident, ptr %142, i32 0, i32 20
  %143 = ptrtoint ptr %NumEraseRegions13137.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %NumEraseRegions13137.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp15139.not.i = icmp eq i8 %144, 0
  br i1 %cmp15139.not.i, label %for.cond.preheader.i.for.end64.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end64.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end64.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %145 = phi ptr [ %142, %for.body.lr.ph.i ], [ %175, %for.end.i.for.body.i_crit_edge ]
  %i.0141.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc63.i, %for.end.i.for.body.i_crit_edge ]
  %offset.0140.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add61.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cfi_ident, ptr %145, i32 0, i32 21, i32 %i.0141.i
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %arrayidx.i, align 1
  %shr.i = lshr i32 %147, 8
  %and.i = and i32 %shr.i, 16776960
  %148 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %interleave.i, align 4
  %mul19.i = mul i32 %and.i, %149
  %and23.i = and i32 %147, 65535
  %add.i = add nuw nsw i32 %and23.i, 1
  %150 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %mul19.i)
  %cmp24.i = icmp ult i32 %151, %mul19.i
  br i1 %cmp24.i, label %if.then26.i, label %for.body.i.if.end28.i_crit_edge

for.body.i.if.end28.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

if.then26.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %152 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %mul19.i, ptr %erasesize.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %for.body.i.if.end28.i_crit_edge
  %153 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %numchips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp31135.i = icmp sgt i32 %154, 0
  br i1 %cmp31135.i, label %if.end28.i.for.body33.i_crit_edge, label %if.end28.i.for.end.i_crit_edge

if.end28.i.for.end.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end28.i.for.body33.i_crit_edge:                ; preds = %if.end28.i
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.body33.i.for.body33.i_crit_edge, %if.end28.i.for.body33.i_crit_edge
  %j.0136.i = phi i32 [ %inc.i, %for.body33.i.for.body33.i_crit_edge ], [ 0, %if.end28.i.for.body33.i_crit_edge ]
  %mul34.i = mul i32 %j.0136.i, %mul.i
  %add35.i = add i32 %mul34.i, %offset.0140.i
  %conv36.i = zext i32 %add35.i to i64
  %155 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %eraseregions.i, align 4
  %157 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions39.i = getelementptr inbounds %struct.cfi_ident, ptr %158, i32 0, i32 20
  %159 = ptrtoint ptr %NumEraseRegions39.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %NumEraseRegions39.i, align 1
  %conv40.i = zext i8 %160 to i32
  %mul41.i = mul i32 %j.0136.i, %conv40.i
  %add42.i = add i32 %mul41.i, %i.0141.i
  %arrayidx43.i = getelementptr %struct.mtd_erase_region_info, ptr %156, i32 %add42.i
  %161 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %conv36.i, ptr %arrayidx43.i, align 8
  %162 = load ptr, ptr %eraseregions.i, align 4
  %163 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions47.i = getelementptr inbounds %struct.cfi_ident, ptr %163, i32 0, i32 20
  %164 = ptrtoint ptr %NumEraseRegions47.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %NumEraseRegions47.i, align 1
  %conv48.i = zext i8 %165 to i32
  %mul49.i = mul i32 %j.0136.i, %conv48.i
  %add50.i = add i32 %mul49.i, %i.0141.i
  %erasesize52.i = getelementptr %struct.mtd_erase_region_info, ptr %162, i32 %add50.i, i32 1
  %166 = ptrtoint ptr %erasesize52.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %mul19.i, ptr %erasesize52.i, align 8
  %167 = load ptr, ptr %eraseregions.i, align 4
  %168 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions55.i = getelementptr inbounds %struct.cfi_ident, ptr %168, i32 0, i32 20
  %169 = ptrtoint ptr %NumEraseRegions55.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %NumEraseRegions55.i, align 1
  %conv56.i = zext i8 %170 to i32
  %mul57.i = mul i32 %j.0136.i, %conv56.i
  %add58.i = add i32 %mul57.i, %i.0141.i
  %numblocks.i = getelementptr %struct.mtd_erase_region_info, ptr %167, i32 %add58.i, i32 2
  %171 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %add.i, ptr %numblocks.i, align 4
  %inc.i = add nuw nsw i32 %j.0136.i, 1
  %172 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %numchips.i, align 4
  %cmp31.i = icmp slt i32 %inc.i, %173
  br i1 %cmp31.i, label %for.body33.i.for.body33.i_crit_edge, label %for.body33.i.for.end.i_crit_edge

for.body33.i.for.end.i_crit_edge:                 ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body33.i.for.body33.i_crit_edge:              ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body33.i

for.end.i:                                        ; preds = %for.body33.i.for.end.i_crit_edge, %if.end28.i.for.end.i_crit_edge
  %mul60.i = mul i32 %mul19.i, %add.i
  %add61.i = add i32 %mul60.i, %offset.0140.i
  %inc63.i = add nuw nsw i32 %i.0141.i, 1
  %174 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions13.i = getelementptr inbounds %struct.cfi_ident, ptr %175, i32 0, i32 20
  %176 = ptrtoint ptr %NumEraseRegions13.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %NumEraseRegions13.i, align 1
  %conv14.i = zext i8 %177 to i32
  %cmp15.i = icmp ult i32 %inc63.i, %conv14.i
  br i1 %cmp15.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.for.end64.i_crit_edge

for.end.i.for.end64.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end64.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end64.i:                                      ; preds = %for.end.i.for.end64.i_crit_edge, %for.cond.preheader.i.for.end64.i_crit_edge
  %offset.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end64.i_crit_edge ], [ %add61.i, %for.end.i.for.end64.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.lcssa.i, i32 %mul.i)
  %cmp65.not.i = icmp eq i32 %offset.0.lcssa.i, %mul.i
  br i1 %cmp65.not.i, label %if.end73.i, label %do.end70.i

do.end70.i:                                       ; preds = %for.end64.i
  call void @__sanitizer_cov_trace_pc() #16
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %offset.0.lcssa.i, i32 noundef %mul.i) #18
  br label %setup_err.i

if.end73.i:                                       ; preds = %for.end64.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__module_get(ptr noundef null) #14
  %call74.i = tail call i32 @register_reboot_notifier(ptr noundef %reboot_notifier) #14
  br label %cleanup209

setup_err.i:                                      ; preds = %do.end70.i, %if.end7.i.i.setup_err.i_crit_edge, %kmalloc_array.exit.thread.i
  %eraseregions134.i = phi ptr [ %eraseregions132.i, %kmalloc_array.exit.thread.i ], [ %eraseregions.i, %if.end7.i.i.setup_err.i_crit_edge ], [ %eraseregions.i, %do.end70.i ]
  %178 = ptrtoint ptr %eraseregions134.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %eraseregions134.i, align 4
  tail call void @kfree(ptr noundef %179) #14
  tail call void @kfree(ptr noundef %call7.i.i) #14
  %cmdset_priv.i = getelementptr inbounds %struct.cfi_private, ptr %116, i32 0, i32 1
  %180 = ptrtoint ptr %cmdset_priv.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cmdset_priv.i, align 4
  tail call void @kfree(ptr noundef %181) #14
  br label %cleanup209

cleanup209:                                       ; preds = %setup_err.i, %if.end73.i, %if.then134, %do.end38, %entry.cleanup209_crit_edge
  %retval.1 = phi ptr [ null, %entry.cleanup209_crit_edge ], [ null, %if.then134 ], [ null, %do.end38 ], [ null, %setup_err.i ], [ %call7.i.i, %if.end73.i ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_erase_varsize(ptr noundef %mtd, ptr nocapture noundef readonly %instr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %instr, align 8
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_erase_oneblock, i64 noundef %1, i32 noundef %conv, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_write_words(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  %orig.i486.sroa.0 = alloca [8 x i32], align 4
  %orig.i = alloca %union.map_word, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %tmp89 = alloca %union.map_word, align 4
  %tmp125.sroa.0 = alloca [8 x i32], align 4
  %tmp264 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !242) #14
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %18 to i64
  %shr = ashr i64 %to, %sh_prom
  %conv = trunc i64 %shr to i32
  %shl = shl i32 %conv, %18
  %19 = trunc i64 %to to i32
  %conv4 = sub i32 %19, %shl
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %conv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bankwidth, align 4
  %sub5 = add i32 %23, -1
  %and = and i32 %conv4, %sub5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end121_crit_edge, label %if.then

entry.if.end121_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

if.then:                                          ; preds = %entry
  %neg = sub i32 0, %23
  %and8 = and i32 %conv4, %neg
  %sub9 = sub i32 %conv4, %and8
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %conv, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %conv, i32 2
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not566 = icmp eq i32 %25, 0
  br i1 %cmp.not566, label %if.then.if.end88_crit_edge, label %__here.lr.ph

if.then.if.end88_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

__here.lr.ph:                                     ; preds = %if.then
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %conv, i32 8
  br label %__here

__here:                                           ; preds = %__here.__here_crit_edge, %__here.lr.ph
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@cfi_amdstd_write_words, %__here) to i32), ptr %task_state_change, align 4
  %29 = load ptr, ptr %task, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 2, ptr %29, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !254
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  %cmp.not = icmp eq i32 %32, 0
  br i1 %cmp.not, label %__here.if.end88_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here.if.end88_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.end88:                                         ; preds = %__here.if.end88_crit_edge, %if.then.if.end88_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp89) #14
  %read = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read, align 4
  %add = add i32 %and8, %21
  call void %34(ptr nonnull sret(%union.map_word) align 4 %tmp89, ptr noundef %1, i32 noundef %add) #14
  %35 = ptrtoint ptr %tmp89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %tmp_buf.sroa.0.0.copyload = load i32, ptr %tmp89, align 4
  %tmp_buf.sroa.7.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 4
  %36 = ptrtoint ptr %tmp_buf.sroa.7.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp_buf.sroa.7.0.copyload = load i32, ptr %tmp_buf.sroa.7.0.tmp89.sroa_idx, align 4
  %tmp_buf.sroa.10.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 8
  %37 = ptrtoint ptr %tmp_buf.sroa.10.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp_buf.sroa.10.0.copyload = load i32, ptr %tmp_buf.sroa.10.0.tmp89.sroa_idx, align 4
  %tmp_buf.sroa.13.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 12
  %38 = ptrtoint ptr %tmp_buf.sroa.13.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp_buf.sroa.13.0.copyload = load i32, ptr %tmp_buf.sroa.13.0.tmp89.sroa_idx, align 4
  %tmp_buf.sroa.16.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 16
  %39 = ptrtoint ptr %tmp_buf.sroa.16.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %tmp_buf.sroa.16.0.copyload = load i32, ptr %tmp_buf.sroa.16.0.tmp89.sroa_idx, align 4
  %tmp_buf.sroa.19.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 20
  %40 = ptrtoint ptr %tmp_buf.sroa.19.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %tmp_buf.sroa.19.0.copyload = load i32, ptr %tmp_buf.sroa.19.0.tmp89.sroa_idx, align 4
  %tmp_buf.sroa.22.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 24
  %41 = ptrtoint ptr %tmp_buf.sroa.22.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %tmp_buf.sroa.22.0.copyload = load i32, ptr %tmp_buf.sroa.22.0.tmp89.sroa_idx, align 4
  %tmp_buf.sroa.25.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 28
  %42 = ptrtoint ptr %tmp_buf.sroa.25.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp_buf.sroa.25.0.copyload = load i32, ptr %tmp_buf.sroa.25.0.tmp89.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp89) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  %43 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bankwidth, align 4
  %sub94 = sub i32 %44, %sub9
  %45 = call i32 @llvm.smin.i32(i32 %sub94, i32 %len)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i)
  %46 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %tmp_buf.sroa.0.0.copyload, ptr %orig.i, align 4, !noalias !255
  %orig.coerce.fca.1.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 1
  %47 = ptrtoint ptr %orig.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %tmp_buf.sroa.7.0.copyload, ptr %orig.coerce.fca.1.gep.i, align 4, !noalias !255
  %orig.coerce.fca.2.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 2
  %48 = ptrtoint ptr %orig.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %tmp_buf.sroa.10.0.copyload, ptr %orig.coerce.fca.2.gep.i, align 4, !noalias !255
  %orig.coerce.fca.3.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 3
  %49 = ptrtoint ptr %orig.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %tmp_buf.sroa.13.0.copyload, ptr %orig.coerce.fca.3.gep.i, align 4, !noalias !255
  %orig.coerce.fca.4.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 4
  %50 = ptrtoint ptr %orig.coerce.fca.4.gep.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %tmp_buf.sroa.16.0.copyload, ptr %orig.coerce.fca.4.gep.i, align 4, !noalias !255
  %orig.coerce.fca.5.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 5
  %51 = ptrtoint ptr %orig.coerce.fca.5.gep.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %tmp_buf.sroa.19.0.copyload, ptr %orig.coerce.fca.5.gep.i, align 4, !noalias !255
  %orig.coerce.fca.6.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 6
  %52 = ptrtoint ptr %orig.coerce.fca.6.gep.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %tmp_buf.sroa.22.0.copyload, ptr %orig.coerce.fca.6.gep.i, align 4, !noalias !255
  %orig.coerce.fca.7.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 7
  %53 = ptrtoint ptr %orig.coerce.fca.7.gep.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %tmp_buf.sroa.25.0.copyload, ptr %orig.coerce.fca.7.gep.i, align 4, !noalias !255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp.i = icmp sgt i32 %44, 4
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end88
  %add.i = add i32 %45, %sub9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub9)
  %cmp119.i = icmp sgt i32 %add.i, %sub9
  br i1 %cmp119.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end.loopexit.i_crit_edge

for.cond.preheader.i.if.end.loopexit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %orig.i, i32 %sub9
  %54 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %45)
  br label %map_word_load_partial.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %sub9, %for.cond.preheader.i.for.body.i_crit_edge ]
  %or1820.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %tmp_buf.sroa.0.0.copyload, %for.cond.preheader.i.for.body.i_crit_edge ]
  %55 = xor i32 %i.021.i, -1
  %sub3.i = add i32 %44, %55
  %mul.i = shl i32 %sub3.i, 3
  %shl.i = shl i32 255, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i482 = and i32 %or1820.i, %neg.i
  %sub4.i = sub i32 %i.021.i, %sub9
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 %sub4.i
  %56 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx5.i, align 1, !noalias !255
  %conv.i = zext i8 %57 to i32
  %shl6.i = shl i32 %conv.i, %mul.i
  %or.i = or i32 %shl6.i, %and.i482
  %inc.i = add nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i.if.end.loopexit.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.if.end.loopexit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i

if.end.loopexit.i:                                ; preds = %for.body.i.if.end.loopexit.i_crit_edge, %for.cond.preheader.i.if.end.loopexit.i_crit_edge
  %or18.lcssa.i = phi i32 [ %tmp_buf.sroa.0.0.copyload, %for.cond.preheader.i.if.end.loopexit.i_crit_edge ], [ %or.i, %for.body.i.if.end.loopexit.i_crit_edge ]
  %58 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or18.lcssa.i, ptr %orig.i, align 4, !noalias !255
  br label %map_word_load_partial.exit

map_word_load_partial.exit:                       ; preds = %if.end.loopexit.i, %if.then.i
  %59 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %tmp98.sroa.0.0.copyload = load i32, ptr %orig.i, align 4
  %60 = ptrtoint ptr %orig.coerce.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %tmp98.sroa.4.0.copyload = load i32, ptr %orig.coerce.fca.1.gep.i, align 4
  %61 = ptrtoint ptr %orig.coerce.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %tmp98.sroa.5.0.copyload = load i32, ptr %orig.coerce.fca.2.gep.i, align 4
  %62 = ptrtoint ptr %orig.coerce.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %tmp98.sroa.6.0.copyload = load i32, ptr %orig.coerce.fca.3.gep.i, align 4
  %63 = ptrtoint ptr %orig.coerce.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %tmp98.sroa.7.0.copyload = load i32, ptr %orig.coerce.fca.4.gep.i, align 4
  %64 = ptrtoint ptr %orig.coerce.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %tmp98.sroa.8.0.copyload = load i32, ptr %orig.coerce.fca.5.gep.i, align 4
  %65 = ptrtoint ptr %orig.coerce.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %tmp98.sroa.9.0.copyload = load i32, ptr %orig.coerce.fca.6.gep.i, align 4
  %66 = ptrtoint ptr %orig.coerce.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %tmp98.sroa.10.0.copyload = load i32, ptr %orig.coerce.fca.7.gep.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i)
  %.fca.0.insert353 = insertvalue [8 x i32] poison, i32 %tmp98.sroa.0.0.copyload, 0
  %.fca.1.insert356 = insertvalue [8 x i32] %.fca.0.insert353, i32 %tmp98.sroa.4.0.copyload, 1
  %.fca.2.insert359 = insertvalue [8 x i32] %.fca.1.insert356, i32 %tmp98.sroa.5.0.copyload, 2
  %.fca.3.insert362 = insertvalue [8 x i32] %.fca.2.insert359, i32 %tmp98.sroa.6.0.copyload, 3
  %.fca.4.insert365 = insertvalue [8 x i32] %.fca.3.insert362, i32 %tmp98.sroa.7.0.copyload, 4
  %.fca.5.insert368 = insertvalue [8 x i32] %.fca.4.insert365, i32 %tmp98.sroa.8.0.copyload, 5
  %.fca.6.insert371 = insertvalue [8 x i32] %.fca.5.insert368, i32 %tmp98.sroa.9.0.copyload, 6
  %.fca.7.insert374 = insertvalue [8 x i32] %.fca.6.insert371, i32 %tmp98.sroa.10.0.copyload, 7
  %call102 = call fastcc i32 @do_write_oneword(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %and8, [8 x i32] %.fca.7.insert374, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %map_word_load_partial.exit.cleanup284_crit_edge

map_word_load_partial.exit.cleanup284_crit_edge:  ; preds = %map_word_load_partial.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup284

if.end105:                                        ; preds = %map_word_load_partial.exit
  %add106 = add i32 %45, %conv4
  %add.ptr = getelementptr i8, ptr %buf, i32 %45
  %67 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %retlen, align 4
  %add107 = add i32 %68, %45
  store i32 %add107, ptr %retlen, align 4
  %sub108 = sub i32 %len, %45
  %69 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %chipshift, align 4
  %shr110 = lshr i32 %add106, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr110)
  %tobool111.not = icmp eq i32 %shr110, 0
  br i1 %tobool111.not, label %if.end105.if.end121_crit_edge, label %if.then112

if.end105.if.end121_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

if.then112:                                       ; preds = %if.end105
  %inc = add i32 %conv, 1
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %71 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %72)
  %cmp113 = icmp eq i32 %inc, %72
  br i1 %cmp113, label %if.then112.cleanup284_crit_edge, label %if.then112.if.end121_crit_edge

if.then112.if.end121_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

if.then112.cleanup284_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup284

if.end121:                                        ; preds = %if.then112.if.end121_crit_edge, %if.end105.if.end121_crit_edge, %entry.if.end121_crit_edge
  %ofs.2 = phi i32 [ %conv4, %entry.if.end121_crit_edge ], [ 0, %if.then112.if.end121_crit_edge ], [ %add106, %if.end105.if.end121_crit_edge ]
  %chipnum.2 = phi i32 [ %conv, %entry.if.end121_crit_edge ], [ %inc, %if.then112.if.end121_crit_edge ], [ %conv, %if.end105.if.end121_crit_edge ]
  %buf.addr.1 = phi ptr [ %buf, %entry.if.end121_crit_edge ], [ %add.ptr, %if.then112.if.end121_crit_edge ], [ %add.ptr, %if.end105.if.end121_crit_edge ]
  %len.addr.1 = phi i32 [ %len, %entry.if.end121_crit_edge ], [ %sub108, %if.then112.if.end121_crit_edge ], [ %sub108, %if.end105.if.end121_crit_edge ]
  %73 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bankwidth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.1, i32 %74)
  %cmp123.not567 = icmp ult i32 %len.addr.1, %74
  br i1 %cmp123.not567, label %if.end121.while.end_crit_edge, label %while.body.lr.ph

if.end121.while.end_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end121
  %numchips146 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %tmp125.sroa.0.4.tmp125.sroa_idx = getelementptr inbounds i8, ptr %tmp125.sroa.0, i32 4
  %tmp125.sroa.0.8.tmp125.sroa_idx = getelementptr inbounds i8, ptr %tmp125.sroa.0, i32 8
  %tmp125.sroa.0.12.tmp125.sroa_idx = getelementptr inbounds i8, ptr %tmp125.sroa.0, i32 12
  %tmp125.sroa.0.16.tmp125.sroa_idx = getelementptr inbounds i8, ptr %tmp125.sroa.0, i32 16
  %tmp125.sroa.0.20.tmp125.sroa_idx = getelementptr inbounds i8, ptr %tmp125.sroa.0, i32 20
  %tmp125.sroa.0.24.tmp125.sroa_idx = getelementptr inbounds i8, ptr %tmp125.sroa.0, i32 24
  %tmp125.sroa.0.28.tmp125.sroa_idx = getelementptr inbounds i8, ptr %tmp125.sroa.0, i32 28
  br label %while.body

while.body:                                       ; preds = %cleanup155.while.body_crit_edge, %while.body.lr.ph
  %75 = phi i32 [ %74, %while.body.lr.ph ], [ %108, %cleanup155.while.body_crit_edge ]
  %len.addr.2573 = phi i32 [ %len.addr.1, %while.body.lr.ph ], [ %sub140, %cleanup155.while.body_crit_edge ]
  %buf.addr.2571 = phi ptr [ %buf.addr.1, %while.body.lr.ph ], [ %add.ptr136, %cleanup155.while.body_crit_edge ]
  %chipnum.3570 = phi i32 [ %chipnum.2, %while.body.lr.ph ], [ %chipnum.5, %cleanup155.while.body_crit_edge ]
  %ofs.3569 = phi i32 [ %ofs.2, %while.body.lr.ph ], [ %ofs.5, %cleanup155.while.body_crit_edge ]
  %chipstart.0568 = phi i32 [ %21, %while.body.lr.ph ], [ %chipstart.2, %cleanup155.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp125.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %76 = call ptr @memset(ptr %tmp125.sroa.0, i32 255, i32 32)
  %77 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %75, label %if.else16.i [
    i32 1, label %if.then.i485
    i32 2, label %if.then4.i
    i32 4, label %if.then11.i
  ]

if.then.i485:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %buf.addr.2571 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %buf.addr.2571, align 1, !noalias !258
  %conv.i484 = zext i8 %79 to i32
  %80 = ptrtoint ptr %tmp125.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i484, ptr %tmp125.sroa.0, align 4, !alias.scope !258
  br label %map_word_load.exit

if.then4.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %buf.addr.2571 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %buf.addr.2571, align 1, !noalias !258
  %conv5.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %tmp125.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv5.i, ptr %tmp125.sroa.0, align 4, !alias.scope !258
  br label %map_word_load.exit

if.then11.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %buf.addr.2571 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %buf.addr.2571, align 1, !noalias !258
  %86 = ptrtoint ptr %tmp125.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tmp125.sroa.0, align 4, !alias.scope !258
  br label %map_word_load.exit

if.else16.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %75)
  %cmp18.i = icmp sgt i32 %75, 4
  br i1 %cmp18.i, label %if.then20.i, label %do.body.i

if.then20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #16
  %87 = call ptr @memcpy(ptr %tmp125.sroa.0, ptr %buf.addr.2571, i32 %75)
  br label %map_word_load.exit

do.body.i:                                        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #14, !noalias !258, !srcloc !261
  unreachable

map_word_load.exit:                               ; preds = %if.then20.i, %if.then11.i, %if.then4.i, %if.then.i485
  %88 = ptrtoint ptr %tmp125.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %tmp125.sroa.0.0.tmp125.sroa.0.0.tmp125.sroa.0.0.datum.sroa.0.0.copyload = load i32, ptr %tmp125.sroa.0, align 4
  %89 = ptrtoint ptr %tmp125.sroa.0.4.tmp125.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %89)
  %tmp125.sroa.0.4.tmp125.sroa.0.4.tmp125.sroa.0.4.datum.sroa.5.0.copyload = load i32, ptr %tmp125.sroa.0.4.tmp125.sroa_idx, align 4
  %90 = ptrtoint ptr %tmp125.sroa.0.8.tmp125.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %tmp125.sroa.0.8.tmp125.sroa.0.8.tmp125.sroa.0.8.datum.sroa.7.0.copyload = load i32, ptr %tmp125.sroa.0.8.tmp125.sroa_idx, align 4
  %91 = ptrtoint ptr %tmp125.sroa.0.12.tmp125.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %tmp125.sroa.0.12.tmp125.sroa.0.12.tmp125.sroa.0.12.datum.sroa.9.0.copyload = load i32, ptr %tmp125.sroa.0.12.tmp125.sroa_idx, align 4
  %92 = ptrtoint ptr %tmp125.sroa.0.16.tmp125.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %92)
  %tmp125.sroa.0.16.tmp125.sroa.0.16.tmp125.sroa.0.16.datum.sroa.11.0.copyload = load i32, ptr %tmp125.sroa.0.16.tmp125.sroa_idx, align 4
  %93 = ptrtoint ptr %tmp125.sroa.0.20.tmp125.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %93)
  %tmp125.sroa.0.20.tmp125.sroa.0.20.tmp125.sroa.0.20.datum.sroa.13.0.copyload = load i32, ptr %tmp125.sroa.0.20.tmp125.sroa_idx, align 4
  %94 = ptrtoint ptr %tmp125.sroa.0.24.tmp125.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %94)
  %tmp125.sroa.0.24.tmp125.sroa.0.24.tmp125.sroa.0.24.datum.sroa.15.0.copyload = load i32, ptr %tmp125.sroa.0.24.tmp125.sroa_idx, align 4
  %95 = ptrtoint ptr %tmp125.sroa.0.28.tmp125.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %95)
  %tmp125.sroa.0.28.tmp125.sroa.0.28.tmp125.sroa.0.28.datum.sroa.17.0.copyload = load i32, ptr %tmp125.sroa.0.28.tmp125.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp125.sroa.0)
  %arrayidx127 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3570
  %.fca.0.insert329 = insertvalue [8 x i32] poison, i32 %tmp125.sroa.0.0.tmp125.sroa.0.0.tmp125.sroa.0.0.datum.sroa.0.0.copyload, 0
  %.fca.1.insert330 = insertvalue [8 x i32] %.fca.0.insert329, i32 %tmp125.sroa.0.4.tmp125.sroa.0.4.tmp125.sroa.0.4.datum.sroa.5.0.copyload, 1
  %.fca.2.insert331 = insertvalue [8 x i32] %.fca.1.insert330, i32 %tmp125.sroa.0.8.tmp125.sroa.0.8.tmp125.sroa.0.8.datum.sroa.7.0.copyload, 2
  %.fca.3.insert332 = insertvalue [8 x i32] %.fca.2.insert331, i32 %tmp125.sroa.0.12.tmp125.sroa.0.12.tmp125.sroa.0.12.datum.sroa.9.0.copyload, 3
  %.fca.4.insert333 = insertvalue [8 x i32] %.fca.3.insert332, i32 %tmp125.sroa.0.16.tmp125.sroa.0.16.tmp125.sroa.0.16.datum.sroa.11.0.copyload, 4
  %.fca.5.insert334 = insertvalue [8 x i32] %.fca.4.insert333, i32 %tmp125.sroa.0.20.tmp125.sroa.0.20.tmp125.sroa.0.20.datum.sroa.13.0.copyload, 5
  %.fca.6.insert335 = insertvalue [8 x i32] %.fca.5.insert334, i32 %tmp125.sroa.0.24.tmp125.sroa.0.24.tmp125.sroa.0.24.datum.sroa.15.0.copyload, 6
  %.fca.7.insert336 = insertvalue [8 x i32] %.fca.6.insert335, i32 %tmp125.sroa.0.28.tmp125.sroa.0.28.tmp125.sroa.0.28.datum.sroa.17.0.copyload, 7
  %call129 = call fastcc i32 @do_write_oneword(ptr noundef %1, ptr noundef %arrayidx127, i32 noundef %ofs.3569, [8 x i32] %.fca.7.insert336, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %map_word_load.exit.cleanup284_crit_edge

map_word_load.exit.cleanup284_crit_edge:          ; preds = %map_word_load.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup284

if.end132:                                        ; preds = %map_word_load.exit
  %96 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bankwidth, align 4
  %add134 = add i32 %97, %ofs.3569
  %add.ptr136 = getelementptr i8, ptr %buf.addr.2571, i32 %97
  %98 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %retlen, align 4
  %add138 = add i32 %99, %97
  store i32 %add138, ptr %retlen, align 4
  %100 = load i32, ptr %bankwidth, align 4
  %sub140 = sub i32 %len.addr.2573, %100
  %101 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %chipshift, align 4
  %shr142 = lshr i32 %add134, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr142)
  %tobool143.not = icmp eq i32 %shr142, 0
  br i1 %tobool143.not, label %if.end132.cleanup155_crit_edge, label %if.then144

if.end132.cleanup155_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup155

if.then144:                                       ; preds = %if.end132
  %inc145 = add i32 %chipnum.3570, 1
  %103 = ptrtoint ptr %numchips146 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %numchips146, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc145, i32 %104)
  %cmp147 = icmp eq i32 %inc145, %104
  br i1 %cmp147, label %if.then144.cleanup284_crit_edge, label %if.end150

if.then144.cleanup284_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup284

if.end150:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx152 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %inc145
  %105 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx152, align 4
  br label %cleanup155

cleanup155:                                       ; preds = %if.end150, %if.end132.cleanup155_crit_edge
  %chipstart.2 = phi i32 [ %106, %if.end150 ], [ %chipstart.0568, %if.end132.cleanup155_crit_edge ]
  %ofs.5 = phi i32 [ 0, %if.end150 ], [ %add134, %if.end132.cleanup155_crit_edge ]
  %chipnum.5 = phi i32 [ %inc145, %if.end150 ], [ %chipnum.3570, %if.end132.cleanup155_crit_edge ]
  %107 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bankwidth, align 4
  %cmp123.not = icmp ult i32 %sub140, %108
  br i1 %cmp123.not, label %cleanup155.while.end_crit_edge, label %cleanup155.while.body_crit_edge

cleanup155.while.body_crit_edge:                  ; preds = %cleanup155
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup155.while.end_crit_edge:                   ; preds = %cleanup155
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup155.while.end_crit_edge, %if.end121.while.end_crit_edge
  %chipstart.0.lcssa = phi i32 [ %21, %if.end121.while.end_crit_edge ], [ %chipstart.2, %cleanup155.while.end_crit_edge ]
  %ofs.3.lcssa = phi i32 [ %ofs.2, %if.end121.while.end_crit_edge ], [ %ofs.5, %cleanup155.while.end_crit_edge ]
  %chipnum.3.lcssa = phi i32 [ %chipnum.2, %if.end121.while.end_crit_edge ], [ %chipnum.5, %cleanup155.while.end_crit_edge ]
  %buf.addr.2.lcssa = phi ptr [ %buf.addr.1, %if.end121.while.end_crit_edge ], [ %add.ptr136, %cleanup155.while.end_crit_edge ]
  %len.addr.2.lcssa = phi i32 [ %len.addr.1, %if.end121.while.end_crit_edge ], [ %sub140, %cleanup155.while.end_crit_edge ]
  %.lcssa = phi i32 [ %74, %if.end121.while.end_crit_edge ], [ %108, %cleanup155.while.end_crit_edge ]
  %sub159 = add i32 %.lcssa, -1
  %and160 = and i32 %sub159, %len.addr.2.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %while.end.cleanup284_crit_edge, label %retry1.preheader

while.end.cleanup284_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup284

retry1.preheader:                                 ; preds = %while.end
  %mutex166 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3.lcssa, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex166, i32 noundef 0) #14
  %state169 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3.lcssa, i32 2
  %109 = ptrtoint ptr %state169 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %state169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp170.not580 = icmp eq i32 %110, 0
  br i1 %cmp170.not580, label %retry1.preheader.if.end263_crit_edge, label %__here224.lr.ph

retry1.preheader.if.end263_crit_edge:             ; preds = %retry1.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end263

__here224.lr.ph:                                  ; preds = %retry1.preheader
  %wq256 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3.lcssa, i32 8
  br label %__here224

__here224:                                        ; preds = %__here224.__here224_crit_edge, %__here224.lr.ph
  %111 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task, align 8
  %task_state_change228 = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 212
  %113 = ptrtoint ptr %task_state_change228 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 ptrtoint (ptr blockaddress(@cfi_amdstd_write_words, %__here224) to i32), ptr %task_state_change228, align 4
  %114 = load ptr, ptr %task, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 2, ptr %114, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !262
  call void @add_wait_queue(ptr noundef %wq256, ptr noundef nonnull %wait) #14
  call void @mutex_unlock(ptr noundef %mutex166) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %wq256, ptr noundef nonnull %wait) #14
  call void @mutex_lock_nested(ptr noundef %mutex166, i32 noundef 0) #14
  %116 = ptrtoint ptr %state169 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %state169, align 4
  %cmp170.not = icmp eq i32 %117, 0
  br i1 %cmp170.not, label %__here224.if.end263_crit_edge, label %__here224.__here224_crit_edge

__here224.__here224_crit_edge:                    ; preds = %__here224
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here224

__here224.if.end263_crit_edge:                    ; preds = %__here224
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end263

if.end263:                                        ; preds = %__here224.if.end263_crit_edge, %retry1.preheader.if.end263_crit_edge
  %arrayidx165 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3.lcssa
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp264) #14
  %read265 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 7
  %118 = ptrtoint ptr %read265 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read265, align 4
  %add266 = add i32 %ofs.3.lcssa, %chipstart.0.lcssa
  call void %119(ptr nonnull sret(%union.map_word) align 4 %tmp264, ptr noundef %1, i32 noundef %add266) #14
  %120 = ptrtoint ptr %tmp264 to i32
  call void @__asan_load4_noabort(i32 %120)
  %tmp_buf163.sroa.0.0.copyload = load i32, ptr %tmp264, align 4
  %tmp_buf163.sroa.7.0.tmp264.sroa_idx = getelementptr inbounds i8, ptr %tmp264, i32 4
  %121 = ptrtoint ptr %tmp_buf163.sroa.7.0.tmp264.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %121)
  %tmp_buf163.sroa.7.0.copyload = load i32, ptr %tmp_buf163.sroa.7.0.tmp264.sroa_idx, align 4
  %tmp_buf163.sroa.10.0.tmp264.sroa_idx = getelementptr inbounds i8, ptr %tmp264, i32 8
  %122 = ptrtoint ptr %tmp_buf163.sroa.10.0.tmp264.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %122)
  %tmp_buf163.sroa.10.0.copyload = load i32, ptr %tmp_buf163.sroa.10.0.tmp264.sroa_idx, align 4
  %tmp_buf163.sroa.13.0.tmp264.sroa_idx = getelementptr inbounds i8, ptr %tmp264, i32 12
  %123 = ptrtoint ptr %tmp_buf163.sroa.13.0.tmp264.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %123)
  %tmp_buf163.sroa.13.0.copyload = load i32, ptr %tmp_buf163.sroa.13.0.tmp264.sroa_idx, align 4
  %tmp_buf163.sroa.16.0.tmp264.sroa_idx = getelementptr inbounds i8, ptr %tmp264, i32 16
  %124 = ptrtoint ptr %tmp_buf163.sroa.16.0.tmp264.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %124)
  %tmp_buf163.sroa.16.0.copyload = load i32, ptr %tmp_buf163.sroa.16.0.tmp264.sroa_idx, align 4
  %tmp_buf163.sroa.19.0.tmp264.sroa_idx = getelementptr inbounds i8, ptr %tmp264, i32 20
  %125 = ptrtoint ptr %tmp_buf163.sroa.19.0.tmp264.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %125)
  %tmp_buf163.sroa.19.0.copyload = load i32, ptr %tmp_buf163.sroa.19.0.tmp264.sroa_idx, align 4
  %tmp_buf163.sroa.22.0.tmp264.sroa_idx = getelementptr inbounds i8, ptr %tmp264, i32 24
  %126 = ptrtoint ptr %tmp_buf163.sroa.22.0.tmp264.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %126)
  %tmp_buf163.sroa.22.0.copyload = load i32, ptr %tmp_buf163.sroa.22.0.tmp264.sroa_idx, align 4
  %tmp_buf163.sroa.25.0.tmp264.sroa_idx = getelementptr inbounds i8, ptr %tmp264, i32 28
  %127 = ptrtoint ptr %tmp_buf163.sroa.25.0.tmp264.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %127)
  %tmp_buf163.sroa.25.0.copyload = load i32, ptr %tmp_buf163.sroa.25.0.tmp264.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp264) #14
  call void @mutex_unlock(ptr noundef %mutex166) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i486.sroa.0)
  %128 = ptrtoint ptr %orig.i486.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %tmp_buf163.sroa.0.0.copyload, ptr %orig.i486.sroa.0, align 4, !noalias !263
  %orig.i486.sroa.0.4.orig.coerce.fca.1.gep.i487.sroa_idx = getelementptr inbounds i8, ptr %orig.i486.sroa.0, i32 4
  %129 = ptrtoint ptr %orig.i486.sroa.0.4.orig.coerce.fca.1.gep.i487.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %tmp_buf163.sroa.7.0.copyload, ptr %orig.i486.sroa.0.4.orig.coerce.fca.1.gep.i487.sroa_idx, align 4, !noalias !263
  %orig.i486.sroa.0.8.orig.coerce.fca.2.gep.i488.sroa_idx = getelementptr inbounds i8, ptr %orig.i486.sroa.0, i32 8
  %130 = ptrtoint ptr %orig.i486.sroa.0.8.orig.coerce.fca.2.gep.i488.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %tmp_buf163.sroa.10.0.copyload, ptr %orig.i486.sroa.0.8.orig.coerce.fca.2.gep.i488.sroa_idx, align 4, !noalias !263
  %orig.i486.sroa.0.12.orig.coerce.fca.3.gep.i489.sroa_idx = getelementptr inbounds i8, ptr %orig.i486.sroa.0, i32 12
  %131 = ptrtoint ptr %orig.i486.sroa.0.12.orig.coerce.fca.3.gep.i489.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %tmp_buf163.sroa.13.0.copyload, ptr %orig.i486.sroa.0.12.orig.coerce.fca.3.gep.i489.sroa_idx, align 4, !noalias !263
  %orig.i486.sroa.0.16.orig.coerce.fca.4.gep.i490.sroa_idx = getelementptr inbounds i8, ptr %orig.i486.sroa.0, i32 16
  %132 = ptrtoint ptr %orig.i486.sroa.0.16.orig.coerce.fca.4.gep.i490.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %tmp_buf163.sroa.16.0.copyload, ptr %orig.i486.sroa.0.16.orig.coerce.fca.4.gep.i490.sroa_idx, align 4, !noalias !263
  %orig.i486.sroa.0.20.orig.coerce.fca.5.gep.i491.sroa_idx = getelementptr inbounds i8, ptr %orig.i486.sroa.0, i32 20
  %133 = ptrtoint ptr %orig.i486.sroa.0.20.orig.coerce.fca.5.gep.i491.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %tmp_buf163.sroa.19.0.copyload, ptr %orig.i486.sroa.0.20.orig.coerce.fca.5.gep.i491.sroa_idx, align 4, !noalias !263
  %orig.i486.sroa.0.24.orig.coerce.fca.6.gep.i492.sroa_idx = getelementptr inbounds i8, ptr %orig.i486.sroa.0, i32 24
  %134 = ptrtoint ptr %orig.i486.sroa.0.24.orig.coerce.fca.6.gep.i492.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %tmp_buf163.sroa.22.0.copyload, ptr %orig.i486.sroa.0.24.orig.coerce.fca.6.gep.i492.sroa_idx, align 4, !noalias !263
  %orig.i486.sroa.0.28.orig.coerce.fca.7.gep.i493.sroa_idx = getelementptr inbounds i8, ptr %orig.i486.sroa.0, i32 28
  %135 = ptrtoint ptr %orig.i486.sroa.0.28.orig.coerce.fca.7.gep.i493.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %tmp_buf163.sroa.25.0.copyload, ptr %orig.i486.sroa.0.28.orig.coerce.fca.7.gep.i493.sroa_idx, align 4, !noalias !263
  %136 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bankwidth, align 4, !noalias !263
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %137)
  %cmp.i495 = icmp sgt i32 %137, 4
  br i1 %cmp.i495, label %if.then.i499, label %for.cond.preheader.i498

for.cond.preheader.i498:                          ; preds = %if.end263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2.lcssa)
  %cmp119.i497 = icmp sgt i32 %len.addr.2.lcssa, 0
  br i1 %cmp119.i497, label %for.cond.preheader.i498.for.body.i513_crit_edge, label %for.cond.preheader.i498.if.end.loopexit.i515_crit_edge

for.cond.preheader.i498.if.end.loopexit.i515_crit_edge: ; preds = %for.cond.preheader.i498
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i515

for.cond.preheader.i498.for.body.i513_crit_edge:  ; preds = %for.cond.preheader.i498
  br label %for.body.i513

if.then.i499:                                     ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #16
  %138 = call ptr @memcpy(ptr %orig.i486.sroa.0, ptr %buf.addr.2.lcssa, i32 %len.addr.2.lcssa)
  br label %map_word_load_partial.exit516

for.body.i513:                                    ; preds = %for.body.i513.for.body.i513_crit_edge, %for.cond.preheader.i498.for.body.i513_crit_edge
  %i.021.i500 = phi i32 [ %inc.i511, %for.body.i513.for.body.i513_crit_edge ], [ 0, %for.cond.preheader.i498.for.body.i513_crit_edge ]
  %or1820.i501 = phi i32 [ %or.i510, %for.body.i513.for.body.i513_crit_edge ], [ %tmp_buf163.sroa.0.0.copyload, %for.cond.preheader.i498.for.body.i513_crit_edge ]
  %139 = xor i32 %i.021.i500, -1
  %sub3.i502 = add i32 %137, %139
  %mul.i503 = shl i32 %sub3.i502, 3
  %shl.i504 = shl i32 255, %mul.i503
  %neg.i505 = xor i32 %shl.i504, -1
  %and.i506 = and i32 %or1820.i501, %neg.i505
  %arrayidx5.i507 = getelementptr i8, ptr %buf.addr.2.lcssa, i32 %i.021.i500
  %140 = ptrtoint ptr %arrayidx5.i507 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx5.i507, align 1, !noalias !263
  %conv.i508 = zext i8 %141 to i32
  %shl6.i509 = shl i32 %conv.i508, %mul.i503
  %or.i510 = or i32 %shl6.i509, %and.i506
  %inc.i511 = add nuw nsw i32 %i.021.i500, 1
  %exitcond.not.i512 = icmp eq i32 %inc.i511, %len.addr.2.lcssa
  br i1 %exitcond.not.i512, label %for.body.i513.if.end.loopexit.i515_crit_edge, label %for.body.i513.for.body.i513_crit_edge

for.body.i513.for.body.i513_crit_edge:            ; preds = %for.body.i513
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i513

for.body.i513.if.end.loopexit.i515_crit_edge:     ; preds = %for.body.i513
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i515

if.end.loopexit.i515:                             ; preds = %for.body.i513.if.end.loopexit.i515_crit_edge, %for.cond.preheader.i498.if.end.loopexit.i515_crit_edge
  %or18.lcssa.i514 = phi i32 [ %tmp_buf163.sroa.0.0.copyload, %for.cond.preheader.i498.if.end.loopexit.i515_crit_edge ], [ %or.i510, %for.body.i513.if.end.loopexit.i515_crit_edge ]
  %142 = ptrtoint ptr %orig.i486.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or18.lcssa.i514, ptr %orig.i486.sroa.0, align 4, !noalias !263
  br label %map_word_load_partial.exit516

map_word_load_partial.exit516:                    ; preds = %if.end.loopexit.i515, %if.then.i499
  %143 = ptrtoint ptr %orig.i486.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %143)
  %orig.i486.sroa.0.0.orig.i486.sroa.0.0.orig.i486.sroa.0.0.tmp270.sroa.0.0.copyload = load i32, ptr %orig.i486.sroa.0, align 4
  %144 = ptrtoint ptr %orig.i486.sroa.0.4.orig.coerce.fca.1.gep.i487.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %144)
  %orig.i486.sroa.0.4.orig.i486.sroa.0.4.orig.i486.sroa.0.4.tmp270.sroa.4.0.copyload = load i32, ptr %orig.i486.sroa.0.4.orig.coerce.fca.1.gep.i487.sroa_idx, align 4
  %145 = ptrtoint ptr %orig.i486.sroa.0.8.orig.coerce.fca.2.gep.i488.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %145)
  %orig.i486.sroa.0.8.orig.i486.sroa.0.8.orig.i486.sroa.0.8.tmp270.sroa.5.0.copyload = load i32, ptr %orig.i486.sroa.0.8.orig.coerce.fca.2.gep.i488.sroa_idx, align 4
  %146 = ptrtoint ptr %orig.i486.sroa.0.12.orig.coerce.fca.3.gep.i489.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %146)
  %orig.i486.sroa.0.12.orig.i486.sroa.0.12.orig.i486.sroa.0.12.tmp270.sroa.6.0.copyload = load i32, ptr %orig.i486.sroa.0.12.orig.coerce.fca.3.gep.i489.sroa_idx, align 4
  %147 = ptrtoint ptr %orig.i486.sroa.0.16.orig.coerce.fca.4.gep.i490.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %147)
  %orig.i486.sroa.0.16.orig.i486.sroa.0.16.orig.i486.sroa.0.16.tmp270.sroa.7.0.copyload = load i32, ptr %orig.i486.sroa.0.16.orig.coerce.fca.4.gep.i490.sroa_idx, align 4
  %148 = ptrtoint ptr %orig.i486.sroa.0.20.orig.coerce.fca.5.gep.i491.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %148)
  %orig.i486.sroa.0.20.orig.i486.sroa.0.20.orig.i486.sroa.0.20.tmp270.sroa.8.0.copyload = load i32, ptr %orig.i486.sroa.0.20.orig.coerce.fca.5.gep.i491.sroa_idx, align 4
  %149 = ptrtoint ptr %orig.i486.sroa.0.24.orig.coerce.fca.6.gep.i492.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %149)
  %orig.i486.sroa.0.24.orig.i486.sroa.0.24.orig.i486.sroa.0.24.tmp270.sroa.9.0.copyload = load i32, ptr %orig.i486.sroa.0.24.orig.coerce.fca.6.gep.i492.sroa_idx, align 4
  %150 = ptrtoint ptr %orig.i486.sroa.0.28.orig.coerce.fca.7.gep.i493.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %150)
  %orig.i486.sroa.0.28.orig.i486.sroa.0.28.orig.i486.sroa.0.28.tmp270.sroa.10.0.copyload = load i32, ptr %orig.i486.sroa.0.28.orig.coerce.fca.7.gep.i493.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i486.sroa.0)
  %.fca.0.insert298 = insertvalue [8 x i32] poison, i32 %orig.i486.sroa.0.0.orig.i486.sroa.0.0.orig.i486.sroa.0.0.tmp270.sroa.0.0.copyload, 0
  %.fca.1.insert301 = insertvalue [8 x i32] %.fca.0.insert298, i32 %orig.i486.sroa.0.4.orig.i486.sroa.0.4.orig.i486.sroa.0.4.tmp270.sroa.4.0.copyload, 1
  %.fca.2.insert304 = insertvalue [8 x i32] %.fca.1.insert301, i32 %orig.i486.sroa.0.8.orig.i486.sroa.0.8.orig.i486.sroa.0.8.tmp270.sroa.5.0.copyload, 2
  %.fca.3.insert307 = insertvalue [8 x i32] %.fca.2.insert304, i32 %orig.i486.sroa.0.12.orig.i486.sroa.0.12.orig.i486.sroa.0.12.tmp270.sroa.6.0.copyload, 3
  %.fca.4.insert310 = insertvalue [8 x i32] %.fca.3.insert307, i32 %orig.i486.sroa.0.16.orig.i486.sroa.0.16.orig.i486.sroa.0.16.tmp270.sroa.7.0.copyload, 4
  %.fca.5.insert313 = insertvalue [8 x i32] %.fca.4.insert310, i32 %orig.i486.sroa.0.20.orig.i486.sroa.0.20.orig.i486.sroa.0.20.tmp270.sroa.8.0.copyload, 5
  %.fca.6.insert316 = insertvalue [8 x i32] %.fca.5.insert313, i32 %orig.i486.sroa.0.24.orig.i486.sroa.0.24.orig.i486.sroa.0.24.tmp270.sroa.9.0.copyload, 6
  %.fca.7.insert319 = insertvalue [8 x i32] %.fca.6.insert316, i32 %orig.i486.sroa.0.28.orig.i486.sroa.0.28.orig.i486.sroa.0.28.tmp270.sroa.10.0.copyload, 7
  %call275 = call fastcc i32 @do_write_oneword(ptr noundef %1, ptr noundef %arrayidx165, i32 noundef %ofs.3.lcssa, [8 x i32] %.fca.7.insert319, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %cleanup280.thread, label %map_word_load_partial.exit516.cleanup284_crit_edge

map_word_load_partial.exit516.cleanup284_crit_edge: ; preds = %map_word_load_partial.exit516
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup284

cleanup280.thread:                                ; preds = %map_word_load_partial.exit516
  call void @__sanitizer_cov_trace_pc() #16
  %151 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %retlen, align 4
  %add279 = add i32 %152, %len.addr.2.lcssa
  store i32 %add279, ptr %retlen, align 4
  br label %cleanup284

cleanup284:                                       ; preds = %cleanup280.thread, %map_word_load_partial.exit516.cleanup284_crit_edge, %while.end.cleanup284_crit_edge, %if.then144.cleanup284_crit_edge, %map_word_load.exit.cleanup284_crit_edge, %if.then112.cleanup284_crit_edge, %map_word_load_partial.exit.cleanup284_crit_edge
  %retval.5 = phi i32 [ %call275, %map_word_load_partial.exit516.cleanup284_crit_edge ], [ 0, %cleanup280.thread ], [ 0, %while.end.cleanup284_crit_edge ], [ 0, %if.then112.cleanup284_crit_edge ], [ %call102, %map_word_load_partial.exit.cleanup284_crit_edge ], [ %call129, %map_word_load.exit.cleanup284_crit_edge ], [ 0, %if.then144.cleanup284_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  %agg.tmp.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not53 = icmp eq i32 %len, 0
  br i1 %tobool.not53, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = trunc i64 %from to i32
  %5 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %6 to i64
  %shr = ashr i64 %from, %sh_prom
  %conv = trunc i64 %shr to i32
  %shl = shl i32 %conv, %6
  %conv3 = sub i32 %4, %shl
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %write.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %.fca.1.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 1
  %.fca.2.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 2
  %.fca.3.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 3
  %.fca.4.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 4
  %.fca.5.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 5
  %.fca.6.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 6
  %.fca.7.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 7
  %copy_from.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %chipnum.057 = phi i32 [ %conv, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %ofs.056 = phi i32 [ %conv3, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %buf.addr.055 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %len.addr.054 = phi i32 [ %len, %while.body.lr.ph ], [ %sub19, %cleanup.while.body_crit_edge ]
  %7 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chipnum.057, i32 %8)
  %cmp.not = icmp slt i32 %chipnum.057, %8
  br i1 %cmp.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end:                                           ; preds = %while.body
  %add = add i32 %len.addr.054, -1
  %sub5 = add i32 %add, %ofs.056
  %9 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chipshift, align 4
  %shr7 = lshr i32 %sub5, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr7)
  %tobool8.not = icmp eq i32 %shr7, 0
  %shl11 = shl nuw i32 1, %10
  %sub12 = sub i32 %shl11, %ofs.056
  %thislen.0 = select i1 %tobool8.not, i32 %len.addr.054, i32 %sub12
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.057
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp.i)
  %11 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fldrv_priv, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bankwidth.i, align 4
  %neg.i = sub i32 0, %16
  %17 = add i32 %14, %ofs.056
  %conv2.i = and i32 %17, %neg.i
  %mutex.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.057, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %call.i = call fastcc i32 @get_chip(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %conv2.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do_read_onechip.exit

if.end.i:                                         ; preds = %if.end
  %state.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.057, i32 2
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %19, label %if.then8.i [
    i32 17, label %if.end.i.cleanup_crit_edge
    i32 0, label %if.end.i.cleanup_crit_edge58
  ]

if.end.i.cleanup_crit_edge58:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp.i, i32 noundef 240, ptr noundef %1, ptr noundef %12) #14
  %23 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.0.load.i = load i32, ptr %agg.tmp.i, align 4
  %.fca.0.insert.i = insertvalue [8 x i32] poison, i32 %.fca.0.load.i, 0
  %24 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [8 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %25 = ptrtoint ptr %.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.2.load.i = load i32, ptr %.fca.2.gep.i, align 4
  %.fca.2.insert.i = insertvalue [8 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  %26 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.3.insert.i = insertvalue [8 x i32] %.fca.2.insert.i, i32 %.fca.3.load.i, 3
  %27 = ptrtoint ptr %.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.4.load.i = load i32, ptr %.fca.4.gep.i, align 4
  %.fca.4.insert.i = insertvalue [8 x i32] %.fca.3.insert.i, i32 %.fca.4.load.i, 4
  %28 = ptrtoint ptr %.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.5.load.i = load i32, ptr %.fca.5.gep.i, align 4
  %.fca.5.insert.i = insertvalue [8 x i32] %.fca.4.insert.i, i32 %.fca.5.load.i, 5
  %29 = ptrtoint ptr %.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.6.load.i = load i32, ptr %.fca.6.gep.i, align 4
  %.fca.6.insert.i = insertvalue [8 x i32] %.fca.5.insert.i, i32 %.fca.6.load.i, 6
  %30 = ptrtoint ptr %.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.7.load.i = load i32, ptr %.fca.7.gep.i, align 4
  %.fca.7.insert.i = insertvalue [8 x i32] %.fca.6.insert.i, i32 %.fca.7.load.i, 7
  call void %22(ptr noundef %1, [8 x i32] %.fca.7.insert.i, i32 noundef %conv2.i) #14
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %state.i, align 4
  br label %cleanup

do_read_onechip.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp.i)
  br label %while.end

cleanup:                                          ; preds = %if.then8.i, %if.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge58
  %32 = ptrtoint ptr %copy_from.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %copy_from.i, align 4
  call void %33(ptr noundef %1, ptr noundef %buf.addr.055, i32 noundef %17, i32 noundef %thislen.0) #14
  call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx) #14
  call void @mutex_unlock(ptr noundef %mutex.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp.i)
  %34 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %retlen, align 4
  %add18 = add i32 %35, %thislen.0
  store i32 %add18, ptr %retlen, align 4
  %sub19 = sub i32 %len.addr.054, %thislen.0
  %add.ptr = getelementptr i8, ptr %buf.addr.055, i32 %thislen.0
  %inc = add nsw i32 %chipnum.057, 1
  %tobool.not = icmp eq i32 %sub19, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do_read_onechip.exit, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.2 = phi i32 [ %call.i, %do_read_onechip.exit ], [ 0, %entry.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfi_amdstd_sync(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !242) #14
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp117 = icmp sgt i32 %18, 0
  br i1 %cmp117, label %entry.retry.preheader_crit_edge, label %entry.for.end88_crit_edge

entry.for.end88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end88

entry.retry.preheader_crit_edge:                  ; preds = %entry
  br label %retry.preheader

retry.preheader:                                  ; preds = %sw.bb4.retry.preheader_crit_edge, %entry.retry.preheader_crit_edge
  %i.0118 = phi i32 [ %inc, %sw.bb4.retry.preheader_crit_edge ], [ 0, %entry.retry.preheader_crit_edge ]
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.0118, i32 7
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.0118, i32 2
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.0118, i32 8
  br label %retry

retry:                                            ; preds = %__here, %retry.preheader
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %20, label %__here [
    i32 0, label %retry.sw.bb_crit_edge
    i32 1, label %retry.sw.bb_crit_edge130
    i32 2, label %retry.sw.bb_crit_edge131
    i32 3, label %retry.sw.bb_crit_edge132
    i32 13, label %retry.sw.bb4_crit_edge
  ]

retry.sw.bb4_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

retry.sw.bb_crit_edge132:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

retry.sw.bb_crit_edge131:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

retry.sw.bb_crit_edge130:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

retry.sw.bb_crit_edge:                            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %retry.sw.bb_crit_edge, %retry.sw.bb_crit_edge130, %retry.sw.bb_crit_edge131, %retry.sw.bb_crit_edge132
  %oldstate = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.0118, i32 3
  %22 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %oldstate, align 4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 13, ptr %state, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %retry.sw.bb4_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #14
  %inc = add nuw nsw i32 %i.0118, 1
  %24 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %sw.bb4.retry.preheader_crit_edge, label %sw.bb4.for.body74_crit_edge

sw.bb4.for.body74_crit_edge:                      ; preds = %sw.bb4
  br label %for.body74

sw.bb4.retry.preheader_crit_edge:                 ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry.preheader

__here:                                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@cfi_amdstd_sync, %__here) to i32), ptr %task_state_change, align 4
  %29 = load ptr, ptr %task, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 2, ptr %29, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !266
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  br label %retry

for.body74:                                       ; preds = %if.end84.for.body74_crit_edge, %sw.bb4.for.body74_crit_edge
  %i.1122 = phi i32 [ %i.1, %if.end84.for.body74_crit_edge ], [ %i.0118, %sw.bb4.for.body74_crit_edge ]
  %mutex77 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.1122, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex77, i32 noundef 0) #14
  %state78 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.1122, i32 2
  %31 = ptrtoint ptr %state78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %32)
  %cmp79 = icmp eq i32 %32, 13
  br i1 %cmp79, label %if.then80, label %for.body74.if.end84_crit_edge

for.body74.if.end84_crit_edge:                    ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84

if.then80:                                        ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #16
  %oldstate81 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.1122, i32 3
  %33 = ptrtoint ptr %oldstate81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %oldstate81, align 4
  %35 = ptrtoint ptr %state78 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %state78, align 4
  %wq83 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.1122, i32 8
  call void @__wake_up(ptr noundef %wq83, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %for.body74.if.end84_crit_edge
  call void @mutex_unlock(ptr noundef %mutex77) #14
  %i.1 = add nsw i32 %i.1122, -1
  %cmp73 = icmp sgt i32 %i.1122, 0
  br i1 %cmp73, label %if.end84.for.body74_crit_edge, label %if.end84.for.end88_crit_edge

if.end84.for.end88_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end88

if.end84.for.body74_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body74

for.end88:                                        ; preds = %if.end84.for.end88_crit_edge, %entry.for.end88_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_suspend(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp63 = icmp sgt i32 %5, 0
  br i1 %cmp63, label %entry.for.body_crit_edge, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body7.preheader:                              ; preds = %for.body
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %for.body7

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04664 = phi i32 [ %inc, %sw.epilog.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04664, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04664, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %7, label %for.body7.preheader [
    i32 0, label %for.body.sw.bb_crit_edge
    i32 1, label %for.body.sw.bb_crit_edge70
    i32 2, label %for.body.sw.bb_crit_edge71
    i32 3, label %for.body.sw.bb_crit_edge72
    i32 12, label %for.body.sw.epilog_crit_edge
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.body.sw.bb_crit_edge72:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

for.body.sw.bb_crit_edge71:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

for.body.sw.bb_crit_edge70:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge70, %for.body.sw.bb_crit_edge71, %for.body.sw.bb_crit_edge72
  %oldstate = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04664, i32 3
  %9 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %oldstate, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12, ptr %state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  %inc = add nuw nsw i32 %i.04664, 1
  %11 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.if.end20_crit_edge

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body7:                                        ; preds = %if.end.for.body7_crit_edge, %for.body7.preheader
  %i.151 = phi i32 [ %i.1, %if.end.for.body7_crit_edge ], [ %i.04664, %for.body7.preheader ]
  %mutex10 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.151, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex10, i32 noundef 0) #14
  %state11 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.151, i32 2
  %13 = ptrtoint ptr %state11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %cmp12 = icmp eq i32 %14, 12
  br i1 %cmp12, label %if.then13, label %for.body7.if.end_crit_edge

for.body7.if.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then13:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  %oldstate14 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.151, i32 3
  %15 = ptrtoint ptr %oldstate14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oldstate14, align 4
  %17 = ptrtoint ptr %state11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %state11, align 4
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.151, i32 8
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %if.then13, %for.body7.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex10) #14
  %i.1 = add nsw i32 %i.151, -1
  %cmp6 = icmp sgt i32 %i.151, 0
  br i1 %cmp6, label %if.end.for.body7_crit_edge, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end.for.body7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

if.end20:                                         ; preds = %if.end.if.end20_crit_edge, %sw.epilog.if.end20_crit_edge, %entry.if.end20_crit_edge
  %ret.044 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ -11, %if.end.if.end20_crit_edge ], [ 0, %sw.epilog.if.end20_crit_edge ]
  ret i32 %ret.044
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfi_amdstd_resume(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16 = icmp sgt i32 %5, 0
  br i1 %cmp16, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %write = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.017, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.017, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp1 = icmp eq i32 %7, 12
  br i1 %cmp1, label %if.then, label %do.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.017
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 240, ptr noundef %1, ptr noundef %3) #14
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %14 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %15 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %16 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %17 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %18 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %19 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %20 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %10(ptr noundef %1, [8 x i32] %.fca.7.insert, i32 noundef %12) #14
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.017, i32 8
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  call void @mutex_unlock(ptr noundef %mutex) #14
  %inc = add nuw nsw i32 %i.017, 1
  %21 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_read_user_prot_reg(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_amdstd_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef nonnull @do_read_secsi_onechip, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_read_fact_prot_reg(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_amdstd_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef nonnull @do_read_secsi_onechip, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_get_fact_prot_info(ptr nocapture noundef readonly %mtd, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_amdstd_otp_walk(ptr noundef %mtd, i64 noundef 0, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_get_user_prot_info(ptr nocapture noundef readonly %mtd, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_amdstd_otp_walk(ptr noundef %mtd, i64 noundef 0, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef null, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_write_user_prot_reg(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_amdstd_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef nonnull @do_otp_write, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_lock_user_prot_reg(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len) #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #14
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !267
  %call = call fastcc i32 @cfi_amdstd_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef nonnull %retlen, ptr noundef null, ptr noundef nonnull @do_otp_lock, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #14
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_panic_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  %orig.i290.sroa.0 = alloca [8 x i32], align 4
  %orig.i = alloca %union.map_word, align 4
  %tmp = alloca %union.map_word, align 4
  %tmp44.sroa.0 = alloca [8 x i32], align 4
  %tmp89 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %5 to i64
  %shr = ashr i64 %to, %sh_prom
  %conv = trunc i64 %shr to i32
  %shl = shl i32 %conv, %5
  %6 = trunc i64 %to to i32
  %conv3 = sub i32 %6, %shl
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bankwidth, align 4
  %sub4 = add i32 %10, -1
  %and = and i32 %conv3, %sub4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then:                                          ; preds = %entry
  %neg = sub i32 0, %10
  %and7 = and i32 %conv3, %neg
  %sub8 = sub i32 %conv3, %and7
  %call = tail call fastcc i32 @cfi_amdstd_panic_wait(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %and7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end, label %if.then.cleanup106_crit_edge

if.then.cleanup106_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup106

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #14
  %read = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 4
  %add = add i32 %and7, %8
  call void %12(ptr nonnull sret(%union.map_word) align 4 %tmp, ptr noundef %1, i32 noundef %add) #14
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp_buf.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  %tmp_buf.sroa.7.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %14 = ptrtoint ptr %tmp_buf.sroa.7.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp_buf.sroa.7.0.copyload = load i32, ptr %tmp_buf.sroa.7.0.tmp.sroa_idx, align 4
  %tmp_buf.sroa.10.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %15 = ptrtoint ptr %tmp_buf.sroa.10.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp_buf.sroa.10.0.copyload = load i32, ptr %tmp_buf.sroa.10.0.tmp.sroa_idx, align 4
  %tmp_buf.sroa.13.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 12
  %16 = ptrtoint ptr %tmp_buf.sroa.13.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp_buf.sroa.13.0.copyload = load i32, ptr %tmp_buf.sroa.13.0.tmp.sroa_idx, align 4
  %tmp_buf.sroa.16.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 16
  %17 = ptrtoint ptr %tmp_buf.sroa.16.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp_buf.sroa.16.0.copyload = load i32, ptr %tmp_buf.sroa.16.0.tmp.sroa_idx, align 4
  %tmp_buf.sroa.19.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 20
  %18 = ptrtoint ptr %tmp_buf.sroa.19.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp_buf.sroa.19.0.copyload = load i32, ptr %tmp_buf.sroa.19.0.tmp.sroa_idx, align 4
  %tmp_buf.sroa.22.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 24
  %19 = ptrtoint ptr %tmp_buf.sroa.22.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp_buf.sroa.22.0.copyload = load i32, ptr %tmp_buf.sroa.22.0.tmp.sroa_idx, align 4
  %tmp_buf.sroa.25.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 28
  %20 = ptrtoint ptr %tmp_buf.sroa.25.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp_buf.sroa.25.0.copyload = load i32, ptr %tmp_buf.sroa.25.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #14
  %21 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bankwidth, align 4
  %sub14 = sub i32 %22, %sub8
  %23 = call i32 @llvm.smin.i32(i32 %sub14, i32 %len)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i)
  %24 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %tmp_buf.sroa.0.0.copyload, ptr %orig.i, align 4, !noalias !268
  %orig.coerce.fca.1.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 1
  %25 = ptrtoint ptr %orig.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %tmp_buf.sroa.7.0.copyload, ptr %orig.coerce.fca.1.gep.i, align 4, !noalias !268
  %orig.coerce.fca.2.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 2
  %26 = ptrtoint ptr %orig.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %tmp_buf.sroa.10.0.copyload, ptr %orig.coerce.fca.2.gep.i, align 4, !noalias !268
  %orig.coerce.fca.3.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 3
  %27 = ptrtoint ptr %orig.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %tmp_buf.sroa.13.0.copyload, ptr %orig.coerce.fca.3.gep.i, align 4, !noalias !268
  %orig.coerce.fca.4.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 4
  %28 = ptrtoint ptr %orig.coerce.fca.4.gep.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tmp_buf.sroa.16.0.copyload, ptr %orig.coerce.fca.4.gep.i, align 4, !noalias !268
  %orig.coerce.fca.5.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 5
  %29 = ptrtoint ptr %orig.coerce.fca.5.gep.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tmp_buf.sroa.19.0.copyload, ptr %orig.coerce.fca.5.gep.i, align 4, !noalias !268
  %orig.coerce.fca.6.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 6
  %30 = ptrtoint ptr %orig.coerce.fca.6.gep.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %tmp_buf.sroa.22.0.copyload, ptr %orig.coerce.fca.6.gep.i, align 4, !noalias !268
  %orig.coerce.fca.7.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 7
  %31 = ptrtoint ptr %orig.coerce.fca.7.gep.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %tmp_buf.sroa.25.0.copyload, ptr %orig.coerce.fca.7.gep.i, align 4, !noalias !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp.i = icmp sgt i32 %22, 4
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  %add.i = add i32 %23, %sub8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub8)
  %cmp119.i = icmp sgt i32 %add.i, %sub8
  br i1 %cmp119.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end.loopexit.i_crit_edge

for.cond.preheader.i.if.end.loopexit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %orig.i, i32 %sub8
  %32 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %23)
  br label %map_word_load_partial.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %sub8, %for.cond.preheader.i.for.body.i_crit_edge ]
  %or1820.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %tmp_buf.sroa.0.0.copyload, %for.cond.preheader.i.for.body.i_crit_edge ]
  %33 = xor i32 %i.021.i, -1
  %sub3.i = add i32 %22, %33
  %mul.i = shl i32 %sub3.i, 3
  %shl.i = shl i32 255, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %or1820.i, %neg.i
  %sub4.i = sub i32 %i.021.i, %sub8
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 %sub4.i
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx5.i, align 1, !noalias !268
  %conv.i = zext i8 %35 to i32
  %shl6.i = shl i32 %conv.i, %mul.i
  %or.i = or i32 %shl6.i, %and.i
  %inc.i = add nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i.if.end.loopexit.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.if.end.loopexit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i

if.end.loopexit.i:                                ; preds = %for.body.i.if.end.loopexit.i_crit_edge, %for.cond.preheader.i.if.end.loopexit.i_crit_edge
  %or18.lcssa.i = phi i32 [ %tmp_buf.sroa.0.0.copyload, %for.cond.preheader.i.if.end.loopexit.i_crit_edge ], [ %or.i, %for.body.i.if.end.loopexit.i_crit_edge ]
  %36 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or18.lcssa.i, ptr %orig.i, align 4, !noalias !268
  br label %map_word_load_partial.exit

map_word_load_partial.exit:                       ; preds = %if.end.loopexit.i, %if.then.i
  %37 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp17.sroa.0.0.copyload = load i32, ptr %orig.i, align 4
  %38 = ptrtoint ptr %orig.coerce.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp17.sroa.4.0.copyload = load i32, ptr %orig.coerce.fca.1.gep.i, align 4
  %39 = ptrtoint ptr %orig.coerce.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %tmp17.sroa.5.0.copyload = load i32, ptr %orig.coerce.fca.2.gep.i, align 4
  %40 = ptrtoint ptr %orig.coerce.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %tmp17.sroa.6.0.copyload = load i32, ptr %orig.coerce.fca.3.gep.i, align 4
  %41 = ptrtoint ptr %orig.coerce.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %tmp17.sroa.7.0.copyload = load i32, ptr %orig.coerce.fca.4.gep.i, align 4
  %42 = ptrtoint ptr %orig.coerce.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp17.sroa.8.0.copyload = load i32, ptr %orig.coerce.fca.5.gep.i, align 4
  %43 = ptrtoint ptr %orig.coerce.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %tmp17.sroa.9.0.copyload = load i32, ptr %orig.coerce.fca.6.gep.i, align 4
  %44 = ptrtoint ptr %orig.coerce.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %tmp17.sroa.10.0.copyload = load i32, ptr %orig.coerce.fca.7.gep.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i)
  %.fca.0.insert170 = insertvalue [8 x i32] poison, i32 %tmp17.sroa.0.0.copyload, 0
  %.fca.1.insert173 = insertvalue [8 x i32] %.fca.0.insert170, i32 %tmp17.sroa.4.0.copyload, 1
  %.fca.2.insert176 = insertvalue [8 x i32] %.fca.1.insert173, i32 %tmp17.sroa.5.0.copyload, 2
  %.fca.3.insert179 = insertvalue [8 x i32] %.fca.2.insert176, i32 %tmp17.sroa.6.0.copyload, 3
  %.fca.4.insert182 = insertvalue [8 x i32] %.fca.3.insert179, i32 %tmp17.sroa.7.0.copyload, 4
  %.fca.5.insert185 = insertvalue [8 x i32] %.fca.4.insert182, i32 %tmp17.sroa.8.0.copyload, 5
  %.fca.6.insert188 = insertvalue [8 x i32] %.fca.5.insert185, i32 %tmp17.sroa.9.0.copyload, 6
  %.fca.7.insert191 = insertvalue [8 x i32] %.fca.6.insert188, i32 %tmp17.sroa.10.0.copyload, 7
  %call21 = call fastcc i32 @do_panic_write_oneword(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %and7, [8 x i32] %.fca.7.insert191)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %map_word_load_partial.exit.cleanup106_crit_edge

map_word_load_partial.exit.cleanup106_crit_edge:  ; preds = %map_word_load_partial.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup106

if.end24:                                         ; preds = %map_word_load_partial.exit
  %add25 = add i32 %23, %conv3
  %add.ptr = getelementptr i8, ptr %buf, i32 %23
  %45 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %retlen, align 4
  %add26 = add i32 %46, %23
  store i32 %add26, ptr %retlen, align 4
  %sub27 = sub i32 %len, %23
  %47 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chipshift, align 4
  %shr29 = lshr i32 %add25, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr29)
  %tobool30.not = icmp eq i32 %shr29, 0
  br i1 %tobool30.not, label %if.end24.if.end40_crit_edge, label %if.then31

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then31:                                        ; preds = %if.end24
  %inc = add i32 %conv, 1
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %49 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %50)
  %cmp32 = icmp eq i32 %inc, %50
  br i1 %cmp32, label %if.then31.cleanup106_crit_edge, label %if.then31.if.end40_crit_edge

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then31.cleanup106_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup106

if.end40:                                         ; preds = %if.then31.if.end40_crit_edge, %if.end24.if.end40_crit_edge, %entry.if.end40_crit_edge
  %chipnum.2 = phi i32 [ %conv, %entry.if.end40_crit_edge ], [ %inc, %if.then31.if.end40_crit_edge ], [ %conv, %if.end24.if.end40_crit_edge ]
  %ofs.2 = phi i32 [ %conv3, %entry.if.end40_crit_edge ], [ 0, %if.then31.if.end40_crit_edge ], [ %add25, %if.end24.if.end40_crit_edge ]
  %buf.addr.1 = phi ptr [ %buf, %entry.if.end40_crit_edge ], [ %add.ptr, %if.then31.if.end40_crit_edge ], [ %add.ptr, %if.end24.if.end40_crit_edge ]
  %len.addr.1 = phi i32 [ %len, %entry.if.end40_crit_edge ], [ %sub27, %if.then31.if.end40_crit_edge ], [ %sub27, %if.end24.if.end40_crit_edge ]
  %51 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bankwidth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.1, i32 %52)
  %cmp42.not371 = icmp ult i32 %len.addr.1, %52
  br i1 %cmp42.not371, label %if.end40.while.end_crit_edge, label %while.body.lr.ph

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end40
  %numchips65 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %tmp44.sroa.0.4.tmp44.sroa_idx = getelementptr inbounds i8, ptr %tmp44.sroa.0, i32 4
  %tmp44.sroa.0.8.tmp44.sroa_idx = getelementptr inbounds i8, ptr %tmp44.sroa.0, i32 8
  %tmp44.sroa.0.12.tmp44.sroa_idx = getelementptr inbounds i8, ptr %tmp44.sroa.0, i32 12
  %tmp44.sroa.0.16.tmp44.sroa_idx = getelementptr inbounds i8, ptr %tmp44.sroa.0, i32 16
  %tmp44.sroa.0.20.tmp44.sroa_idx = getelementptr inbounds i8, ptr %tmp44.sroa.0, i32 20
  %tmp44.sroa.0.24.tmp44.sroa_idx = getelementptr inbounds i8, ptr %tmp44.sroa.0, i32 24
  %tmp44.sroa.0.28.tmp44.sroa_idx = getelementptr inbounds i8, ptr %tmp44.sroa.0, i32 28
  br label %while.body

while.body:                                       ; preds = %cleanup74.while.body_crit_edge, %while.body.lr.ph
  %53 = phi i32 [ %52, %while.body.lr.ph ], [ %86, %cleanup74.while.body_crit_edge ]
  %len.addr.2377 = phi i32 [ %len.addr.1, %while.body.lr.ph ], [ %sub59, %cleanup74.while.body_crit_edge ]
  %buf.addr.2375 = phi ptr [ %buf.addr.1, %while.body.lr.ph ], [ %add.ptr55, %cleanup74.while.body_crit_edge ]
  %ofs.3374 = phi i32 [ %ofs.2, %while.body.lr.ph ], [ %ofs.5, %cleanup74.while.body_crit_edge ]
  %chipstart.0373 = phi i32 [ %8, %while.body.lr.ph ], [ %chipstart.2, %cleanup74.while.body_crit_edge ]
  %chipnum.3372 = phi i32 [ %chipnum.2, %while.body.lr.ph ], [ %chipnum.5, %cleanup74.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp44.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %54 = call ptr @memset(ptr %tmp44.sroa.0, i32 255, i32 32)
  %55 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %53, label %if.else16.i [
    i32 1, label %if.then.i289
    i32 2, label %if.then4.i
    i32 4, label %if.then11.i
  ]

if.then.i289:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %buf.addr.2375 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %buf.addr.2375, align 1, !noalias !271
  %conv.i288 = zext i8 %57 to i32
  %58 = ptrtoint ptr %tmp44.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.i288, ptr %tmp44.sroa.0, align 4, !alias.scope !271
  br label %map_word_load.exit

if.then4.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %buf.addr.2375 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %buf.addr.2375, align 1, !noalias !271
  %conv5.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %tmp44.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv5.i, ptr %tmp44.sroa.0, align 4, !alias.scope !271
  br label %map_word_load.exit

if.then11.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %buf.addr.2375 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %buf.addr.2375, align 1, !noalias !271
  %64 = ptrtoint ptr %tmp44.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %tmp44.sroa.0, align 4, !alias.scope !271
  br label %map_word_load.exit

if.else16.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp18.i = icmp sgt i32 %53, 4
  br i1 %cmp18.i, label %if.then20.i, label %do.body.i

if.then20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #16
  %65 = call ptr @memcpy(ptr %tmp44.sroa.0, ptr %buf.addr.2375, i32 %53)
  br label %map_word_load.exit

do.body.i:                                        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #14, !noalias !271, !srcloc !261
  unreachable

map_word_load.exit:                               ; preds = %if.then20.i, %if.then11.i, %if.then4.i, %if.then.i289
  %66 = ptrtoint ptr %tmp44.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %tmp44.sroa.0.0.tmp44.sroa.0.0.tmp44.sroa.0.0.datum.sroa.0.0.copyload = load i32, ptr %tmp44.sroa.0, align 4
  %67 = ptrtoint ptr %tmp44.sroa.0.4.tmp44.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %67)
  %tmp44.sroa.0.4.tmp44.sroa.0.4.tmp44.sroa.0.4.datum.sroa.5.0.copyload = load i32, ptr %tmp44.sroa.0.4.tmp44.sroa_idx, align 4
  %68 = ptrtoint ptr %tmp44.sroa.0.8.tmp44.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %68)
  %tmp44.sroa.0.8.tmp44.sroa.0.8.tmp44.sroa.0.8.datum.sroa.7.0.copyload = load i32, ptr %tmp44.sroa.0.8.tmp44.sroa_idx, align 4
  %69 = ptrtoint ptr %tmp44.sroa.0.12.tmp44.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %69)
  %tmp44.sroa.0.12.tmp44.sroa.0.12.tmp44.sroa.0.12.datum.sroa.9.0.copyload = load i32, ptr %tmp44.sroa.0.12.tmp44.sroa_idx, align 4
  %70 = ptrtoint ptr %tmp44.sroa.0.16.tmp44.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %70)
  %tmp44.sroa.0.16.tmp44.sroa.0.16.tmp44.sroa.0.16.datum.sroa.11.0.copyload = load i32, ptr %tmp44.sroa.0.16.tmp44.sroa_idx, align 4
  %71 = ptrtoint ptr %tmp44.sroa.0.20.tmp44.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %tmp44.sroa.0.20.tmp44.sroa.0.20.tmp44.sroa.0.20.datum.sroa.13.0.copyload = load i32, ptr %tmp44.sroa.0.20.tmp44.sroa_idx, align 4
  %72 = ptrtoint ptr %tmp44.sroa.0.24.tmp44.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %tmp44.sroa.0.24.tmp44.sroa.0.24.tmp44.sroa.0.24.datum.sroa.15.0.copyload = load i32, ptr %tmp44.sroa.0.24.tmp44.sroa_idx, align 4
  %73 = ptrtoint ptr %tmp44.sroa.0.28.tmp44.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %73)
  %tmp44.sroa.0.28.tmp44.sroa.0.28.tmp44.sroa.0.28.datum.sroa.17.0.copyload = load i32, ptr %tmp44.sroa.0.28.tmp44.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp44.sroa.0)
  %arrayidx46 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3372
  %.fca.0.insert148 = insertvalue [8 x i32] poison, i32 %tmp44.sroa.0.0.tmp44.sroa.0.0.tmp44.sroa.0.0.datum.sroa.0.0.copyload, 0
  %.fca.1.insert149 = insertvalue [8 x i32] %.fca.0.insert148, i32 %tmp44.sroa.0.4.tmp44.sroa.0.4.tmp44.sroa.0.4.datum.sroa.5.0.copyload, 1
  %.fca.2.insert150 = insertvalue [8 x i32] %.fca.1.insert149, i32 %tmp44.sroa.0.8.tmp44.sroa.0.8.tmp44.sroa.0.8.datum.sroa.7.0.copyload, 2
  %.fca.3.insert151 = insertvalue [8 x i32] %.fca.2.insert150, i32 %tmp44.sroa.0.12.tmp44.sroa.0.12.tmp44.sroa.0.12.datum.sroa.9.0.copyload, 3
  %.fca.4.insert152 = insertvalue [8 x i32] %.fca.3.insert151, i32 %tmp44.sroa.0.16.tmp44.sroa.0.16.tmp44.sroa.0.16.datum.sroa.11.0.copyload, 4
  %.fca.5.insert153 = insertvalue [8 x i32] %.fca.4.insert152, i32 %tmp44.sroa.0.20.tmp44.sroa.0.20.tmp44.sroa.0.20.datum.sroa.13.0.copyload, 5
  %.fca.6.insert154 = insertvalue [8 x i32] %.fca.5.insert153, i32 %tmp44.sroa.0.24.tmp44.sroa.0.24.tmp44.sroa.0.24.datum.sroa.15.0.copyload, 6
  %.fca.7.insert155 = insertvalue [8 x i32] %.fca.6.insert154, i32 %tmp44.sroa.0.28.tmp44.sroa.0.28.tmp44.sroa.0.28.datum.sroa.17.0.copyload, 7
  %call48 = call fastcc i32 @do_panic_write_oneword(ptr noundef %1, ptr noundef %arrayidx46, i32 noundef %ofs.3374, [8 x i32] %.fca.7.insert155)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %map_word_load.exit.cleanup106_crit_edge

map_word_load.exit.cleanup106_crit_edge:          ; preds = %map_word_load.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup106

if.end51:                                         ; preds = %map_word_load.exit
  %74 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bankwidth, align 4
  %add53 = add i32 %75, %ofs.3374
  %add.ptr55 = getelementptr i8, ptr %buf.addr.2375, i32 %75
  %76 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %retlen, align 4
  %add57 = add i32 %77, %75
  store i32 %add57, ptr %retlen, align 4
  %78 = load i32, ptr %bankwidth, align 4
  %sub59 = sub i32 %len.addr.2377, %78
  %79 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chipshift, align 4
  %shr61 = lshr i32 %add53, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr61)
  %tobool62.not = icmp eq i32 %shr61, 0
  br i1 %tobool62.not, label %if.end51.cleanup74_crit_edge, label %if.then63

if.end51.cleanup74_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

if.then63:                                        ; preds = %if.end51
  %inc64 = add i32 %chipnum.3372, 1
  %81 = ptrtoint ptr %numchips65 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %numchips65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc64, i32 %82)
  %cmp66 = icmp eq i32 %inc64, %82
  br i1 %cmp66, label %if.then63.cleanup106_crit_edge, label %if.end69

if.then63.cleanup106_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup106

if.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx71 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %inc64
  %83 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx71, align 4
  br label %cleanup74

cleanup74:                                        ; preds = %if.end69, %if.end51.cleanup74_crit_edge
  %chipnum.5 = phi i32 [ %inc64, %if.end69 ], [ %chipnum.3372, %if.end51.cleanup74_crit_edge ]
  %chipstart.2 = phi i32 [ %84, %if.end69 ], [ %chipstart.0373, %if.end51.cleanup74_crit_edge ]
  %ofs.5 = phi i32 [ 0, %if.end69 ], [ %add53, %if.end51.cleanup74_crit_edge ]
  %85 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bankwidth, align 4
  %cmp42.not = icmp ult i32 %sub59, %86
  br i1 %cmp42.not, label %cleanup74.while.end_crit_edge, label %cleanup74.while.body_crit_edge

cleanup74.while.body_crit_edge:                   ; preds = %cleanup74
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup74.while.end_crit_edge:                    ; preds = %cleanup74
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup74.while.end_crit_edge, %if.end40.while.end_crit_edge
  %chipnum.3.lcssa = phi i32 [ %chipnum.2, %if.end40.while.end_crit_edge ], [ %chipnum.5, %cleanup74.while.end_crit_edge ]
  %chipstart.0.lcssa = phi i32 [ %8, %if.end40.while.end_crit_edge ], [ %chipstart.2, %cleanup74.while.end_crit_edge ]
  %ofs.3.lcssa = phi i32 [ %ofs.2, %if.end40.while.end_crit_edge ], [ %ofs.5, %cleanup74.while.end_crit_edge ]
  %buf.addr.2.lcssa = phi ptr [ %buf.addr.1, %if.end40.while.end_crit_edge ], [ %add.ptr55, %cleanup74.while.end_crit_edge ]
  %len.addr.2.lcssa = phi i32 [ %len.addr.1, %if.end40.while.end_crit_edge ], [ %sub59, %cleanup74.while.end_crit_edge ]
  %.lcssa = phi i32 [ %52, %if.end40.while.end_crit_edge ], [ %86, %cleanup74.while.end_crit_edge ]
  %sub78 = add i32 %.lcssa, -1
  %and79 = and i32 %sub78, %len.addr.2.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %while.end.cleanup106_crit_edge, label %if.then81

while.end.cleanup106_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup106

if.then81:                                        ; preds = %while.end
  %arrayidx84 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3.lcssa
  %call85 = call fastcc i32 @cfi_amdstd_panic_wait(ptr noundef %1, ptr noundef %arrayidx84, i32 noundef %ofs.3.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.then81.cleanup106_crit_edge

if.then81.cleanup106_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup106

if.end88:                                         ; preds = %if.then81
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp89) #14
  %read90 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 7
  %87 = ptrtoint ptr %read90 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read90, align 4
  %add91 = add i32 %ofs.3.lcssa, %chipstart.0.lcssa
  call void %88(ptr nonnull sret(%union.map_word) align 4 %tmp89, ptr noundef %1, i32 noundef %add91) #14
  %89 = ptrtoint ptr %tmp89 to i32
  call void @__asan_load4_noabort(i32 %89)
  %tmp_buf82.sroa.0.0.copyload = load i32, ptr %tmp89, align 4
  %tmp_buf82.sroa.7.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 4
  %90 = ptrtoint ptr %tmp_buf82.sroa.7.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %tmp_buf82.sroa.7.0.copyload = load i32, ptr %tmp_buf82.sroa.7.0.tmp89.sroa_idx, align 4
  %tmp_buf82.sroa.10.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 8
  %91 = ptrtoint ptr %tmp_buf82.sroa.10.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %tmp_buf82.sroa.10.0.copyload = load i32, ptr %tmp_buf82.sroa.10.0.tmp89.sroa_idx, align 4
  %tmp_buf82.sroa.13.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 12
  %92 = ptrtoint ptr %tmp_buf82.sroa.13.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %92)
  %tmp_buf82.sroa.13.0.copyload = load i32, ptr %tmp_buf82.sroa.13.0.tmp89.sroa_idx, align 4
  %tmp_buf82.sroa.16.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 16
  %93 = ptrtoint ptr %tmp_buf82.sroa.16.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %93)
  %tmp_buf82.sroa.16.0.copyload = load i32, ptr %tmp_buf82.sroa.16.0.tmp89.sroa_idx, align 4
  %tmp_buf82.sroa.19.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 20
  %94 = ptrtoint ptr %tmp_buf82.sroa.19.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %94)
  %tmp_buf82.sroa.19.0.copyload = load i32, ptr %tmp_buf82.sroa.19.0.tmp89.sroa_idx, align 4
  %tmp_buf82.sroa.22.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 24
  %95 = ptrtoint ptr %tmp_buf82.sroa.22.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %95)
  %tmp_buf82.sroa.22.0.copyload = load i32, ptr %tmp_buf82.sroa.22.0.tmp89.sroa_idx, align 4
  %tmp_buf82.sroa.25.0.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89, i32 28
  %96 = ptrtoint ptr %tmp_buf82.sroa.25.0.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %96)
  %tmp_buf82.sroa.25.0.copyload = load i32, ptr %tmp_buf82.sroa.25.0.tmp89.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp89) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i290.sroa.0)
  %97 = ptrtoint ptr %orig.i290.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %tmp_buf82.sroa.0.0.copyload, ptr %orig.i290.sroa.0, align 4, !noalias !274
  %orig.i290.sroa.0.4.orig.coerce.fca.1.gep.i291.sroa_idx = getelementptr inbounds i8, ptr %orig.i290.sroa.0, i32 4
  %98 = ptrtoint ptr %orig.i290.sroa.0.4.orig.coerce.fca.1.gep.i291.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %tmp_buf82.sroa.7.0.copyload, ptr %orig.i290.sroa.0.4.orig.coerce.fca.1.gep.i291.sroa_idx, align 4, !noalias !274
  %orig.i290.sroa.0.8.orig.coerce.fca.2.gep.i292.sroa_idx = getelementptr inbounds i8, ptr %orig.i290.sroa.0, i32 8
  %99 = ptrtoint ptr %orig.i290.sroa.0.8.orig.coerce.fca.2.gep.i292.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %tmp_buf82.sroa.10.0.copyload, ptr %orig.i290.sroa.0.8.orig.coerce.fca.2.gep.i292.sroa_idx, align 4, !noalias !274
  %orig.i290.sroa.0.12.orig.coerce.fca.3.gep.i293.sroa_idx = getelementptr inbounds i8, ptr %orig.i290.sroa.0, i32 12
  %100 = ptrtoint ptr %orig.i290.sroa.0.12.orig.coerce.fca.3.gep.i293.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %tmp_buf82.sroa.13.0.copyload, ptr %orig.i290.sroa.0.12.orig.coerce.fca.3.gep.i293.sroa_idx, align 4, !noalias !274
  %orig.i290.sroa.0.16.orig.coerce.fca.4.gep.i294.sroa_idx = getelementptr inbounds i8, ptr %orig.i290.sroa.0, i32 16
  %101 = ptrtoint ptr %orig.i290.sroa.0.16.orig.coerce.fca.4.gep.i294.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %tmp_buf82.sroa.16.0.copyload, ptr %orig.i290.sroa.0.16.orig.coerce.fca.4.gep.i294.sroa_idx, align 4, !noalias !274
  %orig.i290.sroa.0.20.orig.coerce.fca.5.gep.i295.sroa_idx = getelementptr inbounds i8, ptr %orig.i290.sroa.0, i32 20
  %102 = ptrtoint ptr %orig.i290.sroa.0.20.orig.coerce.fca.5.gep.i295.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %tmp_buf82.sroa.19.0.copyload, ptr %orig.i290.sroa.0.20.orig.coerce.fca.5.gep.i295.sroa_idx, align 4, !noalias !274
  %orig.i290.sroa.0.24.orig.coerce.fca.6.gep.i296.sroa_idx = getelementptr inbounds i8, ptr %orig.i290.sroa.0, i32 24
  %103 = ptrtoint ptr %orig.i290.sroa.0.24.orig.coerce.fca.6.gep.i296.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %tmp_buf82.sroa.22.0.copyload, ptr %orig.i290.sroa.0.24.orig.coerce.fca.6.gep.i296.sroa_idx, align 4, !noalias !274
  %orig.i290.sroa.0.28.orig.coerce.fca.7.gep.i297.sroa_idx = getelementptr inbounds i8, ptr %orig.i290.sroa.0, i32 28
  %104 = ptrtoint ptr %orig.i290.sroa.0.28.orig.coerce.fca.7.gep.i297.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %tmp_buf82.sroa.25.0.copyload, ptr %orig.i290.sroa.0.28.orig.coerce.fca.7.gep.i297.sroa_idx, align 4, !noalias !274
  %105 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bankwidth, align 4, !noalias !274
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp.i299 = icmp sgt i32 %106, 4
  br i1 %cmp.i299, label %if.then.i303, label %for.cond.preheader.i302

for.cond.preheader.i302:                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2.lcssa)
  %cmp119.i301 = icmp sgt i32 %len.addr.2.lcssa, 0
  br i1 %cmp119.i301, label %for.cond.preheader.i302.for.body.i317_crit_edge, label %for.cond.preheader.i302.if.end.loopexit.i319_crit_edge

for.cond.preheader.i302.if.end.loopexit.i319_crit_edge: ; preds = %for.cond.preheader.i302
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i319

for.cond.preheader.i302.for.body.i317_crit_edge:  ; preds = %for.cond.preheader.i302
  br label %for.body.i317

if.then.i303:                                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  %107 = call ptr @memcpy(ptr %orig.i290.sroa.0, ptr %buf.addr.2.lcssa, i32 %len.addr.2.lcssa)
  br label %map_word_load_partial.exit320

for.body.i317:                                    ; preds = %for.body.i317.for.body.i317_crit_edge, %for.cond.preheader.i302.for.body.i317_crit_edge
  %i.021.i304 = phi i32 [ %inc.i315, %for.body.i317.for.body.i317_crit_edge ], [ 0, %for.cond.preheader.i302.for.body.i317_crit_edge ]
  %or1820.i305 = phi i32 [ %or.i314, %for.body.i317.for.body.i317_crit_edge ], [ %tmp_buf82.sroa.0.0.copyload, %for.cond.preheader.i302.for.body.i317_crit_edge ]
  %108 = xor i32 %i.021.i304, -1
  %sub3.i306 = add i32 %106, %108
  %mul.i307 = shl i32 %sub3.i306, 3
  %shl.i308 = shl i32 255, %mul.i307
  %neg.i309 = xor i32 %shl.i308, -1
  %and.i310 = and i32 %or1820.i305, %neg.i309
  %arrayidx5.i311 = getelementptr i8, ptr %buf.addr.2.lcssa, i32 %i.021.i304
  %109 = ptrtoint ptr %arrayidx5.i311 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx5.i311, align 1, !noalias !274
  %conv.i312 = zext i8 %110 to i32
  %shl6.i313 = shl i32 %conv.i312, %mul.i307
  %or.i314 = or i32 %shl6.i313, %and.i310
  %inc.i315 = add nuw nsw i32 %i.021.i304, 1
  %exitcond.not.i316 = icmp eq i32 %inc.i315, %len.addr.2.lcssa
  br i1 %exitcond.not.i316, label %for.body.i317.if.end.loopexit.i319_crit_edge, label %for.body.i317.for.body.i317_crit_edge

for.body.i317.for.body.i317_crit_edge:            ; preds = %for.body.i317
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i317

for.body.i317.if.end.loopexit.i319_crit_edge:     ; preds = %for.body.i317
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i319

if.end.loopexit.i319:                             ; preds = %for.body.i317.if.end.loopexit.i319_crit_edge, %for.cond.preheader.i302.if.end.loopexit.i319_crit_edge
  %or18.lcssa.i318 = phi i32 [ %tmp_buf82.sroa.0.0.copyload, %for.cond.preheader.i302.if.end.loopexit.i319_crit_edge ], [ %or.i314, %for.body.i317.if.end.loopexit.i319_crit_edge ]
  %111 = ptrtoint ptr %orig.i290.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or18.lcssa.i318, ptr %orig.i290.sroa.0, align 4, !noalias !274
  br label %map_word_load_partial.exit320

map_word_load_partial.exit320:                    ; preds = %if.end.loopexit.i319, %if.then.i303
  %112 = ptrtoint ptr %orig.i290.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %orig.i290.sroa.0.0.orig.i290.sroa.0.0.orig.i290.sroa.0.0.tmp92.sroa.0.0.copyload = load i32, ptr %orig.i290.sroa.0, align 4
  %113 = ptrtoint ptr %orig.i290.sroa.0.4.orig.coerce.fca.1.gep.i291.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %113)
  %orig.i290.sroa.0.4.orig.i290.sroa.0.4.orig.i290.sroa.0.4.tmp92.sroa.4.0.copyload = load i32, ptr %orig.i290.sroa.0.4.orig.coerce.fca.1.gep.i291.sroa_idx, align 4
  %114 = ptrtoint ptr %orig.i290.sroa.0.8.orig.coerce.fca.2.gep.i292.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %114)
  %orig.i290.sroa.0.8.orig.i290.sroa.0.8.orig.i290.sroa.0.8.tmp92.sroa.5.0.copyload = load i32, ptr %orig.i290.sroa.0.8.orig.coerce.fca.2.gep.i292.sroa_idx, align 4
  %115 = ptrtoint ptr %orig.i290.sroa.0.12.orig.coerce.fca.3.gep.i293.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %115)
  %orig.i290.sroa.0.12.orig.i290.sroa.0.12.orig.i290.sroa.0.12.tmp92.sroa.6.0.copyload = load i32, ptr %orig.i290.sroa.0.12.orig.coerce.fca.3.gep.i293.sroa_idx, align 4
  %116 = ptrtoint ptr %orig.i290.sroa.0.16.orig.coerce.fca.4.gep.i294.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %116)
  %orig.i290.sroa.0.16.orig.i290.sroa.0.16.orig.i290.sroa.0.16.tmp92.sroa.7.0.copyload = load i32, ptr %orig.i290.sroa.0.16.orig.coerce.fca.4.gep.i294.sroa_idx, align 4
  %117 = ptrtoint ptr %orig.i290.sroa.0.20.orig.coerce.fca.5.gep.i295.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %117)
  %orig.i290.sroa.0.20.orig.i290.sroa.0.20.orig.i290.sroa.0.20.tmp92.sroa.8.0.copyload = load i32, ptr %orig.i290.sroa.0.20.orig.coerce.fca.5.gep.i295.sroa_idx, align 4
  %118 = ptrtoint ptr %orig.i290.sroa.0.24.orig.coerce.fca.6.gep.i296.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %118)
  %orig.i290.sroa.0.24.orig.i290.sroa.0.24.orig.i290.sroa.0.24.tmp92.sroa.9.0.copyload = load i32, ptr %orig.i290.sroa.0.24.orig.coerce.fca.6.gep.i296.sroa_idx, align 4
  %119 = ptrtoint ptr %orig.i290.sroa.0.28.orig.coerce.fca.7.gep.i297.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %119)
  %orig.i290.sroa.0.28.orig.i290.sroa.0.28.orig.i290.sroa.0.28.tmp92.sroa.10.0.copyload = load i32, ptr %orig.i290.sroa.0.28.orig.coerce.fca.7.gep.i297.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i290.sroa.0)
  %.fca.0.insert117 = insertvalue [8 x i32] poison, i32 %orig.i290.sroa.0.0.orig.i290.sroa.0.0.orig.i290.sroa.0.0.tmp92.sroa.0.0.copyload, 0
  %.fca.1.insert120 = insertvalue [8 x i32] %.fca.0.insert117, i32 %orig.i290.sroa.0.4.orig.i290.sroa.0.4.orig.i290.sroa.0.4.tmp92.sroa.4.0.copyload, 1
  %.fca.2.insert123 = insertvalue [8 x i32] %.fca.1.insert120, i32 %orig.i290.sroa.0.8.orig.i290.sroa.0.8.orig.i290.sroa.0.8.tmp92.sroa.5.0.copyload, 2
  %.fca.3.insert126 = insertvalue [8 x i32] %.fca.2.insert123, i32 %orig.i290.sroa.0.12.orig.i290.sroa.0.12.orig.i290.sroa.0.12.tmp92.sroa.6.0.copyload, 3
  %.fca.4.insert129 = insertvalue [8 x i32] %.fca.3.insert126, i32 %orig.i290.sroa.0.16.orig.i290.sroa.0.16.orig.i290.sroa.0.16.tmp92.sroa.7.0.copyload, 4
  %.fca.5.insert132 = insertvalue [8 x i32] %.fca.4.insert129, i32 %orig.i290.sroa.0.20.orig.i290.sroa.0.20.orig.i290.sroa.0.20.tmp92.sroa.8.0.copyload, 5
  %.fca.6.insert135 = insertvalue [8 x i32] %.fca.5.insert132, i32 %orig.i290.sroa.0.24.orig.i290.sroa.0.24.orig.i290.sroa.0.24.tmp92.sroa.9.0.copyload, 6
  %.fca.7.insert138 = insertvalue [8 x i32] %.fca.6.insert135, i32 %orig.i290.sroa.0.28.orig.i290.sroa.0.28.orig.i290.sroa.0.28.tmp92.sroa.10.0.copyload, 7
  %call97 = call fastcc i32 @do_panic_write_oneword(ptr noundef %1, ptr noundef %arrayidx84, i32 noundef %ofs.3.lcssa, [8 x i32] %.fca.7.insert138)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %cleanup102, label %map_word_load_partial.exit320.cleanup106_crit_edge

map_word_load_partial.exit320.cleanup106_crit_edge: ; preds = %map_word_load_partial.exit320
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup106

cleanup102:                                       ; preds = %map_word_load_partial.exit320
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %retlen, align 4
  %add101 = add i32 %121, %len.addr.2.lcssa
  store i32 %add101, ptr %retlen, align 4
  br label %cleanup106

cleanup106:                                       ; preds = %cleanup102, %map_word_load_partial.exit320.cleanup106_crit_edge, %if.then81.cleanup106_crit_edge, %while.end.cleanup106_crit_edge, %if.then63.cleanup106_crit_edge, %map_word_load.exit.cleanup106_crit_edge, %if.then31.cleanup106_crit_edge, %map_word_load_partial.exit.cleanup106_crit_edge, %if.then.cleanup106_crit_edge
  %retval.5 = phi i32 [ 0, %cleanup102 ], [ 0, %while.end.cleanup106_crit_edge ], [ 0, %if.then31.cleanup106_crit_edge ], [ %call21, %map_word_load_partial.exit.cleanup106_crit_edge ], [ %call, %if.then.cleanup106_crit_edge ], [ %call97, %map_word_load_partial.exit320.cleanup106_crit_edge ], [ %call85, %if.then81.cleanup106_crit_edge ], [ %call48, %map_word_load.exit.cleanup106_crit_edge ], [ 0, %if.then63.cleanup106_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_reboot(ptr nocapture noundef readonly %nb, i32 noundef %val, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -208
  tail call fastcc void @cfi_amdstd_reset(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfi_read_pri(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cfi_fixup_major_minor(ptr nocapture noundef readonly %cfi, ptr nocapture noundef %extp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mfr = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 9
  %0 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 236, i32 %1)
  %cmp = icmp eq i32 %1, 236
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then:                                          ; preds = %entry
  %MajorVersion = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %extp, i32 0, i32 1
  %2 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %MajorVersion, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %3, label %if.then.if.end19thread-pre-split_crit_edge [
    i8 48, label %land.lhs.true
    i8 51, label %land.lhs.true10
  ]

if.then.if.end19thread-pre-split_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19thread-pre-split

land.lhs.true:                                    ; preds = %if.then
  %MinorVersion = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %extp, i32 0, i32 2
  %5 = ptrtoint ptr %MinorVersion to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %MinorVersion, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %6)
  %cmp4 = icmp eq i8 %6, 48
  br i1 %cmp4, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.if.end19thread-pre-split_crit_edge

land.lhs.true.if.end19thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19thread-pre-split

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true10:                                  ; preds = %if.then
  %MinorVersion11 = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %extp, i32 0, i32 2
  %7 = ptrtoint ptr %MinorVersion11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %MinorVersion11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %8)
  %cmp13 = icmp eq i8 %8, 51
  br i1 %cmp13, label %land.lhs.true10.do.end_crit_edge, label %land.lhs.true10.if.end19thread-pre-split_crit_edge

land.lhs.true10.if.end19thread-pre-split_crit_edge: ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19thread-pre-split

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %MinorVersion16 = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %extp, i32 0, i32 2
  %9 = ptrtoint ptr %MinorVersion16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %MinorVersion16, align 1
  %conv17 = zext i8 %10 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv17) #18
  %11 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 49, ptr %MajorVersion, align 1
  br label %if.end19thread-pre-split

if.end19thread-pre-split:                         ; preds = %do.end, %land.lhs.true10.if.end19thread-pre-split_crit_edge, %land.lhs.true.if.end19thread-pre-split_crit_edge, %if.then.if.end19thread-pre-split_crit_edge
  %12 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %mfr, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %entry.if.end19_crit_edge
  %13 = phi i32 [ %.pr, %if.end19thread-pre-split ], [ %1, %entry.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %13)
  %cmp21 = icmp eq i32 %13, 191
  br i1 %cmp21, label %land.lhs.true23, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true23:                                  ; preds = %if.end19
  %id = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 10
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %shr.mask = and i32 %15, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 21344, i32 %shr.mask)
  %cmp24 = icmp eq i32 %shr.mask, 21344
  br i1 %cmp24, label %if.then26, label %land.lhs.true23.if.end29_crit_edge

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  %MajorVersion27 = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %extp, i32 0, i32 1
  %16 = ptrtoint ptr %MajorVersion27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 49, ptr %MajorVersion27, align 1
  %MinorVersion28 = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %extp, i32 0, i32 2
  %17 = ptrtoint ptr %MinorVersion28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 48, ptr %MinorVersion28, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true23.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_fixup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_ppb_lock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %call = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_ppb_xxlock, i64 noundef %ofs, i32 noundef %conv, ptr noundef nonnull inttoptr (i32 1 to ptr)) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_ppb_unlock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %0 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eraseregions, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fldrv_priv, align 4
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %6 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp162 = icmp sgt i32 %7, 0
  br i1 %cmp162, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %max_sectors.0164 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0163 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %numblocks = getelementptr %struct.mtd_erase_region_info, ptr %1, i32 %i.0163, i32 2
  %8 = ptrtoint ptr %numblocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numblocks, align 4
  %add = add i32 %9, %max_sectors.0164
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %max_sectors.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_sectors.0.lcssa, i32 12) #14
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %for.end.cleanup72_crit_edge, label %if.end7.i.i, !prof !253

for.end.cleanup72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup72

if.end7.i.i:                                      ; preds = %for.end
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #19
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup72_crit_edge, label %if.end

if.end7.i.i.cleanup72_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup72

if.end:                                           ; preds = %if.end7.i.i
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size, align 8
  %add5 = add i64 %len, %ofs
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 13
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 11
  %smax = call i32 @llvm.smax.i32(i32 %max_sectors.0.lcssa, i32 1)
  br label %while.cond

while.cond:                                       ; preds = %if.end43.while.cond_crit_edge, %if.end
  %adr.0 = phi i32 [ 0, %if.end ], [ %adr.1, %if.end43.while.cond_crit_edge ]
  %offset.0 = phi i64 [ 0, %if.end ], [ %add18, %if.end43.while.cond_crit_edge ]
  %length.0 = phi i64 [ %14, %if.end ], [ %sub, %if.end43.while.cond_crit_edge ]
  %chipnum.0 = phi i32 [ 0, %if.end ], [ %chipnum.1, %if.end43.while.cond_crit_edge ]
  %i.1 = phi i32 [ 0, %if.end ], [ %spec.select, %if.end43.while.cond_crit_edge ]
  %sectors.0 = phi i32 [ 0, %if.end ], [ %inc44, %if.end43.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length.0)
  %tobool1.not = icmp eq i64 %length.0, 0
  br i1 %tobool1.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx3 = getelementptr %struct.mtd_erase_region_info, ptr %1, i32 %i.1
  %erasesize = getelementptr %struct.mtd_erase_region_info, ptr %1, i32 %i.1, i32 1
  %15 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.0, i64 %ofs)
  %cmp4 = icmp sge i64 %offset.0, %ofs
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.0, i64 %add5)
  %cmp6.not = icmp ult i64 %offset.0, %add5
  %or.cond = and i1 %cmp4, %cmp6.not
  br i1 %or.cond, label %while.body.if.end16_crit_edge, label %if.then7

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx8 = getelementptr %struct.cfi_private, ptr %5, i32 0, i32 15, i32 %chipnum.0
  %arrayidx9 = getelementptr %struct.ppb_lock, ptr %call8.i.i, i32 %sectors.0
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx8, ptr %arrayidx9, align 4
  %adr11 = getelementptr %struct.ppb_lock, ptr %call8.i.i, i32 %sectors.0, i32 1
  %18 = ptrtoint ptr %adr11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %adr.0, ptr %adr11, align 4
  %call14 = tail call i32 @do_ppb_xxlock(ptr noundef %3, ptr noundef %arrayidx8, i32 noundef %adr.0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 3 to ptr))
  %locked = getelementptr %struct.ppb_lock, ptr %call8.i.i, i32 %sectors.0, i32 2
  %19 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call14, ptr %locked, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then7, %while.body.if.end16_crit_edge
  %add17 = add i32 %16, %adr.0
  %conv = sext i32 %16 to i64
  %add18 = add i64 %offset.0, %conv
  %sub = sub i64 %length.0, %conv
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx3, align 8
  %numblocks23 = getelementptr %struct.mtd_erase_region_info, ptr %1, i32 %i.1, i32 2
  %22 = ptrtoint ptr %numblocks23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numblocks23, align 4
  %mul = mul i32 %23, %16
  %conv24 = zext i32 %mul to i64
  %add25 = add i64 %21, %conv24
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add25)
  %cmp26 = icmp eq i64 %add18, %add25
  %inc29 = zext i1 %cmp26 to i32
  %spec.select = add i32 %i.1, %inc29
  %24 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chipshift, align 4
  %shr = lshr i32 %add17, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool31.not = icmp eq i32 %shr, 0
  br i1 %tobool31.not, label %if.end16.if.end43_crit_edge, label %if.then32

if.end16.if.end43_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then32:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add5)
  %cmp34.not = icmp ult i64 %add18, %add5
  br i1 %cmp34.not, label %if.end37, label %if.then32.while.end_crit_edge

if.then32.while.end_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end37:                                         ; preds = %if.then32
  %inc38 = add i32 %chipnum.0, 1
  %26 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc38, i32 %27)
  %cmp39.not = icmp slt i32 %inc38, %27
  br i1 %cmp39.not, label %if.end37.if.end43_crit_edge, label %if.end37.while.end_crit_edge

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.end43:                                         ; preds = %if.end37.if.end43_crit_edge, %if.end16.if.end43_crit_edge
  %adr.1 = phi i32 [ 0, %if.end37.if.end43_crit_edge ], [ %add17, %if.end16.if.end43_crit_edge ]
  %chipnum.1 = phi i32 [ %inc38, %if.end37.if.end43_crit_edge ], [ %chipnum.0, %if.end16.if.end43_crit_edge ]
  %inc44 = add nuw nsw i32 %sectors.0, 1
  %exitcond169.not = icmp eq i32 %inc44, %smax
  br i1 %exitcond169.not, label %cleanup.thread156, label %if.end43.while.cond_crit_edge

if.end43.while.cond_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

cleanup.thread156:                                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %max_sectors.0.lcssa) #18
  br label %cleanup72.sink.split

while.end:                                        ; preds = %if.end37.while.end_crit_edge, %if.then32.while.end_crit_edge, %while.cond.while.end_crit_edge
  %conv50 = trunc i64 %len to i32
  %call51 = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_ppb_xxlock, i64 noundef %ofs, i32 noundef %conv50, ptr noundef nonnull inttoptr (i32 2 to ptr)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.cond55.preheader, label %while.end.cleanup72.sink.split_crit_edge

while.end.cleanup72.sink.split_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup72.sink.split

for.cond55.preheader:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sectors.0)
  %cmp56165.not = icmp eq i32 %sectors.0, 0
  br i1 %cmp56165.not, label %for.cond55.preheader.cleanup72.sink.split_crit_edge, label %for.cond55.preheader.for.body58_crit_edge

for.cond55.preheader.for.body58_crit_edge:        ; preds = %for.cond55.preheader
  br label %for.body58

for.cond55.preheader.cleanup72.sink.split_crit_edge: ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup72.sink.split

for.body58:                                       ; preds = %for.inc69.for.body58_crit_edge, %for.cond55.preheader.for.body58_crit_edge
  %i.3166 = phi i32 [ %inc70, %for.inc69.for.body58_crit_edge ], [ 0, %for.cond55.preheader.for.body58_crit_edge ]
  %locked60 = getelementptr %struct.ppb_lock, ptr %call8.i.i, i32 %i.3166, i32 2
  %28 = ptrtoint ptr %locked60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %locked60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool61.not = icmp eq i32 %29, 0
  br i1 %tobool61.not, label %for.body58.for.inc69_crit_edge, label %if.then62

for.body58.for.inc69_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc69

if.then62:                                        ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx59 = getelementptr %struct.ppb_lock, ptr %call8.i.i, i32 %i.3166
  %30 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx59, align 4
  %adr66 = getelementptr %struct.ppb_lock, ptr %call8.i.i, i32 %i.3166, i32 1
  %32 = ptrtoint ptr %adr66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %adr66, align 4
  %call67 = tail call i32 @do_ppb_xxlock(ptr noundef %3, ptr noundef %31, i32 noundef %33, i32 noundef 0, ptr noundef nonnull inttoptr (i32 1 to ptr))
  br label %for.inc69

for.inc69:                                        ; preds = %if.then62, %for.body58.for.inc69_crit_edge
  %inc70 = add nuw nsw i32 %i.3166, 1
  %exitcond170.not = icmp eq i32 %inc70, %sectors.0
  br i1 %exitcond170.not, label %for.inc69.cleanup72.sink.split_crit_edge, label %for.inc69.for.body58_crit_edge

for.inc69.for.body58_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body58

for.inc69.cleanup72.sink.split_crit_edge:         ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup72.sink.split

cleanup72.sink.split:                             ; preds = %for.inc69.cleanup72.sink.split_crit_edge, %for.cond55.preheader.cleanup72.sink.split_crit_edge, %while.end.cleanup72.sink.split_crit_edge, %cleanup.thread156
  %retval.2.ph = phi i32 [ -22, %cleanup.thread156 ], [ %call51, %while.end.cleanup72.sink.split_crit_edge ], [ 0, %for.cond55.preheader.cleanup72.sink.split_crit_edge ], [ 0, %for.inc69.cleanup72.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #14
  br label %cleanup72

cleanup72:                                        ; preds = %cleanup72.sink.split, %if.end7.i.i.cleanup72_crit_edge, %for.end.cleanup72_crit_edge
  %retval.2 = phi i32 [ -12, %if.end7.i.i.cleanup72_crit_edge ], [ -12, %for.end.cleanup72_crit_edge ], [ %retval.2.ph, %cleanup72.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_ppb_is_locked(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %call = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_ppb_xxlock, i64 noundef %ofs, i32 noundef %conv, ptr noundef nonnull inttoptr (i32 3 to ptr)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fixup_convert_atmel_pri(ptr nocapture noundef readonly %mtd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdset_priv, align 4
  %atmel_pri.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 5
  %6 = ptrtoint ptr %atmel_pri.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %atmel_pri.sroa.8.0.copyload = load i8, ptr %atmel_pri.sroa.8.0..sroa_idx, align 1
  %atmel_pri.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 6
  %7 = ptrtoint ptr %atmel_pri.sroa.10.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %atmel_pri.sroa.10.0.copyload = load i8, ptr %atmel_pri.sroa.10.0..sroa_idx, align 1
  %8 = call ptr @memset(ptr %atmel_pri.sroa.8.0..sroa_idx, i32 0, i32 15)
  %9 = and i8 %atmel_pri.sroa.8.0.copyload, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %atmel_pri.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %atmel_pri.sroa.10.0..sroa_idx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %id = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 214, i32 %12)
  %cmp = icmp eq i32 %12, 214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %atmel_pri.sroa.10.0.copyload)
  %tobool3.not = icmp eq i8 %atmel_pri.sroa.10.0.copyload, 0
  %TopBottom5 = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %5, i32 0, i32 13
  %. = select i1 %tobool3.not, i8 2, i8 3
  %.27 = select i1 %tobool3.not, i8 3, i8 2
  %.sink = select i1 %cmp, i8 %., i8 %.27
  %13 = ptrtoint ptr %TopBottom5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %TopBottom5, align 1
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfiq, align 4
  %BufWriteTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %BufWriteTimeoutTyp to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %BufWriteTimeoutTyp, align 1
  %17 = load ptr, ptr %cfiq, align 4
  %BufWriteTimeoutMax = getelementptr inbounds %struct.cfi_ident, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %BufWriteTimeoutMax to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %BufWriteTimeoutMax, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_amd_bootblock(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdset_priv, align 4
  %MajorVersion = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %MajorVersion, align 1
  %MinorVersion = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %MinorVersion to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %MinorVersion, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv1 = zext i8 %9 to i32
  %or = or i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12593, i32 %or)
  %cmp = icmp ult i32 %or, 12593
  br i1 %cmp, label %do.body, label %entry.if.end71_crit_edge

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fixup_amd_bootblock.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fixup_amd_bootblock, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !252

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %mfr = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mfr, align 4
  %id = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fixup_amd_bootblock.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.22, ptr noundef %11, i32 noundef %13, i32 noundef %15) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %id6 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id6, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %17, label %do.end.if.else_crit_edge [
    i32 186, label %do.end.land.lhs.true_crit_edge
    i32 8890, label %do.end.land.lhs.true_crit_edge99
  ]

do.end.land.lhs.true_crit_edge99:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

do.end.land.lhs.true_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %do.end.land.lhs.true_crit_edge, %do.end.land.lhs.true_crit_edge99
  %mfr12 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %mfr12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mfr12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %20)
  %cmp13 = icmp eq i32 %20, 194
  br i1 %cmp13, label %do.body16, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

do.body16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fixup_amd_bootblock.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fixup_amd_bootblock, %if.then28)) #14
          to label %do.body48 [label %if.then28], !srcloc !252

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fixup_amd_bootblock.__UNIQUE_ID_ddebug191, ptr noundef nonnull @.str.23, ptr noundef %22) #14
  br label %do.body48

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %and = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.else.do.body48_crit_edge, label %do.end38

if.else.do.body48_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body48

do.end38:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %24, i32 noundef %17) #18
  br label %do.body48

do.body48:                                        ; preds = %do.end38, %if.else.do.body48_crit_edge, %if.then28, %do.body16
  %.sink = phi i8 [ 3, %do.end38 ], [ 2, %do.body16 ], [ 2, %if.then28 ], [ 2, %if.else.do.body48_crit_edge ]
  %TopBottom = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %5, i32 0, i32 13
  %25 = ptrtoint ptr %TopBottom to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %TopBottom, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fixup_amd_bootblock.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fixup_amd_bootblock, %if.then60)) #14
          to label %if.end71 [label %if.then60], !srcloc !252

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %TopBottom64 = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %5, i32 0, i32 13
  %28 = ptrtoint ptr %TopBottom64 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %TopBottom64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp66 = icmp eq i8 %29, 2
  %cond = select i1 %cmp66, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fixup_amd_bootblock.__UNIQUE_ID_ddebug192, ptr noundef nonnull @.str.25, ptr noundef %27, i32 noundef %conv, i32 noundef %conv1, ptr noundef nonnull %cond) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then60, %do.body48, %entry.if.end71_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @fixup_use_secsi(ptr nocapture noundef writeonly %mtd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_read_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 32
  %0 = ptrtoint ptr %_read_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cfi_amdstd_secsi_read, ptr %_read_user_prot_reg, align 4
  %_read_fact_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 30
  %1 = ptrtoint ptr %_read_fact_prot_reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cfi_amdstd_secsi_read, ptr %_read_fact_prot_reg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_s29gl064n_sectors(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfiq, align 4
  %EraseRegionInfo = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %EraseRegionInfo to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %EraseRegionInfo, align 1
  %and = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and)
  %cmp = icmp eq i32 %and, 63
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %7, 64
  %8 = ptrtoint ptr %EraseRegionInfo to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %or, ptr %EraseRegionInfo, align 1
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %10) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_s29gl032n_sectors(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfiq, align 4
  %EraseRegionInfo = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 21
  %arrayidx = getelementptr [0 x i32], ptr %EraseRegionInfo, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx, align 1
  %and = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and)
  %cmp = icmp eq i32 %and, 126
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and4 = and i32 %7, -65
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %and4, ptr %arrayidx, align 1
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %10) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_s29ns512p_sectors(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfiq, align 4
  %EraseRegionInfo = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %EraseRegionInfo to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 33554943, ptr %EraseRegionInfo, align 1
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %8) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_sst38vf640x_sectorsize(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  %tmp.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cfiq.i.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cfiq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfiq.i.i, align 4
  %NumEraseRegions.i.i = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %NumEraseRegions.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %NumEraseRegions.i.i, align 1
  %addr_unlock1.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %addr_unlock1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1365, ptr %addr_unlock1.i, align 4
  %addr_unlock2.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %addr_unlock2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 682, ptr %addr_unlock2.i, align 4
  %sector_erase_cmd.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #14
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp.i, i32 noundef 80, ptr noundef %1, ptr noundef %3) #14
  %9 = call ptr @memcpy(ptr %sector_erase_cmd.i, ptr %tmp.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #14
  %10 = ptrtoint ptr %cfiq.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfiq.i.i, align 4
  %EraseRegionInfo = getelementptr inbounds %struct.cfi_ident, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %EraseRegionInfo to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 2098175, ptr %EraseRegionInfo, align 1
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %14) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_use_write_buffers(ptr nocapture noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %mfr = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8705, i32 %7)
  %cmp1 = icmp eq i32 %7, 8705
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfiq, align 4
  %BufWriteTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %BufWriteTimeoutTyp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %BufWriteTimeoutTyp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fixup_use_write_buffers.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fixup_use_write_buffers, %if.then6)) #14
          to label %do.end [label %if.then6], !srcloc !252

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fixup_use_write_buffers.__UNIQUE_ID_ddebug193, ptr noundef nonnull @.str.37) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %_write = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 25
  %12 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cfi_amdstd_write_buffers, ptr %_write, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_secsi_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not40 = icmp eq i32 %len, 0
  br i1 %tobool.not40, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %4 = trunc i64 %from to i32
  %conv1 = and i32 %4, 7
  %5 = lshr i64 %from, 3
  %conv = trunc i64 %5 to i32
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %chipnum.044 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ %conv, %while.body.preheader ]
  %ofs.043 = phi i32 [ 0, %cleanup.while.body_crit_edge ], [ %conv1, %while.body.preheader ]
  %buf.addr.042 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buf, %while.body.preheader ]
  %len.addr.041 = phi i32 [ %sub13, %cleanup.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %6 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chipnum.044, i32 %7)
  %cmp.not = icmp slt i32 %chipnum.044, %7
  br i1 %cmp.not, label %cleanup, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

cleanup:                                          ; preds = %while.body
  %add = add i32 %len.addr.041, -1
  %sub = add i32 %add, %ofs.043
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %tobool4.not = icmp ult i32 %sub, 8
  %sub6 = sub nuw nsw i32 8, %ofs.043
  %thislen.0 = select i1 %tobool4.not, i32 %len.addr.041, i32 %sub6
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.044
  %conv8 = zext i32 %ofs.043 to i64
  %call = tail call i32 @do_read_secsi_onechip(ptr noundef %1, ptr noundef %arrayidx, i64 noundef %conv8, i32 noundef %thislen.0, ptr noundef %buf.addr.042, i32 noundef 0)
  %8 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retlen, align 4
  %add12 = add i32 %9, %thislen.0
  store i32 %add12, ptr %retlen, align 4
  %sub13 = sub i32 %len.addr.041, %thislen.0
  %add.ptr = getelementptr i8, ptr %buf.addr.042, i32 %thislen.0
  %inc = add nsw i32 %chipnum.044, 1
  %tobool.not = icmp eq i32 %sub13, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_read_secsi_onechip(ptr noundef %map, ptr noundef %chip, i64 noundef %adr, i32 noundef %len, ptr noundef %buf, i32 noundef %grouplen) #8 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !242) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not101 = icmp eq i32 %14, 0
  br i1 %cmp.not101, label %entry.if.end66_crit_edge, label %__here.lr.ph

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

__here.lr.ph:                                     ; preds = %entry
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  br label %__here

__here:                                           ; preds = %__here.__here_crit_edge, %__here.lr.ph
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@do_read_secsi_onechip, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %18, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !277
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %__here.if.end66_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here.if.end66_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.end66:                                         ; preds = %__here.if.end66_crit_edge, %entry.if.end66_crit_edge
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip, align 4
  %conv = zext i32 %23 to i64
  %add = add i64 %conv, %adr
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %state, align 4
  %fldrv_priv.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %25 = ptrtoint ptr %fldrv_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fldrv_priv.i, align 4
  %addr_unlock1.i = getelementptr inbounds %struct.cfi_private, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %addr_unlock1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr_unlock1.i, align 4
  %device_type.i = getelementptr inbounds %struct.cfi_private, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %device_type.i, align 4
  %call.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %28, i32 noundef %23, ptr noundef %map, ptr noundef %26, i32 noundef %30, ptr noundef null) #14
  %addr_unlock2.i = getelementptr inbounds %struct.cfi_private, ptr %26, i32 0, i32 6
  %31 = ptrtoint ptr %addr_unlock2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr_unlock2.i, align 4
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip, align 4
  %35 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %device_type.i, align 4
  %call3.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %32, i32 noundef %34, ptr noundef %map, ptr noundef %26, i32 noundef %36, ptr noundef null) #14
  %37 = ptrtoint ptr %addr_unlock1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr_unlock1.i, align 4
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip, align 4
  %41 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %device_type.i, align 4
  %call7.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -120, i32 noundef %38, i32 noundef %40, ptr noundef %map, ptr noundef %26, i32 noundef %42, ptr noundef null) #14
  %inval_cache.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 11
  %43 = ptrtoint ptr %inval_cache.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %inval_cache.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end66.otp_enter.exit_crit_edge, label %if.then.i

if.end66.otp_enter.exit_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = trunc i64 %add to i32
  br label %otp_enter.exit

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chip, align 4
  %47 = trunc i64 %add to i32
  %conv10.i = add i32 %46, %47
  call void %44(ptr noundef %map, i32 noundef %conv10.i, i32 noundef %len) #14
  br label %otp_enter.exit

otp_enter.exit:                                   ; preds = %if.then.i, %if.end66.otp_enter.exit_crit_edge
  %conv68.pre-phi = phi i32 [ %.pre, %if.end66.otp_enter.exit_crit_edge ], [ %47, %if.then.i ]
  %copy_from = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 8
  %48 = ptrtoint ptr %copy_from to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %copy_from, align 4
  call void %49(ptr noundef %map, ptr noundef %buf, i32 noundef %conv68.pre-phi, i32 noundef %len) #14
  %50 = ptrtoint ptr %fldrv_priv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fldrv_priv.i, align 4
  %addr_unlock1.i92 = getelementptr inbounds %struct.cfi_private, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %addr_unlock1.i92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr_unlock1.i92, align 4
  %54 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chip, align 4
  %device_type.i93 = getelementptr inbounds %struct.cfi_private, ptr %51, i32 0, i32 3
  %56 = ptrtoint ptr %device_type.i93 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %device_type.i93, align 4
  %call.i94 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %53, i32 noundef %55, ptr noundef %map, ptr noundef %51, i32 noundef %57, ptr noundef null) #14
  %addr_unlock2.i95 = getelementptr inbounds %struct.cfi_private, ptr %51, i32 0, i32 6
  %58 = ptrtoint ptr %addr_unlock2.i95 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr_unlock2.i95, align 4
  %60 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %chip, align 4
  %62 = ptrtoint ptr %device_type.i93 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %device_type.i93, align 4
  %call3.i96 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %59, i32 noundef %61, ptr noundef %map, ptr noundef %51, i32 noundef %63, ptr noundef null) #14
  %64 = ptrtoint ptr %addr_unlock1.i92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addr_unlock1.i92, align 4
  %66 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %chip, align 4
  %68 = ptrtoint ptr %device_type.i93 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %device_type.i93, align 4
  %call7.i97 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -112, i32 noundef %65, i32 noundef %67, ptr noundef %map, ptr noundef %51, i32 noundef %69, ptr noundef null) #14
  %70 = ptrtoint ptr %addr_unlock1.i92 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr_unlock1.i92, align 4
  %72 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %chip, align 4
  %74 = ptrtoint ptr %device_type.i93 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %device_type.i93, align 4
  %call11.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 0, i32 noundef %71, i32 noundef %73, ptr noundef %map, ptr noundef %51, i32 noundef %75, ptr noundef null) #14
  %76 = ptrtoint ptr %inval_cache.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %inval_cache.i, align 4
  %tobool.not.i99 = icmp eq ptr %77, null
  br i1 %tobool.not.i99, label %otp_enter.exit.otp_exit.exit_crit_edge, label %if.then.i100

otp_enter.exit.otp_exit.exit_crit_edge:           ; preds = %otp_enter.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %otp_exit.exit

if.then.i100:                                     ; preds = %otp_enter.exit
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chip, align 4
  %conv14.i = add i32 %79, %conv68.pre-phi
  call void %77(ptr noundef %map, i32 noundef %conv14.i, i32 noundef %len) #14
  br label %otp_exit.exit

otp_exit.exit:                                    ; preds = %if.then.i100, %otp_enter.exit.otp_exit.exit_crit_edge
  %wq69 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  call void @__wake_up(ptr noundef %wq69, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_send_gen_cmd(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_sst39vf_rev_b(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  %tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cfiq.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions.i = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %NumEraseRegions.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %NumEraseRegions.i, align 1
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1365, ptr %addr_unlock1, align 4
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 682, ptr %addr_unlock2, align 4
  %sector_erase_cmd = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #14
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp, i32 noundef 80, ptr noundef %1, ptr noundef %3) #14
  %9 = call ptr @memcpy(ptr %sector_erase_cmd, ptr %tmp, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_build_cmd(ptr sret(%union.map_word) align 4, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_write_buffers(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  %retlen_dregs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interleave, align 4
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfiq, align 4
  %MaxBufWriteSize = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %MaxBufWriteSize to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %MaxBufWriteSize, align 1
  %conv = zext i16 %9 to i32
  %shl = shl i32 %5, %conv
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %11 to i64
  %shr = ashr i64 %to, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %shl3 = shl i32 %conv1, %11
  %12 = trunc i64 %to to i32
  %conv5 = sub i32 %12, %shl3
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bankwidth, align 4
  %sub6 = add i32 %14, -1
  %and = and i32 %conv5, %sub6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %entry
  %sub7 = sub i32 0, %conv5
  %and10 = and i32 %sub6, %sub7
  %15 = tail call i32 @llvm.umin.i32(i32 %and10, i32 %len)
  %conv15 = and i64 %to, 4294967295
  %call = tail call i32 @cfi_amdstd_write_words(ptr noundef %mtd, i64 noundef %conv15, i32 noundef %15, ptr noundef %retlen, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end18, label %if.then.cleanup80_crit_edge

if.then.cleanup80_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup80

if.end18:                                         ; preds = %if.then
  %add19 = add i32 %15, %conv5
  %add.ptr = getelementptr i8, ptr %buf, i32 %15
  %sub20 = sub i32 %len, %15
  %16 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chipshift, align 4
  %shr22 = lshr i32 %add19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr22)
  %tobool23.not = icmp eq i32 %shr22, 0
  br i1 %tobool23.not, label %if.end18.if.end30_crit_edge, label %if.then24

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then24:                                        ; preds = %if.end18
  %inc = add i32 %conv1, 1
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %19)
  %cmp25 = icmp eq i32 %inc, %19
  br i1 %cmp25, label %if.then24.cleanup80_crit_edge, label %if.then24.if.end30_crit_edge

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then24.cleanup80_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup80

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %if.end18.if.end30_crit_edge, %entry.if.end30_crit_edge
  %len.addr.1 = phi i32 [ %len, %entry.if.end30_crit_edge ], [ %sub20, %if.end18.if.end30_crit_edge ], [ %sub20, %if.then24.if.end30_crit_edge ]
  %buf.addr.1 = phi ptr [ %buf, %entry.if.end30_crit_edge ], [ %add.ptr, %if.end18.if.end30_crit_edge ], [ %add.ptr, %if.then24.if.end30_crit_edge ]
  %chipnum.2 = phi i32 [ %conv1, %entry.if.end30_crit_edge ], [ %conv1, %if.end18.if.end30_crit_edge ], [ %inc, %if.then24.if.end30_crit_edge ]
  %ofs.2 = phi i32 [ %conv5, %entry.if.end30_crit_edge ], [ %add19, %if.end18.if.end30_crit_edge ], [ 0, %if.then24.if.end30_crit_edge ]
  %20 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bankwidth, align 4
  %mul172 = shl i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.1, i32 %mul172)
  %cmp32.not173 = icmp ult i32 %len.addr.1, %mul172
  br i1 %cmp32.not173, label %if.end30.while.end_crit_edge, label %while.body.lr.ph

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end30
  %sub34 = add i32 %shl, -1
  %numchips61 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup67.while.body_crit_edge, %while.body.lr.ph
  %22 = phi i32 [ %21, %while.body.lr.ph ], [ %31, %cleanup67.while.body_crit_edge ]
  %ofs.3177 = phi i32 [ %ofs.2, %while.body.lr.ph ], [ %ofs.4, %cleanup67.while.body_crit_edge ]
  %chipnum.3176 = phi i32 [ %chipnum.2, %while.body.lr.ph ], [ %chipnum.4, %cleanup67.while.body_crit_edge ]
  %buf.addr.2175 = phi ptr [ %buf.addr.1, %while.body.lr.ph ], [ %add.ptr53, %cleanup67.while.body_crit_edge ]
  %len.addr.2174 = phi i32 [ %len.addr.1, %while.body.lr.ph ], [ %sub55, %cleanup67.while.body_crit_edge ]
  %and35 = and i32 %ofs.3177, %sub34
  %sub36 = sub i32 %shl, %and35
  %23 = tail call i32 @llvm.umin.i32(i32 %sub36, i32 %len.addr.2174)
  %rem = srem i32 %23, %22
  %sub46 = sub i32 %23, %rem
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3176
  %call48 = tail call fastcc i32 @do_write_buffer(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %ofs.3177, ptr noundef %buf.addr.2175, i32 noundef %sub46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %while.body.cleanup80_crit_edge

while.body.cleanup80_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup80

if.end51:                                         ; preds = %while.body
  %add52 = add i32 %sub46, %ofs.3177
  %add.ptr53 = getelementptr i8, ptr %buf.addr.2175, i32 %sub46
  %24 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retlen, align 4
  %add54 = add i32 %25, %sub46
  store i32 %add54, ptr %retlen, align 4
  %sub55 = sub i32 %len.addr.2174, %sub46
  %26 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chipshift, align 4
  %shr57 = lshr i32 %add52, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr57)
  %tobool58.not = icmp eq i32 %shr57, 0
  br i1 %tobool58.not, label %if.end51.cleanup67_crit_edge, label %if.then59

if.end51.cleanup67_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup67

if.then59:                                        ; preds = %if.end51
  %inc60 = add i32 %chipnum.3176, 1
  %28 = ptrtoint ptr %numchips61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %numchips61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc60, i32 %29)
  %cmp62 = icmp eq i32 %inc60, %29
  br i1 %cmp62, label %if.then59.cleanup80_crit_edge, label %if.then59.cleanup67_crit_edge

if.then59.cleanup67_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup67

if.then59.cleanup80_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup80

cleanup67:                                        ; preds = %if.then59.cleanup67_crit_edge, %if.end51.cleanup67_crit_edge
  %chipnum.4 = phi i32 [ %inc60, %if.then59.cleanup67_crit_edge ], [ %chipnum.3176, %if.end51.cleanup67_crit_edge ]
  %ofs.4 = phi i32 [ 0, %if.then59.cleanup67_crit_edge ], [ %add52, %if.end51.cleanup67_crit_edge ]
  %30 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bankwidth, align 4
  %mul = shl i32 %31, 1
  %cmp32.not = icmp ult i32 %sub55, %mul
  br i1 %cmp32.not, label %cleanup67.while.end_crit_edge, label %cleanup67.while.body_crit_edge

cleanup67.while.body_crit_edge:                   ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup67.while.end_crit_edge:                    ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup67.while.end_crit_edge, %if.end30.while.end_crit_edge
  %len.addr.2.lcssa = phi i32 [ %len.addr.1, %if.end30.while.end_crit_edge ], [ %sub55, %cleanup67.while.end_crit_edge ]
  %buf.addr.2.lcssa = phi ptr [ %buf.addr.1, %if.end30.while.end_crit_edge ], [ %add.ptr53, %cleanup67.while.end_crit_edge ]
  %chipnum.3.lcssa = phi i32 [ %chipnum.2, %if.end30.while.end_crit_edge ], [ %chipnum.4, %cleanup67.while.end_crit_edge ]
  %ofs.3.lcssa = phi i32 [ %ofs.2, %if.end30.while.end_crit_edge ], [ %ofs.4, %cleanup67.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2.lcssa)
  %tobool70.not = icmp eq i32 %len.addr.2.lcssa, 0
  br i1 %tobool70.not, label %while.end.cleanup80_crit_edge, label %if.then71

while.end.cleanup80_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup80

if.then71:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen_dregs) #14
  %32 = ptrtoint ptr %retlen_dregs to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %retlen_dregs, align 4
  %33 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chipshift, align 4
  %shl73 = shl i32 %chipnum.3.lcssa, %34
  %add74 = add i32 %shl73, %ofs.3.lcssa
  %conv75 = zext i32 %add74 to i64
  %call76 = call i32 @cfi_amdstd_write_words(ptr noundef %mtd, i64 noundef %conv75, i32 noundef %len.addr.2.lcssa, ptr noundef nonnull %retlen_dregs, ptr noundef %buf.addr.2.lcssa)
  %35 = ptrtoint ptr %retlen_dregs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retlen_dregs, align 4
  %37 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retlen, align 4
  %add77 = add i32 %38, %36
  store i32 %add77, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen_dregs) #14
  br label %cleanup80

cleanup80:                                        ; preds = %if.then71, %while.end.cleanup80_crit_edge, %if.then59.cleanup80_crit_edge, %while.body.cleanup80_crit_edge, %if.then24.cleanup80_crit_edge, %if.then.cleanup80_crit_edge
  %retval.4 = phi i32 [ %call76, %if.then71 ], [ 0, %while.end.cleanup80_crit_edge ], [ 0, %if.then24.cleanup80_crit_edge ], [ %call, %if.then.cleanup80_crit_edge ], [ %call48, %while.body.cleanup80_crit_edge ], [ 0, %if.then59.cleanup80_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_write_buffer(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %tmp.sroa.0 = alloca [8 x i32], align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp22 = alloca %union.map_word, align 4
  %tmp25.sroa.0 = alloca [8 x i32], align 4
  %agg.tmp36 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  %add = add i32 %3, %adr
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call = tail call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %4 = call ptr @memset(ptr %tmp.sroa.0, i32 255, i32 32)
  %5 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bankwidth.i, align 4, !noalias !278
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %6, label %if.else16.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 4, label %if.then11.i
  ]

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1, !noalias !278
  %conv.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %tmp.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %tmp.sroa.0, align 4, !alias.scope !278
  br label %map_word_load.exit

if.then4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %buf, align 1, !noalias !278
  %conv5.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %tmp.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5.i, ptr %tmp.sroa.0, align 4, !alias.scope !278
  br label %map_word_load.exit

if.then11.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %buf, align 1, !noalias !278
  %16 = ptrtoint ptr %tmp.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.sroa.0, align 4, !alias.scope !278
  br label %map_word_load.exit

if.else16.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp18.i = icmp sgt i32 %6, 4
  br i1 %cmp18.i, label %if.then20.i, label %do.body.i

if.then20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = call ptr @memcpy(ptr %tmp.sroa.0, ptr %buf, i32 %6)
  br label %map_word_load.exit

do.body.i:                                        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #14, !noalias !278, !srcloc !261
  unreachable

map_word_load.exit:                               ; preds = %if.then20.i, %if.then11.i, %if.then4.i, %if.then.i
  %18 = ptrtoint ptr %tmp.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp.sroa.0.0.tmp.sroa.0.0.tmp.sroa.0.0.datum.sroa.0.0.copyload = load i32, ptr %tmp.sroa.0, align 4
  %tmp.sroa.0.4.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 4
  %19 = ptrtoint ptr %tmp.sroa.0.4.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.sroa.0.4.tmp.sroa.0.4.tmp.sroa.0.4.datum.sroa.8.0.copyload = load i32, ptr %tmp.sroa.0.4.tmp.sroa_idx, align 4
  %tmp.sroa.0.8.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 8
  %20 = ptrtoint ptr %tmp.sroa.0.8.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.sroa.0.8.tmp.sroa.0.8.tmp.sroa.0.8.datum.sroa.11.0.copyload = load i32, ptr %tmp.sroa.0.8.tmp.sroa_idx, align 4
  %tmp.sroa.0.12.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 12
  %21 = ptrtoint ptr %tmp.sroa.0.12.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.sroa.0.12.tmp.sroa.0.12.tmp.sroa.0.12.datum.sroa.14.0.copyload = load i32, ptr %tmp.sroa.0.12.tmp.sroa_idx, align 4
  %tmp.sroa.0.16.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 16
  %22 = ptrtoint ptr %tmp.sroa.0.16.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.sroa.0.16.tmp.sroa.0.16.tmp.sroa.0.16.datum.sroa.17.0.copyload = load i32, ptr %tmp.sroa.0.16.tmp.sroa_idx, align 4
  %tmp.sroa.0.20.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 20
  %23 = ptrtoint ptr %tmp.sroa.0.20.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.sroa.0.20.tmp.sroa.0.20.tmp.sroa.0.20.datum.sroa.20.0.copyload = load i32, ptr %tmp.sroa.0.20.tmp.sroa_idx, align 4
  %tmp.sroa.0.24.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 24
  %24 = ptrtoint ptr %tmp.sroa.0.24.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %tmp.sroa.0.24.tmp.sroa.0.24.tmp.sroa.0.24.datum.sroa.23.0.copyload = load i32, ptr %tmp.sroa.0.24.tmp.sroa_idx, align 4
  %tmp.sroa.0.28.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 28
  %25 = ptrtoint ptr %tmp.sroa.0.28.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %tmp.sroa.0.28.tmp.sroa.0.28.tmp.sroa.0.28.datum.sroa.26.0.copyload = load i32, ptr %tmp.sroa.0.28.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.sroa.0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_write_buffer.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_write_buffer, %if.then7)) #14
          to label %do.body9 [label %if.then7], !srcloc !252

if.then7:                                         ; preds = %map_word_load.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_write_buffer.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %add, i32 noundef %tmp.sroa.0.0.tmp.sroa.0.0.tmp.sroa.0.0.datum.sroa.0.0.copyload) #14
  br label %do.body9

do.body9:                                         ; preds = %if.then7, %map_word_load.exit
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %26 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_vpp, align 4
  %tobool10.not = icmp eq ptr %27, null
  br i1 %tobool10.not, label %do.body9.do.end15_crit_edge, label %if.then11

do.body9.do.end15_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15

if.then11:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %27(ptr noundef %map, i32 noundef 1) #14
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body9.do.end15_crit_edge
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr_unlock1, align 4
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chip, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %device_type, align 4
  %call17 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %29, i32 noundef %31, ptr noundef %map, ptr noundef %1, i32 noundef %33, ptr noundef null) #14
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr_unlock2, align 4
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip, align 4
  %38 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %device_type, align 4
  %call20 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %35, i32 noundef %37, ptr noundef %map, ptr noundef %1, i32 noundef %39, ptr noundef null) #14
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %40 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 37, ptr noundef %map, ptr noundef %1) #14
  %42 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.0.load97 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert98 = insertvalue [8 x i32] poison, i32 %.fca.0.load97, 0
  %.fca.1.gep99 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %43 = ptrtoint ptr %.fca.1.gep99 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.1.load100 = load i32, ptr %.fca.1.gep99, align 4
  %.fca.1.insert101 = insertvalue [8 x i32] %.fca.0.insert98, i32 %.fca.1.load100, 1
  %.fca.2.gep102 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %44 = ptrtoint ptr %.fca.2.gep102 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.2.load103 = load i32, ptr %.fca.2.gep102, align 4
  %.fca.2.insert104 = insertvalue [8 x i32] %.fca.1.insert101, i32 %.fca.2.load103, 2
  %.fca.3.gep105 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %45 = ptrtoint ptr %.fca.3.gep105 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.3.load106 = load i32, ptr %.fca.3.gep105, align 4
  %.fca.3.insert107 = insertvalue [8 x i32] %.fca.2.insert104, i32 %.fca.3.load106, 3
  %.fca.4.gep108 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %46 = ptrtoint ptr %.fca.4.gep108 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.4.load109 = load i32, ptr %.fca.4.gep108, align 4
  %.fca.4.insert110 = insertvalue [8 x i32] %.fca.3.insert107, i32 %.fca.4.load109, 4
  %.fca.5.gep111 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %47 = ptrtoint ptr %.fca.5.gep111 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.5.load112 = load i32, ptr %.fca.5.gep111, align 4
  %.fca.5.insert113 = insertvalue [8 x i32] %.fca.4.insert110, i32 %.fca.5.load112, 5
  %.fca.6.gep114 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %48 = ptrtoint ptr %.fca.6.gep114 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.fca.6.load115 = load i32, ptr %.fca.6.gep114, align 4
  %.fca.6.insert116 = insertvalue [8 x i32] %.fca.5.insert113, i32 %.fca.6.load115, 6
  %.fca.7.gep117 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %49 = ptrtoint ptr %.fca.7.gep117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.fca.7.load118 = load i32, ptr %.fca.7.gep117, align 4
  %.fca.7.insert119 = insertvalue [8 x i32] %.fca.6.insert116, i32 %.fca.7.load118, 7
  call void %41(ptr noundef %map, [8 x i32] %.fca.7.insert119, i32 noundef %add) #14
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %50 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %state, align 4
  %51 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bankwidth.i, align 4
  %div = sdiv i32 %len, %52
  %53 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write, align 4
  %sub = add i32 %div, -1
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp22, i32 noundef %sub, ptr noundef %map, ptr noundef %1) #14
  %55 = ptrtoint ptr %agg.tmp22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.0.load73 = load i32, ptr %agg.tmp22, align 4
  %.fca.0.insert74 = insertvalue [8 x i32] poison, i32 %.fca.0.load73, 0
  %.fca.1.gep75 = getelementptr inbounds [8 x i32], ptr %agg.tmp22, i32 0, i32 1
  %56 = ptrtoint ptr %.fca.1.gep75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.fca.1.load76 = load i32, ptr %.fca.1.gep75, align 4
  %.fca.1.insert77 = insertvalue [8 x i32] %.fca.0.insert74, i32 %.fca.1.load76, 1
  %.fca.2.gep78 = getelementptr inbounds [8 x i32], ptr %agg.tmp22, i32 0, i32 2
  %57 = ptrtoint ptr %.fca.2.gep78 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.fca.2.load79 = load i32, ptr %.fca.2.gep78, align 4
  %.fca.2.insert80 = insertvalue [8 x i32] %.fca.1.insert77, i32 %.fca.2.load79, 2
  %.fca.3.gep81 = getelementptr inbounds [8 x i32], ptr %agg.tmp22, i32 0, i32 3
  %58 = ptrtoint ptr %.fca.3.gep81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.fca.3.load82 = load i32, ptr %.fca.3.gep81, align 4
  %.fca.3.insert83 = insertvalue [8 x i32] %.fca.2.insert80, i32 %.fca.3.load82, 3
  %.fca.4.gep84 = getelementptr inbounds [8 x i32], ptr %agg.tmp22, i32 0, i32 4
  %59 = ptrtoint ptr %.fca.4.gep84 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.fca.4.load85 = load i32, ptr %.fca.4.gep84, align 4
  %.fca.4.insert86 = insertvalue [8 x i32] %.fca.3.insert83, i32 %.fca.4.load85, 4
  %.fca.5.gep87 = getelementptr inbounds [8 x i32], ptr %agg.tmp22, i32 0, i32 5
  %60 = ptrtoint ptr %.fca.5.gep87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.fca.5.load88 = load i32, ptr %.fca.5.gep87, align 4
  %.fca.5.insert89 = insertvalue [8 x i32] %.fca.4.insert86, i32 %.fca.5.load88, 5
  %.fca.6.gep90 = getelementptr inbounds [8 x i32], ptr %agg.tmp22, i32 0, i32 6
  %61 = ptrtoint ptr %.fca.6.gep90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.fca.6.load91 = load i32, ptr %.fca.6.gep90, align 4
  %.fca.6.insert92 = insertvalue [8 x i32] %.fca.5.insert89, i32 %.fca.6.load91, 6
  %.fca.7.gep93 = getelementptr inbounds [8 x i32], ptr %agg.tmp22, i32 0, i32 7
  %62 = ptrtoint ptr %.fca.7.gep93 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.fca.7.load94 = load i32, ptr %.fca.7.gep93, align 4
  %.fca.7.insert95 = insertvalue [8 x i32] %.fca.6.insert92, i32 %.fca.7.load94, 7
  call void %54(ptr noundef %map, [8 x i32] %.fca.7.insert95, i32 noundef %add) #14
  %63 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bankwidth.i, align 4
  %mul293 = mul i32 %64, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul293)
  %cmp294 = icmp sgt i32 %mul293, 0
  br i1 %cmp294, label %while.body.lr.ph, label %do.end15.while.end_crit_edge

do.end15.while.end_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end15
  %tmp25.sroa.0.4.tmp25.sroa_idx = getelementptr inbounds i8, ptr %tmp25.sroa.0, i32 4
  %tmp25.sroa.0.8.tmp25.sroa_idx = getelementptr inbounds i8, ptr %tmp25.sroa.0, i32 8
  %tmp25.sroa.0.12.tmp25.sroa_idx = getelementptr inbounds i8, ptr %tmp25.sroa.0, i32 12
  %tmp25.sroa.0.16.tmp25.sroa_idx = getelementptr inbounds i8, ptr %tmp25.sroa.0, i32 16
  %tmp25.sroa.0.20.tmp25.sroa_idx = getelementptr inbounds i8, ptr %tmp25.sroa.0, i32 20
  %tmp25.sroa.0.24.tmp25.sroa_idx = getelementptr inbounds i8, ptr %tmp25.sroa.0, i32 24
  %tmp25.sroa.0.28.tmp25.sroa_idx = getelementptr inbounds i8, ptr %tmp25.sroa.0, i32 28
  br label %while.body

while.body:                                       ; preds = %map_word_load.exit267.while.body_crit_edge, %while.body.lr.ph
  %65 = phi i32 [ %64, %while.body.lr.ph ], [ %89, %map_word_load.exit267.while.body_crit_edge ]
  %z.0297 = phi i32 [ 0, %while.body.lr.ph ], [ %add30, %map_word_load.exit267.while.body_crit_edge ]
  %buf.addr.0295 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %map_word_load.exit267.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp25.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %66 = call ptr @memset(ptr %tmp25.sroa.0, i32 255, i32 32)
  %67 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %65, label %if.else16.i264 [
    i32 1, label %if.then.i259
    i32 2, label %if.then4.i261
    i32 4, label %if.then11.i262
  ]

if.then.i259:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %buf.addr.0295 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %buf.addr.0295, align 1, !noalias !281
  %conv.i258 = zext i8 %69 to i32
  %70 = ptrtoint ptr %tmp25.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv.i258, ptr %tmp25.sroa.0, align 4, !alias.scope !281
  br label %map_word_load.exit267

if.then4.i261:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %buf.addr.0295 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %buf.addr.0295, align 1, !noalias !281
  %conv5.i260 = zext i16 %72 to i32
  %73 = ptrtoint ptr %tmp25.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv5.i260, ptr %tmp25.sroa.0, align 4, !alias.scope !281
  br label %map_word_load.exit267

if.then11.i262:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %buf.addr.0295 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %buf.addr.0295, align 1, !noalias !281
  %76 = ptrtoint ptr %tmp25.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %tmp25.sroa.0, align 4, !alias.scope !281
  br label %map_word_load.exit267

if.else16.i264:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp18.i263 = icmp sgt i32 %65, 4
  br i1 %cmp18.i263, label %if.then20.i265, label %do.body.i266

if.then20.i265:                                   ; preds = %if.else16.i264
  call void @__sanitizer_cov_trace_pc() #16
  %77 = call ptr @memcpy(ptr %tmp25.sroa.0, ptr %buf.addr.0295, i32 %65)
  br label %map_word_load.exit267

do.body.i266:                                     ; preds = %if.else16.i264
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #14, !noalias !281, !srcloc !261
  unreachable

map_word_load.exit267:                            ; preds = %if.then20.i265, %if.then11.i262, %if.then4.i261, %if.then.i259
  %78 = ptrtoint ptr %tmp25.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %tmp25.sroa.0.0.tmp25.sroa.0.0.tmp25.sroa.0.0.datum.sroa.0.0.copyload168 = load i32, ptr %tmp25.sroa.0, align 4
  %79 = ptrtoint ptr %tmp25.sroa.0.4.tmp25.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %79)
  %tmp25.sroa.0.4.tmp25.sroa.0.4.tmp25.sroa.0.4.datum.sroa.8.0.copyload169 = load i32, ptr %tmp25.sroa.0.4.tmp25.sroa_idx, align 4
  %80 = ptrtoint ptr %tmp25.sroa.0.8.tmp25.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %80)
  %tmp25.sroa.0.8.tmp25.sroa.0.8.tmp25.sroa.0.8.datum.sroa.11.0.copyload170 = load i32, ptr %tmp25.sroa.0.8.tmp25.sroa_idx, align 4
  %81 = ptrtoint ptr %tmp25.sroa.0.12.tmp25.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %81)
  %tmp25.sroa.0.12.tmp25.sroa.0.12.tmp25.sroa.0.12.datum.sroa.14.0.copyload171 = load i32, ptr %tmp25.sroa.0.12.tmp25.sroa_idx, align 4
  %82 = ptrtoint ptr %tmp25.sroa.0.16.tmp25.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %82)
  %tmp25.sroa.0.16.tmp25.sroa.0.16.tmp25.sroa.0.16.datum.sroa.17.0.copyload172 = load i32, ptr %tmp25.sroa.0.16.tmp25.sroa_idx, align 4
  %83 = ptrtoint ptr %tmp25.sroa.0.20.tmp25.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %83)
  %tmp25.sroa.0.20.tmp25.sroa.0.20.tmp25.sroa.0.20.datum.sroa.20.0.copyload173 = load i32, ptr %tmp25.sroa.0.20.tmp25.sroa_idx, align 4
  %84 = ptrtoint ptr %tmp25.sroa.0.24.tmp25.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %84)
  %tmp25.sroa.0.24.tmp25.sroa.0.24.tmp25.sroa.0.24.datum.sroa.23.0.copyload174 = load i32, ptr %tmp25.sroa.0.24.tmp25.sroa_idx, align 4
  %85 = ptrtoint ptr %tmp25.sroa.0.28.tmp25.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %85)
  %tmp25.sroa.0.28.tmp25.sroa.0.28.tmp25.sroa.0.28.datum.sroa.26.0.copyload175 = load i32, ptr %tmp25.sroa.0.28.tmp25.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp25.sroa.0)
  %86 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write, align 4
  %add27 = add i32 %z.0297, %add
  %.fca.0.insert122 = insertvalue [8 x i32] poison, i32 %tmp25.sroa.0.0.tmp25.sroa.0.0.tmp25.sroa.0.0.datum.sroa.0.0.copyload168, 0
  %.fca.1.insert125 = insertvalue [8 x i32] %.fca.0.insert122, i32 %tmp25.sroa.0.4.tmp25.sroa.0.4.tmp25.sroa.0.4.datum.sroa.8.0.copyload169, 1
  %.fca.2.insert128 = insertvalue [8 x i32] %.fca.1.insert125, i32 %tmp25.sroa.0.8.tmp25.sroa.0.8.tmp25.sroa.0.8.datum.sroa.11.0.copyload170, 2
  %.fca.3.insert131 = insertvalue [8 x i32] %.fca.2.insert128, i32 %tmp25.sroa.0.12.tmp25.sroa.0.12.tmp25.sroa.0.12.datum.sroa.14.0.copyload171, 3
  %.fca.4.insert134 = insertvalue [8 x i32] %.fca.3.insert131, i32 %tmp25.sroa.0.16.tmp25.sroa.0.16.tmp25.sroa.0.16.datum.sroa.17.0.copyload172, 4
  %.fca.5.insert137 = insertvalue [8 x i32] %.fca.4.insert134, i32 %tmp25.sroa.0.20.tmp25.sroa.0.20.tmp25.sroa.0.20.datum.sroa.20.0.copyload173, 5
  %.fca.6.insert140 = insertvalue [8 x i32] %.fca.5.insert137, i32 %tmp25.sroa.0.24.tmp25.sroa.0.24.tmp25.sroa.0.24.datum.sroa.23.0.copyload174, 6
  %.fca.7.insert143 = insertvalue [8 x i32] %.fca.6.insert140, i32 %tmp25.sroa.0.28.tmp25.sroa.0.28.tmp25.sroa.0.28.datum.sroa.26.0.copyload175, 7
  call void %87(ptr noundef %map, [8 x i32] %.fca.7.insert143, i32 noundef %add27) #14
  %88 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bankwidth.i, align 4
  %add30 = add i32 %89, %z.0297
  %add.ptr = getelementptr i8, ptr %buf.addr.0295, i32 %89
  %mul = mul i32 %89, %div
  %cmp = icmp slt i32 %add30, %mul
  br i1 %cmp, label %map_word_load.exit267.while.body_crit_edge, label %map_word_load.exit267.while.end_crit_edge

map_word_load.exit267.while.end_crit_edge:        ; preds = %map_word_load.exit267
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

map_word_load.exit267.while.body_crit_edge:       ; preds = %map_word_load.exit267
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %map_word_load.exit267.while.end_crit_edge, %do.end15.while.end_crit_edge
  %z.0.lcssa = phi i32 [ 0, %do.end15.while.end_crit_edge ], [ %add30, %map_word_load.exit267.while.end_crit_edge ]
  %datum.sroa.26.0.lcssa = phi i32 [ %tmp.sroa.0.28.tmp.sroa.0.28.tmp.sroa.0.28.datum.sroa.26.0.copyload, %do.end15.while.end_crit_edge ], [ %tmp25.sroa.0.28.tmp25.sroa.0.28.tmp25.sroa.0.28.datum.sroa.26.0.copyload175, %map_word_load.exit267.while.end_crit_edge ]
  %datum.sroa.23.0.lcssa = phi i32 [ %tmp.sroa.0.24.tmp.sroa.0.24.tmp.sroa.0.24.datum.sroa.23.0.copyload, %do.end15.while.end_crit_edge ], [ %tmp25.sroa.0.24.tmp25.sroa.0.24.tmp25.sroa.0.24.datum.sroa.23.0.copyload174, %map_word_load.exit267.while.end_crit_edge ]
  %datum.sroa.20.0.lcssa = phi i32 [ %tmp.sroa.0.20.tmp.sroa.0.20.tmp.sroa.0.20.datum.sroa.20.0.copyload, %do.end15.while.end_crit_edge ], [ %tmp25.sroa.0.20.tmp25.sroa.0.20.tmp25.sroa.0.20.datum.sroa.20.0.copyload173, %map_word_load.exit267.while.end_crit_edge ]
  %datum.sroa.17.0.lcssa = phi i32 [ %tmp.sroa.0.16.tmp.sroa.0.16.tmp.sroa.0.16.datum.sroa.17.0.copyload, %do.end15.while.end_crit_edge ], [ %tmp25.sroa.0.16.tmp25.sroa.0.16.tmp25.sroa.0.16.datum.sroa.17.0.copyload172, %map_word_load.exit267.while.end_crit_edge ]
  %datum.sroa.14.0.lcssa = phi i32 [ %tmp.sroa.0.12.tmp.sroa.0.12.tmp.sroa.0.12.datum.sroa.14.0.copyload, %do.end15.while.end_crit_edge ], [ %tmp25.sroa.0.12.tmp25.sroa.0.12.tmp25.sroa.0.12.datum.sroa.14.0.copyload171, %map_word_load.exit267.while.end_crit_edge ]
  %datum.sroa.11.0.lcssa = phi i32 [ %tmp.sroa.0.8.tmp.sroa.0.8.tmp.sroa.0.8.datum.sroa.11.0.copyload, %do.end15.while.end_crit_edge ], [ %tmp25.sroa.0.8.tmp25.sroa.0.8.tmp25.sroa.0.8.datum.sroa.11.0.copyload170, %map_word_load.exit267.while.end_crit_edge ]
  %datum.sroa.8.0.lcssa = phi i32 [ %tmp.sroa.0.4.tmp.sroa.0.4.tmp.sroa.0.4.datum.sroa.8.0.copyload, %do.end15.while.end_crit_edge ], [ %tmp25.sroa.0.4.tmp25.sroa.0.4.tmp25.sroa.0.4.datum.sroa.8.0.copyload169, %map_word_load.exit267.while.end_crit_edge ]
  %datum.sroa.0.0.lcssa = phi i32 [ %tmp.sroa.0.0.tmp.sroa.0.0.tmp.sroa.0.0.datum.sroa.0.0.copyload, %do.end15.while.end_crit_edge ], [ %tmp25.sroa.0.0.tmp25.sroa.0.0.tmp25.sroa.0.0.datum.sroa.0.0.copyload168, %map_word_load.exit267.while.end_crit_edge ]
  %.lcssa = phi i32 [ %64, %do.end15.while.end_crit_edge ], [ %89, %map_word_load.exit267.while.end_crit_edge ]
  %sub33 = sub i32 %z.0.lcssa, %.lcssa
  %add34 = add i32 %sub33, %add
  %90 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp36, i32 noundef 41, ptr noundef %map, ptr noundef %1) #14
  %92 = ptrtoint ptr %agg.tmp36 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.fca.0.load = load i32, ptr %agg.tmp36, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp36, i32 0, i32 1
  %93 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %93)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp36, i32 0, i32 2
  %94 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %94)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp36, i32 0, i32 3
  %95 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %95)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp36, i32 0, i32 4
  %96 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %96)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp36, i32 0, i32 5
  %97 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %97)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp36, i32 0, i32 6
  %98 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %98)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp36, i32 0, i32 7
  %99 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %99)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %91(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add) #14
  %100 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 7, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %mutex) #14
  %inval_cache = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 11
  %101 = ptrtoint ptr %inval_cache to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %inval_cache, align 4
  %tobool42.not = icmp eq ptr %102, null
  br i1 %tobool42.not, label %while.end.do.end48_crit_edge, label %if.then43

while.end.do.end48_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end48

if.then43:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bankwidth.i, align 4
  call void %102(ptr noundef %map, i32 noundef %add34, i32 noundef %104) #14
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %while.end.do.end48_crit_edge
  %word_write_time = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 9
  %105 = ptrtoint ptr %word_write_time to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %word_write_time, align 4
  call void @cfi_udelay(i32 noundef %106) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %.fca.0.insert146 = insertvalue [8 x i32] poison, i32 %datum.sroa.0.0.lcssa, 0
  %.fca.1.insert149 = insertvalue [8 x i32] %.fca.0.insert146, i32 %datum.sroa.8.0.lcssa, 1
  %.fca.2.insert152 = insertvalue [8 x i32] %.fca.1.insert149, i32 %datum.sroa.11.0.lcssa, 2
  %.fca.3.insert155 = insertvalue [8 x i32] %.fca.2.insert152, i32 %datum.sroa.14.0.lcssa, 3
  %.fca.4.insert158 = insertvalue [8 x i32] %.fca.3.insert155, i32 %datum.sroa.17.0.lcssa, 4
  %.fca.5.insert161 = insertvalue [8 x i32] %.fca.4.insert158, i32 %datum.sroa.20.0.lcssa, 5
  %.fca.6.insert164 = insertvalue [8 x i32] %.fca.5.insert161, i32 %datum.sroa.23.0.lcssa, 6
  %.fca.7.insert167 = insertvalue [8 x i32] %.fca.6.insert164, i32 %datum.sroa.26.0.lcssa, 7
  %call53 = call fastcc i32 @do_write_buffer_wait(ptr noundef %map, ptr noundef %chip, i32 noundef %add34, [8 x i32] %.fca.7.insert167)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end48.if.end56_crit_edge, label %if.then55

do.end48.if.end56_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then55:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %addr_unlock1, align 4
  %109 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %chip, align 4
  %111 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %device_type, align 4
  %call.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %108, i32 noundef %110, ptr noundef %map, ptr noundef %1, i32 noundef %112, ptr noundef null) #14
  %113 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %addr_unlock2, align 4
  %115 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %chip, align 4
  %117 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %device_type, align 4
  %call3.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %114, i32 noundef %116, ptr noundef %map, ptr noundef %1, i32 noundef %118, ptr noundef null) #14
  %119 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %addr_unlock1, align 4
  %121 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %chip, align 4
  %123 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %device_type, align 4
  %call7.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef %120, i32 noundef %122, ptr noundef %map, ptr noundef %1, i32 noundef %124, ptr noundef null) #14
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %do.end48.if.end56_crit_edge
  %125 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %state, align 4
  %126 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %set_vpp, align 4
  %tobool60.not = icmp eq ptr %127, null
  br i1 %tobool60.not, label %if.end56.do.end65_crit_edge, label %if.then61

if.end56.do.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  call void %127(ptr noundef %map, i32 noundef 0) #14
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %if.end56.do.end65_crit_edge
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call53, %do.end65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %mode) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !242) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %13 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fldrv_priv, align 4
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmdset_priv, align 4
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp72 = icmp eq i32 %mode, 0
  %oldstate75 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %tobool59.not = icmp eq ptr %16, null
  %EraseSuspend61 = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %16, i32 0, i32 4
  %in_progress_block_mask = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 6
  %in_progress_block_addr = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 5
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  br label %resettime

resettime:                                        ; preds = %__here, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %17, 100
  br label %retry

retry:                                            ; preds = %if.end5, %resettime
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %19, label %retry.__here_crit_edge [
    i32 1, label %for.cond
    i32 0, label %retry.cleanup.loopexit_crit_edge
    i32 2, label %retry.cleanup.loopexit_crit_edge257
    i32 3, label %retry.cleanup.loopexit_crit_edge258
    i32 4, label %sw.bb8
    i32 18, label %sw.bb52
    i32 20, label %retry.cleanup_crit_edge
    i32 17, label %sw.bb71
  ]

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

retry.cleanup.loopexit_crit_edge258:              ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.loopexit

retry.cleanup.loopexit_crit_edge257:              ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.loopexit

retry.cleanup.loopexit_crit_edge:                 ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.loopexit

retry.__here_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

for.cond:                                         ; preds = %retry
  %call2 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %adr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %for.cond.cleanup.loopexit_crit_edge

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.loopexit

if.end:                                           ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %21
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @cfi_udelay(i32 noundef 1) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  br label %retry

sw.bb8:                                           ; preds = %retry
  br i1 %tobool59.not, label %sw.bb8.__here_crit_edge, label %lor.lhs.false

sw.bb8.__here_crit_edge:                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

lor.lhs.false:                                    ; preds = %sw.bb8
  %22 = ptrtoint ptr %EraseSuspend61 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %EraseSuspend61, align 1
  %conv = zext i8 %23 to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false.__here_crit_edge, label %lor.lhs.false11

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %24 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %mode, label %lor.lhs.false11.__here_crit_edge [
    i32 0, label %lor.lhs.false11.if.end25_crit_edge
    i32 17, label %lor.lhs.false11.if.end25_crit_edge259
    i32 7, label %land.lhs.true
  ]

lor.lhs.false11.if.end25_crit_edge259:            ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

lor.lhs.false11.if.end25_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

lor.lhs.false11.__here_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

land.lhs.true:                                    ; preds = %lor.lhs.false11
  %and22 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true.__here_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true.__here_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %lor.lhs.false11.if.end25_crit_edge, %lor.lhs.false11.if.end25_crit_edge259
  %25 = ptrtoint ptr %in_progress_block_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in_progress_block_mask, align 4
  %and26 = and i32 %26, %adr
  %27 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in_progress_block_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %28)
  %cmp27 = icmp eq i32 %and26, %28
  br i1 %cmp27, label %if.end25.__here_crit_edge, label %if.end30

if.end25.__here_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

if.end30:                                         ; preds = %if.end25
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %29 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 176, ptr noundef %map, ptr noundef %14) #14
  %31 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_progress_block_addr, align 4
  %33 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %33)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %34 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %35 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %36 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %37 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %38 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %39 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %40 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %30(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %32) #14
  %41 = ptrtoint ptr %oldstate75 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %oldstate75, align 4
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %state, align 4
  %erase_suspended = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 4
  %43 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %erase_suspended, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %erase_suspended, align 4
  %call34218 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %adr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34218)
  %tobool35.not219 = icmp eq i32 %call34218, 0
  br i1 %tobool35.not219, label %if.end30.if.end37_crit_edge, label %if.end30.for.end50_crit_edge

if.end30.for.end50_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end50

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  br label %if.end37

if.end37:                                         ; preds = %if.end47.if.end37_crit_edge, %if.end30.if.end37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub38 = sub i32 %add, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub38)
  %cmp39 = icmp slt i32 %sub38, 0
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41) #18
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @cfi_udelay(i32 noundef 1) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call34 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %adr)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end47.if.end37_crit_edge, label %if.end47.for.end50_crit_edge

if.end47.for.end50_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end50

if.end47.if.end37_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

for.end50:                                        ; preds = %if.end47.for.end50_crit_edge, %if.end30.for.end50_crit_edge
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %state, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %retry
  %46 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %mode, label %land.lhs.true58 [
    i32 0, label %sw.bb52.if.end66_crit_edge
    i32 17, label %sw.bb52.if.end66_crit_edge260
  ]

sw.bb52.if.end66_crit_edge260:                    ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

sw.bb52.if.end66_crit_edge:                       ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true58:                                  ; preds = %sw.bb52
  br i1 %tobool59.not, label %land.lhs.true58.__here_crit_edge, label %lor.lhs.false60

land.lhs.true58.__here_crit_edge:                 ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

lor.lhs.false60:                                  ; preds = %land.lhs.true58
  %47 = ptrtoint ptr %EraseSuspend61 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %EraseSuspend61, align 1
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool64.not = icmp eq i8 %49, 0
  br i1 %tobool64.not, label %lor.lhs.false60.__here_crit_edge, label %lor.lhs.false60.if.end66_crit_edge

lor.lhs.false60.if.end66_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

lor.lhs.false60.__here_crit_edge:                 ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

if.end66:                                         ; preds = %lor.lhs.false60.if.end66_crit_edge, %sw.bb52.if.end66_crit_edge, %sw.bb52.if.end66_crit_edge260
  %50 = ptrtoint ptr %oldstate75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 18, ptr %oldstate75, align 4
  %51 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %state, align 4
  br label %cleanup

sw.bb71:                                          ; preds = %retry
  br i1 %cmp72, label %land.lhs.true74, label %sw.bb71.__here_crit_edge

sw.bb71.__here_crit_edge:                         ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

land.lhs.true74:                                  ; preds = %sw.bb71
  %52 = ptrtoint ptr %oldstate75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %oldstate75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp76 = icmp eq i32 %53, 0
  br i1 %cmp76, label %land.lhs.true74.cleanup_crit_edge, label %land.lhs.true74.__here_crit_edge

land.lhs.true74.__here_crit_edge:                 ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

land.lhs.true74.cleanup_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

__here:                                           ; preds = %land.lhs.true74.__here_crit_edge, %sw.bb71.__here_crit_edge, %lor.lhs.false60.__here_crit_edge, %land.lhs.true58.__here_crit_edge, %if.end25.__here_crit_edge, %land.lhs.true.__here_crit_edge, %lor.lhs.false11.__here_crit_edge, %lor.lhs.false.__here_crit_edge, %sw.bb8.__here_crit_edge, %retry.__here_crit_edge
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 212
  %56 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 ptrtoint (ptr blockaddress(@get_chip, %__here) to i32), ptr %task_state_change, align 4
  %57 = load ptr, ptr %task, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 2, ptr %57, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !284
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  br label %resettime

cleanup.loopexit:                                 ; preds = %for.cond.cleanup.loopexit_crit_edge, %retry.cleanup.loopexit_crit_edge, %retry.cleanup.loopexit_crit_edge257, %retry.cleanup.loopexit_crit_edge258
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true74.cleanup_crit_edge, %if.end66, %for.end50, %if.then41, %do.end, %retry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66 ], [ 0, %for.end50 ], [ -5, %if.then41 ], [ -5, %do.end ], [ 0, %cleanup.loopexit ], [ -5, %retry.cleanup_crit_edge ], [ 0, %land.lhs.true74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_udelay(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_write_buffer_wait(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_write_time_max = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 13
  %0 = ptrtoint ptr %buffer_write_time_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_write_time_max, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, %call3.i
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %mutex90 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  %7 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %__here, %entry
  %timeo.0.ph = phi i32 [ %add66, %__here ], [ %add, %entry ]
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp.not143 = icmp eq i32 %9, 7
  br i1 %cmp.not143, label %for.cond.outer.if.end68_crit_edge, label %for.cond.outer.if.then_crit_edge

for.cond.outer.if.then_crit_edge:                 ; preds = %for.cond.outer
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.outer.if.end68_crit_edge:                ; preds = %for.cond.outer
  br label %if.end68

if.then:                                          ; preds = %do.body89.if.then_crit_edge, %for.cond.outer.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %10 = call ptr @memset(ptr %7, i32 255, i32 16)
  %11 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait, align 4
  %12 = call i32 @llvm.read_register.i32(metadata !242) #14
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %3, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @default_wake_function, ptr %4, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %5, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %6, align 4
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@do_write_buffer_wait, %__here) to i32), ptr %task_state_change, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 2, ptr %23, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !285
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_unlock(ptr noundef %mutex90) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add66 = add i32 %25, 50
  call void @mutex_lock_nested(ptr noundef %mutex90, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  br label %for.cond.outer

if.end68:                                         ; preds = %do.body89.if.end68_crit_edge, %for.cond.outer.if.end68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %timeo.0.ph, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp69 = icmp slt i32 %sub, 0
  br i1 %cmp69, label %land.lhs.true, label %if.end68.if.end79_crit_edge

if.end68.if.end79_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end68
  %call71 = call fastcc i32 @chip_good(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.end76, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

do.end76:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %adr) #18
  br label %for.end

if.end79:                                         ; preds = %land.lhs.true.if.end79_crit_edge, %if.end68.if.end79_crit_edge
  %call81 = call fastcc i32 @chip_good(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.body89, label %if.then83

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %call84 = call fastcc i32 @cfi_check_err_status(ptr noundef %map, ptr noundef %chip, i32 noundef %adr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  %spec.select = select i1 %tobool85.not, i32 0, i32 -5
  br label %for.end

do.body89:                                        ; preds = %if.end79
  call void @mutex_unlock(ptr noundef %mutex90) #14
  call void @cfi_udelay(i32 noundef 1) #14
  call void @mutex_lock_nested(ptr noundef %mutex90, i32 noundef 0) #14
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state, align 4
  %cmp.not = icmp eq i32 %28, 7
  br i1 %cmp.not, label %do.body89.if.end68_crit_edge, label %do.body89.if.then_crit_edge

do.body89.if.then_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.body89.if.end68_crit_edge:                     ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

for.end:                                          ; preds = %if.then83, %do.end76
  %ret.0 = phi i32 [ -5, %do.end76 ], [ %spec.select, %if.then83 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_chip(ptr noundef %map, ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %oldstate = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oldstate, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %1, label %do.end [
    i32 4, label %sw.bb
    i32 18, label %sw.bb3
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge27
  ]

entry.sw.epilog_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %3 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fldrv_priv, align 4
  %in_progress_block_addr = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 5
  %5 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_progress_block_addr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp.i)
  %mfr.i.i = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %mfr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mfr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 137
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sw.bb.cfi_fixup_m29ew_erase_suspend.exit_crit_edge

sw.bb.cfi_fixup_m29ew_erase_suspend.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cfi_fixup_m29ew_erase_suspend.exit

land.lhs.true.i.i:                                ; preds = %sw.bb
  %device_type.i.i = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %device_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_type.i.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %10, label %land.lhs.true.i.i.cfi_fixup_m29ew_erase_suspend.exit_crit_edge [
    i32 1, label %land.lhs.true2.i.i
    i32 2, label %land.lhs.true6.i.i
  ]

land.lhs.true.i.i.cfi_fixup_m29ew_erase_suspend.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cfi_fixup_m29ew_erase_suspend.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %id.i.i = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 10
  %12 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i.i, align 4
  %and.i.i = and i32 %13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and.i.i)
  %cmp3.i.i = icmp eq i32 %and.i.i, 126
  br i1 %cmp3.i.i, label %land.lhs.true2.i.i.if.then.i_crit_edge, label %land.lhs.true2.i.i.cfi_fixup_m29ew_erase_suspend.exit_crit_edge

land.lhs.true2.i.i.cfi_fixup_m29ew_erase_suspend.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cfi_fixup_m29ew_erase_suspend.exit

land.lhs.true2.i.i.if.then.i_crit_edge:           ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %id7.i.i = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 10
  %14 = ptrtoint ptr %id7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8830, i32 %15)
  %cmp8.i.i = icmp eq i32 %15, 8830
  br i1 %cmp8.i.i, label %land.lhs.true6.i.i.if.then.i_crit_edge, label %land.lhs.true6.i.i.cfi_fixup_m29ew_erase_suspend.exit_crit_edge

land.lhs.true6.i.i.cfi_fixup_m29ew_erase_suspend.exit_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cfi_fixup_m29ew_erase_suspend.exit

land.lhs.true6.i.i.if.then.i_crit_edge:           ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true6.i.i.if.then.i_crit_edge, %land.lhs.true2.i.i.if.then.i_crit_edge
  %write.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp.i, i32 noundef 240, ptr noundef %map, ptr noundef %4) #14
  %18 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.0.load.i = load i32, ptr %agg.tmp.i, align 4
  %.fca.0.insert.i = insertvalue [8 x i32] poison, i32 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 1
  %19 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [8 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %.fca.2.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 2
  %20 = ptrtoint ptr %.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.2.load.i = load i32, ptr %.fca.2.gep.i, align 4
  %.fca.2.insert.i = insertvalue [8 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  %.fca.3.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 3
  %21 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.3.insert.i = insertvalue [8 x i32] %.fca.2.insert.i, i32 %.fca.3.load.i, 3
  %.fca.4.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 4
  %22 = ptrtoint ptr %.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.fca.4.load.i = load i32, ptr %.fca.4.gep.i, align 4
  %.fca.4.insert.i = insertvalue [8 x i32] %.fca.3.insert.i, i32 %.fca.4.load.i, 4
  %.fca.5.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 5
  %23 = ptrtoint ptr %.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.5.load.i = load i32, ptr %.fca.5.gep.i, align 4
  %.fca.5.insert.i = insertvalue [8 x i32] %.fca.4.insert.i, i32 %.fca.5.load.i, 5
  %.fca.6.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 6
  %24 = ptrtoint ptr %.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.6.load.i = load i32, ptr %.fca.6.gep.i, align 4
  %.fca.6.insert.i = insertvalue [8 x i32] %.fca.5.insert.i, i32 %.fca.6.load.i, 6
  %.fca.7.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 7
  %25 = ptrtoint ptr %.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.7.load.i = load i32, ptr %.fca.7.gep.i, align 4
  %.fca.7.insert.i = insertvalue [8 x i32] %.fca.6.insert.i, i32 %.fca.7.load.i, 7
  call void %17(ptr noundef %map, [8 x i32] %.fca.7.insert.i, i32 noundef %6) #14
  br label %cfi_fixup_m29ew_erase_suspend.exit

cfi_fixup_m29ew_erase_suspend.exit:               ; preds = %if.then.i, %land.lhs.true6.i.i.cfi_fixup_m29ew_erase_suspend.exit_crit_edge, %land.lhs.true2.i.i.cfi_fixup_m29ew_erase_suspend.exit_crit_edge, %land.lhs.true.i.i.cfi_fixup_m29ew_erase_suspend.exit_crit_edge, %sw.bb.cfi_fixup_m29ew_erase_suspend.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp.i)
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %26 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write, align 4
  %sector_erase_cmd = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 12
  %28 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %in_progress_block_addr, align 4
  %30 = ptrtoint ptr %sector_erase_cmd to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack = load i32, ptr %sector_erase_cmd, align 4
  %31 = insertvalue [8 x i32] undef, i32 %.unpack, 0
  %.elt1 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 12, i32 0, i32 1
  %32 = ptrtoint ptr %.elt1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack2 = load i32, ptr %.elt1, align 4
  %33 = insertvalue [8 x i32] %31, i32 %.unpack2, 1
  %.elt3 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 12, i32 0, i32 2
  %34 = ptrtoint ptr %.elt3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack4 = load i32, ptr %.elt3, align 4
  %35 = insertvalue [8 x i32] %33, i32 %.unpack4, 2
  %.elt5 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 12, i32 0, i32 3
  %36 = ptrtoint ptr %.elt5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack6 = load i32, ptr %.elt5, align 4
  %37 = insertvalue [8 x i32] %35, i32 %.unpack6, 3
  %.elt7 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 12, i32 0, i32 4
  %38 = ptrtoint ptr %.elt7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack8 = load i32, ptr %.elt7, align 4
  %39 = insertvalue [8 x i32] %37, i32 %.unpack8, 4
  %.elt9 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 12, i32 0, i32 5
  %40 = ptrtoint ptr %.elt9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack10 = load i32, ptr %.elt9, align 4
  %41 = insertvalue [8 x i32] %39, i32 %.unpack10, 5
  %.elt11 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 12, i32 0, i32 6
  %42 = ptrtoint ptr %.elt11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack12 = load i32, ptr %.elt11, align 4
  %43 = insertvalue [8 x i32] %41, i32 %.unpack12, 6
  %.elt13 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 12, i32 0, i32 7
  %44 = ptrtoint ptr %.elt13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack14 = load i32, ptr %.elt13, align 4
  %45 = insertvalue [8 x i32] %43, i32 %.unpack14, 7
  call void %27(ptr noundef %map, [8 x i32] %45, i32 noundef %29) #14
  %46 = ptrtoint ptr %mfr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mfr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %47)
  %cmp.i.i16 = icmp eq i32 %47, 137
  br i1 %cmp.i.i16, label %land.lhs.true.i.i18, label %cfi_fixup_m29ew_erase_suspend.exit.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge

cfi_fixup_m29ew_erase_suspend.exit.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge: ; preds = %cfi_fixup_m29ew_erase_suspend.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cfi_fixup_m29ew_delay_after_resume.exit

land.lhs.true.i.i18:                              ; preds = %cfi_fixup_m29ew_erase_suspend.exit
  %device_type.i.i17 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 3
  %48 = ptrtoint ptr %device_type.i.i17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %device_type.i.i17, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %49, label %land.lhs.true.i.i18.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge [
    i32 1, label %land.lhs.true2.i.i22
    i32 2, label %land.lhs.true6.i.i25
  ]

land.lhs.true.i.i18.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge: ; preds = %land.lhs.true.i.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cfi_fixup_m29ew_delay_after_resume.exit

land.lhs.true2.i.i22:                             ; preds = %land.lhs.true.i.i18
  %id.i.i19 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 10
  %51 = ptrtoint ptr %id.i.i19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i.i19, align 4
  %and.i.i20 = and i32 %52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and.i.i20)
  %cmp3.i.i21 = icmp eq i32 %and.i.i20, 126
  br i1 %cmp3.i.i21, label %land.lhs.true2.i.i22.if.then.i26_crit_edge, label %land.lhs.true2.i.i22.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge

land.lhs.true2.i.i22.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge: ; preds = %land.lhs.true2.i.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cfi_fixup_m29ew_delay_after_resume.exit

land.lhs.true2.i.i22.if.then.i26_crit_edge:       ; preds = %land.lhs.true2.i.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i26

land.lhs.true6.i.i25:                             ; preds = %land.lhs.true.i.i18
  %id7.i.i23 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 10
  %53 = ptrtoint ptr %id7.i.i23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id7.i.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8830, i32 %54)
  %cmp8.i.i24 = icmp eq i32 %54, 8830
  br i1 %cmp8.i.i24, label %land.lhs.true6.i.i25.if.then.i26_crit_edge, label %land.lhs.true6.i.i25.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge

land.lhs.true6.i.i25.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge: ; preds = %land.lhs.true6.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cfi_fixup_m29ew_delay_after_resume.exit

land.lhs.true6.i.i25.if.then.i26_crit_edge:       ; preds = %land.lhs.true6.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i26

if.then.i26:                                      ; preds = %land.lhs.true6.i.i25.if.then.i26_crit_edge, %land.lhs.true2.i.i22.if.then.i26_crit_edge
  call void @cfi_udelay(i32 noundef 500) #14
  br label %cfi_fixup_m29ew_delay_after_resume.exit

cfi_fixup_m29ew_delay_after_resume.exit:          ; preds = %if.then.i26, %land.lhs.true6.i.i25.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge, %land.lhs.true2.i.i22.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge, %land.lhs.true.i.i18.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge, %cfi_fixup_m29ew_erase_suspend.exit.cfi_fixup_m29ew_delay_after_resume.exit_crit_edge
  %55 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %oldstate, align 4
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %56 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %state, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %state5 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %57 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 18, ptr %state5, align 4
  %58 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %oldstate, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %1) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb3, %cfi_fixup_m29ew_delay_after_resume.exit, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge27
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chip_ready(ptr noundef %map, ptr nocapture noundef readonly %chip, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  %d = alloca %union.map_word, align 4
  %t = alloca %union.map_word, align 4
  %ready = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d) #14
  %2 = call ptr @memset(ptr %d, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #14
  %cmdset_priv.i = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 1
  %3 = call ptr @memset(ptr %t, i32 255, i32 32)
  %4 = ptrtoint ptr %cmdset_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdset_priv.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end7_crit_edge, label %land.lhs.true.i

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

land.lhs.true.i:                                  ; preds = %entry
  %MinorVersion.i = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %MinorVersion.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %MinorVersion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %7)
  %cmp.i = icmp ugt i8 %7, 52
  br i1 %cmp.i, label %cfi_use_status_reg.exit, label %land.lhs.true.i.if.end7_crit_edge

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

cfi_use_status_reg.exit:                          ; preds = %land.lhs.true.i
  %SoftwareFeatures.i = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %5, i32 0, i32 17
  %8 = ptrtoint ptr %SoftwareFeatures.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %SoftwareFeatures.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp4.i.not = icmp eq i8 %10, 1
  br i1 %cmp4.i.not, label %if.then, label %cfi_use_status_reg.exit.if.end7_crit_edge

cfi_use_status_reg.exit.if.end7_crit_edge:        ; preds = %cfi_use_status_reg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %cfi_use_status_reg.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ready) #14
  %11 = call ptr @memset(ptr %ready, i32 255, i32 32)
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %ready, i32 noundef 128, ptr noundef %map, ptr noundef %1) #14
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr_unlock1, align 4
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_type, align 4
  %call1 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 112, i32 noundef %13, i32 noundef %15, ptr noundef %map, ptr noundef %1, i32 noundef %17, ptr noundef null) #14
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %18 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read, align 4
  call void %19(ptr nonnull sret(%union.map_word) align 4 %d, ptr noundef %map, i32 noundef %addr) #14
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %20 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bankwidth, align 4
  %add = add i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp57.not = icmp ult i32 %add, 4
  br i1 %cmp57.not, label %if.then.for.end_crit_edge, label %for.body.preheader

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %if.then
  %div55 = lshr i32 %add, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %div55
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.058 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x i32], ptr %d, i32 0, i32 %i.058
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [8 x i32], ptr %ready, i32 0, i32 %i.058
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %25, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %25)
  %cmp4.not = icmp eq i32 %and, %25
  br i1 %cmp4.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.then.for.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ready) #14
  br label %cleanup

if.end7:                                          ; preds = %cfi_use_status_reg.exit.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge, %entry.if.end7_crit_edge
  %read9 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %26 = ptrtoint ptr %read9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read9, align 4
  call void %27(ptr nonnull sret(%union.map_word) align 4 %d, ptr noundef %map, i32 noundef %addr) #14
  %28 = ptrtoint ptr %read9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read9, align 4
  call void %29(ptr nonnull sret(%union.map_word) align 4 %t, ptr noundef %map, i32 noundef %addr) #14
  %bankwidth15 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %30 = ptrtoint ptr %bankwidth15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bankwidth15, align 4
  %add16 = add i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add16)
  %cmp1860.not = icmp ult i32 %add16, 4
  br i1 %cmp1860.not, label %if.end7.cleanup_crit_edge, label %for.body19.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body19.preheader:                             ; preds = %if.end7
  %div1754 = lshr i32 %add16, 2
  br label %for.body19

for.cond14:                                       ; preds = %for.body19
  %inc26 = add nuw nsw i32 %i12.061, 1
  %exitcond65.not = icmp eq i32 %inc26, %div1754
  br i1 %exitcond65.not, label %for.cond14.cleanup_crit_edge, label %for.cond14.for.body19_crit_edge

for.cond14.for.body19_crit_edge:                  ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19

for.cond14.cleanup_crit_edge:                     ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body19:                                       ; preds = %for.cond14.for.body19_crit_edge, %for.body19.preheader
  %i12.061 = phi i32 [ %inc26, %for.cond14.for.body19_crit_edge ], [ 0, %for.body19.preheader ]
  %arrayidx20 = getelementptr [8 x i32], ptr %d, i32 0, i32 %i12.061
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr [8 x i32], ptr %t, i32 0, i32 %i12.061
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp22.not = icmp eq i32 %33, %35
  br i1 %cmp22.not, label %for.cond14, label %for.body19.cleanup_crit_edge

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body19.cleanup_crit_edge, %for.cond14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.end
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 1, %if.end7.cleanup_crit_edge ], [ 0, %for.body19.cleanup_crit_edge ], [ 1, %for.cond14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chip_good(ptr noundef %map, ptr nocapture noundef readonly %chip, i32 noundef %addr, [8 x i32] %expected.coerce) unnamed_addr #0 align 64 {
entry:
  %expected = alloca %union.map_word, align 4
  %oldd = alloca %union.map_word, align 4
  %curd = alloca %union.map_word, align 4
  %ready = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %expected.coerce.fca.0.extract = extractvalue [8 x i32] %expected.coerce, 0
  %0 = ptrtoint ptr %expected to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %expected.coerce.fca.0.extract, ptr %expected, align 4
  %expected.coerce.fca.1.extract = extractvalue [8 x i32] %expected.coerce, 1
  %expected.coerce.fca.1.gep = getelementptr inbounds [8 x i32], ptr %expected, i32 0, i32 1
  %1 = ptrtoint ptr %expected.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %expected.coerce.fca.1.extract, ptr %expected.coerce.fca.1.gep, align 4
  %expected.coerce.fca.2.extract = extractvalue [8 x i32] %expected.coerce, 2
  %expected.coerce.fca.2.gep = getelementptr inbounds [8 x i32], ptr %expected, i32 0, i32 2
  %2 = ptrtoint ptr %expected.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %expected.coerce.fca.2.extract, ptr %expected.coerce.fca.2.gep, align 4
  %expected.coerce.fca.3.extract = extractvalue [8 x i32] %expected.coerce, 3
  %expected.coerce.fca.3.gep = getelementptr inbounds [8 x i32], ptr %expected, i32 0, i32 3
  %3 = ptrtoint ptr %expected.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %expected.coerce.fca.3.extract, ptr %expected.coerce.fca.3.gep, align 4
  %expected.coerce.fca.4.extract = extractvalue [8 x i32] %expected.coerce, 4
  %expected.coerce.fca.4.gep = getelementptr inbounds [8 x i32], ptr %expected, i32 0, i32 4
  %4 = ptrtoint ptr %expected.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %expected.coerce.fca.4.extract, ptr %expected.coerce.fca.4.gep, align 4
  %expected.coerce.fca.5.extract = extractvalue [8 x i32] %expected.coerce, 5
  %expected.coerce.fca.5.gep = getelementptr inbounds [8 x i32], ptr %expected, i32 0, i32 5
  %5 = ptrtoint ptr %expected.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %expected.coerce.fca.5.extract, ptr %expected.coerce.fca.5.gep, align 4
  %expected.coerce.fca.6.extract = extractvalue [8 x i32] %expected.coerce, 6
  %expected.coerce.fca.6.gep = getelementptr inbounds [8 x i32], ptr %expected, i32 0, i32 6
  %6 = ptrtoint ptr %expected.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %expected.coerce.fca.6.extract, ptr %expected.coerce.fca.6.gep, align 4
  %expected.coerce.fca.7.extract = extractvalue [8 x i32] %expected.coerce, 7
  %expected.coerce.fca.7.gep = getelementptr inbounds [8 x i32], ptr %expected, i32 0, i32 7
  %7 = ptrtoint ptr %expected.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %expected.coerce.fca.7.extract, ptr %expected.coerce.fca.7.gep, align 4
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %8 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oldd) #14
  %10 = call ptr @memset(ptr %oldd, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %curd) #14
  %cmdset_priv.i = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 1
  %11 = call ptr @memset(ptr %curd, i32 255, i32 32)
  %12 = ptrtoint ptr %cmdset_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmdset_priv.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.if.end7_crit_edge, label %land.lhs.true.i

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

land.lhs.true.i:                                  ; preds = %entry
  %MinorVersion.i = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %MinorVersion.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %MinorVersion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %15)
  %cmp.i = icmp ugt i8 %15, 52
  br i1 %cmp.i, label %cfi_use_status_reg.exit, label %land.lhs.true.i.if.end7_crit_edge

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

cfi_use_status_reg.exit:                          ; preds = %land.lhs.true.i
  %SoftwareFeatures.i = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %13, i32 0, i32 17
  %16 = ptrtoint ptr %SoftwareFeatures.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %SoftwareFeatures.i, align 1
  %18 = and i8 %17, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp4.i.not = icmp eq i8 %18, 1
  br i1 %cmp4.i.not, label %if.then, label %cfi_use_status_reg.exit.if.end7_crit_edge

cfi_use_status_reg.exit.if.end7_crit_edge:        ; preds = %cfi_use_status_reg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %cfi_use_status_reg.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ready) #14
  %19 = call ptr @memset(ptr %ready, i32 255, i32 32)
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %ready, i32 noundef 128, ptr noundef %map, ptr noundef %9) #14
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 5
  %20 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr_unlock1, align 4
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 3
  %24 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device_type, align 4
  %call1 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 112, i32 noundef %21, i32 noundef %23, ptr noundef %map, ptr noundef %9, i32 noundef %25, ptr noundef null) #14
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %26 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read, align 4
  call void %27(ptr nonnull sret(%union.map_word) align 4 %curd, ptr noundef %map, i32 noundef %addr) #14
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %28 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bankwidth, align 4
  %add = add i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp83.not = icmp ult i32 %add, 4
  br i1 %cmp83.not, label %if.then.for.end_crit_edge, label %for.body.preheader

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %if.then
  %div79 = lshr i32 %add, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %div79
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.084 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x i32], ptr %curd, i32 0, i32 %i.084
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [8 x i32], ptr %ready, i32 0, i32 %i.084
  %32 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %33, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %33)
  %cmp4.not = icmp eq i32 %and, %33
  br i1 %cmp4.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.then.for.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ready) #14
  br label %cleanup

if.end7:                                          ; preds = %cfi_use_status_reg.exit.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge, %entry.if.end7_crit_edge
  %read9 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %34 = ptrtoint ptr %read9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read9, align 4
  call void %35(ptr nonnull sret(%union.map_word) align 4 %oldd, ptr noundef %map, i32 noundef %addr) #14
  %36 = ptrtoint ptr %read9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read9, align 4
  call void %37(ptr nonnull sret(%union.map_word) align 4 %curd, ptr noundef %map, i32 noundef %addr) #14
  %bankwidth15 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %38 = ptrtoint ptr %bankwidth15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bankwidth15, align 4
  %add16 = add i32 %39, 3
  %div1777 = lshr i32 %add16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add16)
  %cmp1886.not = icmp ult i32 %add16, 4
  br i1 %cmp1886.not, label %if.end7.cleanup_crit_edge, label %for.body19.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body19.preheader:                             ; preds = %if.end7
  %umax94 = call i32 @llvm.umax.i32(i32 %div1777, i32 1)
  br label %for.body19

for.cond14:                                       ; preds = %for.body19
  %inc26 = add nuw nsw i32 %i12.087, 1
  %exitcond95.not = icmp eq i32 %inc26, %umax94
  br i1 %exitcond95.not, label %for.cond32.preheader, label %for.cond14.for.body19_crit_edge

for.cond14.for.body19_crit_edge:                  ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19

for.cond32.preheader:                             ; preds = %for.cond14
  br i1 %cmp1886.not, label %for.cond32.preheader.cleanup_crit_edge, label %for.body37.preheader

for.cond32.preheader.cleanup_crit_edge:           ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body37.preheader:                             ; preds = %for.cond32.preheader
  %umax96 = call i32 @llvm.umax.i32(i32 %div1777, i32 1)
  br label %for.body37

for.body19:                                       ; preds = %for.cond14.for.body19_crit_edge, %for.body19.preheader
  %i12.087 = phi i32 [ %inc26, %for.cond14.for.body19_crit_edge ], [ 0, %for.body19.preheader ]
  %arrayidx20 = getelementptr [8 x i32], ptr %oldd, i32 0, i32 %i12.087
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr [8 x i32], ptr %curd, i32 0, i32 %i12.087
  %42 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp22.not = icmp eq i32 %41, %43
  br i1 %cmp22.not, label %for.cond14, label %for.body19.cleanup_crit_edge

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond32:                                       ; preds = %for.body37
  %inc44 = add nuw nsw i32 %i30.090, 1
  %exitcond97.not = icmp eq i32 %inc44, %umax96
  br i1 %exitcond97.not, label %for.cond32.cleanup_crit_edge, label %for.cond32.for.body37_crit_edge

for.cond32.for.body37_crit_edge:                  ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body37

for.cond32.cleanup_crit_edge:                     ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body37:                                       ; preds = %for.cond32.for.body37_crit_edge, %for.body37.preheader
  %i30.090 = phi i32 [ %inc44, %for.cond32.for.body37_crit_edge ], [ 0, %for.body37.preheader ]
  %arrayidx38 = getelementptr [8 x i32], ptr %curd, i32 0, i32 %i30.090
  %44 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr [8 x i32], ptr %expected, i32 0, i32 %i30.090
  %46 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp40.not = icmp eq i32 %45, %47
  br i1 %cmp40.not, label %for.cond32, label %for.body37.cleanup_crit_edge

for.body37.cleanup_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body37.cleanup_crit_edge, %for.cond32.cleanup_crit_edge, %for.body19.cleanup_crit_edge, %for.cond32.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.end
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 1, %for.cond32.preheader.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 1, %for.cond32.cleanup_crit_edge ], [ 0, %for.body37.cleanup_crit_edge ], [ 0, %for.body19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %curd) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oldd) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfi_check_err_status(ptr noundef %map, ptr nocapture noundef readonly %chip, i32 noundef %adr) unnamed_addr #0 align 64 {
entry:
  %status = alloca %union.map_word, align 4
  %tmp2 = alloca %union.map_word, align 4
  %tmp20 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #14
  %2 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 7
  %cmdset_priv.i = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 1
  %9 = call ptr @memset(ptr %status, i32 255, i32 32)
  %10 = ptrtoint ptr %cmdset_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmdset_priv.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.cleanup74_crit_edge, label %land.lhs.true.i

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

land.lhs.true.i:                                  ; preds = %entry
  %MinorVersion.i = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %MinorVersion.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %MinorVersion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %13)
  %cmp.i = icmp ugt i8 %13, 52
  br i1 %cmp.i, label %cfi_use_status_reg.exit, label %land.lhs.true.i.cleanup74_crit_edge

land.lhs.true.i.cleanup74_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

cfi_use_status_reg.exit:                          ; preds = %land.lhs.true.i
  %SoftwareFeatures.i = getelementptr inbounds %struct.cfi_pri_amdstd, ptr %11, i32 0, i32 17
  %14 = ptrtoint ptr %SoftwareFeatures.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %SoftwareFeatures.i, align 1
  %16 = and i8 %15, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp4.i.not = icmp eq i8 %16, 1
  br i1 %cmp4.i.not, label %if.end, label %cfi_use_status_reg.exit.cleanup74_crit_edge

cfi_use_status_reg.exit.cleanup74_crit_edge:      ; preds = %cfi_use_status_reg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

if.end:                                           ; preds = %cfi_use_status_reg.exit
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr_unlock1, align 4
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device_type, align 4
  %call1 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 112, i32 noundef %18, i32 noundef %20, ptr noundef %map, ptr noundef %1, i32 noundef %22, ptr noundef null) #14
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %23 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read, align 4
  call void %24(ptr nonnull sret(%union.map_word) align 4 %status, ptr noundef %map, i32 noundef %adr) #14
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %25 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bankwidth, align 4
  %add112 = add i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add112)
  %cmp114.not = icmp ult i32 %add112, 4
  br i1 %cmp114.not, label %if.end.cleanup74_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup74_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0115, 1
  %27 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bankwidth, align 4
  %add = add i32 %28, 3
  %div108 = lshr i32 %add, 2
  %cmp = icmp ult i32 %inc, %div108
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup74_crit_edge

for.cond.cleanup74_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0115 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0115
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp2, i32 noundef 128, ptr noundef %map, ptr noundef %1) #14
  %arrayidx3 = getelementptr [8 x i32], ptr %tmp2, i32 0, i32 %i.0115
  %31 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %32, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.cond, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.body
  %33 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bankwidth, align 4
  %add15116 = add i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add15116)
  %cmp17118.not = icmp ult i32 %add15116, 4
  br i1 %cmp17118.not, label %for.cond13.preheader.if.end73_crit_edge, label %for.cond13.preheader.for.body18_crit_edge

for.cond13.preheader.for.body18_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body18

for.cond13.preheader.if.end73_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

for.cond13:                                       ; preds = %for.body18
  %inc27 = add nuw nsw i32 %i11.0119, 1
  %35 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bankwidth, align 4
  %add15 = add i32 %36, 3
  %div16109 = lshr i32 %add15, 2
  %cmp17 = icmp ult i32 %inc27, %div16109
  br i1 %cmp17, label %for.cond13.for.body18_crit_edge, label %for.cond13.if.end73_crit_edge

for.cond13.if.end73_crit_edge:                    ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

for.cond13.for.body18_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body18

for.body18:                                       ; preds = %for.cond13.for.body18_crit_edge, %for.cond13.preheader.for.body18_crit_edge
  %i11.0119 = phi i32 [ %inc27, %for.cond13.for.body18_crit_edge ], [ 0, %for.cond13.preheader.for.body18_crit_edge ]
  %arrayidx19 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i11.0119
  %37 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx19, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp20, i32 noundef 58, ptr noundef %map, ptr noundef %1) #14
  %arrayidx21 = getelementptr [8 x i32], ptr %tmp20, i32 0, i32 %i11.0119
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %40, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %for.cond13, label %if.then31.critedge

if.then31.critedge:                               ; preds = %for.body18
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.0.load = load i32, ptr %status, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.1.load = load i32, ptr %2, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.2.load = load i32, ptr %3, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.3.load = load i32, ptr %4, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.4.load = load i32, ptr %5, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.5.load = load i32, ptr %6, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.6.load = load i32, ptr %7, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.fca.7.load = load i32, ptr %8, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %call32 = call i32 @cfi_merge_status([8 x i32] %.fca.7.insert, ptr noundef %map, ptr noundef %1) #14
  %and33 = and i32 %call32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then31.critedge.if.end38_crit_edge, label %do.end

if.then31.critedge.if.end38_crit_edge:            ; preds = %if.then31.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

do.end:                                           ; preds = %if.then31.critedge
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 4
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %50, i32 noundef %call32) #18
  br label %if.end38

if.end38:                                         ; preds = %do.end, %if.then31.critedge.if.end38_crit_edge
  %and39 = and i32 %call32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end48_crit_edge, label %do.end44

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map, align 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %52, i32 noundef %call32) #18
  br label %if.end48

if.end48:                                         ; preds = %do.end44, %if.end38.if.end48_crit_edge
  %and49 = and i32 %call32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end58_crit_edge, label %do.end54

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map, align 4
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %54, i32 noundef %call32) #18
  br label %if.end58

if.end58:                                         ; preds = %do.end54, %if.end48.if.end58_crit_edge
  %and59 = and i32 %call32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end68_crit_edge, label %do.end64

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map, align 4
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %56, i32 noundef %call32) #18
  br label %if.end68

if.end68:                                         ; preds = %do.end64, %if.end58.if.end68_crit_edge
  %and69 = and i32 %call32, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end73_crit_edge, label %if.end68.cleanup74_crit_edge

if.end68.cleanup74_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.end73:                                         ; preds = %if.end68.if.end73_crit_edge, %for.cond13.if.end73_crit_edge, %for.cond13.preheader.if.end73_crit_edge
  br label %cleanup74

cleanup74:                                        ; preds = %if.end73, %if.end68.cleanup74_crit_edge, %for.cond.cleanup74_crit_edge, %if.end.cleanup74_crit_edge, %cfi_use_status_reg.exit.cleanup74_crit_edge, %land.lhs.true.i.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  %retval.1 = phi i32 [ 0, %if.end73 ], [ 1, %if.end68.cleanup74_crit_edge ], [ 0, %cfi_use_status_reg.exit.cleanup74_crit_edge ], [ 0, %land.lhs.true.i.cleanup74_crit_edge ], [ 0, %entry.cleanup74_crit_edge ], [ 0, %if.end.cleanup74_crit_edge ], [ 0, %for.cond.cleanup74_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #14
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_merge_status([8 x i32], ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fixup_sst39vf(ptr nocapture noundef readonly %mtd) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cfiq.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions.i = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %NumEraseRegions.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %NumEraseRegions.i, align 1
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 21845, ptr %addr_unlock1, align 4
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10922, ptr %addr_unlock2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_use_fwh_lock(ptr nocapture noundef writeonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #18
  %_lock = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 38
  %0 = ptrtoint ptr %_lock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fwh_lock_varsize, ptr %_lock, align 4
  %_unlock = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 39
  %1 = ptrtoint ptr %_unlock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @fwh_unlock_varsize, ptr %_unlock, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwh_lock_varsize(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.fwh_xxlock_thunk, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %0 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %.compoundliteral, align 4
  %state = getelementptr inbounds %struct.fwh_xxlock_thunk, ptr %.compoundliteral, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %state, align 4
  %call = call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @fwh_xxlock_oneblock, i64 noundef %ofs, i32 noundef %conv, ptr noundef nonnull %.compoundliteral) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwh_unlock_varsize(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.fwh_xxlock_thunk, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %0 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %.compoundliteral, align 4
  %state = getelementptr inbounds %struct.fwh_xxlock_thunk, ptr %.compoundliteral, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %state, align 4
  %call = call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @fwh_xxlock_oneblock, i64 noundef %ofs, i32 noundef %conv, ptr noundef nonnull %.compoundliteral) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_varsize_frob(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwh_xxlock_oneblock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %len, ptr nocapture noundef readonly %thunk) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %3)
  %cmp = icmp ult i32 %3, 4194304
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwh_xxlock_oneblock.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwh_xxlock_oneblock, %if.then3)) #14
          to label %cleanup [label %if.then3], !srcloc !252

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fwh_xxlock_oneblock.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %5) #14
  br label %cleanup

if.end5:                                          ; preds = %entry
  %and = and i32 %adr, -65536
  %sub = add i32 %and, -4194302
  %add = add i32 %sub, %3
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call7 = tail call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %oldstate = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %8 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %oldstate, align 4
  %state12 = getelementptr inbounds %struct.fwh_xxlock_thunk, ptr %thunk, i32 0, i32 1
  %9 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state12, align 4
  store i32 %10, ptr %state, align 4
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  %13 = ptrtoint ptr %thunk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %thunk, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef %14, ptr noundef %map, ptr noundef %1) #14
  %15 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %16 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %17 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %18 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %19 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %20 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %21 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %22 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %12(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add) #14
  %23 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oldstate, align 4
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %state, align 4
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then3, %do.body
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.end11 ], [ -5, %if.then3 ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fixup_use_erase_chip(ptr nocapture noundef %mtd) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfiq, align 4
  %NumEraseRegions = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %NumEraseRegions to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %NumEraseRegions, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %EraseRegionInfo = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 21
  %8 = ptrtoint ptr %EraseRegionInfo to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %EraseRegionInfo, align 1
  %and = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 21
  %10 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cfi_amdstd_erase_chip, ptr %_erase, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fixup_use_atmel_lock(ptr nocapture noundef %mtd) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_lock = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 38
  %0 = ptrtoint ptr %_lock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cfi_atmel_lock, ptr %_lock, align 4
  %_unlock = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 39
  %1 = ptrtoint ptr %_unlock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cfi_atmel_unlock, ptr %_unlock, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 8192
  store i32 %or, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_amdstd_erase_chip(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %4 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %instr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not = icmp eq i64 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp1.not = icmp eq i64 %7, %9
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %chips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 15
  %call = tail call fastcc i32 @do_erase_chip(ptr noundef %1, ptr noundef %chips)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_erase_chip(ptr noundef %map, ptr noundef %chip) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %agg.tmp.sroa.0 = alloca [8 x i32], align 4
  %agg.tmp167 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !242) #14
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @default_wake_function, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr_unlock1, align 4
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call2 = tail call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %17, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_erase_chip.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_erase_chip, %if.then8)) #14
          to label %do.body10 [label %if.then8], !srcloc !252

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_erase_chip.__UNIQUE_ID_ddebug214, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %19) #14
  br label %do.body10

do.body10:                                        ; preds = %if.then8, %do.body
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %20 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_vpp, align 4
  %tobool11.not = icmp eq ptr %21, null
  br i1 %tobool11.not, label %do.body10.do.end16_crit_edge, label %if.then12

do.body10.do.end16_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

if.then12:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %21(ptr noundef %map, i32 noundef 1) #14
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body10.do.end16_crit_edge
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 6
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %erase_suspended = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 4
  %in_progress_block_addr = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 5
  %size = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %in_progress_block_mask = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 6
  %inval_cache = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 11
  %erase_time = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 11
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp167, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp167, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp167, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp167, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp167, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp167, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp167, i32 0, i32 7
  %agg.tmp.sroa.0.4..fca.1.gep192.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 4
  %agg.tmp.sroa.0.8..fca.2.gep195.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 8
  %agg.tmp.sroa.0.12..fca.3.gep198.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 12
  %agg.tmp.sroa.0.16..fca.4.gep201.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 16
  %agg.tmp.sroa.0.20..fca.5.gep204.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 20
  %agg.tmp.sroa.0.24..fca.6.gep207.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 24
  %agg.tmp.sroa.0.28..fca.7.gep210.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 28
  br label %retry

retry:                                            ; preds = %if.then166.retry_crit_edge, %do.end16
  %retry_cnt.0 = phi i32 [ 0, %do.end16 ], [ %inc, %if.then166.retry_crit_edge ]
  %22 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr_unlock1, align 4
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip, align 4
  %26 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %device_type, align 4
  %call19 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %23, i32 noundef %25, ptr noundef %map, ptr noundef %1, i32 noundef %27, ptr noundef null) #14
  %28 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr_unlock2, align 4
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chip, align 4
  %32 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %device_type, align 4
  %call22 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %29, i32 noundef %31, ptr noundef %map, ptr noundef %1, i32 noundef %33, ptr noundef null) #14
  %34 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr_unlock1, align 4
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip, align 4
  %38 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %device_type, align 4
  %call26 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -128, i32 noundef %35, i32 noundef %37, ptr noundef %map, ptr noundef %1, i32 noundef %39, ptr noundef null) #14
  %40 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr_unlock1, align 4
  %42 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chip, align 4
  %44 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %device_type, align 4
  %call30 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %41, i32 noundef %43, ptr noundef %map, ptr noundef %1, i32 noundef %45, ptr noundef null) #14
  %46 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr_unlock2, align 4
  %48 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chip, align 4
  %50 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %device_type, align 4
  %call34 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %47, i32 noundef %49, ptr noundef %map, ptr noundef %1, i32 noundef %51, ptr noundef null) #14
  %52 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr_unlock1, align 4
  %54 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chip, align 4
  %56 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %device_type, align 4
  %call38 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 16, i32 noundef %53, i32 noundef %55, ptr noundef %map, ptr noundef %1, i32 noundef %57, ptr noundef null) #14
  %58 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %state, align 4
  %59 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load = load i8, ptr %erase_suspended, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %erase_suspended, align 4
  %60 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %17, ptr %in_progress_block_addr, align 4
  %61 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size, align 4
  %neg = sub i32 0, %62
  %63 = ptrtoint ptr %in_progress_block_mask to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %neg, ptr %in_progress_block_mask, align 4
  call void @mutex_unlock(ptr noundef %mutex) #14
  %64 = ptrtoint ptr %inval_cache to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %inval_cache, align 4
  %tobool42.not = icmp eq ptr %65, null
  br i1 %tobool42.not, label %retry.do.end48_crit_edge, label %if.then43

retry.do.end48_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end48

if.then43:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size, align 4
  call void %65(ptr noundef %map, i32 noundef %17, i32 noundef %67) #14
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %retry.do.end48_crit_edge
  %68 = ptrtoint ptr %erase_time to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %erase_time, align 4
  %mul = mul i32 %69, 500
  call void @cfi_udelay(i32 noundef %mul) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add52 = add i32 %70, 2000
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %do.body160, %do.end48
  %timeo.0.ph = phi i32 [ %timeo.1, %do.body160 ], [ %add52, %do.end48 ]
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp.not313 = icmp eq i32 %72, 4
  br i1 %cmp.not313, label %for.cond.outer.if.end131_crit_edge, label %for.cond.outer.__here_crit_edge

for.cond.outer.__here_crit_edge:                  ; preds = %for.cond.outer
  br label %__here

for.cond.outer.if.end131_crit_edge:               ; preds = %for.cond.outer
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end131

__here:                                           ; preds = %__here.__here_crit_edge, %for.cond.outer.__here_crit_edge
  %73 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 212
  %75 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 ptrtoint (ptr blockaddress(@do_erase_chip, %__here) to i32), ptr %task_state_change, align 4
  %76 = load ptr, ptr %task, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 2, ptr %76, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !286
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %78 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %state, align 4
  %cmp.not = icmp eq i32 %79, 4
  br i1 %cmp.not, label %__here.if.end131_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here.if.end131_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end131

if.end131:                                        ; preds = %__here.if.end131_crit_edge, %for.cond.outer.if.end131_crit_edge
  %80 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load133 = load i8, ptr %erase_suspended, align 4
  %81 = and i8 %bf.load133, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool135.not = icmp eq i8 %81, 0
  br i1 %tobool135.not, label %if.end131.if.end142_crit_edge, label %if.then136

if.end131.if.end142_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end142

if.then136:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %add137 = add i32 %82, 2000
  %bf.clear140 = and i8 %bf.load133, -65
  %83 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %bf.clear140, ptr %erase_suspended, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then136, %if.end131.if.end142_crit_edge
  %timeo.1 = phi i32 [ %add137, %if.then136 ], [ %timeo.0.ph, %if.end131.if.end142_crit_edge ]
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %84 = call ptr @memset(ptr %agg.tmp.sroa.0, i32 255, i32 32)
  %85 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bankwidth.i, align 4, !noalias !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %86)
  %cmp.i = icmp slt i32 %86, 4
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = add nuw i32 %86, 3
  %div9.i = and i32 %add.i, -4
  %87 = call ptr @memset(ptr %agg.tmp.sroa.0, i32 255, i32 %div9.i)
  br label %map_word_ff.exit

if.then.i:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = shl i32 %86, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  %88 = ptrtoint ptr %agg.tmp.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub.i, ptr %agg.tmp.sroa.0, align 4, !alias.scope !287
  br label %map_word_ff.exit

map_word_ff.exit:                                 ; preds = %if.then.i, %for.body.preheader.i
  %89 = ptrtoint ptr %agg.tmp.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %89)
  %agg.tmp.sroa.0.0.agg.tmp.sroa.0.0.agg.tmp.sroa.0.0..fca.0.load190 = load i32, ptr %agg.tmp.sroa.0, align 4
  %.fca.0.insert191 = insertvalue [8 x i32] poison, i32 %agg.tmp.sroa.0.0.agg.tmp.sroa.0.0.agg.tmp.sroa.0.0..fca.0.load190, 0
  %90 = ptrtoint ptr %agg.tmp.sroa.0.4..fca.1.gep192.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %agg.tmp.sroa.0.4.agg.tmp.sroa.0.4.agg.tmp.sroa.0.4..fca.1.load193 = load i32, ptr %agg.tmp.sroa.0.4..fca.1.gep192.sroa_idx, align 4
  %.fca.1.insert194 = insertvalue [8 x i32] %.fca.0.insert191, i32 %agg.tmp.sroa.0.4.agg.tmp.sroa.0.4.agg.tmp.sroa.0.4..fca.1.load193, 1
  %91 = ptrtoint ptr %agg.tmp.sroa.0.8..fca.2.gep195.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %agg.tmp.sroa.0.8.agg.tmp.sroa.0.8.agg.tmp.sroa.0.8..fca.2.load196 = load i32, ptr %agg.tmp.sroa.0.8..fca.2.gep195.sroa_idx, align 4
  %.fca.2.insert197 = insertvalue [8 x i32] %.fca.1.insert194, i32 %agg.tmp.sroa.0.8.agg.tmp.sroa.0.8.agg.tmp.sroa.0.8..fca.2.load196, 2
  %92 = ptrtoint ptr %agg.tmp.sroa.0.12..fca.3.gep198.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %92)
  %agg.tmp.sroa.0.12.agg.tmp.sroa.0.12.agg.tmp.sroa.0.12..fca.3.load199 = load i32, ptr %agg.tmp.sroa.0.12..fca.3.gep198.sroa_idx, align 4
  %.fca.3.insert200 = insertvalue [8 x i32] %.fca.2.insert197, i32 %agg.tmp.sroa.0.12.agg.tmp.sroa.0.12.agg.tmp.sroa.0.12..fca.3.load199, 3
  %93 = ptrtoint ptr %agg.tmp.sroa.0.16..fca.4.gep201.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %93)
  %agg.tmp.sroa.0.16.agg.tmp.sroa.0.16.agg.tmp.sroa.0.16..fca.4.load202 = load i32, ptr %agg.tmp.sroa.0.16..fca.4.gep201.sroa_idx, align 4
  %.fca.4.insert203 = insertvalue [8 x i32] %.fca.3.insert200, i32 %agg.tmp.sroa.0.16.agg.tmp.sroa.0.16.agg.tmp.sroa.0.16..fca.4.load202, 4
  %94 = ptrtoint ptr %agg.tmp.sroa.0.20..fca.5.gep204.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %94)
  %agg.tmp.sroa.0.20.agg.tmp.sroa.0.20.agg.tmp.sroa.0.20..fca.5.load205 = load i32, ptr %agg.tmp.sroa.0.20..fca.5.gep204.sroa_idx, align 4
  %.fca.5.insert206 = insertvalue [8 x i32] %.fca.4.insert203, i32 %agg.tmp.sroa.0.20.agg.tmp.sroa.0.20.agg.tmp.sroa.0.20..fca.5.load205, 5
  %95 = ptrtoint ptr %agg.tmp.sroa.0.24..fca.6.gep207.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %95)
  %agg.tmp.sroa.0.24.agg.tmp.sroa.0.24.agg.tmp.sroa.0.24..fca.6.load208 = load i32, ptr %agg.tmp.sroa.0.24..fca.6.gep207.sroa_idx, align 4
  %.fca.6.insert209 = insertvalue [8 x i32] %.fca.5.insert206, i32 %agg.tmp.sroa.0.24.agg.tmp.sroa.0.24.agg.tmp.sroa.0.24..fca.6.load208, 6
  %96 = ptrtoint ptr %agg.tmp.sroa.0.28..fca.7.gep210.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %96)
  %agg.tmp.sroa.0.28.agg.tmp.sroa.0.28.agg.tmp.sroa.0.28..fca.7.load211 = load i32, ptr %agg.tmp.sroa.0.28..fca.7.gep210.sroa_idx, align 4
  %.fca.7.insert212 = insertvalue [8 x i32] %.fca.6.insert209, i32 %agg.tmp.sroa.0.28.agg.tmp.sroa.0.28.agg.tmp.sroa.0.28..fca.7.load211, 7
  %call143 = call fastcc i32 @chip_good(ptr noundef %map, ptr noundef %chip, i32 noundef %17, [8 x i32] %.fca.7.insert212)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end150, label %for.end

if.end150:                                        ; preds = %map_word_ff.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %sub151 = sub i32 %timeo.1, %97
  %cmp152 = icmp slt i32 %sub151, 0
  br i1 %cmp152, label %for.end.thread, label %do.body160

for.end.thread:                                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65) #18
  br label %if.then166

do.body160:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @cfi_udelay(i32 noundef 10000) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  br label %for.cond.outer

for.end:                                          ; preds = %map_word_ff.exit
  %call146 = call fastcc i32 @cfi_check_err_status(ptr noundef %map, ptr noundef %chip, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %for.end.if.end173_crit_edge, label %for.end.if.then166_crit_edge

for.end.if.then166_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then166

for.end.if.end173_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.then166:                                       ; preds = %for.end.if.then166_crit_edge, %for.end.thread
  %98 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp167, i32 noundef 240, ptr noundef %map, ptr noundef %1) #14
  %100 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %chip, align 4
  %102 = ptrtoint ptr %agg.tmp167 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.fca.0.load = load i32, ptr %agg.tmp167, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %103 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %103)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %104 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %104)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %105 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %105)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %106 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %106)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %107 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %107)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %108 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %108)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %109 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %109)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %99(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %101) #14
  %inc = add nuw nsw i32 %retry_cnt.0, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.then166.if.end173_crit_edge, label %if.then166.retry_crit_edge

if.then166.retry_crit_edge:                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry

if.then166.if.end173_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.end173:                                        ; preds = %if.then166.if.end173_crit_edge, %for.end.if.end173_crit_edge
  %ret.1312 = phi i32 [ -5, %if.then166.if.end173_crit_edge ], [ 0, %for.end.if.end173_crit_edge ]
  %110 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %state, align 4
  %111 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %set_vpp, align 4
  %tobool177.not = icmp eq ptr %112, null
  br i1 %tobool177.not, label %if.end173.do.end182_crit_edge, label %if.then178

if.end173.do.end182_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end182

if.then178:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #16
  call void %112(ptr noundef %map, i32 noundef 0) #14
  br label %do.end182

do.end182:                                        ; preds = %if.then178, %if.end173.do.end182_crit_edge
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end182, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %ret.1312, %do.end182 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_atmel_lock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %call = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_atmel_lock, i64 noundef %ofs, i32 noundef %conv, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_atmel_unlock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %call = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_atmel_unlock, i64 noundef %ofs, i32 noundef %conv, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_atmel_lock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %len, ptr nocapture noundef readnone %thunk) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  %add = add i32 %3, %adr
  %call = tail call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_atmel_lock.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_atmel_lock, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !252

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_atmel_lock.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, i32 noundef %adr, i32 noundef %len) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr_unlock1, align 4
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_type, align 4
  %call8 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %6, i32 noundef %8, ptr noundef %map, ptr noundef %1, i32 noundef %10, ptr noundef null) #14
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr_unlock2, align 4
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip, align 4
  %15 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_type, align 4
  %call11 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %12, i32 noundef %14, ptr noundef %map, ptr noundef %1, i32 noundef %16, ptr noundef null) #14
  %17 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr_unlock1, align 4
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip, align 4
  %21 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device_type, align 4
  %call15 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -128, i32 noundef %18, i32 noundef %20, ptr noundef %map, ptr noundef %1, i32 noundef %22, ptr noundef null) #14
  %23 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr_unlock1, align 4
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip, align 4
  %27 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %device_type, align 4
  %call19 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %24, i32 noundef %26, ptr noundef %map, ptr noundef %1, i32 noundef %28, ptr noundef null) #14
  %29 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr_unlock2, align 4
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip, align 4
  %33 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device_type, align 4
  %call23 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %30, i32 noundef %32, ptr noundef %map, ptr noundef %1, i32 noundef %34, ptr noundef null) #14
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %35 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 64, ptr noundef %map, ptr noundef %1) #14
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chip, align 4
  %add25 = add i32 %38, %adr
  %39 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %40 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %41 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %42 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %43 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %44 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %45 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %46 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %36(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add25) #14
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %state, align 4
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  br label %out_unlock

out_unlock:                                       ; preds = %do.end, %entry.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_atmel_unlock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %len, ptr nocapture noundef readnone %thunk) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  %add = add i32 %3, %adr
  %call = tail call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_atmel_unlock.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_atmel_unlock, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !252

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_atmel_unlock.__UNIQUE_ID_ddebug219, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %adr, i32 noundef %len) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr_unlock1, align 4
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_type, align 4
  %call8 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %6, i32 noundef %8, ptr noundef %map, ptr noundef %1, i32 noundef %10, ptr noundef null) #14
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 112, ptr noundef %map, ptr noundef %1) #14
  %13 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %14 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %15 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %16 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %17 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %18 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %19 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %20 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %12(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %adr) #14
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %state, align 4
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  br label %out_unlock

out_unlock:                                       ; preds = %do.end, %entry.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfi_amdstd_destroy(ptr noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  tail call fastcc void @cfi_amdstd_reset(ptr noundef %mtd)
  %reboot_notifier = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 51
  %call1 = tail call i32 @unregister_reboot_notifier(ptr noundef %reboot_notifier) #14
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdset_priv, align 4
  tail call void @kfree(ptr noundef %5) #14
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfiq, align 4
  tail call void @kfree(ptr noundef %7) #14
  tail call void @kfree(ptr noundef %3) #14
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %8 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eraseregions, align 4
  tail call void @kfree(ptr noundef %9) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cfi_amdstd_reset(ptr nocapture noundef readonly %mtd) unnamed_addr #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %write = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.02
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.02, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call = call fastcc i32 @get_chip(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %7, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 240, ptr noundef %1, ptr noundef %3) #14
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %13 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %14 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %15 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %16 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %17 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %18 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %19 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %9(ptr noundef %1, [8 x i32] %.fca.7.insert, i32 noundef %11) #14
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.02, i32 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 20, ptr %state, align 4
  call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #14
  %inc = add nuw nsw i32 %i.02, 1
  %21 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfi_amdstd_otp_walk(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf, ptr noundef readonly %action, i32 noundef %user_regs) unnamed_addr #0 align 64 {
entry:
  %val.i244 = alloca %union.map_word, align 4
  %val.i = alloca %union.map_word, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp30 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interleave, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_type, align 4
  %8 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %retlen, align 4
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp278 = icmp sgt i32 %10, 0
  br i1 %cmp278, label %for.body.lr.ph, label %entry.cleanup103_crit_edge

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

for.body.lr.ph:                                   ; preds = %entry
  %mfr.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 9
  %id7.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 10
  %mul = mul i32 %5, 3
  %mul6 = mul i32 %mul, %7
  %read.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 7
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %swap.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 5
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 5
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 6
  %write = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %.fca.1.gep130 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep133 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep136 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep139 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep142 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep145 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep148 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp30, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp30, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp30, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp30, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp30, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp30, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp30, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user_regs)
  %tobool41.not = icmp eq i32 %user_regs, 0
  %tobool55.not = icmp eq ptr %action, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %user_locked.0288 = phi i32 [ 0, %for.body.lr.ph ], [ %user_locked.1, %for.inc.for.body_crit_edge ]
  %factory_offset.0286 = phi i64 [ -1, %for.body.lr.ph ], [ %factory_offset.1, %for.inc.for.body_crit_edge ]
  %user_offset.0284 = phi i64 [ -1, %for.body.lr.ph ], [ %user_offset.1, %for.inc.for.body_crit_edge ]
  %chipnum.0282 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %from.addr.0281 = phi i64 [ %from, %for.body.lr.ph ], [ %from.addr.3, %for.inc.for.body_crit_edge ]
  %buf.addr.0280 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.3, %for.inc.for.body_crit_edge ]
  %len.addr.0279 = phi i32 [ %len, %for.body.lr.ph ], [ %len.addr.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0282
  %11 = ptrtoint ptr %mfr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mfr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %12)
  %cmp.i = icmp eq i32 %12, 137
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.if.end40_crit_edge

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true.i:                                  ; preds = %for.body
  %13 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_type, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %14, label %land.lhs.true.i.if.end40_crit_edge [
    i32 1, label %land.lhs.true2.i
    i32 2, label %land.lhs.true6.i
  ]

land.lhs.true.i.if.end40_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %id7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id7.i, align 4
  %and.i = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 126
  br i1 %cmp3.i, label %land.lhs.true2.i.if.then_crit_edge, label %land.lhs.true2.i.if.end40_crit_edge

land.lhs.true2.i.if.end40_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true2.i.if.then_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %id7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8830, i32 %19)
  %cmp8.i = icmp eq i32 %19, 8830
  br i1 %cmp8.i, label %land.lhs.true6.i.if.then_crit_edge, label %land.lhs.true6.i.if.end40_crit_edge

land.lhs.true6.i.if.end40_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true6.i.if.then_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %land.lhs.true6.i.if.then_crit_edge, %land.lhs.true2.i.if.then_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0282, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call1 = call fastcc i32 @get_chip(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %21, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup103.sink.split_crit_edge

if.then.cleanup103.sink.split_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103.sink.split

if.end:                                           ; preds = %if.then
  %call5 = call i32 @cfi_qry_mode_on(i32 noundef %21, ptr noundef %1, ptr noundef %3) #14
  %add = add i32 %21, %mul6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i) #14
  %22 = call ptr @memset(ptr %val.i, i32 255, i32 32)
  %23 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i, align 4
  call void %24(ptr nonnull sret(%union.map_word) align 4 %val.i, ptr noundef %1, i32 noundef %add) #14
  %25 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bankwidth.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %26, label %if.else31.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
  ]

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

if.then4.i:                                       ; preds = %if.end
  %30 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %cond.true7.i, label %cond.false9.i

cond.true7.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

cond.false9.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp16.i = icmp eq i32 %31, 3
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  br i1 %cmp16.i, label %cond.true18.i, label %cond.false22.i

cond.true18.i:                                    ; preds = %cond.false9.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv21.i = and i32 %36, 65535
  br label %cfi_read_query.exit

cond.false22.i:                                   ; preds = %cond.false9.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv24.i = trunc i32 %36 to i16
  %37 = call i16 @llvm.bswap.i16(i16 %conv24.i) #14
  %conv25.i = zext i16 %37 to i32
  br label %cfi_read_query.exit

if.else31.i:                                      ; preds = %if.end
  %38 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %cond.true40.i, label %cond.false42.i

cond.true40.i:                                    ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

cond.false42.i:                                   ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp49.i = icmp eq i32 %39, 3
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #14
  %spec.select.i = select i1 %cmp49.i, i32 %44, i32 %45
  br label %cfi_read_query.exit

cfi_read_query.exit:                              ; preds = %cond.false42.i, %cond.true40.i, %cond.false22.i, %cond.true18.i, %cond.true7.i, %if.then.i
  %retval.0.in.i = phi i32 [ %29, %if.then.i ], [ %34, %cond.true7.i ], [ %conv21.i, %cond.true18.i ], [ %conv25.i, %cond.false22.i ], [ %42, %cond.true40.i ], [ %spec.select.i, %cond.false42.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i) #14
  call void @cfi_qry_mode_off(i32 noundef %21, ptr noundef %1, ptr noundef %3) #14
  call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx)
  call void @mutex_unlock(ptr noundef %mutex) #14
  %46 = and i32 %retval.0.in.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool9.not = icmp eq i32 %46, 0
  br i1 %tobool9.not, label %if.else, label %cfi_read_query.exit.if.end40_crit_edge

cfi_read_query.exit.if.end40_crit_edge:           ; preds = %cfi_read_query.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.else:                                          ; preds = %cfi_read_query.exit
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call12 = call fastcc i32 @get_chip(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %21, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.else.cleanup103.sink.split_crit_edge

if.else.cleanup103.sink.split_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103.sink.split

if.end16:                                         ; preds = %if.else
  %47 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr_unlock1, align 4
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %51 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %device_type, align 4
  %call19 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %48, i32 noundef %50, ptr noundef %1, ptr noundef %3, i32 noundef %52, ptr noundef null) #14
  %53 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr_unlock2, align 4
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  %57 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %device_type, align 4
  %call22 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %54, i32 noundef %56, ptr noundef %1, ptr noundef %3, i32 noundef %58, ptr noundef null) #14
  %59 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr_unlock1, align 4
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 4
  %63 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %device_type, align 4
  %call26 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 64, i32 noundef %60, i32 noundef %62, ptr noundef %1, ptr noundef %3, i32 noundef %64, ptr noundef null) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i244) #14
  %65 = call ptr @memset(ptr %val.i244, i32 255, i32 32)
  %66 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read.i, align 4
  call void %67(ptr nonnull sret(%union.map_word) align 4 %val.i244, ptr noundef %1, i32 noundef 0) #14
  %68 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bankwidth.i, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %69, label %if.else31.i259 [
    i32 1, label %if.then.i247
    i32 2, label %if.then4.i249
  ]

if.then.i247:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %val.i244 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i244, align 4
  br label %cfi_read_query.exit266

if.then4.i249:                                    ; preds = %if.end16
  %73 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %75 = icmp ult i32 %74, 2
  br i1 %75, label %cond.true7.i250, label %cond.false9.i252

cond.true7.i250:                                  ; preds = %if.then4.i249
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %val.i244 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val.i244, align 4
  br label %cfi_read_query.exit266

cond.false9.i252:                                 ; preds = %if.then4.i249
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp16.i251 = icmp eq i32 %74, 3
  %78 = ptrtoint ptr %val.i244 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i244, align 4
  br i1 %cmp16.i251, label %cond.true18.i254, label %cond.false22.i257

cond.true18.i254:                                 ; preds = %cond.false9.i252
  call void @__sanitizer_cov_trace_pc() #16
  %conv21.i253 = and i32 %79, 65535
  br label %cfi_read_query.exit266

cond.false22.i257:                                ; preds = %cond.false9.i252
  call void @__sanitizer_cov_trace_pc() #16
  %conv24.i255 = trunc i32 %79 to i16
  %80 = call i16 @llvm.bswap.i16(i16 %conv24.i255) #14
  %conv25.i256 = zext i16 %80 to i32
  br label %cfi_read_query.exit266

if.else31.i259:                                   ; preds = %if.end16
  %81 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %83 = icmp ult i32 %82, 2
  br i1 %83, label %cond.true40.i260, label %cond.false42.i263

cond.true40.i260:                                 ; preds = %if.else31.i259
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %val.i244 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val.i244, align 4
  br label %cfi_read_query.exit266

cond.false42.i263:                                ; preds = %if.else31.i259
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp49.i261 = icmp eq i32 %82, 3
  %86 = ptrtoint ptr %val.i244 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %val.i244, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #14
  %spec.select.i262 = select i1 %cmp49.i261, i32 %87, i32 %88
  br label %cfi_read_query.exit266

cfi_read_query.exit266:                           ; preds = %cond.false42.i263, %cond.true40.i260, %cond.false22.i257, %cond.true18.i254, %cond.true7.i250, %if.then.i247
  %retval.0.in.i264 = phi i32 [ %72, %if.then.i247 ], [ %77, %cond.true7.i250 ], [ %conv21.i253, %cond.true18.i254 ], [ %conv25.i256, %cond.false22.i257 ], [ %85, %cond.true40.i260 ], [ %spec.select.i262, %cond.false42.i263 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i244) #14
  %89 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 144, ptr noundef %1, ptr noundef %3) #14
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx, align 4
  %93 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %93)
  %.fca.0.load128 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert129 = insertvalue [8 x i32] poison, i32 %.fca.0.load128, 0
  %94 = ptrtoint ptr %.fca.1.gep130 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.fca.1.load131 = load i32, ptr %.fca.1.gep130, align 4
  %.fca.1.insert132 = insertvalue [8 x i32] %.fca.0.insert129, i32 %.fca.1.load131, 1
  %95 = ptrtoint ptr %.fca.2.gep133 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.fca.2.load134 = load i32, ptr %.fca.2.gep133, align 4
  %.fca.2.insert135 = insertvalue [8 x i32] %.fca.1.insert132, i32 %.fca.2.load134, 2
  %96 = ptrtoint ptr %.fca.3.gep136 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.fca.3.load137 = load i32, ptr %.fca.3.gep136, align 4
  %.fca.3.insert138 = insertvalue [8 x i32] %.fca.2.insert135, i32 %.fca.3.load137, 3
  %97 = ptrtoint ptr %.fca.4.gep139 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.fca.4.load140 = load i32, ptr %.fca.4.gep139, align 4
  %.fca.4.insert141 = insertvalue [8 x i32] %.fca.3.insert138, i32 %.fca.4.load140, 4
  %98 = ptrtoint ptr %.fca.5.gep142 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.fca.5.load143 = load i32, ptr %.fca.5.gep142, align 4
  %.fca.5.insert144 = insertvalue [8 x i32] %.fca.4.insert141, i32 %.fca.5.load143, 5
  %99 = ptrtoint ptr %.fca.6.gep145 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.fca.6.load146 = load i32, ptr %.fca.6.gep145, align 4
  %.fca.6.insert147 = insertvalue [8 x i32] %.fca.5.insert144, i32 %.fca.6.load146, 6
  %100 = ptrtoint ptr %.fca.7.gep148 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.fca.7.load149 = load i32, ptr %.fca.7.gep148, align 4
  %.fca.7.insert150 = insertvalue [8 x i32] %.fca.6.insert147, i32 %.fca.7.load149, 7
  call void %90(ptr noundef %1, [8 x i32] %.fca.7.insert150, i32 noundef %92) #14
  %101 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp30, i32 noundef 0, ptr noundef %1, ptr noundef %3) #14
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx, align 4
  %105 = ptrtoint ptr %agg.tmp30 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.fca.0.load = load i32, ptr %agg.tmp30, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %106 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %106)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %107 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %107)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %108 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %108)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %109 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %109)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %110 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %110)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %111 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %111)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %112 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %112)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %102(ptr noundef %1, [8 x i32] %.fca.7.insert, i32 noundef %104) #14
  call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx)
  call void @mutex_unlock(ptr noundef %mutex) #14
  %113 = and i32 %retval.0.in.i264, 1
  %114 = xor i32 %113, 1
  br label %if.end40

if.end40:                                         ; preds = %cfi_read_query.exit266, %cfi_read_query.exit.if.end40_crit_edge, %land.lhs.true6.i.if.end40_crit_edge, %land.lhs.true2.i.if.end40_crit_edge, %land.lhs.true.i.if.end40_crit_edge, %for.body.if.end40_crit_edge
  %user_size.0 = phi i32 [ 256, %cfi_read_query.exit266 ], [ 0, %cfi_read_query.exit.if.end40_crit_edge ], [ 0, %for.body.if.end40_crit_edge ], [ 0, %land.lhs.true.i.if.end40_crit_edge ], [ 0, %land.lhs.true2.i.if.end40_crit_edge ], [ 0, %land.lhs.true6.i.if.end40_crit_edge ]
  %factory_size.0 = phi i32 [ 0, %cfi_read_query.exit266 ], [ 256, %cfi_read_query.exit.if.end40_crit_edge ], [ 0, %for.body.if.end40_crit_edge ], [ 0, %land.lhs.true.i.if.end40_crit_edge ], [ 0, %land.lhs.true2.i.if.end40_crit_edge ], [ 0, %land.lhs.true6.i.if.end40_crit_edge ]
  %user_offset.1 = phi i64 [ 0, %cfi_read_query.exit266 ], [ %user_offset.0284, %cfi_read_query.exit.if.end40_crit_edge ], [ %user_offset.0284, %for.body.if.end40_crit_edge ], [ %user_offset.0284, %land.lhs.true.i.if.end40_crit_edge ], [ %user_offset.0284, %land.lhs.true2.i.if.end40_crit_edge ], [ %user_offset.0284, %land.lhs.true6.i.if.end40_crit_edge ]
  %factory_offset.1 = phi i64 [ %factory_offset.0286, %cfi_read_query.exit266 ], [ 0, %cfi_read_query.exit.if.end40_crit_edge ], [ %factory_offset.0286, %for.body.if.end40_crit_edge ], [ %factory_offset.0286, %land.lhs.true.i.if.end40_crit_edge ], [ %factory_offset.0286, %land.lhs.true2.i.if.end40_crit_edge ], [ %factory_offset.0286, %land.lhs.true6.i.if.end40_crit_edge ]
  %user_locked.1 = phi i32 [ %114, %cfi_read_query.exit266 ], [ %user_locked.0288, %cfi_read_query.exit.if.end40_crit_edge ], [ %user_locked.0288, %for.body.if.end40_crit_edge ], [ %user_locked.0288, %land.lhs.true.i.if.end40_crit_edge ], [ %user_locked.0288, %land.lhs.true2.i.if.end40_crit_edge ], [ %user_locked.0288, %land.lhs.true6.i.if.end40_crit_edge ]
  %factory_size.0.user_size.0 = select i1 %tobool41.not, i32 %factory_size.0, i32 %user_size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %factory_size.0.user_size.0)
  %tobool42.not = icmp eq i32 %factory_size.0.user_size.0, 0
  br i1 %tobool42.not, label %if.end40.for.inc_crit_edge, label %if.end44

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end44:                                         ; preds = %if.end40
  %factory_offset.1.user_offset.1 = select i1 %tobool41.not, i64 %factory_offset.1, i64 %user_offset.1
  %cond54 = select i1 %tobool41.not, i32 1, i32 %user_locked.1
  br i1 %tobool55.not, label %if.then56, label %if.else66

if.then56:                                        ; preds = %if.end44
  %sub = add i32 %len.addr.0279, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp57 = icmp eq i32 %sub, 0
  br i1 %cmp57, label %if.then56.cleanup103_crit_edge, label %cleanup

if.then56.cleanup103_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

cleanup:                                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  %conv61 = trunc i64 %from.addr.0281 to i32
  %115 = ptrtoint ptr %buf.addr.0280 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv61, ptr %buf.addr.0280, align 4
  %length = getelementptr inbounds %struct.otp_info, ptr %buf.addr.0280, i32 0, i32 1
  %116 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %factory_size.0.user_size.0, ptr %length, align 4
  %locked = getelementptr inbounds %struct.otp_info, ptr %buf.addr.0280, i32 0, i32 2
  %117 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %cond54, ptr %locked, align 4
  %add.ptr = getelementptr i8, ptr %buf.addr.0280, i32 12
  %118 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %retlen, align 4
  %add63 = add i32 %119, 12
  store i32 %add63, ptr %retlen, align 4
  %conv64 = zext i32 %factory_size.0.user_size.0 to i64
  %add65 = add i64 %from.addr.0281, %conv64
  br label %for.inc

if.else66:                                        ; preds = %if.end44
  %conv67 = zext i32 %factory_size.0.user_size.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %from.addr.0281, i64 %conv67)
  %cmp68 = icmp sge i64 %from.addr.0281, %conv67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0279)
  %cmp70.not = icmp eq i32 %len.addr.0279, 0
  %or.cond = select i1 %cmp68, i1 true, i1 %cmp70.not
  br i1 %or.cond, label %if.else98, label %if.then72

if.then72:                                        ; preds = %if.else66
  %conv73 = zext i32 %len.addr.0279 to i64
  %sub75 = sub i64 %conv67, %from.addr.0281
  call void @__sanitizer_cov_trace_cmp8(i64 %sub75, i64 %conv73)
  %cmp76 = icmp sgt i64 %sub75, %conv73
  %extract.t242 = trunc i64 %sub75 to i32
  %cond84.off0 = select i1 %cmp76, i32 %len.addr.0279, i32 %extract.t242
  %add86 = add i64 %factory_offset.1.user_offset.1, %from.addr.0281
  %call87 = call i32 %action(ptr noundef %1, ptr noundef %arrayidx, i64 noundef %add86, i32 noundef %cond84.off0, ptr noundef %buf.addr.0280, i32 noundef %factory_size.0.user_size.0) #14, !callees !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then72.cleanup103_crit_edge, label %cleanup95

if.then72.cleanup103_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

cleanup95:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr92 = getelementptr i8, ptr %buf.addr.0280, i32 %cond84.off0
  %sub93 = sub i32 %len.addr.0279, %cond84.off0
  %120 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %retlen, align 4
  %add94 = add i32 %121, %cond84.off0
  store i32 %add94, ptr %retlen, align 4
  br label %for.inc

if.else98:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #16
  %sub100 = sub i64 %from.addr.0281, %conv67
  br label %for.inc

for.inc:                                          ; preds = %if.else98, %cleanup95, %cleanup, %if.end40.for.inc_crit_edge
  %len.addr.2 = phi i32 [ %sub93, %cleanup95 ], [ %len.addr.0279, %if.else98 ], [ %sub, %cleanup ], [ %len.addr.0279, %if.end40.for.inc_crit_edge ]
  %buf.addr.3 = phi ptr [ %add.ptr92, %cleanup95 ], [ %buf.addr.0280, %if.else98 ], [ %add.ptr, %cleanup ], [ %buf.addr.0280, %if.end40.for.inc_crit_edge ]
  %from.addr.3 = phi i64 [ 0, %cleanup95 ], [ %sub100, %if.else98 ], [ %add65, %cleanup ], [ %from.addr.0281, %if.end40.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %chipnum.0282, 1
  %122 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %123
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup103_crit_edge

for.inc.cleanup103_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup103.sink.split:                            ; preds = %if.else.cleanup103.sink.split_crit_edge, %if.then.cleanup103.sink.split_crit_edge
  %retval.4.ph = phi i32 [ %call1, %if.then.cleanup103.sink.split_crit_edge ], [ %call12, %if.else.cleanup103.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup103

cleanup103:                                       ; preds = %cleanup103.sink.split, %for.inc.cleanup103_crit_edge, %if.then72.cleanup103_crit_edge, %if.then56.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.4 = phi i32 [ 0, %entry.cleanup103_crit_edge ], [ %retval.4.ph, %cleanup103.sink.split ], [ 0, %for.inc.cleanup103_crit_edge ], [ -28, %if.then56.cleanup103_crit_edge ], [ %call87, %if.then72.cleanup103_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_qry_mode_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_qry_mode_off(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_otp_write(ptr noundef %map, ptr noundef %chip, i64 noundef %adr, i32 noundef %len, ptr nocapture noundef readonly %buf, i32 noundef %grouplen) #0 align 64 {
entry:
  %orig.i = alloca %union.map_word, align 4
  %datum.sroa.0 = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not138 = icmp eq i32 %len, 0
  br i1 %tobool.not138, label %entry.cleanup26_crit_edge, label %while.body.lr.ph

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup26

while.body.lr.ph:                                 ; preds = %entry
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %fldrv_priv.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %inval_cache.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 11
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %orig.coerce.fca.1.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 1
  %orig.coerce.fca.2.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 2
  %orig.coerce.fca.3.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 3
  %orig.coerce.fca.4.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 4
  %orig.coerce.fca.5.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 5
  %orig.coerce.fca.6.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 6
  %orig.coerce.fca.7.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 7
  %datum.sroa.0.4..sroa_idx = getelementptr inbounds i8, ptr %datum.sroa.0, i32 4
  %datum.sroa.0.8..sroa_idx = getelementptr inbounds i8, ptr %datum.sroa.0, i32 8
  %datum.sroa.0.12..sroa_idx = getelementptr inbounds i8, ptr %datum.sroa.0, i32 12
  %datum.sroa.0.16..sroa_idx = getelementptr inbounds i8, ptr %datum.sroa.0, i32 16
  %datum.sroa.0.20..sroa_idx = getelementptr inbounds i8, ptr %datum.sroa.0, i32 20
  %datum.sroa.0.24..sroa_idx = getelementptr inbounds i8, ptr %datum.sroa.0, i32 24
  %datum.sroa.0.28..sroa_idx = getelementptr inbounds i8, ptr %datum.sroa.0, i32 28
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %adr.addr.0143 = phi i64 [ %adr, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %buf.addr.0140 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %len.addr.0139 = phi i32 [ %len, %while.body.lr.ph ], [ %sub22, %cleanup.while.body_crit_edge ]
  %0 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bankwidth, align 4
  %neg = sub i32 0, %1
  %2 = trunc i64 %adr.addr.0143 to i32
  %conv1 = and i32 %neg, %2
  %conv4 = sub i32 %2, %conv1
  %sub6 = sub i32 %1, %conv4
  %3 = call i32 @llvm.smin.i32(i32 %len.addr.0139, i32 %sub6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %datum.sroa.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp slt i32 %1, 4
  %4 = call ptr @memset(ptr %datum.sroa.0, i32 255, i32 32)
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = add nuw i32 %1, 3
  %div9.i = and i32 %add.i, -4
  %5 = call ptr @memset(ptr %datum.sroa.0, i32 255, i32 %div9.i)
  br label %map_word_ff.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = shl i32 %1, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  %6 = ptrtoint ptr %datum.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.i, ptr %datum.sroa.0, align 4, !alias.scope !291
  br label %map_word_ff.exit

map_word_ff.exit:                                 ; preds = %if.then.i, %for.body.preheader.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp9.not = icmp eq i32 %3, %1
  br i1 %cmp9.not, label %map_word_ff.exit.if.end_crit_edge, label %if.then

map_word_ff.exit.if.end_crit_edge:                ; preds = %map_word_ff.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %map_word_ff.exit
  %7 = ptrtoint ptr %fldrv_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fldrv_priv.i, align 4
  %addr_unlock1.i = getelementptr inbounds %struct.cfi_private, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %addr_unlock1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr_unlock1.i, align 4
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip, align 4
  %device_type.i = getelementptr inbounds %struct.cfi_private, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_type.i, align 4
  %call.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %10, i32 noundef %12, ptr noundef %map, ptr noundef %8, i32 noundef %14, ptr noundef null) #14
  %addr_unlock2.i = getelementptr inbounds %struct.cfi_private, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %addr_unlock2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_unlock2.i, align 4
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chip, align 4
  %19 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %device_type.i, align 4
  %call3.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %16, i32 noundef %18, ptr noundef %map, ptr noundef %8, i32 noundef %20, ptr noundef null) #14
  %21 = ptrtoint ptr %addr_unlock1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr_unlock1.i, align 4
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chip, align 4
  %25 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %device_type.i, align 4
  %call7.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -120, i32 noundef %22, i32 noundef %24, ptr noundef %map, ptr noundef %8, i32 noundef %26, ptr noundef null) #14
  %27 = ptrtoint ptr %inval_cache.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inval_cache.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then.otp_enter.exit_crit_edge, label %if.then.i83

if.then.otp_enter.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %otp_enter.exit

if.then.i83:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip, align 4
  %conv10.i = add i32 %30, %conv1
  call void %28(ptr noundef %map, i32 noundef %conv10.i, i32 noundef %1) #14
  br label %otp_enter.exit

otp_enter.exit:                                   ; preds = %if.then.i83, %if.then.otp_enter.exit_crit_edge
  %31 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read, align 4
  call void %32(ptr nonnull sret(%union.map_word) align 4 %datum.sroa.0, ptr noundef %map, i32 noundef %conv1) #14
  %33 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bankwidth, align 4
  %35 = ptrtoint ptr %fldrv_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fldrv_priv.i, align 4
  %addr_unlock1.i85 = getelementptr inbounds %struct.cfi_private, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %addr_unlock1.i85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr_unlock1.i85, align 4
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip, align 4
  %device_type.i86 = getelementptr inbounds %struct.cfi_private, ptr %36, i32 0, i32 3
  %41 = ptrtoint ptr %device_type.i86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %device_type.i86, align 4
  %call.i87 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %38, i32 noundef %40, ptr noundef %map, ptr noundef %36, i32 noundef %42, ptr noundef null) #14
  %addr_unlock2.i88 = getelementptr inbounds %struct.cfi_private, ptr %36, i32 0, i32 6
  %43 = ptrtoint ptr %addr_unlock2.i88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr_unlock2.i88, align 4
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chip, align 4
  %47 = ptrtoint ptr %device_type.i86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %device_type.i86, align 4
  %call3.i89 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %44, i32 noundef %46, ptr noundef %map, ptr noundef %36, i32 noundef %48, ptr noundef null) #14
  %49 = ptrtoint ptr %addr_unlock1.i85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr_unlock1.i85, align 4
  %51 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chip, align 4
  %53 = ptrtoint ptr %device_type.i86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %device_type.i86, align 4
  %call7.i90 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -112, i32 noundef %50, i32 noundef %52, ptr noundef %map, ptr noundef %36, i32 noundef %54, ptr noundef null) #14
  %55 = ptrtoint ptr %addr_unlock1.i85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr_unlock1.i85, align 4
  %57 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chip, align 4
  %59 = ptrtoint ptr %device_type.i86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %device_type.i86, align 4
  %call11.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 0, i32 noundef %56, i32 noundef %58, ptr noundef %map, ptr noundef %36, i32 noundef %60, ptr noundef null) #14
  %61 = ptrtoint ptr %inval_cache.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %inval_cache.i, align 4
  %tobool.not.i92 = icmp eq ptr %62, null
  br i1 %tobool.not.i92, label %otp_enter.exit.if.end_crit_edge, label %if.then.i93

otp_enter.exit.if.end_crit_edge:                  ; preds = %otp_enter.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i93:                                      ; preds = %otp_enter.exit
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chip, align 4
  %conv14.i = add i32 %64, %conv1
  call void %62(ptr noundef %map, i32 noundef %conv14.i, i32 noundef %34) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i93, %otp_enter.exit.if.end_crit_edge, %map_word_ff.exit.if.end_crit_edge
  %65 = ptrtoint ptr %datum.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load = load i32, ptr %datum.sroa.0, align 4
  %66 = ptrtoint ptr %datum.sroa.0.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %66)
  %datum.sroa.0.4.datum.sroa.0.4.datum.sroa.0.4..fca.1.load = load i32, ptr %datum.sroa.0.4..sroa_idx, align 4
  %67 = ptrtoint ptr %datum.sroa.0.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %67)
  %datum.sroa.0.8.datum.sroa.0.8.datum.sroa.0.8..fca.2.load = load i32, ptr %datum.sroa.0.8..sroa_idx, align 4
  %68 = ptrtoint ptr %datum.sroa.0.12..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %68)
  %datum.sroa.0.12.datum.sroa.0.12.datum.sroa.0.12..fca.3.load = load i32, ptr %datum.sroa.0.12..sroa_idx, align 4
  %69 = ptrtoint ptr %datum.sroa.0.16..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %69)
  %datum.sroa.0.16.datum.sroa.0.16.datum.sroa.0.16..fca.4.load = load i32, ptr %datum.sroa.0.16..sroa_idx, align 4
  %70 = ptrtoint ptr %datum.sroa.0.20..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %70)
  %datum.sroa.0.20.datum.sroa.0.20.datum.sroa.0.20..fca.5.load = load i32, ptr %datum.sroa.0.20..sroa_idx, align 4
  %71 = ptrtoint ptr %datum.sroa.0.24..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %datum.sroa.0.24.datum.sroa.0.24.datum.sroa.0.24..fca.6.load = load i32, ptr %datum.sroa.0.24..sroa_idx, align 4
  %72 = ptrtoint ptr %datum.sroa.0.28..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %datum.sroa.0.28.datum.sroa.0.28.datum.sroa.0.28..fca.7.load = load i32, ptr %datum.sroa.0.28..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i)
  %73 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load, ptr %orig.i, align 4, !noalias !294
  %74 = ptrtoint ptr %orig.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %datum.sroa.0.4.datum.sroa.0.4.datum.sroa.0.4..fca.1.load, ptr %orig.coerce.fca.1.gep.i, align 4, !noalias !294
  %75 = ptrtoint ptr %orig.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %datum.sroa.0.8.datum.sroa.0.8.datum.sroa.0.8..fca.2.load, ptr %orig.coerce.fca.2.gep.i, align 4, !noalias !294
  %76 = ptrtoint ptr %orig.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %datum.sroa.0.12.datum.sroa.0.12.datum.sroa.0.12..fca.3.load, ptr %orig.coerce.fca.3.gep.i, align 4, !noalias !294
  %77 = ptrtoint ptr %orig.coerce.fca.4.gep.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %datum.sroa.0.16.datum.sroa.0.16.datum.sroa.0.16..fca.4.load, ptr %orig.coerce.fca.4.gep.i, align 4, !noalias !294
  %78 = ptrtoint ptr %orig.coerce.fca.5.gep.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %datum.sroa.0.20.datum.sroa.0.20.datum.sroa.0.20..fca.5.load, ptr %orig.coerce.fca.5.gep.i, align 4, !noalias !294
  %79 = ptrtoint ptr %orig.coerce.fca.6.gep.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %datum.sroa.0.24.datum.sroa.0.24.datum.sroa.0.24..fca.6.load, ptr %orig.coerce.fca.6.gep.i, align 4, !noalias !294
  %80 = ptrtoint ptr %orig.coerce.fca.7.gep.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %datum.sroa.0.28.datum.sroa.0.28.datum.sroa.0.28..fca.7.load, ptr %orig.coerce.fca.7.gep.i, align 4, !noalias !294
  %81 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bankwidth, align 4, !noalias !294
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %cmp.i95 = icmp sgt i32 %82, 4
  br i1 %cmp.i95, label %if.then.i97, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  %add.i96 = add i32 %3, %conv4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i96, i32 %conv4)
  %cmp119.i = icmp sgt i32 %add.i96, %conv4
  br i1 %cmp119.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end.loopexit.i_crit_edge

for.cond.preheader.i.if.end.loopexit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i97:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %orig.i, i32 %conv4
  %83 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf.addr.0140, i32 %3)
  br label %map_word_load_partial.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %conv4, %for.cond.preheader.i.for.body.i_crit_edge ]
  %or1820.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load, %for.cond.preheader.i.for.body.i_crit_edge ]
  %84 = xor i32 %i.021.i, -1
  %sub3.i = add i32 %82, %84
  %mul.i98 = shl i32 %sub3.i, 3
  %shl.i = shl i32 255, %mul.i98
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %or1820.i, %neg.i
  %sub4.i = sub i32 %i.021.i, %conv4
  %arrayidx5.i = getelementptr i8, ptr %buf.addr.0140, i32 %sub4.i
  %85 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx5.i, align 1, !noalias !294
  %conv.i = zext i8 %86 to i32
  %shl6.i = shl i32 %conv.i, %mul.i98
  %or.i = or i32 %shl6.i, %and.i
  %inc.i = add nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i96
  br i1 %exitcond.not.i, label %for.body.i.if.end.loopexit.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.if.end.loopexit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.loopexit.i

if.end.loopexit.i:                                ; preds = %for.body.i.if.end.loopexit.i_crit_edge, %for.cond.preheader.i.if.end.loopexit.i_crit_edge
  %or18.lcssa.i = phi i32 [ %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load, %for.cond.preheader.i.if.end.loopexit.i_crit_edge ], [ %or.i, %for.body.i.if.end.loopexit.i_crit_edge ]
  %87 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or18.lcssa.i, ptr %orig.i, align 4, !noalias !294
  br label %map_word_load_partial.exit

map_word_load_partial.exit:                       ; preds = %if.end.loopexit.i, %if.then.i97
  %88 = call ptr @memcpy(ptr %datum.sroa.0, ptr %orig.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i)
  %89 = ptrtoint ptr %datum.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %89)
  %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load29 = load i32, ptr %datum.sroa.0, align 4
  %.fca.0.insert30 = insertvalue [8 x i32] poison, i32 %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load29, 0
  %90 = ptrtoint ptr %datum.sroa.0.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %datum.sroa.0.4.datum.sroa.0.4.datum.sroa.0.4..fca.1.load32 = load i32, ptr %datum.sroa.0.4..sroa_idx, align 4
  %.fca.1.insert33 = insertvalue [8 x i32] %.fca.0.insert30, i32 %datum.sroa.0.4.datum.sroa.0.4.datum.sroa.0.4..fca.1.load32, 1
  %91 = ptrtoint ptr %datum.sroa.0.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %datum.sroa.0.8.datum.sroa.0.8.datum.sroa.0.8..fca.2.load35 = load i32, ptr %datum.sroa.0.8..sroa_idx, align 4
  %.fca.2.insert36 = insertvalue [8 x i32] %.fca.1.insert33, i32 %datum.sroa.0.8.datum.sroa.0.8.datum.sroa.0.8..fca.2.load35, 2
  %92 = ptrtoint ptr %datum.sroa.0.12..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %92)
  %datum.sroa.0.12.datum.sroa.0.12.datum.sroa.0.12..fca.3.load38 = load i32, ptr %datum.sroa.0.12..sroa_idx, align 4
  %.fca.3.insert39 = insertvalue [8 x i32] %.fca.2.insert36, i32 %datum.sroa.0.12.datum.sroa.0.12.datum.sroa.0.12..fca.3.load38, 3
  %93 = ptrtoint ptr %datum.sroa.0.16..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %93)
  %datum.sroa.0.16.datum.sroa.0.16.datum.sroa.0.16..fca.4.load41 = load i32, ptr %datum.sroa.0.16..sroa_idx, align 4
  %.fca.4.insert42 = insertvalue [8 x i32] %.fca.3.insert39, i32 %datum.sroa.0.16.datum.sroa.0.16.datum.sroa.0.16..fca.4.load41, 4
  %94 = ptrtoint ptr %datum.sroa.0.20..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %94)
  %datum.sroa.0.20.datum.sroa.0.20.datum.sroa.0.20..fca.5.load44 = load i32, ptr %datum.sroa.0.20..sroa_idx, align 4
  %.fca.5.insert45 = insertvalue [8 x i32] %.fca.4.insert42, i32 %datum.sroa.0.20.datum.sroa.0.20.datum.sroa.0.20..fca.5.load44, 5
  %95 = ptrtoint ptr %datum.sroa.0.24..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %95)
  %datum.sroa.0.24.datum.sroa.0.24.datum.sroa.0.24..fca.6.load47 = load i32, ptr %datum.sroa.0.24..sroa_idx, align 4
  %.fca.6.insert48 = insertvalue [8 x i32] %.fca.5.insert45, i32 %datum.sroa.0.24.datum.sroa.0.24.datum.sroa.0.24..fca.6.load47, 6
  %96 = ptrtoint ptr %datum.sroa.0.28..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %96)
  %datum.sroa.0.28.datum.sroa.0.28.datum.sroa.0.28..fca.7.load50 = load i32, ptr %datum.sroa.0.28..sroa_idx, align 4
  %.fca.7.insert51 = insertvalue [8 x i32] %.fca.6.insert48, i32 %datum.sroa.0.28.datum.sroa.0.28.datum.sroa.0.28..fca.7.load50, 7
  %call = call fastcc i32 @do_write_oneword(ptr noundef %map, ptr noundef %chip, i32 noundef %conv1, [8 x i32] %.fca.7.insert51, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %map_word_load_partial.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %datum.sroa.0)
  br label %cleanup26

cleanup:                                          ; preds = %map_word_load_partial.exit
  %conv21159 = zext i32 %3 to i64
  %add = add i64 %adr.addr.0143, %conv21159
  %add.ptr = getelementptr i8, ptr %buf.addr.0140, i32 %3
  %sub22 = sub i32 %len.addr.0139, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %datum.sroa.0)
  %tobool.not = icmp eq i32 %sub22, 0
  br i1 %tobool.not, label %cleanup.cleanup26_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.cleanup26_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup.cleanup26_crit_edge, %cleanup.thread, %entry.cleanup26_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup.thread ], [ 0, %entry.cleanup26_crit_edge ], [ 0, %cleanup.cleanup26_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_write_oneword(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  %add = add i32 %1, %adr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_write_oneword.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_write_oneword, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %datum.coerce.fca.0.extract = extractvalue [8 x i32] %datum.coerce, 0
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_write_oneword.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.78, i32 noundef %add, i32 noundef %datum.coerce.fca.0.extract) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex.i = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %call.i = tail call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef %mode) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 9
  br i1 %cmp.i, label %if.then2.i, label %if.end6

if.then2.i:                                       ; preds = %if.end.i
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bankwidth.i, align 4
  %fldrv_priv.i.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %4 = ptrtoint ptr %fldrv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fldrv_priv.i.i, align 4
  %addr_unlock1.i.i = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %addr_unlock1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr_unlock1.i.i, align 4
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip, align 4
  %device_type.i.i = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %device_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_type.i.i, align 4
  %call.i.i = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %7, i32 noundef %9, ptr noundef %map, ptr noundef %5, i32 noundef %11, ptr noundef null) #14
  %addr_unlock2.i.i = getelementptr inbounds %struct.cfi_private, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %addr_unlock2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr_unlock2.i.i, align 4
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip, align 4
  %16 = ptrtoint ptr %device_type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_type.i.i, align 4
  %call3.i.i = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %13, i32 noundef %15, ptr noundef %map, ptr noundef %5, i32 noundef %17, ptr noundef null) #14
  %18 = ptrtoint ptr %addr_unlock1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr_unlock1.i.i, align 4
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip, align 4
  %22 = ptrtoint ptr %device_type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device_type.i.i, align 4
  %call7.i.i = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -120, i32 noundef %19, i32 noundef %21, ptr noundef %map, ptr noundef %5, i32 noundef %23, ptr noundef null) #14
  %inval_cache.i.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 11
  %24 = ptrtoint ptr %inval_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %inval_cache.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.then2.i.if.then.i34_crit_edge, label %if.then.i.i

if.then2.i.if.then.i34_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i34

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chip, align 4
  %conv10.i.i = add i32 %27, %add
  tail call void %25(ptr noundef %map, i32 noundef %conv10.i.i, i32 noundef %3) #14
  br label %if.then.i34

if.end6:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call fastcc i32 @do_write_oneword_retry(ptr noundef %map, ptr noundef %chip, i32 noundef %add, [8 x i32] %datum.coerce, i32 noundef %mode)
  br label %if.end.i37

if.then.i34:                                      ; preds = %if.then.i.i, %if.then2.i.if.then.i34_crit_edge
  %call840 = tail call fastcc i32 @do_write_oneword_retry(ptr noundef %map, ptr noundef %chip, i32 noundef %add, [8 x i32] %datum.coerce, i32 noundef 9)
  %28 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bankwidth.i, align 4
  %30 = ptrtoint ptr %fldrv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fldrv_priv.i.i, align 4
  %addr_unlock1.i.i26 = getelementptr inbounds %struct.cfi_private, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %addr_unlock1.i.i26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr_unlock1.i.i26, align 4
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chip, align 4
  %device_type.i.i27 = getelementptr inbounds %struct.cfi_private, ptr %31, i32 0, i32 3
  %36 = ptrtoint ptr %device_type.i.i27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %device_type.i.i27, align 4
  %call.i.i28 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %33, i32 noundef %35, ptr noundef %map, ptr noundef %31, i32 noundef %37, ptr noundef null) #14
  %addr_unlock2.i.i29 = getelementptr inbounds %struct.cfi_private, ptr %31, i32 0, i32 6
  %38 = ptrtoint ptr %addr_unlock2.i.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr_unlock2.i.i29, align 4
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chip, align 4
  %42 = ptrtoint ptr %device_type.i.i27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %device_type.i.i27, align 4
  %call3.i.i30 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %39, i32 noundef %41, ptr noundef %map, ptr noundef %31, i32 noundef %43, ptr noundef null) #14
  %44 = ptrtoint ptr %addr_unlock1.i.i26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr_unlock1.i.i26, align 4
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chip, align 4
  %48 = ptrtoint ptr %device_type.i.i27 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %device_type.i.i27, align 4
  %call7.i.i31 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -112, i32 noundef %45, i32 noundef %47, ptr noundef %map, ptr noundef %31, i32 noundef %49, ptr noundef null) #14
  %50 = ptrtoint ptr %addr_unlock1.i.i26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr_unlock1.i.i26, align 4
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chip, align 4
  %54 = ptrtoint ptr %device_type.i.i27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %device_type.i.i27, align 4
  %call11.i.i = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 0, i32 noundef %51, i32 noundef %53, ptr noundef %map, ptr noundef %31, i32 noundef %55, ptr noundef null) #14
  %56 = ptrtoint ptr %inval_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %inval_cache.i.i, align 4
  %tobool.not.i.i33 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i33, label %if.then.i34.if.end.i37_crit_edge, label %if.then.i.i35

if.then.i34.if.end.i37_crit_edge:                 ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i37

if.then.i.i35:                                    ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chip, align 4
  %conv14.i.i = add i32 %59, %add
  tail call void %57(ptr noundef %map, i32 noundef %conv14.i.i, i32 noundef %29) #14
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.then.i.i35, %if.then.i34.if.end.i37_crit_edge, %if.end6
  %call842 = phi i32 [ %call840, %if.then.i.i35 ], [ %call840, %if.then.i34.if.end.i37_crit_edge ], [ %call8, %if.end6 ]
  %state.i = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %state.i, align 4
  %set_vpp.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %61 = ptrtoint ptr %set_vpp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_vpp.i, align 4
  %tobool.not.i36 = icmp eq ptr %62, null
  br i1 %tobool.not.i36, label %if.end.i37.do_write_oneword_done.exit_crit_edge, label %if.then1.i

if.end.i37.do_write_oneword_done.exit_crit_edge:  ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_write_oneword_done.exit

if.then1.i:                                       ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %62(ptr noundef %map, i32 noundef 0) #14
  br label %do_write_oneword_done.exit

do_write_oneword_done.exit:                       ; preds = %if.then1.i, %if.end.i37.do_write_oneword_done.exit_crit_edge
  tail call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip) #14
  br label %cleanup

cleanup:                                          ; preds = %do_write_oneword_done.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call842, %do_write_oneword_done.exit ], [ %call.i, %do.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_write_oneword_retry(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %datum = alloca %union.map_word, align 4
  %oldd = alloca %union.map_word, align 4
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %datum.coerce.fca.0.extract = extractvalue [8 x i32] %datum.coerce, 0
  %0 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %datum.coerce.fca.0.extract, ptr %datum, align 4
  %datum.coerce.fca.1.extract = extractvalue [8 x i32] %datum.coerce, 1
  %datum.coerce.fca.1.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 1
  %1 = ptrtoint ptr %datum.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %datum.coerce.fca.1.extract, ptr %datum.coerce.fca.1.gep, align 4
  %datum.coerce.fca.2.extract = extractvalue [8 x i32] %datum.coerce, 2
  %datum.coerce.fca.2.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 2
  %2 = ptrtoint ptr %datum.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %datum.coerce.fca.2.extract, ptr %datum.coerce.fca.2.gep, align 4
  %datum.coerce.fca.3.extract = extractvalue [8 x i32] %datum.coerce, 3
  %datum.coerce.fca.3.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 3
  %3 = ptrtoint ptr %datum.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %datum.coerce.fca.3.extract, ptr %datum.coerce.fca.3.gep, align 4
  %datum.coerce.fca.4.extract = extractvalue [8 x i32] %datum.coerce, 4
  %datum.coerce.fca.4.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 4
  %4 = ptrtoint ptr %datum.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %datum.coerce.fca.4.extract, ptr %datum.coerce.fca.4.gep, align 4
  %datum.coerce.fca.5.extract = extractvalue [8 x i32] %datum.coerce, 5
  %datum.coerce.fca.5.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 5
  %5 = ptrtoint ptr %datum.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %datum.coerce.fca.5.extract, ptr %datum.coerce.fca.5.gep, align 4
  %datum.coerce.fca.6.extract = extractvalue [8 x i32] %datum.coerce, 6
  %datum.coerce.fca.6.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 6
  %6 = ptrtoint ptr %datum.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %datum.coerce.fca.6.extract, ptr %datum.coerce.fca.6.gep, align 4
  %datum.coerce.fca.7.extract = extractvalue [8 x i32] %datum.coerce, 7
  %datum.coerce.fca.7.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 7
  %7 = ptrtoint ptr %datum.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %datum.coerce.fca.7.extract, ptr %datum.coerce.fca.7.gep, align 4
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %8 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oldd) #14
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %10 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read, align 4
  call void %11(ptr nonnull sret(%union.map_word) align 4 %oldd, ptr noundef %map, i32 noundef %adr) #14
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %12 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bankwidth, align 4
  %add = add i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp77.not = icmp ult i32 %add, 4
  br i1 %cmp77.not, label %entry.do.body.critedge_crit_edge, label %for.body.preheader

entry.do.body.critedge_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.critedge

for.body.preheader:                               ; preds = %entry
  %div75 = lshr i32 %add, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %div75
  br i1 %exitcond.not, label %for.cond.do.body.critedge_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.do.body.critedge_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.critedge

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.078 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x i32], ptr %oldd, i32 0, i32 %i.078
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [8 x i32], ptr %datum, i32 0, i32 %i.078
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp3.not = icmp eq i32 %15, %17
  br i1 %cmp3.not, label %for.cond, label %do.body13

do.body.critedge:                                 ; preds = %for.cond.do.body.critedge_crit_edge, %entry.do.body.critedge_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_write_oneword_retry.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_write_oneword_retry, %if.then10)) #14
          to label %cleanup [label %if.then10], !srcloc !252

if.then10:                                        ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_write_oneword_retry.__UNIQUE_ID_ddebug202, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79) #14
  br label %cleanup

do.body13:                                        ; preds = %for.body
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %18 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_vpp, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %do.body13.do.end19_crit_edge, label %if.then15

do.body13.do.end19_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  call void %19(ptr noundef %map, i32 noundef 1) #14
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body13.do.end19_crit_edge
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  br label %retry

retry:                                            ; preds = %if.then23.retry_crit_edge, %do.end19
  %retry_cnt.0 = phi i32 [ 0, %do.end19 ], [ %inc25, %if.then23.retry_crit_edge ]
  %call21 = call fastcc i32 @do_write_oneword_once(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce, i32 noundef %mode, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %retry.cleanup_crit_edge, label %if.then23

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %retry
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 240, ptr noundef %map, ptr noundef %9) #14
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip, align 4
  %24 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %25 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %26 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %27 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %28 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %29 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %30 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %31 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %21(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %23) #14
  %inc25 = add nuw nsw i32 %retry_cnt.0, 1
  %exitcond79.not = icmp eq i32 %inc25, 4
  br i1 %exitcond79.not, label %if.then23.cleanup_crit_edge, label %if.then23.retry_crit_edge

if.then23.retry_crit_edge:                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.then23.cleanup_crit_edge, %retry.cleanup_crit_edge, %if.then10, %do.body.critedge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %do.body.critedge ], [ 0, %retry.cleanup_crit_edge ], [ %call21, %if.then23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oldd) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_write_oneword_once(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce, i32 noundef %mode, ptr noundef %cfi) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 5
  %0 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_unlock1, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %4 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_type, align 4
  %call = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %1, i32 noundef %3, ptr noundef %map, ptr noundef %cfi, i32 noundef %5, ptr noundef null) #14
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 6
  %6 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr_unlock2, align 4
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip, align 4
  %10 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_type, align 4
  %call3 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %7, i32 noundef %9, ptr noundef %map, ptr noundef %cfi, i32 noundef %11, ptr noundef null) #14
  %12 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr_unlock1, align 4
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip, align 4
  %16 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_type, align 4
  %call7 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -96, i32 noundef %13, i32 noundef %15, ptr noundef %map, ptr noundef %cfi, i32 noundef %17, ptr noundef null) #14
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  tail call void %19(ptr noundef %map, [8 x i32] %datum.coerce, i32 noundef %adr) #14
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mode, ptr %state, align 4
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  %inval_cache = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 11
  %21 = ptrtoint ptr %inval_cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %inval_cache, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %23 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bankwidth, align 4
  tail call void %22(ptr noundef %map, i32 noundef %adr, i32 noundef %24) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %word_write_time = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 9
  %25 = ptrtoint ptr %word_write_time to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %word_write_time, align 4
  tail call void @cfi_udelay(i32 noundef %26) #14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %27, 1
  %28 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %29 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %30 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  %32 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %__here, %do.end
  %timeo.0.ph = phi i32 [ %add87, %__here ], [ %add, %do.end ]
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %mode)
  %cmp.not221 = icmp eq i32 %34, %mode
  br i1 %cmp.not221, label %for.cond.outer.if.end89_crit_edge, label %for.cond.outer.if.then15_crit_edge

for.cond.outer.if.then15_crit_edge:               ; preds = %for.cond.outer
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

for.cond.outer.if.end89_crit_edge:                ; preds = %for.cond.outer
  br label %if.end89

if.then15:                                        ; preds = %do.body110.if.then15_crit_edge, %for.cond.outer.if.then15_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %35 = call ptr @memset(ptr %32, i32 255, i32 16)
  %36 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %wait, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !242) #14
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %28, align 4
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @default_wake_function, ptr %29, align 4
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %30, align 4
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %31, align 4
  br label %__here

__here:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 212
  %47 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 ptrtoint (ptr blockaddress(@do_write_oneword_once, %__here) to i32), ptr %task_state_change, align 4
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 2, ptr %48, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !297
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %add87 = add i32 %50, 50
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  br label %for.cond.outer

if.end89:                                         ; preds = %do.body110.if.end89_crit_edge, %for.cond.outer.if.end89_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %timeo.0.ph, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp90 = icmp slt i32 %sub, 0
  br i1 %cmp90, label %land.lhs.true, label %if.end89.if.end100_crit_edge

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end89
  %call92 = call fastcc i32 @chip_good(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.end97, label %land.lhs.true.if.end100_crit_edge

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

do.end97:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.81) #18
  br label %for.end

if.end100:                                        ; preds = %land.lhs.true.if.end100_crit_edge, %if.end89.if.end100_crit_edge
  %call102 = call fastcc i32 @chip_good(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %do.body110, label %if.then104

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  %call105 = call fastcc i32 @cfi_check_err_status(ptr noundef %map, ptr noundef %chip, i32 noundef %adr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  %spec.select = select i1 %tobool106.not, i32 0, i32 -5
  br label %for.end

do.body110:                                       ; preds = %if.end100
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @cfi_udelay(i32 noundef 1) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %52 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state, align 4
  %cmp.not = icmp eq i32 %53, %mode
  br i1 %cmp.not, label %do.body110.if.end89_crit_edge, label %do.body110.if.then15_crit_edge

do.body110.if.then15_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

do.body110.if.end89_crit_edge:                    ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

for.end:                                          ; preds = %if.then104, %do.end97
  %ret.0 = phi i32 [ -5, %do.end97 ], [ %spec.select, %if.then104 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_otp_lock(ptr noundef %map, ptr noundef %chip, i64 noundef %adr, i32 noundef %len, ptr nocapture noundef readnone %buf, i32 noundef %grouplen) #0 align 64 {
entry:
  %val.i = alloca %union.map_word, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp18 = alloca %union.map_word, align 4
  %agg.tmp39 = alloca %union.map_word, align 4
  %agg.tmp43 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %adr)
  %cmp.not = icmp eq i64 %adr, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %len, i32 %grouplen)
  %cmp1.not = icmp eq i32 %len, %grouplen
  %or.cond = and i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  %call = tail call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %3, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15, ptr %state, align 4
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr_unlock1, align 4
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_type, align 4
  %call6 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %6, i32 noundef %8, ptr noundef %map, ptr noundef %1, i32 noundef %10, ptr noundef null) #14
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr_unlock2, align 4
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip, align 4
  %15 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_type, align 4
  %call9 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %12, i32 noundef %14, ptr noundef %map, ptr noundef %1, i32 noundef %16, ptr noundef null) #14
  %17 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr_unlock1, align 4
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip, align 4
  %21 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device_type, align 4
  %call13 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 64, i32 noundef %18, i32 noundef %20, ptr noundef %map, ptr noundef %1, i32 noundef %22, ptr noundef null) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i) #14
  %read.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %23 = call ptr @memset(ptr %val.i, i32 255, i32 32)
  %24 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read.i, align 4
  call void %25(ptr nonnull sret(%union.map_word) align 4 %val.i, ptr noundef %map, i32 noundef 0) #14
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %26 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bankwidth.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %27, label %if.else31.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
  ]

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

if.then4.i:                                       ; preds = %if.end4
  %swap.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %31 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %cond.true7.i, label %cond.false9.i

cond.true7.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

cond.false9.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp16.i = icmp eq i32 %32, 3
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  br i1 %cmp16.i, label %cond.true18.i, label %cond.false22.i

cond.true18.i:                                    ; preds = %cond.false9.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv21.i = and i32 %37, 65535
  br label %cfi_read_query.exit

cond.false22.i:                                   ; preds = %cond.false9.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv24.i = trunc i32 %37 to i16
  %38 = call i16 @llvm.bswap.i16(i16 %conv24.i) #14
  %conv25.i = zext i16 %38 to i32
  br label %cfi_read_query.exit

if.else31.i:                                      ; preds = %if.end4
  %swap32.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %39 = ptrtoint ptr %swap32.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %swap32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %cond.true40.i, label %cond.false42.i

cond.true40.i:                                    ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

cond.false42.i:                                   ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp49.i = icmp eq i32 %40, 3
  %44 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #14
  %spec.select.i = select i1 %cmp49.i, i32 %45, i32 %46
  br label %cfi_read_query.exit

cfi_read_query.exit:                              ; preds = %cond.false42.i, %cond.true40.i, %cond.false22.i, %cond.true18.i, %cond.true7.i, %if.then.i
  %retval.0.in.i = phi i32 [ %30, %if.then.i ], [ %35, %cond.true7.i ], [ %conv21.i, %cond.true18.i ], [ %conv25.i, %cond.false22.i ], [ %43, %cond.true40.i ], [ %spec.select.i, %cond.false42.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i) #14
  %47 = and i32 %retval.0.in.i, 254
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %48 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 160, ptr noundef %map, ptr noundef %1) #14
  %50 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chip, align 4
  %52 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.0.load101 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert102 = insertvalue [8 x i32] poison, i32 %.fca.0.load101, 0
  %.fca.1.gep103 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %53 = ptrtoint ptr %.fca.1.gep103 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.fca.1.load104 = load i32, ptr %.fca.1.gep103, align 4
  %.fca.1.insert105 = insertvalue [8 x i32] %.fca.0.insert102, i32 %.fca.1.load104, 1
  %.fca.2.gep106 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %54 = ptrtoint ptr %.fca.2.gep106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.2.load107 = load i32, ptr %.fca.2.gep106, align 4
  %.fca.2.insert108 = insertvalue [8 x i32] %.fca.1.insert105, i32 %.fca.2.load107, 2
  %.fca.3.gep109 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %55 = ptrtoint ptr %.fca.3.gep109 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.3.load110 = load i32, ptr %.fca.3.gep109, align 4
  %.fca.3.insert111 = insertvalue [8 x i32] %.fca.2.insert108, i32 %.fca.3.load110, 3
  %.fca.4.gep112 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %56 = ptrtoint ptr %.fca.4.gep112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.fca.4.load113 = load i32, ptr %.fca.4.gep112, align 4
  %.fca.4.insert114 = insertvalue [8 x i32] %.fca.3.insert111, i32 %.fca.4.load113, 4
  %.fca.5.gep115 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %57 = ptrtoint ptr %.fca.5.gep115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.fca.5.load116 = load i32, ptr %.fca.5.gep115, align 4
  %.fca.5.insert117 = insertvalue [8 x i32] %.fca.4.insert114, i32 %.fca.5.load116, 5
  %.fca.6.gep118 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %58 = ptrtoint ptr %.fca.6.gep118 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.fca.6.load119 = load i32, ptr %.fca.6.gep118, align 4
  %.fca.6.insert120 = insertvalue [8 x i32] %.fca.5.insert117, i32 %.fca.6.load119, 6
  %.fca.7.gep121 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %59 = ptrtoint ptr %.fca.7.gep121 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.fca.7.load122 = load i32, ptr %.fca.7.gep121, align 4
  %.fca.7.insert123 = insertvalue [8 x i32] %.fca.6.insert120, i32 %.fca.7.load122, 7
  call void %49(ptr noundef %map, [8 x i32] %.fca.7.insert123, i32 noundef %51) #14
  %60 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp18, i32 noundef %47, ptr noundef %map, ptr noundef %1) #14
  %62 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chip, align 4
  %64 = ptrtoint ptr %agg.tmp18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.0.load77 = load i32, ptr %agg.tmp18, align 4
  %.fca.0.insert78 = insertvalue [8 x i32] poison, i32 %.fca.0.load77, 0
  %.fca.1.gep79 = getelementptr inbounds [8 x i32], ptr %agg.tmp18, i32 0, i32 1
  %65 = ptrtoint ptr %.fca.1.gep79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.1.load80 = load i32, ptr %.fca.1.gep79, align 4
  %.fca.1.insert81 = insertvalue [8 x i32] %.fca.0.insert78, i32 %.fca.1.load80, 1
  %.fca.2.gep82 = getelementptr inbounds [8 x i32], ptr %agg.tmp18, i32 0, i32 2
  %66 = ptrtoint ptr %.fca.2.gep82 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.2.load83 = load i32, ptr %.fca.2.gep82, align 4
  %.fca.2.insert84 = insertvalue [8 x i32] %.fca.1.insert81, i32 %.fca.2.load83, 2
  %.fca.3.gep85 = getelementptr inbounds [8 x i32], ptr %agg.tmp18, i32 0, i32 3
  %67 = ptrtoint ptr %.fca.3.gep85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.3.load86 = load i32, ptr %.fca.3.gep85, align 4
  %.fca.3.insert87 = insertvalue [8 x i32] %.fca.2.insert84, i32 %.fca.3.load86, 3
  %.fca.4.gep88 = getelementptr inbounds [8 x i32], ptr %agg.tmp18, i32 0, i32 4
  %68 = ptrtoint ptr %.fca.4.gep88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.4.load89 = load i32, ptr %.fca.4.gep88, align 4
  %.fca.4.insert90 = insertvalue [8 x i32] %.fca.3.insert87, i32 %.fca.4.load89, 4
  %.fca.5.gep91 = getelementptr inbounds [8 x i32], ptr %agg.tmp18, i32 0, i32 5
  %69 = ptrtoint ptr %.fca.5.gep91 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.5.load92 = load i32, ptr %.fca.5.gep91, align 4
  %.fca.5.insert93 = insertvalue [8 x i32] %.fca.4.insert90, i32 %.fca.5.load92, 5
  %.fca.6.gep94 = getelementptr inbounds [8 x i32], ptr %agg.tmp18, i32 0, i32 6
  %70 = ptrtoint ptr %.fca.6.gep94 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.6.load95 = load i32, ptr %.fca.6.gep94, align 4
  %.fca.6.insert96 = insertvalue [8 x i32] %.fca.5.insert93, i32 %.fca.6.load95, 6
  %.fca.7.gep97 = getelementptr inbounds [8 x i32], ptr %agg.tmp18, i32 0, i32 7
  %71 = ptrtoint ptr %.fca.7.gep97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.7.load98 = load i32, ptr %.fca.7.gep97, align 4
  %.fca.7.insert99 = insertvalue [8 x i32] %.fca.6.insert96, i32 %.fca.7.load98, 7
  call void %61(ptr noundef %map, [8 x i32] %.fca.7.insert99, i32 noundef %63) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %72, 1
  %call24177 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24177)
  %tobool25.not178 = icmp eq i32 %call24177, 0
  br i1 %tobool25.not178, label %cfi_read_query.exit.if.end27_crit_edge, label %cfi_read_query.exit.for.end_crit_edge

cfi_read_query.exit.for.end_crit_edge:            ; preds = %cfi_read_query.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cfi_read_query.exit.if.end27_crit_edge:           ; preds = %cfi_read_query.exit
  br label %if.end27

if.end27:                                         ; preds = %do.body33.if.end27_crit_edge, %cfi_read_query.exit.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp28 = icmp slt i32 %sub, 0
  br i1 %cmp28, label %do.end, label %do.body33

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #18
  br label %for.end

do.body33:                                        ; preds = %if.end27
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @cfi_udelay(i32 noundef 1) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call24 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef 0)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body33.if.end27_crit_edge, label %do.body33.for.end_crit_edge

do.body33.for.end_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body33.if.end27_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

for.end:                                          ; preds = %do.body33.for.end_crit_edge, %do.end, %cfi_read_query.exit.for.end_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ 0, %cfi_read_query.exit.for.end_crit_edge ], [ 0, %do.body33.for.end_crit_edge ]
  %74 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp39, i32 noundef 144, ptr noundef %map, ptr noundef %1) #14
  %76 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chip, align 4
  %78 = ptrtoint ptr %agg.tmp39 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.fca.0.load53 = load i32, ptr %agg.tmp39, align 4
  %.fca.0.insert54 = insertvalue [8 x i32] poison, i32 %.fca.0.load53, 0
  %.fca.1.gep55 = getelementptr inbounds [8 x i32], ptr %agg.tmp39, i32 0, i32 1
  %79 = ptrtoint ptr %.fca.1.gep55 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.fca.1.load56 = load i32, ptr %.fca.1.gep55, align 4
  %.fca.1.insert57 = insertvalue [8 x i32] %.fca.0.insert54, i32 %.fca.1.load56, 1
  %.fca.2.gep58 = getelementptr inbounds [8 x i32], ptr %agg.tmp39, i32 0, i32 2
  %80 = ptrtoint ptr %.fca.2.gep58 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.fca.2.load59 = load i32, ptr %.fca.2.gep58, align 4
  %.fca.2.insert60 = insertvalue [8 x i32] %.fca.1.insert57, i32 %.fca.2.load59, 2
  %.fca.3.gep61 = getelementptr inbounds [8 x i32], ptr %agg.tmp39, i32 0, i32 3
  %81 = ptrtoint ptr %.fca.3.gep61 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.fca.3.load62 = load i32, ptr %.fca.3.gep61, align 4
  %.fca.3.insert63 = insertvalue [8 x i32] %.fca.2.insert60, i32 %.fca.3.load62, 3
  %.fca.4.gep64 = getelementptr inbounds [8 x i32], ptr %agg.tmp39, i32 0, i32 4
  %82 = ptrtoint ptr %.fca.4.gep64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.fca.4.load65 = load i32, ptr %.fca.4.gep64, align 4
  %.fca.4.insert66 = insertvalue [8 x i32] %.fca.3.insert63, i32 %.fca.4.load65, 4
  %.fca.5.gep67 = getelementptr inbounds [8 x i32], ptr %agg.tmp39, i32 0, i32 5
  %83 = ptrtoint ptr %.fca.5.gep67 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.fca.5.load68 = load i32, ptr %.fca.5.gep67, align 4
  %.fca.5.insert69 = insertvalue [8 x i32] %.fca.4.insert66, i32 %.fca.5.load68, 5
  %.fca.6.gep70 = getelementptr inbounds [8 x i32], ptr %agg.tmp39, i32 0, i32 6
  %84 = ptrtoint ptr %.fca.6.gep70 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.fca.6.load71 = load i32, ptr %.fca.6.gep70, align 4
  %.fca.6.insert72 = insertvalue [8 x i32] %.fca.5.insert69, i32 %.fca.6.load71, 6
  %.fca.7.gep73 = getelementptr inbounds [8 x i32], ptr %agg.tmp39, i32 0, i32 7
  %85 = ptrtoint ptr %.fca.7.gep73 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.fca.7.load74 = load i32, ptr %.fca.7.gep73, align 4
  %.fca.7.insert75 = insertvalue [8 x i32] %.fca.6.insert72, i32 %.fca.7.load74, 7
  call void %75(ptr noundef %map, [8 x i32] %.fca.7.insert75, i32 noundef %77) #14
  %86 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp43, i32 noundef 0, ptr noundef %map, ptr noundef %1) #14
  %88 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %chip, align 4
  %90 = ptrtoint ptr %agg.tmp43 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.fca.0.load = load i32, ptr %agg.tmp43, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp43, i32 0, i32 1
  %91 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %91)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp43, i32 0, i32 2
  %92 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %92)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp43, i32 0, i32 3
  %93 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %93)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp43, i32 0, i32 4
  %94 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %94)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp43, i32 0, i32 5
  %95 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %95)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp43, i32 0, i32 6
  %96 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %96)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp43, i32 0, i32 7
  %97 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %97)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %87(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %89) #14
  %98 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %state, align 4
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2 ], [ %ret.0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfi_amdstd_panic_wait(ptr noundef %map, ptr nocapture noundef readonly %chip, i32 noundef %adr) unnamed_addr #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %adr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup8_crit_edge

land.lhs.true.cleanup8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup8

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end
  %retries.027 = phi i32 [ 10, %if.end ], [ %dec, %cleanup.while.body_crit_edge ]
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 240, ptr noundef %map, ptr noundef %1) #14
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip, align 4
  %8 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %9 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %10 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %11 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %12 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %13 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %14 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %15 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %5(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %7) #14
  %call224 = call i32 @jiffies_to_usecs(i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp325.not = icmp eq i32 %call224, 0
  br i1 %cmp325.not, label %while.body.cleanup_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %call4 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %adr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %for.body.cleanup8_crit_edge

for.body.cleanup8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup8

if.end7:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748) #14
  %inc = add nuw i32 %i.026, 1
  %call2 = call i32 @jiffies_to_usecs(i32 noundef 1) #14
  %cmp3 = icmp ult i32 %inc, %call2
  br i1 %cmp3, label %if.end7.for.body_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %dec = add nsw i32 %retries.027, -1
  %cmp1.not = icmp eq i32 %dec, 0
  br i1 %cmp1.not, label %cleanup.cleanup8_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.cleanup8_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup8

cleanup8:                                         ; preds = %cleanup.cleanup8_crit_edge, %for.body.cleanup8_crit_edge, %land.lhs.true.cleanup8_crit_edge
  %retval.2 = phi i32 [ 0, %land.lhs.true.cleanup8_crit_edge ], [ 0, %for.body.cleanup8_crit_edge ], [ -16, %cleanup.cleanup8_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_panic_write_oneword(ptr noundef %map, ptr nocapture noundef readonly %chip, i32 noundef %adr, [8 x i32] %datum.coerce) unnamed_addr #0 align 64 {
entry:
  %datum = alloca %union.map_word, align 4
  %oldd = alloca %union.map_word, align 4
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %datum.coerce.fca.0.extract = extractvalue [8 x i32] %datum.coerce, 0
  %0 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %datum.coerce.fca.0.extract, ptr %datum, align 4
  %datum.coerce.fca.1.extract = extractvalue [8 x i32] %datum.coerce, 1
  %datum.coerce.fca.1.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 1
  %1 = ptrtoint ptr %datum.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %datum.coerce.fca.1.extract, ptr %datum.coerce.fca.1.gep, align 4
  %datum.coerce.fca.2.extract = extractvalue [8 x i32] %datum.coerce, 2
  %datum.coerce.fca.2.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 2
  %2 = ptrtoint ptr %datum.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %datum.coerce.fca.2.extract, ptr %datum.coerce.fca.2.gep, align 4
  %datum.coerce.fca.3.extract = extractvalue [8 x i32] %datum.coerce, 3
  %datum.coerce.fca.3.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 3
  %3 = ptrtoint ptr %datum.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %datum.coerce.fca.3.extract, ptr %datum.coerce.fca.3.gep, align 4
  %datum.coerce.fca.4.extract = extractvalue [8 x i32] %datum.coerce, 4
  %datum.coerce.fca.4.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 4
  %4 = ptrtoint ptr %datum.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %datum.coerce.fca.4.extract, ptr %datum.coerce.fca.4.gep, align 4
  %datum.coerce.fca.5.extract = extractvalue [8 x i32] %datum.coerce, 5
  %datum.coerce.fca.5.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 5
  %5 = ptrtoint ptr %datum.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %datum.coerce.fca.5.extract, ptr %datum.coerce.fca.5.gep, align 4
  %datum.coerce.fca.6.extract = extractvalue [8 x i32] %datum.coerce, 6
  %datum.coerce.fca.6.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 6
  %6 = ptrtoint ptr %datum.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %datum.coerce.fca.6.extract, ptr %datum.coerce.fca.6.gep, align 4
  %datum.coerce.fca.7.extract = extractvalue [8 x i32] %datum.coerce, 7
  %datum.coerce.fca.7.gep = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 7
  %7 = ptrtoint ptr %datum.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %datum.coerce.fca.7.extract, ptr %datum.coerce.fca.7.gep, align 4
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %8 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oldd) #14
  %10 = call ptr @memset(ptr %oldd, i32 255, i32 32)
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip, align 4
  %add = add i32 %12, %adr
  %call = tail call fastcc i32 @cfi_amdstd_panic_wait(ptr noundef %map, ptr noundef %chip, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_panic_write_oneword.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_panic_write_oneword, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !252

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_panic_write_oneword.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, i32 noundef %add, i32 noundef %datum.coerce.fca.0.extract) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %13 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read, align 4
  call void %14(ptr nonnull sret(%union.map_word) align 4 %oldd, ptr noundef %map, i32 noundef %add) #14
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %15 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bankwidth, align 4
  %add10 = add i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add10)
  %cmp197.not = icmp ult i32 %add10, 4
  br i1 %cmp197.not, label %do.end.do.body19.critedge_crit_edge, label %for.body.preheader

do.end.do.body19.critedge_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19.critedge

for.body.preheader:                               ; preds = %do.end
  %div191 = lshr i32 %add10, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i8.0198, 1
  %exitcond.not = icmp eq i32 %inc, %div191
  br i1 %exitcond.not, label %for.cond.do.body19.critedge_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.do.body19.critedge_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19.critedge

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i8.0198 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx11 = getelementptr [8 x i32], ptr %oldd, i32 0, i32 %i8.0198
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr [8 x i32], ptr %datum, i32 0, i32 %i8.0198
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp13.not = icmp eq i32 %18, %20
  br i1 %cmp13.not, label %for.cond, label %do.body36

do.body19.critedge:                               ; preds = %for.cond.do.body19.critedge_crit_edge, %do.end.do.body19.critedge_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_panic_write_oneword.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_panic_write_oneword, %if.then31)) #14
          to label %do.body78 [label %if.then31], !srcloc !252

if.then31:                                        ; preds = %do.body19.critedge
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_panic_write_oneword.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.84) #14
  br label %do.body78

do.body36:                                        ; preds = %for.body
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %21 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_vpp, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %do.body36.do.end42_crit_edge, label %if.then38

do.body36.do.end42_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

if.then38:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  call void %22(ptr noundef %map, i32 noundef 1) #14
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body36.do.end42_crit_edge
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 5
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 3
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %9, i32 0, i32 6
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  br label %retry

retry:                                            ; preds = %if.then69.retry_crit_edge, %do.end42
  %retry_cnt.0 = phi i32 [ 0, %do.end42 ], [ %inc73, %if.then69.retry_crit_edge ]
  %23 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr_unlock1, align 4
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip, align 4
  %27 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %device_type, align 4
  %call44 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %24, i32 noundef %26, ptr noundef %map, ptr noundef %9, i32 noundef %28, ptr noundef null) #14
  %29 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr_unlock2, align 4
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip, align 4
  %33 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device_type, align 4
  %call47 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %30, i32 noundef %32, ptr noundef %map, ptr noundef %9, i32 noundef %34, ptr noundef null) #14
  %35 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr_unlock1, align 4
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chip, align 4
  %39 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %device_type, align 4
  %call51 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -96, i32 noundef %36, i32 noundef %38, ptr noundef %map, ptr noundef %9, i32 noundef %40, ptr noundef null) #14
  %41 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write, align 4
  call void %42(ptr noundef %map, [8 x i32] %datum.coerce, i32 noundef %add) #14
  %call54199 = call i32 @jiffies_to_usecs(i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54199)
  %cmp55200.not = icmp eq i32 %call54199, 0
  br i1 %cmp55200.not, label %retry.for.end63_crit_edge, label %retry.for.body56_crit_edge

retry.for.body56_crit_edge:                       ; preds = %retry
  br label %for.body56

retry.for.end63_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end63

for.body56:                                       ; preds = %if.end60.for.body56_crit_edge, %retry.for.body56_crit_edge
  %i.0201 = phi i32 [ %inc62, %if.end60.for.body56_crit_edge ], [ 0, %retry.for.body56_crit_edge ]
  %call57 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %for.body56.for.end63_crit_edge

for.body56.for.end63_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end63

if.end60:                                         ; preds = %for.body56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748) #14
  %inc62 = add nuw i32 %i.0201, 1
  %call54 = call i32 @jiffies_to_usecs(i32 noundef 1) #14
  %cmp55 = icmp ult i32 %inc62, %call54
  br i1 %cmp55, label %if.end60.for.body56_crit_edge, label %if.end60.for.end63_crit_edge

if.end60.for.end63_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end63

if.end60.for.body56_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body56

for.end63:                                        ; preds = %if.end60.for.end63_crit_edge, %for.body56.for.end63_crit_edge, %retry.for.end63_crit_edge
  %call65 = call fastcc i32 @chip_good(ptr noundef %map, ptr noundef %chip, i32 noundef %add, [8 x i32] %datum.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %for.end63.if.then69_crit_edge, label %lor.lhs.false

for.end63.if.then69_crit_edge:                    ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then69

lor.lhs.false:                                    ; preds = %for.end63
  %call67 = call fastcc i32 @cfi_check_err_status(ptr noundef %map, ptr noundef %chip, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %lor.lhs.false.do.body78_crit_edge, label %lor.lhs.false.if.then69_crit_edge

lor.lhs.false.if.then69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then69

lor.lhs.false.do.body78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body78

if.then69:                                        ; preds = %lor.lhs.false.if.then69_crit_edge, %for.end63.if.then69_crit_edge
  %44 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 240, ptr noundef %map, ptr noundef %9) #14
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chip, align 4
  %48 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %48)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %49 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %50 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %51 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %52 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %53 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %53)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %54 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %55 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %45(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %47) #14
  %inc73 = add nuw nsw i32 %retry_cnt.0, 1
  %exitcond202.not = icmp eq i32 %inc73, 4
  br i1 %exitcond202.not, label %if.then69.do.body78_crit_edge, label %if.then69.retry_crit_edge

if.then69.retry_crit_edge:                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry

if.then69.do.body78_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body78

do.body78:                                        ; preds = %if.then69.do.body78_crit_edge, %lor.lhs.false.do.body78_crit_edge, %if.then31, %do.body19.critedge
  %ret.0 = phi i32 [ 0, %if.then31 ], [ 0, %do.body19.critedge ], [ -5, %if.then69.do.body78_crit_edge ], [ 0, %lor.lhs.false.do.body78_crit_edge ]
  %set_vpp79 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %56 = ptrtoint ptr %set_vpp79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_vpp79, align 4
  %tobool80.not = icmp eq ptr %57, null
  br i1 %tobool80.not, label %do.body78.cleanup_crit_edge, label %if.then81

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then81:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #16
  call void %57(ptr noundef %map, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.body78.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %if.then81 ], [ %ret.0, %do.body78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oldd) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_erase_oneblock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %len, ptr nocapture noundef readnone %thunk) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %agg.tmp.sroa.0 = alloca [8 x i32], align 4
  %agg.tmp164 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !242) #14
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @default_wake_function, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip, align 4
  %add2 = add i32 %17, %adr
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call3 = tail call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add2, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_erase_oneblock.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_erase_oneblock, %if.then9)) #14
          to label %do.body11 [label %if.then9], !srcloc !252

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_erase_oneblock.__UNIQUE_ID_ddebug216, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.86, i32 noundef %add2) #14
  br label %do.body11

do.body11:                                        ; preds = %if.then9, %do.body
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %18 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_vpp, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %do.body11.do.end17_crit_edge, label %if.then13

do.body11.do.end17_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

if.then13:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %19(ptr noundef %map, i32 noundef 1) #14
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body11.do.end17_crit_edge
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 6
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %sector_erase_cmd = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 12
  %.elt295 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 12, i32 0, i32 1
  %.elt297 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 12, i32 0, i32 2
  %.elt299 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 12, i32 0, i32 3
  %.elt301 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 12, i32 0, i32 4
  %.elt303 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 12, i32 0, i32 5
  %.elt305 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 12, i32 0, i32 6
  %.elt307 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 12, i32 0, i32 7
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %erase_suspended = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 4
  %in_progress_block_addr = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 5
  %neg = sub i32 0, %len
  %in_progress_block_mask = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 6
  %inval_cache = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 11
  %erase_time = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 11
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp164, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp164, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp164, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp164, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp164, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp164, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp164, i32 0, i32 7
  %agg.tmp.sroa.0.4..fca.1.gep188.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 4
  %agg.tmp.sroa.0.8..fca.2.gep191.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 8
  %agg.tmp.sroa.0.12..fca.3.gep194.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 12
  %agg.tmp.sroa.0.16..fca.4.gep197.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 16
  %agg.tmp.sroa.0.20..fca.5.gep200.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 20
  %agg.tmp.sroa.0.24..fca.6.gep203.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 24
  %agg.tmp.sroa.0.28..fca.7.gep206.sroa_idx = getelementptr inbounds i8, ptr %agg.tmp.sroa.0, i32 28
  br label %retry

retry:                                            ; preds = %if.then162.retry_crit_edge, %do.end17
  %retry_cnt.0 = phi i32 [ 0, %do.end17 ], [ %inc, %if.then162.retry_crit_edge ]
  %20 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr_unlock1, align 4
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip, align 4
  %24 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device_type, align 4
  %call19 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %21, i32 noundef %23, ptr noundef %map, ptr noundef %1, i32 noundef %25, ptr noundef null) #14
  %26 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr_unlock2, align 4
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chip, align 4
  %30 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device_type, align 4
  %call22 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %27, i32 noundef %29, ptr noundef %map, ptr noundef %1, i32 noundef %31, ptr noundef null) #14
  %32 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr_unlock1, align 4
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chip, align 4
  %36 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %device_type, align 4
  %call26 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -128, i32 noundef %33, i32 noundef %35, ptr noundef %map, ptr noundef %1, i32 noundef %37, ptr noundef null) #14
  %38 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr_unlock1, align 4
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chip, align 4
  %42 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %device_type, align 4
  %call30 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %39, i32 noundef %41, ptr noundef %map, ptr noundef %1, i32 noundef %43, ptr noundef null) #14
  %44 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr_unlock2, align 4
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chip, align 4
  %48 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %device_type, align 4
  %call34 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %45, i32 noundef %47, ptr noundef %map, ptr noundef %1, i32 noundef %49, ptr noundef null) #14
  %50 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write, align 4
  %52 = ptrtoint ptr %sector_erase_cmd to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack = load i32, ptr %sector_erase_cmd, align 4
  %53 = insertvalue [8 x i32] undef, i32 %.unpack, 0
  %54 = ptrtoint ptr %.elt295 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack296 = load i32, ptr %.elt295, align 4
  %55 = insertvalue [8 x i32] %53, i32 %.unpack296, 1
  %56 = ptrtoint ptr %.elt297 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack298 = load i32, ptr %.elt297, align 4
  %57 = insertvalue [8 x i32] %55, i32 %.unpack298, 2
  %58 = ptrtoint ptr %.elt299 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack300 = load i32, ptr %.elt299, align 4
  %59 = insertvalue [8 x i32] %57, i32 %.unpack300, 3
  %60 = ptrtoint ptr %.elt301 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.unpack302 = load i32, ptr %.elt301, align 4
  %61 = insertvalue [8 x i32] %59, i32 %.unpack302, 4
  %62 = ptrtoint ptr %.elt303 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack304 = load i32, ptr %.elt303, align 4
  %63 = insertvalue [8 x i32] %61, i32 %.unpack304, 5
  %64 = ptrtoint ptr %.elt305 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.unpack306 = load i32, ptr %.elt305, align 4
  %65 = insertvalue [8 x i32] %63, i32 %.unpack306, 6
  %66 = ptrtoint ptr %.elt307 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack308 = load i32, ptr %.elt307, align 4
  %67 = insertvalue [8 x i32] %65, i32 %.unpack308, 7
  call void %51(ptr noundef %map, [8 x i32] %67, i32 noundef %add2) #14
  %68 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %state, align 4
  %69 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load = load i8, ptr %erase_suspended, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %erase_suspended, align 4
  %70 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add2, ptr %in_progress_block_addr, align 4
  %71 = ptrtoint ptr %in_progress_block_mask to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %neg, ptr %in_progress_block_mask, align 4
  call void @mutex_unlock(ptr noundef %mutex) #14
  %72 = ptrtoint ptr %inval_cache to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %inval_cache, align 4
  %tobool38.not = icmp eq ptr %73, null
  br i1 %tobool38.not, label %retry.do.end43_crit_edge, label %if.then39

retry.do.end43_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end43

if.then39:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  call void %73(ptr noundef %map, i32 noundef %add2, i32 noundef %len) #14
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %retry.do.end43_crit_edge
  %74 = ptrtoint ptr %erase_time to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %erase_time, align 4
  %mul = mul i32 %75, 500
  call void @cfi_udelay(i32 noundef %mul) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add47 = add i32 %76, 2000
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %do.body156, %do.end43
  %timeo.0.ph = phi i32 [ %timeo.1, %do.body156 ], [ %add47, %do.end43 ]
  %77 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %78)
  %cmp.not322 = icmp eq i32 %78, 4
  br i1 %cmp.not322, label %for.cond.outer.if.end126_crit_edge, label %for.cond.outer.__here_crit_edge

for.cond.outer.__here_crit_edge:                  ; preds = %for.cond.outer
  br label %__here

for.cond.outer.if.end126_crit_edge:               ; preds = %for.cond.outer
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

__here:                                           ; preds = %__here.__here_crit_edge, %for.cond.outer.__here_crit_edge
  %79 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 212
  %81 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 ptrtoint (ptr blockaddress(@do_erase_oneblock, %__here) to i32), ptr %task_state_change, align 4
  %82 = load ptr, ptr %task, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 2, ptr %82, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !298
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @schedule() #14
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %84 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state, align 4
  %cmp.not = icmp eq i32 %85, 4
  br i1 %cmp.not, label %__here.if.end126_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here.if.end126_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

if.end126:                                        ; preds = %__here.if.end126_crit_edge, %for.cond.outer.if.end126_crit_edge
  %86 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load128 = load i8, ptr %erase_suspended, align 4
  %87 = and i8 %bf.load128, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool130.not = icmp eq i8 %87, 0
  br i1 %tobool130.not, label %if.end126.if.end137_crit_edge, label %if.then131

if.end126.if.end137_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137

if.then131:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %add132 = add i32 %88, 2000
  %bf.clear135 = and i8 %bf.load128, -65
  %89 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %bf.clear135, ptr %erase_suspended, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then131, %if.end126.if.end137_crit_edge
  %timeo.1 = phi i32 [ %add132, %if.then131 ], [ %timeo.0.ph, %if.end126.if.end137_crit_edge ]
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %90 = call ptr @memset(ptr %agg.tmp.sroa.0, i32 255, i32 32)
  %91 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bankwidth.i, align 4, !noalias !299
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %92)
  %cmp.i = icmp slt i32 %92, 4
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = add nuw i32 %92, 3
  %div9.i = and i32 %add.i, -4
  %93 = call ptr @memset(ptr %agg.tmp.sroa.0, i32 255, i32 %div9.i)
  br label %map_word_ff.exit

if.then.i:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = shl i32 %92, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  %94 = ptrtoint ptr %agg.tmp.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub.i, ptr %agg.tmp.sroa.0, align 4, !alias.scope !299
  br label %map_word_ff.exit

map_word_ff.exit:                                 ; preds = %if.then.i, %for.body.preheader.i
  %95 = ptrtoint ptr %agg.tmp.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %agg.tmp.sroa.0.0.agg.tmp.sroa.0.0.agg.tmp.sroa.0.0..fca.0.load186 = load i32, ptr %agg.tmp.sroa.0, align 4
  %.fca.0.insert187 = insertvalue [8 x i32] poison, i32 %agg.tmp.sroa.0.0.agg.tmp.sroa.0.0.agg.tmp.sroa.0.0..fca.0.load186, 0
  %96 = ptrtoint ptr %agg.tmp.sroa.0.4..fca.1.gep188.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %96)
  %agg.tmp.sroa.0.4.agg.tmp.sroa.0.4.agg.tmp.sroa.0.4..fca.1.load189 = load i32, ptr %agg.tmp.sroa.0.4..fca.1.gep188.sroa_idx, align 4
  %.fca.1.insert190 = insertvalue [8 x i32] %.fca.0.insert187, i32 %agg.tmp.sroa.0.4.agg.tmp.sroa.0.4.agg.tmp.sroa.0.4..fca.1.load189, 1
  %97 = ptrtoint ptr %agg.tmp.sroa.0.8..fca.2.gep191.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %97)
  %agg.tmp.sroa.0.8.agg.tmp.sroa.0.8.agg.tmp.sroa.0.8..fca.2.load192 = load i32, ptr %agg.tmp.sroa.0.8..fca.2.gep191.sroa_idx, align 4
  %.fca.2.insert193 = insertvalue [8 x i32] %.fca.1.insert190, i32 %agg.tmp.sroa.0.8.agg.tmp.sroa.0.8.agg.tmp.sroa.0.8..fca.2.load192, 2
  %98 = ptrtoint ptr %agg.tmp.sroa.0.12..fca.3.gep194.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %98)
  %agg.tmp.sroa.0.12.agg.tmp.sroa.0.12.agg.tmp.sroa.0.12..fca.3.load195 = load i32, ptr %agg.tmp.sroa.0.12..fca.3.gep194.sroa_idx, align 4
  %.fca.3.insert196 = insertvalue [8 x i32] %.fca.2.insert193, i32 %agg.tmp.sroa.0.12.agg.tmp.sroa.0.12.agg.tmp.sroa.0.12..fca.3.load195, 3
  %99 = ptrtoint ptr %agg.tmp.sroa.0.16..fca.4.gep197.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %99)
  %agg.tmp.sroa.0.16.agg.tmp.sroa.0.16.agg.tmp.sroa.0.16..fca.4.load198 = load i32, ptr %agg.tmp.sroa.0.16..fca.4.gep197.sroa_idx, align 4
  %.fca.4.insert199 = insertvalue [8 x i32] %.fca.3.insert196, i32 %agg.tmp.sroa.0.16.agg.tmp.sroa.0.16.agg.tmp.sroa.0.16..fca.4.load198, 4
  %100 = ptrtoint ptr %agg.tmp.sroa.0.20..fca.5.gep200.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %100)
  %agg.tmp.sroa.0.20.agg.tmp.sroa.0.20.agg.tmp.sroa.0.20..fca.5.load201 = load i32, ptr %agg.tmp.sroa.0.20..fca.5.gep200.sroa_idx, align 4
  %.fca.5.insert202 = insertvalue [8 x i32] %.fca.4.insert199, i32 %agg.tmp.sroa.0.20.agg.tmp.sroa.0.20.agg.tmp.sroa.0.20..fca.5.load201, 5
  %101 = ptrtoint ptr %agg.tmp.sroa.0.24..fca.6.gep203.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %101)
  %agg.tmp.sroa.0.24.agg.tmp.sroa.0.24.agg.tmp.sroa.0.24..fca.6.load204 = load i32, ptr %agg.tmp.sroa.0.24..fca.6.gep203.sroa_idx, align 4
  %.fca.6.insert205 = insertvalue [8 x i32] %.fca.5.insert202, i32 %agg.tmp.sroa.0.24.agg.tmp.sroa.0.24.agg.tmp.sroa.0.24..fca.6.load204, 6
  %102 = ptrtoint ptr %agg.tmp.sroa.0.28..fca.7.gep206.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %102)
  %agg.tmp.sroa.0.28.agg.tmp.sroa.0.28.agg.tmp.sroa.0.28..fca.7.load207 = load i32, ptr %agg.tmp.sroa.0.28..fca.7.gep206.sroa_idx, align 4
  %.fca.7.insert208 = insertvalue [8 x i32] %.fca.6.insert205, i32 %agg.tmp.sroa.0.28.agg.tmp.sroa.0.28.agg.tmp.sroa.0.28..fca.7.load207, 7
  %call139 = call fastcc i32 @chip_good(ptr noundef %map, ptr noundef %chip, i32 noundef %add2, [8 x i32] %.fca.7.insert208)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end146, label %for.end

if.end146:                                        ; preds = %map_word_ff.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %sub147 = sub i32 %timeo.1, %103
  %cmp148 = icmp slt i32 %sub147, 0
  br i1 %cmp148, label %for.end.thread, label %do.body156

for.end.thread:                                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #16
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.86) #18
  br label %if.then162

do.body156:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @cfi_udelay(i32 noundef 10000) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  br label %for.cond.outer

for.end:                                          ; preds = %map_word_ff.exit
  %call142 = call fastcc i32 @cfi_check_err_status(ptr noundef %map, ptr noundef %chip, i32 noundef %add2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %for.end.if.end170_crit_edge, label %for.end.if.then162_crit_edge

for.end.if.then162_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then162

for.end.if.end170_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.then162:                                       ; preds = %for.end.if.then162_crit_edge, %for.end.thread
  %104 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp164, i32 noundef 240, ptr noundef %map, ptr noundef %1) #14
  %106 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %chip, align 4
  %108 = ptrtoint ptr %agg.tmp164 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.fca.0.load = load i32, ptr %agg.tmp164, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %109 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %109)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %110 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %110)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %111 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %111)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %112 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %112)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %113 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %113)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %114 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %114)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %115 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %115)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %105(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %107) #14
  %inc = add nuw nsw i32 %retry_cnt.0, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.then162.if.end170_crit_edge, label %if.then162.retry_crit_edge

if.then162.retry_crit_edge:                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry

if.then162.if.end170_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.end170:                                        ; preds = %if.then162.if.end170_crit_edge, %for.end.if.end170_crit_edge
  %ret.1321 = phi i32 [ -5, %if.then162.if.end170_crit_edge ], [ 0, %for.end.if.end170_crit_edge ]
  %116 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %state, align 4
  %117 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %set_vpp, align 4
  %tobool174.not = icmp eq ptr %118, null
  br i1 %tobool174.not, label %if.end170.do.end179_crit_edge, label %if.then175

if.end170.do.end179_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end179

if.then175:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  call void %118(ptr noundef %map, i32 noundef 0) #14
  br label %do.end179

do.end179:                                        ; preds = %if.then175, %if.end170.do.end179_crit_edge
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end179, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %ret.1321, %do.end179 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_ppb_xxlock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %len, ptr noundef %thunk) #0 align 64 {
entry:
  %val.i = alloca %union.map_word, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp19 = alloca %union.map_word, align 4
  %agg.tmp25 = alloca %union.map_word, align 4
  %agg.tmp29 = alloca %union.map_word, align 4
  %agg.tmp70 = alloca %union.map_word, align 4
  %agg.tmp74 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  %add = add i32 %3, %adr
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call = tail call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_ppb_xxlock.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_ppb_xxlock, %if.then6)) #14
          to label %do.end [label %if.then6], !srcloc !252

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_ppb_xxlock.__UNIQUE_ID_ddebug220, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.87, i32 noundef %add, i32 noundef %len) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_unlock1, align 4
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_type, align 4
  %call9 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %5, i32 noundef %7, ptr noundef %map, ptr noundef %1, i32 noundef %9, ptr noundef null) #14
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_unlock2, align 4
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip, align 4
  %14 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device_type, align 4
  %call12 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %11, i32 noundef %13, ptr noundef %map, ptr noundef %1, i32 noundef %15, ptr noundef null) #14
  %16 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr_unlock1, align 4
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip, align 4
  %20 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_type, align 4
  %call16 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -64, i32 noundef %17, i32 noundef %19, ptr noundef %map, ptr noundef %1, i32 noundef %21, ptr noundef null) #14
  %magicptr270 = ptrtoint ptr %thunk to i32
  %22 = zext i32 %magicptr270 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %magicptr270, label %do.body41 [
    i32 1, label %if.then17
    i32 2, label %if.then22
    i32 3, label %if.then34
  ]

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 15, ptr %state, align 4
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 160, ptr noundef %map, ptr noundef %1) #14
  %26 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.0.load178 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert179 = insertvalue [8 x i32] poison, i32 %.fca.0.load178, 0
  %.fca.1.gep180 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %27 = ptrtoint ptr %.fca.1.gep180 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.1.load181 = load i32, ptr %.fca.1.gep180, align 4
  %.fca.1.insert182 = insertvalue [8 x i32] %.fca.0.insert179, i32 %.fca.1.load181, 1
  %.fca.2.gep183 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %28 = ptrtoint ptr %.fca.2.gep183 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.2.load184 = load i32, ptr %.fca.2.gep183, align 4
  %.fca.2.insert185 = insertvalue [8 x i32] %.fca.1.insert182, i32 %.fca.2.load184, 2
  %.fca.3.gep186 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %29 = ptrtoint ptr %.fca.3.gep186 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.3.load187 = load i32, ptr %.fca.3.gep186, align 4
  %.fca.3.insert188 = insertvalue [8 x i32] %.fca.2.insert185, i32 %.fca.3.load187, 3
  %.fca.4.gep189 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %30 = ptrtoint ptr %.fca.4.gep189 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.4.load190 = load i32, ptr %.fca.4.gep189, align 4
  %.fca.4.insert191 = insertvalue [8 x i32] %.fca.3.insert188, i32 %.fca.4.load190, 4
  %.fca.5.gep192 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %31 = ptrtoint ptr %.fca.5.gep192 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.5.load193 = load i32, ptr %.fca.5.gep192, align 4
  %.fca.5.insert194 = insertvalue [8 x i32] %.fca.4.insert191, i32 %.fca.5.load193, 5
  %.fca.6.gep195 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %32 = ptrtoint ptr %.fca.6.gep195 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.6.load196 = load i32, ptr %.fca.6.gep195, align 4
  %.fca.6.insert197 = insertvalue [8 x i32] %.fca.5.insert194, i32 %.fca.6.load196, 6
  %.fca.7.gep198 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %33 = ptrtoint ptr %.fca.7.gep198 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.fca.7.load199 = load i32, ptr %.fca.7.gep198, align 4
  %.fca.7.insert200 = insertvalue [8 x i32] %.fca.6.insert197, i32 %.fca.7.load199, 7
  call void %25(ptr noundef %map, [8 x i32] %.fca.7.insert200, i32 noundef %add) #14
  %34 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp19, i32 noundef 0, ptr noundef %map, ptr noundef %1) #14
  %36 = ptrtoint ptr %agg.tmp19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.0.load154 = load i32, ptr %agg.tmp19, align 4
  %.fca.0.insert155 = insertvalue [8 x i32] poison, i32 %.fca.0.load154, 0
  %.fca.1.gep156 = getelementptr inbounds [8 x i32], ptr %agg.tmp19, i32 0, i32 1
  %37 = ptrtoint ptr %.fca.1.gep156 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.1.load157 = load i32, ptr %.fca.1.gep156, align 4
  %.fca.1.insert158 = insertvalue [8 x i32] %.fca.0.insert155, i32 %.fca.1.load157, 1
  %.fca.2.gep159 = getelementptr inbounds [8 x i32], ptr %agg.tmp19, i32 0, i32 2
  %38 = ptrtoint ptr %.fca.2.gep159 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.2.load160 = load i32, ptr %.fca.2.gep159, align 4
  %.fca.2.insert161 = insertvalue [8 x i32] %.fca.1.insert158, i32 %.fca.2.load160, 2
  %.fca.3.gep162 = getelementptr inbounds [8 x i32], ptr %agg.tmp19, i32 0, i32 3
  %39 = ptrtoint ptr %.fca.3.gep162 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.3.load163 = load i32, ptr %.fca.3.gep162, align 4
  %.fca.3.insert164 = insertvalue [8 x i32] %.fca.2.insert161, i32 %.fca.3.load163, 3
  %.fca.4.gep165 = getelementptr inbounds [8 x i32], ptr %agg.tmp19, i32 0, i32 4
  %40 = ptrtoint ptr %.fca.4.gep165 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.4.load166 = load i32, ptr %.fca.4.gep165, align 4
  %.fca.4.insert167 = insertvalue [8 x i32] %.fca.3.insert164, i32 %.fca.4.load166, 4
  %.fca.5.gep168 = getelementptr inbounds [8 x i32], ptr %agg.tmp19, i32 0, i32 5
  %41 = ptrtoint ptr %.fca.5.gep168 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.5.load169 = load i32, ptr %.fca.5.gep168, align 4
  %.fca.5.insert170 = insertvalue [8 x i32] %.fca.4.insert167, i32 %.fca.5.load169, 5
  %.fca.6.gep171 = getelementptr inbounds [8 x i32], ptr %agg.tmp19, i32 0, i32 6
  %42 = ptrtoint ptr %.fca.6.gep171 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.6.load172 = load i32, ptr %.fca.6.gep171, align 4
  %.fca.6.insert173 = insertvalue [8 x i32] %.fca.5.insert170, i32 %.fca.6.load172, 6
  %.fca.7.gep174 = getelementptr inbounds [8 x i32], ptr %agg.tmp19, i32 0, i32 7
  %43 = ptrtoint ptr %.fca.7.gep174 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.7.load175 = load i32, ptr %.fca.7.gep174, align 4
  %.fca.7.insert176 = insertvalue [8 x i32] %.fca.6.insert173, i32 %.fca.7.load175, 7
  call void %35(ptr noundef %map, [8 x i32] %.fca.7.insert176, i32 noundef %add) #14
  br label %if.end49

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %state23 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %44 = ptrtoint ptr %state23 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %state23, align 4
  %write24 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %45 = ptrtoint ptr %write24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write24, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp25, i32 noundef 128, ptr noundef %map, ptr noundef %1) #14
  %47 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chip, align 4
  %49 = ptrtoint ptr %agg.tmp25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.fca.0.load130 = load i32, ptr %agg.tmp25, align 4
  %.fca.0.insert131 = insertvalue [8 x i32] poison, i32 %.fca.0.load130, 0
  %.fca.1.gep132 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 1
  %50 = ptrtoint ptr %.fca.1.gep132 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.fca.1.load133 = load i32, ptr %.fca.1.gep132, align 4
  %.fca.1.insert134 = insertvalue [8 x i32] %.fca.0.insert131, i32 %.fca.1.load133, 1
  %.fca.2.gep135 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 2
  %51 = ptrtoint ptr %.fca.2.gep135 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.2.load136 = load i32, ptr %.fca.2.gep135, align 4
  %.fca.2.insert137 = insertvalue [8 x i32] %.fca.1.insert134, i32 %.fca.2.load136, 2
  %.fca.3.gep138 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 3
  %52 = ptrtoint ptr %.fca.3.gep138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.3.load139 = load i32, ptr %.fca.3.gep138, align 4
  %.fca.3.insert140 = insertvalue [8 x i32] %.fca.2.insert137, i32 %.fca.3.load139, 3
  %.fca.4.gep141 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 4
  %53 = ptrtoint ptr %.fca.4.gep141 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.fca.4.load142 = load i32, ptr %.fca.4.gep141, align 4
  %.fca.4.insert143 = insertvalue [8 x i32] %.fca.3.insert140, i32 %.fca.4.load142, 4
  %.fca.5.gep144 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 5
  %54 = ptrtoint ptr %.fca.5.gep144 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.5.load145 = load i32, ptr %.fca.5.gep144, align 4
  %.fca.5.insert146 = insertvalue [8 x i32] %.fca.4.insert143, i32 %.fca.5.load145, 5
  %.fca.6.gep147 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 6
  %55 = ptrtoint ptr %.fca.6.gep147 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.6.load148 = load i32, ptr %.fca.6.gep147, align 4
  %.fca.6.insert149 = insertvalue [8 x i32] %.fca.5.insert146, i32 %.fca.6.load148, 6
  %.fca.7.gep150 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 7
  %56 = ptrtoint ptr %.fca.7.gep150 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.fca.7.load151 = load i32, ptr %.fca.7.gep150, align 4
  %.fca.7.insert152 = insertvalue [8 x i32] %.fca.6.insert149, i32 %.fca.7.load151, 7
  call void %46(ptr noundef %map, [8 x i32] %.fca.7.insert152, i32 noundef %48) #14
  %57 = ptrtoint ptr %write24 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write24, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp29, i32 noundef 48, ptr noundef %map, ptr noundef %1) #14
  %59 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chip, align 4
  %61 = ptrtoint ptr %agg.tmp29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.fca.0.load106 = load i32, ptr %agg.tmp29, align 4
  %.fca.0.insert107 = insertvalue [8 x i32] poison, i32 %.fca.0.load106, 0
  %.fca.1.gep108 = getelementptr inbounds [8 x i32], ptr %agg.tmp29, i32 0, i32 1
  %62 = ptrtoint ptr %.fca.1.gep108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.fca.1.load109 = load i32, ptr %.fca.1.gep108, align 4
  %.fca.1.insert110 = insertvalue [8 x i32] %.fca.0.insert107, i32 %.fca.1.load109, 1
  %.fca.2.gep111 = getelementptr inbounds [8 x i32], ptr %agg.tmp29, i32 0, i32 2
  %63 = ptrtoint ptr %.fca.2.gep111 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.2.load112 = load i32, ptr %.fca.2.gep111, align 4
  %.fca.2.insert113 = insertvalue [8 x i32] %.fca.1.insert110, i32 %.fca.2.load112, 2
  %.fca.3.gep114 = getelementptr inbounds [8 x i32], ptr %agg.tmp29, i32 0, i32 3
  %64 = ptrtoint ptr %.fca.3.gep114 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.3.load115 = load i32, ptr %.fca.3.gep114, align 4
  %.fca.3.insert116 = insertvalue [8 x i32] %.fca.2.insert113, i32 %.fca.3.load115, 3
  %.fca.4.gep117 = getelementptr inbounds [8 x i32], ptr %agg.tmp29, i32 0, i32 4
  %65 = ptrtoint ptr %.fca.4.gep117 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.4.load118 = load i32, ptr %.fca.4.gep117, align 4
  %.fca.4.insert119 = insertvalue [8 x i32] %.fca.3.insert116, i32 %.fca.4.load118, 4
  %.fca.5.gep120 = getelementptr inbounds [8 x i32], ptr %agg.tmp29, i32 0, i32 5
  %66 = ptrtoint ptr %.fca.5.gep120 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.5.load121 = load i32, ptr %.fca.5.gep120, align 4
  %.fca.5.insert122 = insertvalue [8 x i32] %.fca.4.insert119, i32 %.fca.5.load121, 5
  %.fca.6.gep123 = getelementptr inbounds [8 x i32], ptr %agg.tmp29, i32 0, i32 6
  %67 = ptrtoint ptr %.fca.6.gep123 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.6.load124 = load i32, ptr %.fca.6.gep123, align 4
  %.fca.6.insert125 = insertvalue [8 x i32] %.fca.5.insert122, i32 %.fca.6.load124, 6
  %.fca.7.gep126 = getelementptr inbounds [8 x i32], ptr %agg.tmp29, i32 0, i32 7
  %68 = ptrtoint ptr %.fca.7.gep126 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.7.load127 = load i32, ptr %.fca.7.gep126, align 4
  %.fca.7.insert128 = insertvalue [8 x i32] %.fca.6.insert125, i32 %.fca.7.load127, 7
  call void %58(ptr noundef %map, [8 x i32] %.fca.7.insert128, i32 noundef %60) #14
  br label %if.end49

if.then34:                                        ; preds = %do.end
  %state35 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %69 = ptrtoint ptr %state35 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %state35, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i) #14
  %read.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %70 = call ptr @memset(ptr %val.i, i32 255, i32 32)
  %71 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read.i, align 4
  call void %72(ptr nonnull sret(%union.map_word) align 4 %val.i, ptr noundef %map, i32 noundef %add) #14
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %73 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bankwidth.i, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %74, label %if.else31.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
  ]

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

if.then4.i:                                       ; preds = %if.then34
  %swap.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %78 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %80 = icmp ult i32 %79, 2
  br i1 %80, label %cond.true7.i, label %cond.false9.i

cond.true7.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

cond.false9.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp16.i = icmp eq i32 %79, 3
  %83 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val.i, align 4
  br i1 %cmp16.i, label %cond.true18.i, label %cond.false22.i

cond.true18.i:                                    ; preds = %cond.false9.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv21.i = and i32 %84, 65535
  br label %cfi_read_query.exit

cond.false22.i:                                   ; preds = %cond.false9.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv24.i = trunc i32 %84 to i16
  %85 = call i16 @llvm.bswap.i16(i16 %conv24.i) #14
  %conv25.i = zext i16 %85 to i32
  br label %cfi_read_query.exit

if.else31.i:                                      ; preds = %if.then34
  %swap32.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %86 = ptrtoint ptr %swap32.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %swap32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %88 = icmp ult i32 %87, 2
  br i1 %88, label %cond.true40.i, label %cond.false42.i

cond.true40.i:                                    ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #16
  %89 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

cond.false42.i:                                   ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %87)
  %cmp49.i = icmp eq i32 %87, 3
  %91 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %val.i, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92) #14
  %spec.select.i = select i1 %cmp49.i, i32 %92, i32 %93
  br label %cfi_read_query.exit

cfi_read_query.exit:                              ; preds = %cond.false42.i, %cond.true40.i, %cond.false22.i, %cond.true18.i, %cond.true7.i, %if.then.i
  %retval.0.in.i = phi i32 [ %77, %if.then.i ], [ %82, %cond.true7.i ], [ %conv21.i, %cond.true18.i ], [ %conv25.i, %cond.false22.i ], [ %90, %cond.true40.i ], [ %spec.select.i, %cond.false42.i ]
  %retval.0.i272 = trunc i32 %retval.0.in.i to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i272)
  %tobool37.not = icmp eq i8 %retval.0.i272, 0
  %lnot.ext39 = zext i1 %tobool37.not to i32
  br label %if.end49

do.body41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_cmdset_0002.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2767, 0\0A.popsection", ""() #14, !srcloc !302
  unreachable

if.end49:                                         ; preds = %cfi_read_query.exit, %if.then22, %if.then17
  %ret.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.then22 ], [ %lnot.ext39, %cfi_read_query.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %add51 = add i32 %94, 200
  %call52274 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52274)
  %tobool53.not275 = icmp eq i32 %call52274, 0
  br i1 %tobool53.not275, label %if.end49.if.end55_crit_edge, label %if.end49.for.end_crit_edge

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  br label %if.end55

if.end55:                                         ; preds = %do.body64.if.end55_crit_edge, %if.end49.if.end55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add51, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp56 = icmp slt i32 %sub, 0
  br i1 %cmp56, label %do.end60, label %do.body64

do.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #18
  br label %for.end

do.body64:                                        ; preds = %if.end55
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @cfi_udelay(i32 noundef 1) #14
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call52 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %add)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body64.if.end55_crit_edge, label %do.body64.for.end_crit_edge

do.body64.for.end_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body64.if.end55_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

for.end:                                          ; preds = %do.body64.for.end_crit_edge, %do.end60, %if.end49.for.end_crit_edge
  %ret.1 = phi i32 [ -5, %do.end60 ], [ %ret.0, %if.end49.for.end_crit_edge ], [ %ret.0, %do.body64.for.end_crit_edge ]
  %write69 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %96 = ptrtoint ptr %write69 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write69, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp70, i32 noundef 144, ptr noundef %map, ptr noundef %1) #14
  %98 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %chip, align 4
  %100 = ptrtoint ptr %agg.tmp70 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.fca.0.load82 = load i32, ptr %agg.tmp70, align 4
  %.fca.0.insert83 = insertvalue [8 x i32] poison, i32 %.fca.0.load82, 0
  %.fca.1.gep84 = getelementptr inbounds [8 x i32], ptr %agg.tmp70, i32 0, i32 1
  %101 = ptrtoint ptr %.fca.1.gep84 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.fca.1.load85 = load i32, ptr %.fca.1.gep84, align 4
  %.fca.1.insert86 = insertvalue [8 x i32] %.fca.0.insert83, i32 %.fca.1.load85, 1
  %.fca.2.gep87 = getelementptr inbounds [8 x i32], ptr %agg.tmp70, i32 0, i32 2
  %102 = ptrtoint ptr %.fca.2.gep87 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.fca.2.load88 = load i32, ptr %.fca.2.gep87, align 4
  %.fca.2.insert89 = insertvalue [8 x i32] %.fca.1.insert86, i32 %.fca.2.load88, 2
  %.fca.3.gep90 = getelementptr inbounds [8 x i32], ptr %agg.tmp70, i32 0, i32 3
  %103 = ptrtoint ptr %.fca.3.gep90 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.fca.3.load91 = load i32, ptr %.fca.3.gep90, align 4
  %.fca.3.insert92 = insertvalue [8 x i32] %.fca.2.insert89, i32 %.fca.3.load91, 3
  %.fca.4.gep93 = getelementptr inbounds [8 x i32], ptr %agg.tmp70, i32 0, i32 4
  %104 = ptrtoint ptr %.fca.4.gep93 to i32
  call void @__asan_load4_noabort(i32 %104)
  %.fca.4.load94 = load i32, ptr %.fca.4.gep93, align 4
  %.fca.4.insert95 = insertvalue [8 x i32] %.fca.3.insert92, i32 %.fca.4.load94, 4
  %.fca.5.gep96 = getelementptr inbounds [8 x i32], ptr %agg.tmp70, i32 0, i32 5
  %105 = ptrtoint ptr %.fca.5.gep96 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.fca.5.load97 = load i32, ptr %.fca.5.gep96, align 4
  %.fca.5.insert98 = insertvalue [8 x i32] %.fca.4.insert95, i32 %.fca.5.load97, 5
  %.fca.6.gep99 = getelementptr inbounds [8 x i32], ptr %agg.tmp70, i32 0, i32 6
  %106 = ptrtoint ptr %.fca.6.gep99 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.fca.6.load100 = load i32, ptr %.fca.6.gep99, align 4
  %.fca.6.insert101 = insertvalue [8 x i32] %.fca.5.insert98, i32 %.fca.6.load100, 6
  %.fca.7.gep102 = getelementptr inbounds [8 x i32], ptr %agg.tmp70, i32 0, i32 7
  %107 = ptrtoint ptr %.fca.7.gep102 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.fca.7.load103 = load i32, ptr %.fca.7.gep102, align 4
  %.fca.7.insert104 = insertvalue [8 x i32] %.fca.6.insert101, i32 %.fca.7.load103, 7
  call void %97(ptr noundef %map, [8 x i32] %.fca.7.insert104, i32 noundef %99) #14
  %108 = ptrtoint ptr %write69 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write69, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp74, i32 noundef 0, ptr noundef %map, ptr noundef %1) #14
  %110 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %chip, align 4
  %112 = ptrtoint ptr %agg.tmp74 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.fca.0.load = load i32, ptr %agg.tmp74, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp74, i32 0, i32 1
  %113 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %113)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp74, i32 0, i32 2
  %114 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %114)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp74, i32 0, i32 3
  %115 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %115)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp74, i32 0, i32 4
  %116 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %116)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp74, i32 0, i32 5
  %117 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %117)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp74, i32 0, i32 6
  %118 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %118)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp74, i32 0, i32 7
  %119 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %119)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %109(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %111) #14
  %state77 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %120 = ptrtoint ptr %state77 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %state77, align 4
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !10, !11, !13, !14, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !146, !148, !149, !150, !151, !152, !154, !155, !156, !158, !160, !161, !162, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !179, !180, !181, !182, !183, !184, !186, !187, !188, !190, !191, !193, !194, !195, !197, !199, !200, !201, !203, !204, !205, !207, !209, !211, !212, !213, !215, !217, !218, !220, !222, !223, !225, !226, !227, !229, !230, !232, !233, !234, !235, !237, !239, !240, !241}
!llvm.named.register.sp = !{!242}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 618, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cfi_cmdset_0002.__UNIQUE_ID_ddebug194, !1, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 629, i32 72}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 646, i32 5}
!9 = !{ptr @cfi_cmdset_0002._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @cfi_cmdset_0002._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 655, i32 4}
!13 = !{ptr @cfi_cmdset_0002._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @cfi_cmdset_0002._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 671, i32 13}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 673, i32 5}
!19 = !{ptr @cfi_cmdset_0002._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cfi_cmdset_0002._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 682, i32 5}
!23 = !{ptr @cfi_cmdset_0002._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cfi_cmdset_0002._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 689, i32 5}
!27 = !{ptr @cfi_cmdset_0002._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cfi_cmdset_0002._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cfi_cmdset_0002.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 739, i32 3}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__ksymtab_cfi_cmdset_0002, !33, !"__ksymtab_cfi_cmdset_0002", i1 false, i1 false}
!33 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 748, i32 1}
!34 = !{ptr @__ksymtab_cfi_cmdset_0006, !35, !"__ksymtab_cfi_cmdset_0006", i1 false, i1 false}
!35 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 749, i32 1}
!36 = !{ptr @__ksymtab_cfi_cmdset_0701, !37, !"__ksymtab_cfi_cmdset_0701", i1 false, i1 false}
!37 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 750, i32 1}
!38 = !{ptr @__UNIQUE_ID_file222, !39, !"__UNIQUE_ID_file222", i1 false, i1 false}
!39 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 3116, i32 1}
!40 = !{ptr @__UNIQUE_ID_license223, !39, !"__UNIQUE_ID_license223", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_author224, !42, !"__UNIQUE_ID_author224", i1 false, i1 false}
!42 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 3117, i32 1}
!43 = !{ptr @__UNIQUE_ID_description225, !44, !"__UNIQUE_ID_description225", i1 false, i1 false}
!44 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 3118, i32 1}
!45 = !{ptr @__UNIQUE_ID_alias226, !46, !"__UNIQUE_ID_alias226", i1 false, i1 false}
!46 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 3119, i32 1}
!47 = !{ptr @__UNIQUE_ID_alias227, !48, !"__UNIQUE_ID_alias227", i1 false, i1 false}
!48 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 3120, i32 1}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 509, i32 4}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cfi_fixup_major_minor._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @cfi_fixup_major_minor._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @cfi_fixup_table, !55, !"cfi_fixup_table", i1 false, i1 false}
!55 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 452, i32 25}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 232, i32 3}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @fixup_amd_bootblock.__UNIQUE_ID_ddebug190, !57, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 252, i32 4}
!62 = !{ptr @fixup_amd_bootblock.__UNIQUE_ID_ddebug191, !61, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 257, i32 4}
!65 = !{ptr @fixup_amd_bootblock._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @fixup_amd_bootblock._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 263, i32 3}
!69 = !{ptr @fixup_amd_bootblock.__UNIQUE_ID_ddebug192, !68, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!70 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1326, i32 3}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 408, i32 3}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @fixup_s29gl064n_sectors._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @fixup_s29gl064n_sectors._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 420, i32 3}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @fixup_s29gl032n_sectors._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @fixup_s29gl032n_sectors._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 435, i32 2}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @fixup_s29ns512p_sectors._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @fixup_s29ns512p_sectors._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 397, i32 2}
!91 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @fixup_sst38vf640x_sectorsize._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @fixup_sst38vf640x_sectorsize._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 280, i32 3}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @fixup_use_write_buffers.__UNIQUE_ID_ddebug193, !95, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2049, i32 2}
!100 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @do_write_buffer.__UNIQUE_ID_ddebug209, !99, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 900, i32 5}
!104 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @get_chip._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @get_chip._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 945, i32 5}
!109 = !{ptr @get_chip._entry.42, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @get_chip._entry_ptr.44, !108, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 977, i32 3}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1967, i32 4}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1983, i32 4}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @do_write_buffer_wait._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @do_write_buffer_wait._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 147, i32 4}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @cfi_check_err_status._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @cfi_check_err_status._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 150, i32 4}
!127 = !{ptr @cfi_check_err_status._entry.49, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cfi_check_err_status._entry_ptr.51, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 153, i32 4}
!131 = !{ptr @cfi_check_err_status._entry.52, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @cfi_check_err_status._entry_ptr.54, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 156, i32 4}
!135 = !{ptr @cfi_check_err_status._entry.55, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cfi_check_err_status._entry_ptr.57, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1011, i32 3}
!139 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @put_chip._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @put_chip._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @cfi_nopri_fixup_table, !143, !"cfi_nopri_fixup_table", i1 false, i1 false}
!143 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 440, i32 25}
!144 = !{ptr @jedec_fixup_table, !145, !"jedec_fixup_table", i1 false, i1 false}
!145 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 479, i32 25}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/chips/fwh_lock.h", i32 103, i32 2}
!148 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @fixup_use_fwh_lock._entry, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @fixup_use_fwh_lock._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/chips/fwh_lock.h", i32 38, i32 3}
!154 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @fwh_xxlock_oneblock.__UNIQUE_ID_ddebug189, !153, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!156 = !{ptr @fixup_table, !157, !"fixup_table", i1 false, i1 false}
!157 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 486, i32 25}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2437, i32 2}
!160 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @do_erase_chip.__UNIQUE_ID_ddebug214, !159, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2466, i32 4}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2488, i32 4}
!166 = !{ptr @do_erase_chip._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @do_erase_chip._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2650, i32 2}
!170 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @do_atmel_lock.__UNIQUE_ID_ddebug218, !169, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2685, i32 2}
!174 = !{ptr @do_atmel_unlock.__UNIQUE_ID_ddebug219, !173, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!175 = !{ptr @cfi_amdstd_chipdrv, !176, !"cfi_amdstd_chipdrv", i1 false, i1 false}
!176 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 105, i32 31}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 760, i32 2}
!179 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @cfi_amdstd_setup._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @cfi_amdstd_setup._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 789, i32 3}
!186 = !{ptr @cfi_amdstd_setup._entry.75, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @cfi_amdstd_setup._entry_ptr.77, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1808, i32 2}
!190 = !{ptr @do_write_oneword.__UNIQUE_ID_ddebug203, !189, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1775, i32 3}
!193 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @do_write_oneword_retry.__UNIQUE_ID_ddebug202, !192, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1687, i32 4}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1704, i32 4}
!199 = !{ptr @do_write_oneword_once._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @do_write_oneword_once._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.82, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1470, i32 4}
!203 = !{ptr @do_otp_lock._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @do_otp_lock._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = distinct !{null, !206, !"__already_done", i1 false, i1 false}
!206 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1848, i32 4}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 1919, i32 4}
!209 = !{ptr @.str.84, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2255, i32 2}
!211 = !{ptr @.str.85, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @do_panic_write_oneword.__UNIQUE_ID_ddebug210, !210, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!213 = !{ptr @do_panic_write_oneword.__UNIQUE_ID_ddebug211, !214, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!214 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2266, i32 3}
!215 = !{ptr @.str.86, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2536, i32 2}
!217 = !{ptr @do_erase_oneblock.__UNIQUE_ID_ddebug216, !216, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!218 = distinct !{null, !219, !"__already_done", i1 false, i1 false}
!219 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2565, i32 4}
!220 = !{ptr @do_erase_oneblock._entry, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2587, i32 4}
!222 = !{ptr @do_erase_oneblock._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2740, i32 2}
!225 = !{ptr @.str.88, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @do_ppb_xxlock.__UNIQUE_ID_ddebug220, !224, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!227 = !{ptr @do_ppb_xxlock._entry, !228, !"_entry", i1 false, i1 false}
!228 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2778, i32 4}
!229 = !{ptr @do_ppb_xxlock._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.89, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2880, i32 4}
!232 = !{ptr @.str.90, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @cfi_ppb_unlock._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @cfi_ppb_unlock._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 2949, i32 4}
!237 = !{ptr @.str.91, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mtd/chips/cfi_cmdset_0002.c", i32 3052, i32 4}
!239 = !{ptr @.str.92, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @cfi_amdstd_resume._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @cfi_amdstd_resume._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{!"sp"}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{i64 2149037423, i64 2149037428, i64 2149037441, i64 2149037485, i64 2149037519, i64 2149037540}
!253 = !{!"branch_weights", i32 1, i32 2000}
!254 = !{i64 2153484726}
!255 = !{!256}
!256 = distinct !{!256, !257, !"map_word_load_partial: %agg.result"}
!257 = distinct !{!257, !"map_word_load_partial"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"map_word_load: %agg.result"}
!260 = distinct !{!260, !"map_word_load"}
!261 = !{i64 2153246273, i64 2153246761, i64 2153246310, i64 2153246366, i64 2153246400, i64 2153246424, i64 2153246465, i64 2153246486, i64 2153246514, i64 2153246548}
!262 = !{i64 2153491532}
!263 = !{!264}
!264 = distinct !{!264, !265, !"map_word_load_partial: %agg.result"}
!265 = distinct !{!265, !"map_word_load_partial"}
!266 = !{i64 2153550675}
!267 = !{!"auto-init"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"map_word_load_partial: %agg.result"}
!270 = distinct !{!270, !"map_word_load_partial"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"map_word_load: %agg.result"}
!273 = distinct !{!273, !"map_word_load"}
!274 = !{!275}
!275 = distinct !{!275, !276, !"map_word_load_partial: %agg.result"}
!276 = distinct !{!276, !"map_word_load_partial"}
!277 = !{i64 2153461413}
!278 = !{!279}
!279 = distinct !{!279, !280, !"map_word_load: %agg.result"}
!280 = distinct !{!280, !"map_word_load"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"map_word_load: %agg.result"}
!283 = distinct !{!283, !"map_word_load"}
!284 = !{i64 2153453309}
!285 = !{i64 2153496624}
!286 = !{i64 2153519292}
!287 = !{!288}
!288 = distinct !{!288, !289, !"map_word_ff: %agg.result"}
!289 = distinct !{!289, !"map_word_ff"}
!290 = !{ptr @do_otp_lock, ptr @do_otp_write, ptr @do_read_secsi_onechip}
!291 = !{!292}
!292 = distinct !{!292, !293, !"map_word_ff: %agg.result"}
!293 = distinct !{!293, !"map_word_ff"}
!294 = !{!295}
!295 = distinct !{!295, !296, !"map_word_load_partial: %agg.result"}
!296 = distinct !{!296, !"map_word_load_partial"}
!297 = !{i64 2153472217}
!298 = !{i64 2153529464}
!299 = !{!300}
!300 = distinct !{!300, !301, !"map_word_ff: %agg.result"}
!301 = distinct !{!301, !"map_word_ff"}
!302 = !{i64 2153540140, i64 2153540641, i64 2153540177, i64 2153540233, i64 2153540267, i64 2153540291, i64 2153540332, i64 2153540353, i64 2153540381, i64 2153540415}
