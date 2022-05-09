; ModuleID = '/llk/IR_all_yes/drivers/mtd/chips/cfi_cmdset_0001.c_pt.bc'
source_filename = "../drivers/mtd/chips/cfi_cmdset_0001.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cfi_cmdset_0001\22, \22a\22\09"
module asm "\09.weak\09__crc_cfi_cmdset_0001\09\09\09\09"
module asm "\09.long\09__crc_cfi_cmdset_0001\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0001:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0001\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0001:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cfi_cmdset_0003\22, \22a\22\09"
module asm "\09.weak\09__crc_cfi_cmdset_0003\09\09\09\09"
module asm "\09.long\09__crc_cfi_cmdset_0003\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0003:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0003\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0003:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cfi_cmdset_0200\22, \22a\22\09"
module asm "\09.weak\09__crc_cfi_cmdset_0200\09\09\09\09"
module asm "\09.long\09__crc_cfi_cmdset_0200\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0200:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0200\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0200:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cfi_fixup = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.cfi_pri_intelext = type <{ [3 x i8], i8, i8, i32, i8, i16, i8, i8, i8, i16, i8, i8, [0 x i8] }>
%struct.cfi_intelext_regioninfo = type { i16, i8, i8, i8, i8, [1 x %struct.cfi_intelext_blockinfo] }
%struct.cfi_intelext_blockinfo = type { i16, i16, i16, i8, i8 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.cfi_intelext_programming_regioninfo = type { i8, i8, i8, i8, i8, i8 }
%struct.flchip_shared = type { %struct.mutex, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.kvec = type { ptr, i32 }
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
%struct.fwh_xxlock_thunk = type { i32, i32 }
%struct.otp_info = type { i32, i32, i32 }
%struct.cfi_intelext_otpinfo = type <{ i32, i16, i8, i16, i8 }>

@cfi_fixup_table = internal global { [10 x %struct.cfi_fixup], [48 x i8] } { [10 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 31, i16 -1, ptr @fixup_convert_atmel_pri }, %struct.cfi_fixup { i16 31, i16 734, ptr @fixup_at49bv640dx_lock }, %struct.cfi_fixup { i16 31, i16 731, ptr @fixup_at49bv640dx_lock }, %struct.cfi_fixup { i16 -1, i16 -1, ptr @fixup_use_write_buffers }, %struct.cfi_fixup { i16 32, i16 186, ptr @fixup_st_m28w320ct }, %struct.cfi_fixup { i16 32, i16 187, ptr @fixup_st_m28w320cb }, %struct.cfi_fixup { i16 137, i16 -1, ptr @fixup_unlock_powerup_lock }, %struct.cfi_fixup { i16 176, i16 -1, ptr @fixup_unlock_powerup_lock }, %struct.cfi_fixup { i16 176, i16 -1, ptr @fixup_LH28F640BF }, %struct.cfi_fixup zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cfi_cmdset_0001._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015cfi_cmdset_0001: Erase suspend on write enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfi_cmdset_0001\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/chips/cfi_cmdset_0001.c\00", [60 x i8] zeroinitializer }, align 32
@cfi_cmdset_0001._entry_ptr = internal global ptr @cfi_cmdset_0001._entry, section ".printk_index", align 4
@jedec_fixup_table = internal global { [6 x %struct.cfi_fixup], [48 x i8] } { [6 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 137, i16 173, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 137, i16 172, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 32, i16 47, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 32, i16 128, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup { i16 32, i16 129, ptr @fixup_use_fwh_lock }, %struct.cfi_fixup zeroinitializer], [48 x i8] zeroinitializer }, align 32
@fixup_table = internal global { [2 x %struct.cfi_fixup], [16 x i8] } { [2 x %struct.cfi_fixup] [%struct.cfi_fixup { i16 -1, i16 -1, ptr @fixup_use_point }, %struct.cfi_fixup zeroinitializer], [16 x i8] zeroinitializer }, align 32
@cfi_cmdset_0001.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(cfi->chips[i].wq)\00", [44 x i8] zeroinitializer }, align 32
@cfi_intelext_chipdrv = internal global { %struct.mtd_chip_driver, [40 x i8] } { %struct.mtd_chip_driver { ptr null, ptr @cfi_intelext_destroy, ptr null, ptr @.str.1, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_cfi_cmdset_0001 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0001 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0001 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0001 to i32), ptr @__kstrtab_cfi_cmdset_0001, ptr @__kstrtabns_cfi_cmdset_0001 }, section "___ksymtab_gpl+cfi_cmdset_0001", align 4
@__kstrtab_cfi_cmdset_0003 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0003 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0003 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0001 to i32), ptr @__kstrtab_cfi_cmdset_0003, ptr @__kstrtabns_cfi_cmdset_0003 }, section "___ksymtab_gpl+cfi_cmdset_0003", align 4
@__kstrtab_cfi_cmdset_0200 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0200 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0200 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0001 to i32), ptr @__kstrtab_cfi_cmdset_0200, ptr @__kstrtabns_cfi_cmdset_0200 }, section "___ksymtab_gpl+cfi_cmdset_0200", align 4
@__UNIQUE_ID_file197 = internal constant [55 x i8] c"cfi_cmdset_0001.file=drivers/mtd/chips/cfi_cmdset_0001\00", section ".modinfo", align 1
@__UNIQUE_ID_license198 = internal constant [28 x i8] c"cfi_cmdset_0001.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author199 = internal constant [68 x i8] c"cfi_cmdset_0001.author=David Woodhouse <dwmw2@infradead.org> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description200 = internal constant [72 x i8] c"cfi_cmdset_0001.description=MTD chip driver for Intel/Sharp flash chips\00", section ".modinfo", align 1
@__UNIQUE_ID_alias201 = internal constant [38 x i8] c"cfi_cmdset_0001.alias=cfi_cmdset_0003\00", section ".modinfo", align 1
@__UNIQUE_ID_alias202 = internal constant [38 x i8] c"cfi_cmdset_0001.alias=cfi_cmdset_0200\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Intel/Sharp\00", [20 x i8] zeroinitializer }, align 32
@read_pri_intelext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013  Unknown Intel/Sharp Extended Query version %c.%c.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read_pri_intelext\00", [46 x i8] zeroinitializer }, align 32
@read_pri_intelext._entry_ptr = internal global ptr @read_pri_intelext._entry, section ".printk_index", align 4
@read_pri_intelext._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: cfi_pri_intelext is too fat\0A\00", [61 x i8] zeroinitializer }, align 32
@read_pri_intelext._entry_ptr.9 = internal global ptr @read_pri_intelext._entry.7, section ".printk_index", align 4
@fixup_convert_atmel_pri._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013atmel Features: %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fixup_convert_atmel_pri\00", [40 x i8] zeroinitializer }, align 32
@fixup_convert_atmel_pri._entry_ptr = internal global ptr @fixup_convert_atmel_pri._entry, section ".printk_index", align 4
@fixup_use_write_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Using buffer write method\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fixup_use_write_buffers\00", [40 x i8] zeroinitializer }, align 32
@fixup_use_write_buffers._entry_ptr = internal global ptr @fixup_use_write_buffers._entry, section ".printk_index", align 4
@do_write_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014SR.4 or SR.5 bits set in buffer write (status %lx). Clearing.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_write_buffer\00", [16 x i8] zeroinitializer }, align 32
@do_write_buffer._entry_ptr = internal global ptr @do_write_buffer._entry, section ".printk_index", align 4
@do_write_buffer._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s: Chip not ready for buffer write. Xstatus = %lx, status = %lx\0A\00", [60 x i8] zeroinitializer }, align 32
@do_write_buffer._entry_ptr.18 = internal global ptr @do_write_buffer._entry.16, section ".printk_index", align 4
@do_write_buffer._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 1838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: buffer write error (status timeout)\0A\00", [53 x i8] zeroinitializer }, align 32
@do_write_buffer._entry_ptr.21 = internal global ptr @do_write_buffer._entry.19, section ".printk_index", align 4
@do_write_buffer._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 1855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: buffer write error (bad VPP)\0A\00", [60 x i8] zeroinitializer }, align 32
@do_write_buffer._entry_ptr.24 = internal global ptr @do_write_buffer._entry.22, section ".printk_index", align 4
@do_write_buffer._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.2, i32 1858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: buffer write error (status 0x%lx)\0A\00", [55 x i8] zeroinitializer }, align 32
@do_write_buffer._entry_ptr.27 = internal global ptr @do_write_buffer._entry.25, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@chip_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: Chip not ready after erase suspended: status = 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_ready\00", [21 x i8] zeroinitializer }, align 32
@chip_ready._entry_ptr = internal global ptr @chip_ready._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@put_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: put_chip() called with oldstate %d!!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_chip\00", [23 x i8] zeroinitializer }, align 32
@put_chip._entry_ptr = internal global ptr @put_chip._entry, section ".printk_index", align 4
@fixup_unlock_powerup_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016Using auto-unlock on power-up/resume\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fixup_unlock_powerup_lock\00", [38 x i8] zeroinitializer }, align 32
@fixup_unlock_powerup_lock._entry_ptr = internal global ptr @fixup_unlock_powerup_lock._entry, section ".printk_index", align 4
@fixup_LH28F640BF._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016Reset Partition Config. Register: 1 Partition of 4 planes\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fixup_LH28F640BF\00", [47 x i8] zeroinitializer }, align 32
@fixup_LH28F640BF._entry_ptr = internal global ptr @fixup_LH28F640BF._entry, section ".printk_index", align 4
@fixup_LH28F640BF._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016cfi_cmdset_0001: Simultaneous Operations disabled\0A\00", [43 x i8] zeroinitializer }, align 32
@fixup_LH28F640BF._entry_ptr.38 = internal global ptr @fixup_LH28F640BF._entry.36, section ".printk_index", align 4
@fixup_use_fwh_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.41, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015using fwh lock/unlock method\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fixup_use_fwh_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/chips/fwh_lock.h\00", [35 x i8] zeroinitializer }, align 32
@fixup_use_fwh_lock._entry_ptr = internal global ptr @fixup_use_fwh_lock._entry, section ".printk_index", align 4
@fwh_xxlock_oneblock.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.41, ptr @.str.43, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fwh_xxlock_oneblock\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MTD %s(): chip->start: %lx wanted >= 0x400000\0A\00", [49 x i8] zeroinitializer }, align 32
@cfi_intelext_unpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Error: unpoint called on non pointed region\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cfi_intelext_unpoint\00", [43 x i8] zeroinitializer }, align 32
@cfi_intelext_unpoint._entry_ptr = internal global ptr @cfi_intelext_unpoint._entry, section ".printk_index", align 4
@cfi_intelext_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014Sum of regions (%lx) != total size of set of interleaved chips (%lx)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cfi_intelext_setup\00", [45 x i8] zeroinitializer }, align 32
@cfi_intelext_setup._entry_ptr = internal global ptr @cfi_intelext_setup._entry, section ".printk_index", align 4
@cfi_intelext_setup._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017erase region %d: offset=0x%llx,size=0x%x,blocks=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@cfi_intelext_setup._entry_ptr.50 = internal global ptr @cfi_intelext_setup._entry.48, section ".printk_index", align 4
@do_write_oneword._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: word write error (status timeout)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_write_oneword\00", [47 x i8] zeroinitializer }, align 32
@do_write_oneword._entry_ptr = internal global ptr @do_write_oneword._entry, section ".printk_index", align 4
@do_write_oneword._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 1609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: word write error (bad VPP)\0A\00", [62 x i8] zeroinitializer }, align 32
@do_write_oneword._entry_ptr.55 = internal global ptr @do_write_oneword._entry.53, section ".printk_index", align 4
@do_write_oneword._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 1612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: word write error (status 0x%lx)\0A\00", [57 x i8] zeroinitializer }, align 32
@do_write_oneword._entry_ptr.58 = internal global ptr @do_write_oneword._entry.56, section ".printk_index", align 4
@cfi_intelext_partition_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: program region size/ctrl_valid/ctrl_inval = %d/%d/%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cfi_intelext_partition_fixup\00", [35 x i8] zeroinitializer }, align 32
@cfi_intelext_partition_fixup._entry_ptr = internal global ptr @cfi_intelext_partition_fixup._entry, section ".printk_index", align 4
@cfi_intelext_partition_fixup._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: bad number of hw partitions (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@cfi_intelext_partition_fixup._entry_ptr.63 = internal global ptr @cfi_intelext_partition_fixup._entry.61, section ".printk_index", align 4
@cfi_intelext_partition_fixup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&shared[i].lock\00", [16 x i8] zeroinitializer }, align 32
@cfi_intelext_partition_fixup.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&chip->wq\00", [22 x i8] zeroinitializer }, align 32
@cfi_intelext_partition_fixup.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@cfi_intelext_partition_fixup._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.60, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017%s: %d set(s) of %d interleaved chips --> %d partitions of %d KiB\0A\00", [59 x i8] zeroinitializer }, align 32
@cfi_intelext_partition_fixup._entry_ptr.71 = internal global ptr @cfi_intelext_partition_fixup._entry.69, section ".printk_index", align 4
@do_erase_oneblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 1976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: block erase error: (status timeout)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_erase_oneblock\00", [46 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr = internal global ptr @do_erase_oneblock._entry, section ".printk_index", align 4
@do_erase_oneblock._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 1995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s: block erase error: (bad command sequence, status 0x%lx)\0A\00", [33 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.76 = internal global ptr @do_erase_oneblock._entry.74, section ".printk_index", align 4
@do_erase_oneblock._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.2, i32 2002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: block erase error: (bad VPP)\0A\00", [60 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.79 = internal global ptr @do_erase_oneblock._entry.77, section ".printk_index", align 4
@do_erase_oneblock._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.73, ptr @.str.2, i32 2005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017block erase failed at 0x%08lx: status 0x%lx. Retrying...\0A\00", [36 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.82 = internal global ptr @do_erase_oneblock._entry.80, section ".printk_index", align 4
@do_erase_oneblock._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.73, ptr @.str.2, i32 2011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: block erase failed at 0x%08lx (status 0x%lx)\0A\00", [44 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.85 = internal global ptr @do_erase_oneblock._entry.83, section ".printk_index", align 4
@do_xxlock_oneblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 2153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: block unlock error: (status timeout)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_xxlock_oneblock\00", [45 x i8] zeroinitializer }, align 32
@do_xxlock_oneblock._entry_ptr = internal global ptr @do_xxlock_oneblock._entry, section ".printk_index", align 4
@cfi_intelext_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 2542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015Flash device refused suspend due to pending operation (oldstate %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cfi_intelext_suspend\00", [43 x i8] zeroinitializer }, align 32
@cfi_intelext_suspend._entry_ptr = internal global ptr @cfi_intelext_suspend._entry, section ".printk_index", align 4
@cfi_intelext_suspend._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 2551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015Flash device refused suspend due to active operation (state %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@cfi_intelext_suspend._entry_ptr.92 = internal global ptr @cfi_intelext_suspend._entry.90, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 17]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.97 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 7, i64 9, i64 20]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.100 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 18]
@__sancov_gen_cov_switch_values.101 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 7, i64 17]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 7, i64 17]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 17]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"cfi_fixup_table\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 333, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 536, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"jedec_fixup_table\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 354, i32 25 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"fixup_table\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 362, i32 25 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 587, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"cfi_intelext_chipdrv\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 109, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 400, i32 70 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 408, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 469, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 187, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 312, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1755, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1773, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1838, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1855, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1858, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 885, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1089, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 328, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 287, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 293, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 103, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/chips/fwh_lock.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 38, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1468, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 640, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 645, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1592, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1609, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1612, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 742, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 756, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 781, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 788, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 789, i32 5 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 794, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1976, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1995, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2002, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2005, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2011, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2153, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2542, i32 5 }
@___asan_gen_.406 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private constant [39 x i8] c"../drivers/mtd/chips/cfi_cmdset_0001.c\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2551, i32 4 }
@llvm.compiler.used = appending global [142 x ptr] [ptr @__UNIQUE_ID_alias201, ptr @__UNIQUE_ID_alias202, ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198, ptr @__ksymtab_cfi_cmdset_0001, ptr @__ksymtab_cfi_cmdset_0003, ptr @__ksymtab_cfi_cmdset_0200, ptr @cfi_cmdset_0001._entry, ptr @cfi_cmdset_0001._entry_ptr, ptr @cfi_intelext_partition_fixup._entry, ptr @cfi_intelext_partition_fixup._entry.61, ptr @cfi_intelext_partition_fixup._entry.69, ptr @cfi_intelext_partition_fixup._entry_ptr, ptr @cfi_intelext_partition_fixup._entry_ptr.63, ptr @cfi_intelext_partition_fixup._entry_ptr.71, ptr @cfi_intelext_setup._entry, ptr @cfi_intelext_setup._entry.48, ptr @cfi_intelext_setup._entry_ptr, ptr @cfi_intelext_setup._entry_ptr.50, ptr @cfi_intelext_suspend._entry, ptr @cfi_intelext_suspend._entry.90, ptr @cfi_intelext_suspend._entry_ptr, ptr @cfi_intelext_suspend._entry_ptr.92, ptr @cfi_intelext_unpoint._entry, ptr @cfi_intelext_unpoint._entry_ptr, ptr @chip_ready._entry, ptr @chip_ready._entry_ptr, ptr @do_erase_oneblock._entry, ptr @do_erase_oneblock._entry.74, ptr @do_erase_oneblock._entry.77, ptr @do_erase_oneblock._entry.80, ptr @do_erase_oneblock._entry.83, ptr @do_erase_oneblock._entry_ptr, ptr @do_erase_oneblock._entry_ptr.76, ptr @do_erase_oneblock._entry_ptr.79, ptr @do_erase_oneblock._entry_ptr.82, ptr @do_erase_oneblock._entry_ptr.85, ptr @do_write_buffer._entry, ptr @do_write_buffer._entry.16, ptr @do_write_buffer._entry.19, ptr @do_write_buffer._entry.22, ptr @do_write_buffer._entry.25, ptr @do_write_buffer._entry_ptr, ptr @do_write_buffer._entry_ptr.18, ptr @do_write_buffer._entry_ptr.21, ptr @do_write_buffer._entry_ptr.24, ptr @do_write_buffer._entry_ptr.27, ptr @do_write_oneword._entry, ptr @do_write_oneword._entry.53, ptr @do_write_oneword._entry.56, ptr @do_write_oneword._entry_ptr, ptr @do_write_oneword._entry_ptr.55, ptr @do_write_oneword._entry_ptr.58, ptr @do_xxlock_oneblock._entry, ptr @do_xxlock_oneblock._entry_ptr, ptr @fixup_LH28F640BF._entry, ptr @fixup_LH28F640BF._entry.36, ptr @fixup_LH28F640BF._entry_ptr, ptr @fixup_LH28F640BF._entry_ptr.38, ptr @fixup_convert_atmel_pri._entry, ptr @fixup_convert_atmel_pri._entry_ptr, ptr @fixup_unlock_powerup_lock._entry, ptr @fixup_unlock_powerup_lock._entry_ptr, ptr @fixup_use_fwh_lock._entry, ptr @fixup_use_fwh_lock._entry_ptr, ptr @fixup_use_write_buffers._entry, ptr @fixup_use_write_buffers._entry_ptr, ptr @put_chip._entry, ptr @put_chip._entry_ptr, ptr @read_pri_intelext._entry, ptr @read_pri_intelext._entry.7, ptr @read_pri_intelext._entry_ptr, ptr @read_pri_intelext._entry_ptr.9, ptr @cfi_fixup_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @jedec_fixup_table, ptr @fixup_table, ptr @cfi_cmdset_0001.__key, ptr @.str.3, ptr @cfi_intelext_chipdrv, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @cfi_intelext_partition_fixup.__key, ptr @.str.64, ptr @cfi_intelext_partition_fixup.__key.65, ptr @.str.66, ptr @cfi_intelext_partition_fixup.__key.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_fixup_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0001._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_fixup_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0001.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_chipdrv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pri_intelext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pri_intelext._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_convert_atmel_pri._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_use_write_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_unlock_powerup_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_LH28F640BF._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_LH28F640BF._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_use_fwh_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_unpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_setup._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_oneword._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_oneword._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_oneword._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_partition_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_partition_fixup._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_partition_fixup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_partition_fixup.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_partition_fixup.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_partition_fixup._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_xxlock_oneblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_intelext_suspend._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@cfi_cmdset_0003 = dso_local alias ptr (ptr, i32), ptr @cfi_cmdset_0001
@cfi_cmdset_0200 = dso_local alias ptr (ptr, i32), ptr @cfi_cmdset_0001

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfi_cmdset_0001(ptr noundef %map, i32 noundef %primary) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1408) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup138_crit_edge, label %if.end

entry.cleanup138_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 54
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %map, ptr %priv, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %call7.i.i, align 8
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 21
  %5 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cfi_intelext_erase_varsize, ptr %_erase, align 8
  %_read = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 24
  %6 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cfi_intelext_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 25
  %7 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cfi_intelext_write_words, ptr %_write, align 8
  %_sync = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 37
  %8 = ptrtoint ptr %_sync to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cfi_intelext_sync, ptr %_sync, align 8
  %_lock = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 38
  %9 = ptrtoint ptr %_lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cfi_intelext_lock, ptr %_lock, align 4
  %_unlock = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 39
  %10 = ptrtoint ptr %_unlock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cfi_intelext_unlock, ptr %_unlock, align 8
  %_is_locked = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 40
  %11 = ptrtoint ptr %_is_locked to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cfi_intelext_is_locked, ptr %_is_locked, align 4
  %_suspend = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 45
  %12 = ptrtoint ptr %_suspend to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cfi_intelext_suspend, ptr %_suspend, align 8
  %_resume = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 46
  %13 = ptrtoint ptr %_resume to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @cfi_intelext_resume, ptr %_resume, align 4
  %flags = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3072, ptr %flags, align 4
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %name1 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 13
  %17 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %name1, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %writesize, align 4
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interleave, align 4
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfiq, align 4
  %MaxBufWriteSize = getelementptr inbounds %struct.cfi_ident, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %MaxBufWriteSize to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %MaxBufWriteSize, align 1
  %conv = zext i16 %24 to i32
  %shl = shl i32 %20, %conv
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl, ptr %writebufsize, align 8
  %reboot_notifier = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 51
  %26 = ptrtoint ptr %reboot_notifier to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @cfi_intelext_reboot, ptr %reboot_notifier, align 8
  %cfi_mode = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %cfi_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cfi_mode, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.end.if.end25_crit_edge [
    i32 1, label %if.then3
    i32 0, label %if.then23
  ]

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %primary)
  %tobool4.not = icmp eq i32 %primary, 0
  %30 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfiq, align 4
  %P_ADR = getelementptr inbounds %struct.cfi_ident, ptr %31, i32 0, i32 2
  %A_ADR = getelementptr inbounds %struct.cfi_ident, ptr %31, i32 0, i32 4
  %cond.in.in = select i1 %tobool4.not, ptr %A_ADR, ptr %P_ADR
  %32 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %cond.in222 = load i16, ptr %cond.in.in, align 1
  %33 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fldrv_priv, align 4
  %mfr.i.i = getelementptr inbounds %struct.cfi_private, ptr %34, i32 0, i32 9
  %id.i.i = getelementptr inbounds %struct.cfi_private, ptr %34, i32 0, i32 10
  br label %again.i

again.i:                                          ; preds = %need_more.i.again.i_crit_edge, %if.then3
  %extp_size.0.i = phi i32 [ 19, %if.then3 ], [ %add95.i, %need_more.i.again.i_crit_edge ]
  %conv.i = trunc i32 %extp_size.0.i to i16
  %call.i = tail call ptr @cfi_read_pri(ptr noundef %map, i16 noundef zeroext %cond.in222, i16 noundef zeroext %conv.i, ptr noundef nonnull @.str.4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %again.i.if.then12_crit_edge, label %if.end.i

again.i.if.then12_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end.i:                                         ; preds = %again.i
  %35 = ptrtoint ptr %mfr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mfr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 137
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.cfi_fixup_major_minor.exit.i_crit_edge

if.end.i.cfi_fixup_major_minor.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfi_fixup_major_minor.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %37 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34844, i32 %38)
  %cmp1.i.i = icmp eq i32 %38, 34844
  br i1 %cmp1.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.cfi_fixup_major_minor.exit.i_crit_edge

land.lhs.true.i.i.cfi_fixup_major_minor.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfi_fixup_major_minor.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %MinorVersion.i.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %MinorVersion.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %MinorVersion.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %40)
  %cmp3.i.i = icmp eq i8 %40, 51
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true2.i.i.cfi_fixup_major_minor.exit.i_crit_edge

land.lhs.true2.i.i.cfi_fixup_major_minor.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfi_fixup_major_minor.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %MinorVersion.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 49, ptr %MinorVersion.i.i, align 1
  br label %cfi_fixup_major_minor.exit.i

cfi_fixup_major_minor.exit.i:                     ; preds = %if.then.i.i, %land.lhs.true2.i.i.cfi_fixup_major_minor.exit.i_crit_edge, %land.lhs.true.i.i.cfi_fixup_major_minor.exit.i_crit_edge, %if.end.i.cfi_fixup_major_minor.exit.i_crit_edge
  %MajorVersion.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %MajorVersion.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %MajorVersion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %43)
  %cmp.not.i = icmp eq i8 %43, 49
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %cfi_fixup_major_minor.exit.i.do.end.i_crit_edge

cfi_fixup_major_minor.exit.i.do.end.i_crit_edge:  ; preds = %cfi_fixup_major_minor.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %cfi_fixup_major_minor.exit.i
  %MinorVersion.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %MinorVersion.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %MinorVersion.i, align 1
  %46 = add i8 %45, -54
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %46)
  %47 = icmp ult i8 %46, -6
  br i1 %47, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.then25.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %cfi_fixup_major_minor.exit.i.do.end.i_crit_edge
  %conv13.i = zext i8 %43 to i32
  %MinorVersion14.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %MinorVersion14.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %MinorVersion14.i, align 1
  %conv15.i = zext i8 %49 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv13.i, i32 noundef %conv15.i) #14
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  br label %if.then12

if.then25.i:                                      ; preds = %lor.lhs.false.i
  %FeatureSupport.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 3
  %50 = ptrtoint ptr %FeatureSupport.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %FeatureSupport.i, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  %53 = ptrtoint ptr %FeatureSupport.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %FeatureSupport.i, align 1
  %BlkStatusRegMask.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 5
  %54 = ptrtoint ptr %BlkStatusRegMask.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %BlkStatusRegMask.i, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #10
  %57 = ptrtoint ptr %BlkStatusRegMask.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %BlkStatusRegMask.i, align 1
  %ProtRegAddr.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 9
  %58 = ptrtoint ptr %ProtRegAddr.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %ProtRegAddr.i, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #10
  %61 = ptrtoint ptr %ProtRegAddr.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %ProtRegAddr.i, align 1
  %NumProtectionFields.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 8
  %62 = ptrtoint ptr %NumProtectionFields.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %NumProtectionFields.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool26.not.i = icmp eq i8 %63, 0
  %conv29.i = zext i8 %63 to i32
  %64 = mul nuw nsw i32 %conv29.i, 10
  %mul.i = add nsw i32 %64, -10
  %extra_size.1.i = select i1 %tobool26.not.i, i32 0, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %45)
  %cmp34.i = icmp ugt i8 %45, 48
  br i1 %cmp34.i, label %if.then36.i, label %if.then25.i.if.end13_crit_edge

if.then25.i.if.end13_crit_edge:                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then36.i:                                      ; preds = %if.then25.i
  %add37.i = add nuw nsw i32 %extra_size.1.i, 2
  %add38.i = add nuw nsw i32 %extra_size.1.i, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %extp_size.0.i, i32 %add38.i)
  %cmp39.i = icmp ult i32 %extp_size.0.i, %add38.i
  br i1 %cmp39.i, label %if.then36.i.need_more.i_crit_edge, label %if.end46.i

if.then36.i.need_more.i_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %need_more.i

if.end46.i:                                       ; preds = %if.then36.i
  %sub43.i = or i32 %extra_size.1.i, 1
  %arrayidx.i = getelementptr %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 12, i32 %sub43.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i, align 1
  %conv44.i = zext i8 %66 to i32
  %add45.i = add nuw nsw i32 %add37.i, %conv44.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %45)
  %cmp49.i = icmp ugt i8 %45, 50
  br i1 %cmp49.i, label %if.then51.i, label %if.end46.i.if.end13_crit_edge

if.end46.i.if.end13_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then51.i:                                      ; preds = %if.end46.i
  %add52.i = add nuw nsw i32 %add45.i, 1
  %add53.i = add nuw nsw i32 %add45.i, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %extp_size.0.i, i32 %add53.i)
  %cmp54.i = icmp ult i32 %extp_size.0.i, %add53.i
  br i1 %cmp54.i, label %if.then51.i.need_more.i_crit_edge, label %if.end57.i

if.then51.i.need_more.i_crit_edge:                ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %need_more.i

if.end57.i:                                       ; preds = %if.then51.i
  %arrayidx60.i = getelementptr %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 12, i32 %add45.i
  %67 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx60.i, align 1
  %conv61.i = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %45)
  %cmp64.i = icmp ugt i8 %45, 51
  %add67.i = add nuw nsw i32 %add45.i, 3
  %spec.select.i = select i1 %cmp64.i, i32 %add67.i, i32 %add52.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp69170.not.i = icmp eq i8 %68, 0
  br i1 %cmp69170.not.i, label %if.end57.i.for.end.i_crit_edge, label %if.end57.i.for.body.i_crit_edge

if.end57.i.for.body.i_crit_edge:                  ; preds = %if.end57.i
  br label %for.body.i

if.end57.i.for.end.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end57.i.for.body.i_crit_edge
  %i.0172.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end57.i.for.body.i_crit_edge ]
  %extra_size.4171.i = phi i32 [ %add83.i, %for.inc.i.for.body.i_crit_edge ], [ %spec.select.i, %if.end57.i.for.body.i_crit_edge ]
  %add74.i = add i32 %extra_size.4171.i, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %extp_size.0.i, i32 %add74.i)
  %cmp75.i = icmp ult i32 %extp_size.0.i, %add74.i
  br i1 %cmp75.i, label %need_more.loopexit.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %arrayidx72.i = getelementptr %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 12, i32 %extra_size.4171.i
  %69 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %arrayidx72.i, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #10
  %72 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %71, ptr %arrayidx72.i, align 1
  %NumBlockTypes.i = getelementptr inbounds %struct.cfi_intelext_regioninfo, ptr %arrayidx72.i, i32 0, i32 4
  %73 = ptrtoint ptr %NumBlockTypes.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %NumBlockTypes.i, align 1
  %conv80.i = zext i8 %74 to i32
  %sub81.i = shl nuw nsw i32 %conv80.i, 3
  %mul82.i = add i32 %extra_size.4171.i, 6
  %add83.i = add i32 %mul82.i, %sub81.i
  %inc.i = add nuw nsw i32 %i.0172.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv61.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end57.i.for.end.i_crit_edge
  %extra_size.4.lcssa.i = phi i32 [ %spec.select.i, %if.end57.i.for.end.i_crit_edge ], [ %add83.i, %for.inc.i.for.end.i_crit_edge ]
  %75 = ptrtoint ptr %MinorVersion.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %MinorVersion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %76)
  %cmp86.i = icmp ugt i8 %76, 51
  %add89.i = add i32 %extra_size.4.lcssa.i, 6
  %spec.select160.i = select i1 %cmp86.i, i32 %add89.i, i32 %extra_size.4.lcssa.i
  %add91.i = add i32 %spec.select160.i, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %extp_size.0.i, i32 %add91.i)
  %cmp92.i = icmp ult i32 %extp_size.0.i, %add91.i
  br i1 %cmp92.i, label %for.end.i.need_more.i_crit_edge, label %for.end.i.if.end13_crit_edge

for.end.i.if.end13_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

for.end.i.need_more.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %need_more.i

need_more.loopexit.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add73.i = add i32 %extra_size.4171.i, 14
  br label %need_more.i

need_more.i:                                      ; preds = %need_more.loopexit.i, %for.end.i.need_more.i_crit_edge, %if.then51.i.need_more.i_crit_edge, %if.then36.i.need_more.i_crit_edge
  %extra_size.7.i = phi i32 [ %add37.i, %if.then36.i.need_more.i_crit_edge ], [ %add52.i, %if.then51.i.need_more.i_crit_edge ], [ %spec.select160.i, %for.end.i.need_more.i_crit_edge ], [ %add73.i, %need_more.loopexit.i ]
  %add95.i = add i32 %extra_size.7.i, 19
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  %cmp96.i = icmp ugt i32 %add95.i, 4096
  br i1 %cmp96.i, label %do.end101.i, label %need_more.i.again.i_crit_edge

need_more.i.again.i_crit_edge:                    ; preds = %need_more.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.i

do.end101.i:                                      ; preds = %need_more.i
  call void @__sanitizer_cov_trace_pc() #12
  %call103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #14
  br label %if.then12

if.then12:                                        ; preds = %do.end101.i, %do.end.i, %again.i.if.then12_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup138

if.end13:                                         ; preds = %for.end.i.if.end13_crit_edge, %if.end46.i.if.end13_crit_edge, %if.then25.i.if.end13_crit_edge
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %cmdset_priv, align 4
  tail call void @cfi_fixup(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cfi_fixup_table) #10
  %SuspendCmdSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call.i, i32 0, i32 4
  %78 = ptrtoint ptr %SuspendCmdSupport to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %SuspendCmdSupport, align 1
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool15.not = icmp eq i8 %80, 0
  br i1 %tobool15.not, label %if.end13.if.end25_crit_edge, label %do.end

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %if.end25

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfi_fixup(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @jedec_fixup_table) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.end, %if.end13.if.end25_crit_edge, %if.end.if.end25_crit_edge
  tail call void @cfi_fixup(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fixup_table) #10
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 11
  %81 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp26257 = icmp sgt i32 %82, 0
  br i1 %cmp26257, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

for.body:                                         ; preds = %if.end129.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.0258 = phi i32 [ %inc, %if.end129.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %83 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfiq, align 4
  %WordWriteTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %WordWriteTimeoutTyp to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %WordWriteTimeoutTyp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool29.not = icmp eq i8 %86, 0
  %conv33 = zext i8 %86 to i32
  %shl34 = shl nuw i32 1, %conv33
  %shl34.sink = select i1 %tobool29.not, i32 50000, i32 %shl34
  %87 = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0258, i32 9
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shl34.sink, ptr %87, align 4
  %89 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfiq, align 4
  %BufWriteTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %BufWriteTimeoutTyp to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %BufWriteTimeoutTyp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool41.not = icmp eq i8 %92, 0
  br i1 %tobool41.not, label %for.body.if.end49_crit_edge, label %if.then42

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv45 = zext i8 %92 to i32
  %shl46 = shl nuw i32 1, %conv45
  %buffer_write_time = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0258, i32 10
  %93 = ptrtoint ptr %buffer_write_time to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shl46, ptr %buffer_write_time, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %for.body.if.end49_crit_edge
  %94 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfiq, align 4
  %BlockEraseTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %BlockEraseTimeoutTyp to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %BlockEraseTimeoutTyp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool51.not = icmp eq i8 %97, 0
  %conv55 = zext i8 %97 to i32
  %shl56 = shl i32 1000, %conv55
  %shl56.sink = select i1 %tobool51.not, i32 2000000, i32 %shl56
  %98 = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0258, i32 11
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shl56.sink, ptr %98, align 4
  %100 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cfiq, align 4
  %WordWriteTimeoutTyp65 = getelementptr inbounds %struct.cfi_ident, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %WordWriteTimeoutTyp65 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %WordWriteTimeoutTyp65, align 1
  %conv66 = zext i8 %103 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool67.not = icmp eq i8 %103, 0
  br i1 %tobool67.not, label %if.end49.if.end85_crit_edge, label %land.lhs.true

if.end49.if.end85_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end49
  %WordWriteTimeoutMax = getelementptr inbounds %struct.cfi_ident, ptr %101, i32 0, i32 13
  %104 = ptrtoint ptr %WordWriteTimeoutMax to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %WordWriteTimeoutMax, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool70.not = icmp eq i8 %105, 0
  br i1 %tobool70.not, label %land.lhs.true.if.end85_crit_edge, label %if.then71

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv69 = zext i8 %105 to i32
  %add = add nuw nsw i32 %conv69, %conv66
  %shl78 = shl nuw i32 1, %add
  br label %if.end85

if.end85:                                         ; preds = %if.then71, %land.lhs.true.if.end85_crit_edge, %if.end49.if.end85_crit_edge
  %.sink = phi i32 [ %shl78, %if.then71 ], [ 400000, %land.lhs.true.if.end85_crit_edge ], [ 400000, %if.end49.if.end85_crit_edge ]
  %word_write_time_max84 = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0258, i32 12
  %106 = ptrtoint ptr %word_write_time_max84 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %.sink, ptr %word_write_time_max84, align 4
  %107 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfiq, align 4
  %BufWriteTimeoutTyp87 = getelementptr inbounds %struct.cfi_ident, ptr %108, i32 0, i32 10
  %109 = ptrtoint ptr %BufWriteTimeoutTyp87 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %BufWriteTimeoutTyp87, align 1
  %conv88 = zext i8 %110 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool89.not = icmp eq i8 %110, 0
  br i1 %tobool89.not, label %if.end85.if.end105_crit_edge, label %land.lhs.true90

if.end85.if.end105_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

land.lhs.true90:                                  ; preds = %if.end85
  %BufWriteTimeoutMax = getelementptr inbounds %struct.cfi_ident, ptr %108, i32 0, i32 14
  %111 = ptrtoint ptr %BufWriteTimeoutMax to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %BufWriteTimeoutMax, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool93.not = icmp eq i8 %112, 0
  br i1 %tobool93.not, label %land.lhs.true90.if.end105_crit_edge, label %if.then94

land.lhs.true90.if.end105_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then94:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  %conv92 = zext i8 %112 to i32
  %add101 = add nuw nsw i32 %conv92, %conv88
  %shl102 = shl nuw i32 1, %add101
  %buffer_write_time_max = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0258, i32 13
  %113 = ptrtoint ptr %buffer_write_time_max to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %shl102, ptr %buffer_write_time_max, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then94, %land.lhs.true90.if.end105_crit_edge, %if.end85.if.end105_crit_edge
  %114 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfiq, align 4
  %BlockEraseTimeoutTyp107 = getelementptr inbounds %struct.cfi_ident, ptr %115, i32 0, i32 11
  %116 = ptrtoint ptr %BlockEraseTimeoutTyp107 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %BlockEraseTimeoutTyp107, align 1
  %conv108 = zext i8 %117 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool109.not = icmp eq i8 %117, 0
  br i1 %tobool109.not, label %if.end105.if.end129_crit_edge, label %land.lhs.true110

if.end105.if.end129_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

land.lhs.true110:                                 ; preds = %if.end105
  %BlockEraseTimeoutMax = getelementptr inbounds %struct.cfi_ident, ptr %115, i32 0, i32 15
  %118 = ptrtoint ptr %BlockEraseTimeoutMax to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %BlockEraseTimeoutMax, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool113.not = icmp eq i8 %119, 0
  br i1 %tobool113.not, label %land.lhs.true110.if.end129_crit_edge, label %if.then114

land.lhs.true110.if.end129_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then114:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #12
  %conv112 = zext i8 %119 to i32
  %add121 = add nuw nsw i32 %conv112, %conv108
  %shl122 = shl i32 1000, %add121
  br label %if.end129

if.end129:                                        ; preds = %if.then114, %land.lhs.true110.if.end129_crit_edge, %if.end105.if.end129_crit_edge
  %.sink281 = phi i32 [ %shl122, %if.then114 ], [ 16000000, %land.lhs.true110.if.end129_crit_edge ], [ 16000000, %if.end105.if.end129_crit_edge ]
  %erase_time_max128 = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0258, i32 14
  %120 = ptrtoint ptr %erase_time_max128 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink281, ptr %erase_time_max128, align 4
  %ref_point_counter = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0258, i32 1
  %121 = ptrtoint ptr %ref_point_counter to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %ref_point_counter, align 4
  %wq = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0258, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.3, ptr noundef nonnull @cfi_cmdset_0001.__key) #10
  %inc = add nuw nsw i32 %i.0258, 1
  %122 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %numchips, align 4
  %cmp26 = icmp slt i32 %inc, %123
  br i1 %cmp26, label %if.end129.for.body_crit_edge, label %if.end129.for.end_crit_edge

if.end129.for.end_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end129.for.body_crit_edge:                     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end129.for.end_crit_edge, %if.end25.for.end_crit_edge
  %fldrv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 18
  %124 = ptrtoint ptr %fldrv to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @cfi_intelext_chipdrv, ptr %fldrv, align 4
  %125 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %priv, align 8
  %fldrv_priv.i224 = getelementptr inbounds %struct.map_info, ptr %126, i32 0, i32 17
  %127 = ptrtoint ptr %fldrv_priv.i224 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fldrv_priv.i224, align 4
  %cfiq.i = getelementptr inbounds %struct.cfi_private, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cfiq.i, align 4
  %DevSize.i = getelementptr inbounds %struct.cfi_ident, ptr %130, i32 0, i32 17
  %131 = ptrtoint ptr %DevSize.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %DevSize.i, align 1
  %conv.i225 = zext i8 %132 to i32
  %interleave.i = getelementptr inbounds %struct.cfi_private, ptr %128, i32 0, i32 2
  %133 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %interleave.i, align 4
  %mul.i226 = shl i32 %134, %conv.i225
  %numchips.i = getelementptr inbounds %struct.cfi_private, ptr %128, i32 0, i32 11
  %135 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %numchips.i, align 4
  %mul1.i = mul i32 %mul.i226, %136
  %conv2.i = zext i32 %mul1.i to i64
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 2
  %137 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv2.i, ptr %size.i, align 8
  %138 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions.i = getelementptr inbounds %struct.cfi_ident, ptr %138, i32 0, i32 20
  %139 = ptrtoint ptr %NumEraseRegions.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %NumEraseRegions.i, align 1
  %conv4.i = zext i8 %140 to i32
  %141 = load i32, ptr %numchips.i, align 4
  %mul6.i = mul i32 %141, %conv4.i
  %numeraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 19
  %142 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %mul6.i, ptr %numeraseregions.i, align 8
  %143 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul6.i, i32 24) #10
  %144 = extractvalue { i32, i1 } %143, 1
  br i1 %144, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !210

kcalloc.exit.thread.i:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %eraseregions268.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 20
  %145 = ptrtoint ptr %eraseregions268.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %eraseregions268.i, align 4
  br label %if.end144.i

if.end7.i.i.i:                                    ; preds = %for.end
  %146 = extractvalue { i32, i1 } %143, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %146, i32 noundef 3520) #15
  %eraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 20
  %147 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call8.i.i.i, ptr %eraseregions.i, align 4
  %tobool.not.i227 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i227, label %if.end7.i.i.i.if.end144.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.end144.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %148 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions10286.i = getelementptr inbounds %struct.cfi_ident, ptr %149, i32 0, i32 20
  %150 = ptrtoint ptr %NumEraseRegions10286.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %NumEraseRegions10286.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp288.not.i = icmp eq i8 %151, 0
  br i1 %cmp288.not.i, label %for.cond.preheader.i.for.end81.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end81.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end81.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  br label %for.body.i229

for.body.i229:                                    ; preds = %for.inc79.i.for.body.i229_crit_edge, %for.body.lr.ph.i
  %152 = phi ptr [ %149, %for.body.lr.ph.i ], [ %195, %for.inc79.i.for.body.i229_crit_edge ]
  %offset.0291.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add77.i, %for.inc79.i.for.body.i229_crit_edge ]
  %i.0289.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc80.i, %for.inc79.i.for.body.i229_crit_edge ]
  %arrayidx.i228 = getelementptr %struct.cfi_ident, ptr %152, i32 0, i32 21, i32 %i.0289.i
  %153 = ptrtoint ptr %arrayidx.i228 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %arrayidx.i228, align 1
  %shr.i = lshr i32 %154, 8
  %and.i = and i32 %shr.i, 16776960
  %155 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %interleave.i, align 4
  %mul15.i = mul i32 %and.i, %156
  %and19.i = and i32 %154, 65535
  %add.i = add nuw nsw i32 %and19.i, 1
  %157 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %mul15.i)
  %cmp20.i = icmp ult i32 %158, %mul15.i
  br i1 %cmp20.i, label %if.then22.i, label %for.body.i229.if.end24.i_crit_edge

for.body.i229.if.end24.i_crit_edge:               ; preds = %for.body.i229
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then22.i:                                      ; preds = %for.body.i229
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %mul15.i, ptr %erasesize.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %for.body.i229.if.end24.i_crit_edge
  %160 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %numchips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp27284.i = icmp sgt i32 %161, 0
  br i1 %cmp27284.i, label %for.body29.lr.ph.i, label %if.end24.i.for.inc79.i_crit_edge

if.end24.i.for.inc79.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc79.i

for.body29.lr.ph.i:                               ; preds = %if.end24.i
  %div219.i = lshr i32 %add.i, 3
  %add56.i = add nuw nsw i32 %div219.i, 1
  br label %for.body29.i

for.cond25.i:                                     ; preds = %for.body29.i
  %inc.i232 = add nuw nsw i32 %j.0285.i, 1
  %162 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %numchips.i, align 4
  %cmp27.i = icmp slt i32 %inc.i232, %163
  br i1 %cmp27.i, label %for.cond25.i.for.body29.i_crit_edge, label %for.cond25.i.for.inc79.i_crit_edge

for.cond25.i.for.inc79.i_crit_edge:               ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc79.i

for.cond25.i.for.body29.i_crit_edge:              ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.cond25.i.for.body29.i_crit_edge, %for.body29.lr.ph.i
  %j.0285.i = phi i32 [ 0, %for.body29.lr.ph.i ], [ %inc.i232, %for.cond25.i.for.body29.i_crit_edge ]
  %mul30.i = mul i32 %j.0285.i, %mul.i226
  %add31.i = add i32 %mul30.i, %offset.0291.i
  %conv32.i = zext i32 %add31.i to i64
  %164 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %eraseregions.i, align 4
  %166 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions35.i = getelementptr inbounds %struct.cfi_ident, ptr %167, i32 0, i32 20
  %168 = ptrtoint ptr %NumEraseRegions35.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %NumEraseRegions35.i, align 1
  %conv36.i = zext i8 %169 to i32
  %mul37.i = mul i32 %j.0285.i, %conv36.i
  %add38.i233 = add i32 %mul37.i, %i.0289.i
  %arrayidx39.i = getelementptr %struct.mtd_erase_region_info, ptr %165, i32 %add38.i233
  %170 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %conv32.i, ptr %arrayidx39.i, align 8
  %171 = load ptr, ptr %eraseregions.i, align 4
  %172 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions43.i = getelementptr inbounds %struct.cfi_ident, ptr %172, i32 0, i32 20
  %173 = ptrtoint ptr %NumEraseRegions43.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %NumEraseRegions43.i, align 1
  %conv44.i234 = zext i8 %174 to i32
  %mul45.i = mul i32 %j.0285.i, %conv44.i234
  %add46.i = add i32 %mul45.i, %i.0289.i
  %erasesize48.i = getelementptr %struct.mtd_erase_region_info, ptr %171, i32 %add46.i, i32 1
  %175 = ptrtoint ptr %erasesize48.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %mul15.i, ptr %erasesize48.i, align 8
  %176 = load ptr, ptr %eraseregions.i, align 4
  %177 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions51.i = getelementptr inbounds %struct.cfi_ident, ptr %177, i32 0, i32 20
  %178 = ptrtoint ptr %NumEraseRegions51.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %NumEraseRegions51.i, align 1
  %conv52.i = zext i8 %179 to i32
  %mul53.i = mul i32 %j.0285.i, %conv52.i
  %add54.i = add i32 %mul53.i, %i.0289.i
  %numblocks.i = getelementptr %struct.mtd_erase_region_info, ptr %176, i32 %add54.i, i32 2
  %180 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %add.i, ptr %numblocks.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add56.i, i32 noundef 3264) #15
  %181 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %eraseregions.i, align 4
  %183 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions60.i = getelementptr inbounds %struct.cfi_ident, ptr %184, i32 0, i32 20
  %185 = ptrtoint ptr %NumEraseRegions60.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %NumEraseRegions60.i, align 1
  %conv61.i237 = zext i8 %186 to i32
  %mul62.i = mul i32 %j.0285.i, %conv61.i237
  %add63.i = add i32 %mul62.i, %i.0289.i
  %lockmap.i = getelementptr %struct.mtd_erase_region_info, ptr %182, i32 %add63.i, i32 3
  %187 = ptrtoint ptr %lockmap.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call9.i.i, ptr %lockmap.i, align 8
  %188 = load ptr, ptr %eraseregions.i, align 4
  %189 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions67.i = getelementptr inbounds %struct.cfi_ident, ptr %189, i32 0, i32 20
  %190 = ptrtoint ptr %NumEraseRegions67.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %NumEraseRegions67.i, align 1
  %conv68.i = zext i8 %191 to i32
  %mul69.i = mul i32 %j.0285.i, %conv68.i
  %add70.i = add i32 %mul69.i, %i.0289.i
  %lockmap72.i = getelementptr %struct.mtd_erase_region_info, ptr %188, i32 %add70.i, i32 3
  %192 = ptrtoint ptr %lockmap72.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %lockmap72.i, align 8
  %tobool73.not.i = icmp eq ptr %193, null
  br i1 %tobool73.not.i, label %for.body29.i.setup_err.i_crit_edge, label %for.cond25.i

for.body29.i.setup_err.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setup_err.i

for.inc79.i:                                      ; preds = %for.cond25.i.for.inc79.i_crit_edge, %if.end24.i.for.inc79.i_crit_edge
  %mul76.i = mul i32 %mul15.i, %add.i
  %add77.i = add i32 %mul76.i, %offset.0291.i
  %inc80.i = add nuw nsw i32 %i.0289.i, 1
  %194 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions10.i = getelementptr inbounds %struct.cfi_ident, ptr %195, i32 0, i32 20
  %196 = ptrtoint ptr %NumEraseRegions10.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %NumEraseRegions10.i, align 1
  %conv11.i = zext i8 %197 to i32
  %cmp.i = icmp ult i32 %inc80.i, %conv11.i
  br i1 %cmp.i, label %for.inc79.i.for.body.i229_crit_edge, label %for.inc79.i.for.end81.i_crit_edge

for.inc79.i.for.end81.i_crit_edge:                ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end81.i

for.inc79.i.for.body.i229_crit_edge:              ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i229

for.end81.i:                                      ; preds = %for.inc79.i.for.end81.i_crit_edge, %for.cond.preheader.i.for.end81.i_crit_edge
  %offset.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end81.i_crit_edge ], [ %add77.i, %for.inc79.i.for.end81.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.lcssa.i, i32 %mul.i226)
  %cmp82.not.i = icmp eq i32 %offset.0.lcssa.i, %mul.i226
  br i1 %cmp82.not.i, label %for.cond87.preheader.i, label %do.end.i238

for.cond87.preheader.i:                           ; preds = %for.end81.i
  %198 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %numeraseregions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp89292.i = icmp sgt i32 %199, 0
  br i1 %cmp89292.i, label %for.cond87.preheader.i.do.end94.i_crit_edge, label %for.cond87.preheader.i.for.end108.i_crit_edge

for.cond87.preheader.i.for.end108.i_crit_edge:    ; preds = %for.cond87.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end108.i

for.cond87.preheader.i.do.end94.i_crit_edge:      ; preds = %for.cond87.preheader.i
  br label %do.end94.i

do.end.i238:                                      ; preds = %for.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  %call85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %offset.0.lcssa.i, i32 noundef %mul.i226) #14
  br label %setup_err.i

do.end94.i:                                       ; preds = %do.end94.i.do.end94.i_crit_edge, %for.cond87.preheader.i.do.end94.i_crit_edge
  %i.1293.i = phi i32 [ %inc107.i, %do.end94.i.do.end94.i_crit_edge ], [ 0, %for.cond87.preheader.i.do.end94.i_crit_edge ]
  %200 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %eraseregions.i, align 4
  %arrayidx97.i = getelementptr %struct.mtd_erase_region_info, ptr %201, i32 %i.1293.i
  %202 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %arrayidx97.i, align 8
  %erasesize101.i = getelementptr %struct.mtd_erase_region_info, ptr %201, i32 %i.1293.i, i32 1
  %204 = ptrtoint ptr %erasesize101.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %erasesize101.i, align 8
  %numblocks104.i = getelementptr %struct.mtd_erase_region_info, ptr %201, i32 %i.1293.i, i32 2
  %206 = ptrtoint ptr %numblocks104.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %numblocks104.i, align 4
  %call105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %i.1293.i, i64 noundef %203, i32 noundef %205, i32 noundef %207) #14
  %inc107.i = add nuw nsw i32 %i.1293.i, 1
  %208 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %numeraseregions.i, align 8
  %cmp89.i = icmp slt i32 %inc107.i, %209
  br i1 %cmp89.i, label %do.end94.i.do.end94.i_crit_edge, label %do.end94.i.for.end108.i_crit_edge

do.end94.i.for.end108.i_crit_edge:                ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end108.i

do.end94.i.do.end94.i_crit_edge:                  ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end94.i

for.end108.i:                                     ; preds = %do.end94.i.for.end108.i_crit_edge, %for.cond87.preheader.i.for.end108.i_crit_edge
  %_read_fact_prot_reg.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 30
  %210 = ptrtoint ptr %_read_fact_prot_reg.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @cfi_intelext_read_fact_prot_reg, ptr %_read_fact_prot_reg.i, align 4
  %_read_user_prot_reg.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 32
  %211 = ptrtoint ptr %_read_user_prot_reg.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @cfi_intelext_read_user_prot_reg, ptr %_read_user_prot_reg.i, align 4
  %_write_user_prot_reg.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 33
  %212 = ptrtoint ptr %_write_user_prot_reg.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @cfi_intelext_write_user_prot_reg, ptr %_write_user_prot_reg.i, align 8
  %_lock_user_prot_reg.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 34
  %213 = ptrtoint ptr %_lock_user_prot_reg.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @cfi_intelext_lock_user_prot_reg, ptr %_lock_user_prot_reg.i, align 4
  %_get_fact_prot_info.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 29
  %214 = ptrtoint ptr %_get_fact_prot_info.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @cfi_intelext_get_fact_prot_info, ptr %_get_fact_prot_info.i, align 8
  %_get_user_prot_info.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 31
  %215 = ptrtoint ptr %_get_user_prot_info.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @cfi_intelext_get_user_prot_info, ptr %_get_user_prot_info.i, align 8
  %216 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %priv, align 8
  %cmdset_priv.i.i = getelementptr inbounds %struct.cfi_private, ptr %128, i32 0, i32 1
  %218 = ptrtoint ptr %cmdset_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cmdset_priv.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %219, null
  br i1 %tobool.not.i.i, label %for.end108.i.if.end113.i_crit_edge, label %land.lhs.true.i.i239

for.end108.i.if.end113.i_crit_edge:               ; preds = %for.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

land.lhs.true.i.i239:                             ; preds = %for.end108.i
  %MajorVersion.i.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %MajorVersion.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %MajorVersion.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %221)
  %cmp.i221.i = icmp eq i8 %221, 49
  br i1 %cmp.i221.i, label %land.lhs.true2.i.i241, label %land.lhs.true.i.i239.if.end113.i_crit_edge

land.lhs.true.i.i239.if.end113.i_crit_edge:       ; preds = %land.lhs.true.i.i239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

land.lhs.true2.i.i241:                            ; preds = %land.lhs.true.i.i239
  %MinorVersion.i.i240 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %219, i32 0, i32 2
  %222 = ptrtoint ptr %MinorVersion.i.i240 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %MinorVersion.i.i240, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %223)
  %cmp4.i.i = icmp ugt i8 %223, 50
  br i1 %cmp4.i.i, label %land.lhs.true6.i.i, label %land.lhs.true2.i.i241.if.end113.i_crit_edge

land.lhs.true2.i.i241.if.end113.i_crit_edge:      ; preds = %land.lhs.true2.i.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true2.i.i241
  %FeatureSupport.i.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %219, i32 0, i32 3
  %224 = ptrtoint ptr %FeatureSupport.i.i to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %FeatureSupport.i.i, align 1
  %and.i.i = and i32 %225, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true6.i.i.if.end113.i_crit_edge, label %if.then.i222.i

land.lhs.true6.i.i.if.end113.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

if.then.i222.i:                                   ; preds = %land.lhs.true6.i.i
  %NumProtectionFields.i.i = getelementptr inbounds %struct.cfi_pri_intelext, ptr %219, i32 0, i32 8
  %226 = ptrtoint ptr %NumProtectionFields.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %NumProtectionFields.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool8.not.i.i = icmp eq i8 %227, 0
  %conv11.i.i = zext i8 %227 to i32
  %228 = mul nuw nsw i32 %conv11.i.i, 10
  %mul.i.i = add nsw i32 %228, -10
  %offs.0.i.i = select i1 %tobool8.not.i.i, i32 0, i32 %mul.i.i
  %add.i.i = or i32 %offs.0.i.i, 1
  %arrayidx.i.i = getelementptr %struct.cfi_pri_intelext, ptr %219, i32 0, i32 12, i32 %add.i.i
  %229 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx.i.i, align 1
  %conv12.i.i = zext i8 %230 to i32
  %add13.i.i = add nuw nsw i32 %conv12.i.i, 2
  %add14.i.i = add nsw i32 %add13.i.i, %offs.0.i.i
  %arrayidx16.i.i = getelementptr %struct.cfi_pri_intelext, ptr %219, i32 0, i32 12, i32 %add14.i.i
  %231 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %232 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %223)
  %cmp21.i.i = icmp ugt i8 %223, 51
  %offs.1.v.i.i = select i1 %cmp21.i.i, i32 3, i32 1
  %offs.1.i.i = add nsw i32 %add14.i.i, %offs.1.v.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %cmp26232.not.i.i = icmp eq i8 %232, 0
  br i1 %cmp26232.not.i.i, label %if.then.i222.i.for.end.thread.i.i_crit_edge, label %if.then.i222.i.for.body.i.i_crit_edge

if.then.i222.i.for.body.i.i_crit_edge:            ; preds = %if.then.i222.i
  br label %for.body.i.i

if.then.i222.i.for.end.thread.i.i_crit_edge:      ; preds = %if.then.i222.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i222.i.for.body.i.i_crit_edge
  %offs.2235.i.i = phi i32 [ %add36.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %offs.1.i.i, %if.then.i222.i.for.body.i.i_crit_edge ]
  %i.0234.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i222.i.for.body.i.i_crit_edge ]
  %numparts.0233.i.i = phi i32 [ %add31.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i222.i.for.body.i.i_crit_edge ]
  %arrayidx29.i.i = getelementptr %struct.cfi_pri_intelext, ptr %219, i32 0, i32 12, i32 %offs.2235.i.i
  %233 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_loadN_noabort(i32 %233, i32 2)
  %234 = load i16, ptr %arrayidx29.i.i, align 1
  %conv30.i.i = zext i16 %234 to i32
  %add31.i.i = add i32 %numparts.0233.i.i, %conv30.i.i
  %NumBlockTypes.i.i = getelementptr inbounds %struct.cfi_intelext_regioninfo, ptr %arrayidx29.i.i, i32 0, i32 4
  %235 = ptrtoint ptr %NumBlockTypes.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %NumBlockTypes.i.i, align 1
  %conv32.i.i = zext i8 %236 to i32
  %sub33.i.i = shl nuw nsw i32 %conv32.i.i, 3
  %add35.i.i = add i32 %offs.2235.i.i, 6
  %add36.i.i = add i32 %add35.i.i, %sub33.i.i
  %inc.i.i = add nuw nsw i32 %i.0234.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv17.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add31.i.i)
  %tobool37.not.i.i = icmp eq i32 %add31.i.i, 0
  br i1 %tobool37.not.i.i, label %for.end.i.i.for.end.thread.i.i_crit_edge, label %for.end.i.i._crit_edge

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %237

for.end.i.i.for.end.thread.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %for.end.i.i.for.end.thread.i.i_crit_edge, %if.then.i222.i.for.end.thread.i.i_crit_edge
  %offs.2.lcssa252.i.i = phi i32 [ %add36.i.i, %for.end.i.i.for.end.thread.i.i_crit_edge ], [ %offs.1.i.i, %if.then.i222.i.for.end.thread.i.i_crit_edge ]
  br label %237

237:                                              ; preds = %for.end.thread.i.i, %for.end.i.i._crit_edge
  %offs.2.lcssa251.i.i = phi i32 [ %offs.2.lcssa252.i.i, %for.end.thread.i.i ], [ %add36.i.i, %for.end.i.i._crit_edge ]
  %238 = phi i32 [ 1, %for.end.thread.i.i ], [ %add31.i.i, %for.end.i.i._crit_edge ]
  br i1 %cmp21.i.i, label %if.then44.i.i, label %.if.end56.i.i_crit_edge

.if.end56.i.i_crit_edge:                          ; preds = %237
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i.i

if.then44.i.i:                                    ; preds = %237
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx46.i.i = getelementptr %struct.cfi_pri_intelext, ptr %219, i32 0, i32 12, i32 %offs.2.lcssa251.i.i
  %239 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %interleave.i, align 4
  %241 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx46.i.i, align 1
  %conv47.i.i = zext i8 %242 to i32
  %shl.i.i = shl i32 %240, %conv47.i.i
  %243 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %shl.i.i, ptr %writesize, align 4
  %244 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %flags, align 4
  %and48.i.i = and i32 %245, -2049
  store i32 %and48.i.i, ptr %flags, align 4
  %246 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %217, align 4
  %248 = load i32, ptr %interleave.i, align 4
  %ControlValid.i.i = getelementptr inbounds %struct.cfi_intelext_programming_regioninfo, ptr %arrayidx46.i.i, i32 0, i32 2
  %249 = ptrtoint ptr %ControlValid.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %ControlValid.i.i, align 1
  %conv51.i.i = zext i8 %250 to i32
  %mul52.i.i = mul i32 %248, %conv51.i.i
  %ControlInvalid.i.i = getelementptr inbounds %struct.cfi_intelext_programming_regioninfo, ptr %arrayidx46.i.i, i32 0, i32 4
  %251 = ptrtoint ptr %ControlInvalid.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %ControlInvalid.i.i, align 1
  %conv54.i.i = zext i8 %252 to i32
  %mul55.i.i = mul i32 %248, %conv54.i.i
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %247, i32 noundef %shl.i.i, i32 noundef %mul52.i.i, i32 noundef %mul55.i.i) #14
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then44.i.i, %.if.end56.i.i_crit_edge
  %chipshift.i.i = getelementptr inbounds %struct.cfi_private, ptr %128, i32 0, i32 13
  %253 = ptrtoint ptr %chipshift.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %chipshift.i.i, align 4
  %255 = tail call i32 @llvm.cttz.i32(i32 %238, i1 false) #10, !range !211
  %sub58.i.i = sub i32 %254, %255
  %shl59.i.i = shl nuw i32 1, %sub58.i.i
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  %256 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %erasesize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl59.i.i, i32 %257)
  %cmp60.i.i = icmp ult i32 %shl59.i.i, %257
  br i1 %cmp60.i.i, label %do.end65.i.i, label %if.end68.i.i

do.end65.i.i:                                     ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call67.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %238) #14
  br label %setup_err.i

if.end68.i.i:                                     ; preds = %if.end56.i.i
  %258 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %numchips.i, align 4
  %mul69.i.i = mul i32 %259, %238
  %260 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul69.i.i, i32 200) #10
  %261 = extractvalue { i32, i1 } %260, 1
  %262 = extractvalue { i32, i1 } %260, 0
  %263 = add nuw i32 %262, 88
  %retval.0.i.i223.i = select i1 %261, i32 -1, i32 %263
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i223.i, i32 noundef 3264) #15
  %tobool72.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool72.not.i.i, label %if.end68.i.i.setup_err.i_crit_edge, label %if.end74.i.i

if.end68.i.i.setup_err.i_crit_edge:               ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setup_err.i

if.end74.i.i:                                     ; preds = %if.end68.i.i
  %264 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %numchips.i, align 4
  %266 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %265, i32 100) #10
  %267 = extractvalue { i32, i1 } %266, 1
  br i1 %267, label %if.end74.i.i.if.then78.i.i_crit_edge, label %if.end7.i.i255.i, !prof !210

if.end74.i.i.if.then78.i.i_crit_edge:             ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78.i.i

if.end7.i.i255.i:                                 ; preds = %if.end74.i.i
  %268 = extractvalue { i32, i1 } %266, 0
  %call8.i.i254.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %268, i32 noundef 3264) #15
  %tobool77.not.i.i = icmp eq ptr %call8.i.i254.i, null
  br i1 %tobool77.not.i.i, label %if.end7.i.i255.i.if.then78.i.i_crit_edge, label %if.end79.i.i

if.end7.i.i255.i.if.then78.i.i_crit_edge:         ; preds = %if.end7.i.i255.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78.i.i

if.then78.i.i:                                    ; preds = %if.end7.i.i255.i.if.then78.i.i_crit_edge, %if.end74.i.i.if.then78.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  br label %setup_err.i

if.end79.i.i:                                     ; preds = %if.end7.i.i255.i
  %269 = call ptr @memcpy(ptr %call9.i.i.i, ptr %128, i32 88)
  %numchips80.i.i = getelementptr inbounds %struct.cfi_private, ptr %call9.i.i.i, i32 0, i32 11
  %270 = ptrtoint ptr %numchips80.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %mul69.i.i, ptr %numchips80.i.i, align 4
  %chipshift81.i.i = getelementptr inbounds %struct.cfi_private, ptr %call9.i.i.i, i32 0, i32 13
  %271 = ptrtoint ptr %chipshift81.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %sub58.i.i, ptr %chipshift81.i.i, align 16
  %272 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %numchips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %cmp85241.i.i = icmp sgt i32 %273, 0
  br i1 %cmp85241.i.i, label %for.body87.lr.ph.i.i, label %if.end79.i.i.cleanup.i.i_crit_edge

if.end79.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

for.body87.lr.ph.i.i:                             ; preds = %if.end79.i.i
  %chips.i.i = getelementptr inbounds %struct.cfi_private, ptr %call9.i.i.i, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp95237.i.i = icmp sgt i32 %238, 0
  br label %for.body87.i.i

for.body87.i.i:                                   ; preds = %for.inc113.i.i.for.body87.i.i_crit_edge, %for.body87.lr.ph.i.i
  %i.1243.i.i = phi i32 [ 0, %for.body87.lr.ph.i.i ], [ %inc114.i.i, %for.inc113.i.i.for.body87.i.i_crit_edge ]
  %chip.0242.i.i = phi ptr [ %chips.i.i, %for.body87.lr.ph.i.i ], [ %chip.1.lcssa.i.i, %for.inc113.i.i.for.body87.i.i_crit_edge ]
  %arrayidx88.i.i = getelementptr %struct.flchip_shared, ptr %call8.i.i254.i, i32 %i.1243.i.i
  %erasing.i.i = getelementptr %struct.flchip_shared, ptr %call8.i.i254.i, i32 %i.1243.i.i, i32 2
  %274 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr null, ptr %erasing.i.i, align 4
  %writing.i.i = getelementptr %struct.flchip_shared, ptr %call8.i.i254.i, i32 %i.1243.i.i, i32 1
  %275 = ptrtoint ptr %writing.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr null, ptr %writing.i.i, align 4
  tail call void @__mutex_init(ptr noundef %arrayidx88.i.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @cfi_intelext_partition_fixup.__key) #10
  br i1 %cmp95237.i.i, label %for.body97.lr.ph.i.i, label %for.body87.i.i.for.inc113.i.i_crit_edge

for.body87.i.i.for.inc113.i.i_crit_edge:          ; preds = %for.body87.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc113.i.i

for.body97.lr.ph.i.i:                             ; preds = %for.body87.i.i
  %arrayidx99.i.i = getelementptr %struct.cfi_private, ptr %128, i32 0, i32 15, i32 %i.1243.i.i
  br label %for.body97.i.i

for.body97.i.i:                                   ; preds = %for.body97.i.i.for.body97.i.i_crit_edge, %for.body97.lr.ph.i.i
  %j.0239.i.i = phi i32 [ 0, %for.body97.lr.ph.i.i ], [ %inc111.i.i, %for.body97.i.i.for.body97.i.i_crit_edge ]
  %chip.1238.i.i = phi ptr [ %chip.0242.i.i, %for.body97.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body97.i.i.for.body97.i.i_crit_edge ]
  %276 = call ptr @memcpy(ptr %chip.1238.i.i, ptr %arrayidx99.i.i, i32 200)
  %shl100.i.i = shl i32 %j.0239.i.i, %sub58.i.i
  %277 = ptrtoint ptr %chip.1238.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %chip.1238.i.i, align 4
  %add101.i.i = add i32 %278, %shl100.i.i
  store i32 %add101.i.i, ptr %chip.1238.i.i, align 4
  %priv103.i.i = getelementptr inbounds %struct.flchip, ptr %chip.1238.i.i, i32 0, i32 15
  %279 = ptrtoint ptr %priv103.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %arrayidx88.i.i, ptr %priv103.i.i, align 4
  %wq.i.i = getelementptr inbounds %struct.flchip, ptr %chip.1238.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wq.i.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @cfi_intelext_partition_fixup.__key.65) #10
  %mutex.i.i = getelementptr inbounds %struct.flchip, ptr %chip.1238.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mutex.i.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @cfi_intelext_partition_fixup.__key.67) #10
  %incdec.ptr.i.i = getelementptr %struct.flchip, ptr %chip.1238.i.i, i32 1
  %inc111.i.i = add nuw nsw i32 %j.0239.i.i, 1
  %exitcond247.not.i.i = icmp eq i32 %inc111.i.i, %238
  br i1 %exitcond247.not.i.i, label %for.body97.i.i.for.inc113.i.i_crit_edge, label %for.body97.i.i.for.body97.i.i_crit_edge

for.body97.i.i.for.body97.i.i_crit_edge:          ; preds = %for.body97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body97.i.i

for.body97.i.i.for.inc113.i.i_crit_edge:          ; preds = %for.body97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc113.i.i

for.inc113.i.i:                                   ; preds = %for.body97.i.i.for.inc113.i.i_crit_edge, %for.body87.i.i.for.inc113.i.i_crit_edge
  %chip.1.lcssa.i.i = phi ptr [ %chip.0242.i.i, %for.body87.i.i.for.inc113.i.i_crit_edge ], [ %incdec.ptr.i.i, %for.body97.i.i.for.inc113.i.i_crit_edge ]
  %inc114.i.i = add nuw nsw i32 %i.1243.i.i, 1
  %280 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %numchips.i, align 4
  %cmp85.i.i = icmp slt i32 %inc114.i.i, %281
  br i1 %cmp85.i.i, label %for.inc113.i.i.for.body87.i.i_crit_edge, label %for.inc113.i.i.cleanup.i.i_crit_edge

for.inc113.i.i.cleanup.i.i_crit_edge:             ; preds = %for.inc113.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

for.inc113.i.i.for.body87.i.i_crit_edge:          ; preds = %for.inc113.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body87.i.i

cleanup.i.i:                                      ; preds = %for.inc113.i.i.cleanup.i.i_crit_edge, %if.end79.i.i.cleanup.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %273, %if.end79.i.i.cleanup.i.i_crit_edge ], [ %281, %for.inc113.i.i.cleanup.i.i_crit_edge ]
  %282 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %217, align 4
  %284 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %interleave.i, align 4
  %286 = ptrtoint ptr %numchips80.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %numchips80.i.i, align 4
  %288 = ptrtoint ptr %chipshift81.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %chipshift81.i.i, align 16
  %sub125.i.i = add i32 %289, -10
  %shl126.i.i = shl nuw i32 1, %sub125.i.i
  %call127.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %283, i32 noundef %.lcssa.i.i, i32 noundef %285, i32 noundef %287, i32 noundef %shl126.i.i) #14
  %fldrv_priv.i.i = getelementptr inbounds %struct.map_info, ptr %217, i32 0, i32 17
  %290 = ptrtoint ptr %fldrv_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %call9.i.i.i, ptr %fldrv_priv.i.i, align 4
  tail call void @kfree(ptr noundef %128) #10
  br label %if.end113.i

if.end113.i:                                      ; preds = %cleanup.i.i, %land.lhs.true6.i.i.if.end113.i_crit_edge, %land.lhs.true2.i.i241.if.end113.i_crit_edge, %land.lhs.true.i.i239.if.end113.i_crit_edge, %for.end108.i.if.end113.i_crit_edge
  tail call void @__module_get(ptr noundef null) #10
  %call114.i = tail call i32 @register_reboot_notifier(ptr noundef %reboot_notifier) #10
  br label %cleanup138

setup_err.i:                                      ; preds = %if.then78.i.i, %if.end68.i.i.setup_err.i_crit_edge, %do.end65.i.i, %do.end.i238, %for.body29.i.setup_err.i_crit_edge
  %291 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %.pr.i = load ptr, ptr %eraseregions.i, align 4
  %tobool116.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool116.not.i, label %setup_err.i.if.end144.i_crit_edge, label %for.cond118.preheader.i

setup_err.i.if.end144.i_crit_edge:                ; preds = %setup_err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144.i

for.cond118.preheader.i:                          ; preds = %setup_err.i
  %292 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions120296.i = getelementptr inbounds %struct.cfi_ident, ptr %293, i32 0, i32 20
  %294 = ptrtoint ptr %NumEraseRegions120296.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %NumEraseRegions120296.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %cmp122298.not.i = icmp eq i8 %295, 0
  br i1 %cmp122298.not.i, label %for.cond118.preheader.i.if.end144.i_crit_edge, label %for.cond118.preheader.i.for.cond125.preheader.i_crit_edge

for.cond118.preheader.i.for.cond125.preheader.i_crit_edge: ; preds = %for.cond118.preheader.i
  br label %for.cond125.preheader.i

for.cond118.preheader.i.if.end144.i_crit_edge:    ; preds = %for.cond118.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144.i

for.cond125.preheader.i:                          ; preds = %for.inc141.i.for.cond125.preheader.i_crit_edge, %for.cond118.preheader.i.for.cond125.preheader.i_crit_edge
  %i.2299.i = phi i32 [ %inc142.i, %for.inc141.i.for.cond125.preheader.i_crit_edge ], [ 0, %for.cond118.preheader.i.for.cond125.preheader.i_crit_edge ]
  %296 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %numchips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %cmp127294.i = icmp sgt i32 %297, 0
  br i1 %cmp127294.i, label %for.cond125.preheader.i.for.body129.i_crit_edge, label %for.cond125.preheader.i.for.inc141.i_crit_edge

for.cond125.preheader.i.for.inc141.i_crit_edge:   ; preds = %for.cond125.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc141.i

for.cond125.preheader.i.for.body129.i_crit_edge:  ; preds = %for.cond125.preheader.i
  br label %for.body129.i

for.body129.i:                                    ; preds = %for.body129.i.for.body129.i_crit_edge, %for.cond125.preheader.i.for.body129.i_crit_edge
  %j.1295.i = phi i32 [ %inc139.i, %for.body129.i.for.body129.i_crit_edge ], [ 0, %for.cond125.preheader.i.for.body129.i_crit_edge ]
  %298 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %eraseregions.i, align 4
  %300 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions132.i = getelementptr inbounds %struct.cfi_ident, ptr %301, i32 0, i32 20
  %302 = ptrtoint ptr %NumEraseRegions132.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %NumEraseRegions132.i, align 1
  %conv133.i = zext i8 %303 to i32
  %mul134.i = mul i32 %j.1295.i, %conv133.i
  %add135.i = add i32 %mul134.i, %i.2299.i
  %lockmap137.i = getelementptr %struct.mtd_erase_region_info, ptr %299, i32 %add135.i, i32 3
  %304 = ptrtoint ptr %lockmap137.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %lockmap137.i, align 8
  tail call void @kfree(ptr noundef %305) #10
  %inc139.i = add nuw nsw i32 %j.1295.i, 1
  %306 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %numchips.i, align 4
  %cmp127.i = icmp slt i32 %inc139.i, %307
  br i1 %cmp127.i, label %for.body129.i.for.body129.i_crit_edge, label %for.body129.i.for.inc141.i_crit_edge

for.body129.i.for.inc141.i_crit_edge:             ; preds = %for.body129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc141.i

for.body129.i.for.body129.i_crit_edge:            ; preds = %for.body129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body129.i

for.inc141.i:                                     ; preds = %for.body129.i.for.inc141.i_crit_edge, %for.cond125.preheader.i.for.inc141.i_crit_edge
  %inc142.i = add nuw nsw i32 %i.2299.i, 1
  %308 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions120.i = getelementptr inbounds %struct.cfi_ident, ptr %309, i32 0, i32 20
  %310 = ptrtoint ptr %NumEraseRegions120.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %NumEraseRegions120.i, align 1
  %conv121.i = zext i8 %311 to i32
  %cmp122.i = icmp ult i32 %inc142.i, %conv121.i
  br i1 %cmp122.i, label %for.inc141.i.for.cond125.preheader.i_crit_edge, label %for.inc141.i.if.end144.i_crit_edge

for.inc141.i.if.end144.i_crit_edge:               ; preds = %for.inc141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144.i

for.inc141.i.for.cond125.preheader.i_crit_edge:   ; preds = %for.inc141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond125.preheader.i

if.end144.i:                                      ; preds = %for.inc141.i.if.end144.i_crit_edge, %for.cond118.preheader.i.if.end144.i_crit_edge, %setup_err.i.if.end144.i_crit_edge, %if.end7.i.i.i.if.end144.i_crit_edge, %kcalloc.exit.thread.i
  %eraseregions271.i = phi ptr [ %eraseregions.i, %setup_err.i.if.end144.i_crit_edge ], [ %eraseregions268.i, %kcalloc.exit.thread.i ], [ %eraseregions.i, %if.end7.i.i.i.if.end144.i_crit_edge ], [ %eraseregions.i, %for.cond118.preheader.i.if.end144.i_crit_edge ], [ %eraseregions.i, %for.inc141.i.if.end144.i_crit_edge ]
  %312 = ptrtoint ptr %eraseregions271.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %eraseregions271.i, align 4
  tail call void @kfree(ptr noundef %313) #10
  tail call void @kfree(ptr noundef %call7.i.i) #10
  %cmdset_priv.i = getelementptr inbounds %struct.cfi_private, ptr %128, i32 0, i32 1
  %314 = ptrtoint ptr %cmdset_priv.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %cmdset_priv.i, align 4
  tail call void @kfree(ptr noundef %315) #10
  br label %cleanup138

cleanup138:                                       ; preds = %if.end144.i, %if.end113.i, %if.then12, %entry.cleanup138_crit_edge
  %retval.1 = phi ptr [ null, %entry.cleanup138_crit_edge ], [ null, %if.then12 ], [ null, %if.end144.i ], [ %call7.i.i, %if.end113.i ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_erase_varsize(ptr noundef %mtd, ptr nocapture noundef readonly %instr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %instr, align 8
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_erase_oneblock, i64 noundef %1, i32 noundef %conv, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  %agg.tmp.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %tobool.not55 = icmp eq i32 %len, 0
  br i1 %tobool.not55, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %chipnum.059 = phi i32 [ %conv, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %ofs.058 = phi i32 [ %conv3, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %buf.addr.057 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %len.addr.056 = phi i32 [ %len, %while.body.lr.ph ], [ %sub19, %cleanup.while.body_crit_edge ]
  %7 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chipnum.059, i32 %8)
  %cmp.not = icmp slt i32 %chipnum.059, %8
  br i1 %cmp.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %add = add i32 %len.addr.056, -1
  %sub5 = add i32 %add, %ofs.058
  %9 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chipshift, align 4
  %shr7 = lshr i32 %sub5, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr7)
  %tobool8.not = icmp eq i32 %shr7, 0
  %shl11 = shl nuw i32 1, %10
  %sub12 = sub i32 %shl11, %ofs.058
  %thislen.0 = select i1 %tobool8.not, i32 %len.addr.056, i32 %sub12
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.059
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
  %17 = add i32 %14, %ofs.058
  %conv2.i = and i32 %17, %neg.i
  %mutex.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.059, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  br label %retry.i.i

retry.i.i:                                        ; preds = %retry.i.i.retry.i.i_crit_edge, %if.end
  %call122.i.i = call fastcc i32 @chip_ready(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %conv2.i, i32 noundef 0) #10
  %18 = zext i32 %call122.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call122.i.i, label %do_read_onechip.exit [
    i32 -11, label %retry.i.i.retry.i.i_crit_edge
    i32 0, label %if.end.i
  ]

retry.i.i.retry.i.i_crit_edge:                    ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i.i

if.end.i:                                         ; preds = %retry.i.i
  %state.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.059, i32 2
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %20, label %if.then8.i [
    i32 17, label %if.end.i.cleanup_crit_edge
    i32 0, label %if.end.i.cleanup_crit_edge65
  ]

if.end.i.cleanup_crit_edge65:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp.i, i32 noundef 255, ptr noundef %1, ptr noundef %12) #10
  %24 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.0.load.i = load i32, ptr %agg.tmp.i, align 4
  %.fca.0.insert.i = insertvalue [8 x i32] poison, i32 %.fca.0.load.i, 0
  %25 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [8 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %26 = ptrtoint ptr %.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.2.load.i = load i32, ptr %.fca.2.gep.i, align 4
  %.fca.2.insert.i = insertvalue [8 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  %27 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.3.insert.i = insertvalue [8 x i32] %.fca.2.insert.i, i32 %.fca.3.load.i, 3
  %28 = ptrtoint ptr %.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.4.load.i = load i32, ptr %.fca.4.gep.i, align 4
  %.fca.4.insert.i = insertvalue [8 x i32] %.fca.3.insert.i, i32 %.fca.4.load.i, 4
  %29 = ptrtoint ptr %.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.5.load.i = load i32, ptr %.fca.5.gep.i, align 4
  %.fca.5.insert.i = insertvalue [8 x i32] %.fca.4.insert.i, i32 %.fca.5.load.i, 5
  %30 = ptrtoint ptr %.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.6.load.i = load i32, ptr %.fca.6.gep.i, align 4
  %.fca.6.insert.i = insertvalue [8 x i32] %.fca.5.insert.i, i32 %.fca.6.load.i, 6
  %31 = ptrtoint ptr %.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.7.load.i = load i32, ptr %.fca.7.gep.i, align 4
  %.fca.7.insert.i = insertvalue [8 x i32] %.fca.6.insert.i, i32 %.fca.7.load.i, 7
  call void %23(ptr noundef %1, [8 x i32] %.fca.7.insert.i, i32 noundef %conv2.i) #10
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %state.i, align 4
  br label %cleanup

do_read_onechip.exit:                             ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp.i)
  br label %while.end

cleanup:                                          ; preds = %if.then8.i, %if.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge65
  %33 = ptrtoint ptr %copy_from.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %copy_from.i, align 4
  call void %34(ptr noundef %1, ptr noundef %buf.addr.057, i32 noundef %17, i32 noundef %thislen.0) #10
  call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx) #10
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp.i)
  %35 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retlen, align 4
  %add18 = add i32 %36, %thislen.0
  store i32 %add18, ptr %retlen, align 4
  %sub19 = sub i32 %len.addr.056, %thislen.0
  %add.ptr = getelementptr i8, ptr %buf.addr.057, i32 %thislen.0
  %inc = add i32 %chipnum.059, 1
  %tobool.not = icmp eq i32 %sub19, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do_read_onechip.exit, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.2 = phi i32 [ %call122.i.i, %do_read_onechip.exit ], [ 0, %entry.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_write_words(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  %orig.i279.sroa.0 = alloca [8 x i32], align 4
  %orig.i = alloca %union.map_word, align 4
  %tmp12.sroa.0 = alloca [8 x i32], align 4
  %datum35.sroa.0 = alloca [8 x i32], align 4
  %tmp71.sroa.0 = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bankwidth, align 4
  %sub4 = add i32 %8, -1
  %and = and i32 %conv3, %sub4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then:                                          ; preds = %entry
  %neg = sub i32 0, %8
  %and7 = and i32 %conv3, %neg
  %sub8 = sub i32 %conv3, %and7
  %sub10 = sub i32 %8, %sub8
  %9 = tail call i32 @llvm.smin.i32(i32 %sub10, i32 %len)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp12.sroa.0)
  %10 = call ptr @memset(ptr %tmp12.sroa.0, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i = icmp slt i32 %8, 4
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw i32 %8, 3
  %div9.i = and i32 %add.i, -4
  %11 = call ptr @memset(ptr %tmp12.sroa.0, i32 255, i32 %div9.i)
  br label %map_word_ff.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl i32 %8, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  %12 = ptrtoint ptr %tmp12.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i, ptr %tmp12.sroa.0, align 4, !alias.scope !212
  br label %map_word_ff.exit

map_word_ff.exit:                                 ; preds = %if.then.i, %for.body.preheader.i
  %13 = ptrtoint ptr %tmp12.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp12.sroa.0.0.tmp12.sroa.0.0.tmp12.sroa.0.0.datum.sroa.0.0.copyload = load i32, ptr %tmp12.sroa.0, align 4
  %tmp12.sroa.0.4.tmp12.sroa_idx = getelementptr inbounds i8, ptr %tmp12.sroa.0, i32 4
  %14 = ptrtoint ptr %tmp12.sroa.0.4.tmp12.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp12.sroa.0.4.tmp12.sroa.0.4.tmp12.sroa.0.4.datum.sroa.7.0.copyload = load i32, ptr %tmp12.sroa.0.4.tmp12.sroa_idx, align 4
  %tmp12.sroa.0.8.tmp12.sroa_idx = getelementptr inbounds i8, ptr %tmp12.sroa.0, i32 8
  %15 = ptrtoint ptr %tmp12.sroa.0.8.tmp12.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp12.sroa.0.8.tmp12.sroa.0.8.tmp12.sroa.0.8.datum.sroa.10.0.copyload = load i32, ptr %tmp12.sroa.0.8.tmp12.sroa_idx, align 4
  %tmp12.sroa.0.12.tmp12.sroa_idx = getelementptr inbounds i8, ptr %tmp12.sroa.0, i32 12
  %16 = ptrtoint ptr %tmp12.sroa.0.12.tmp12.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp12.sroa.0.12.tmp12.sroa.0.12.tmp12.sroa.0.12.datum.sroa.13.0.copyload = load i32, ptr %tmp12.sroa.0.12.tmp12.sroa_idx, align 4
  %tmp12.sroa.0.16.tmp12.sroa_idx = getelementptr inbounds i8, ptr %tmp12.sroa.0, i32 16
  %17 = ptrtoint ptr %tmp12.sroa.0.16.tmp12.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp12.sroa.0.16.tmp12.sroa.0.16.tmp12.sroa.0.16.datum.sroa.16.0.copyload = load i32, ptr %tmp12.sroa.0.16.tmp12.sroa_idx, align 4
  %tmp12.sroa.0.20.tmp12.sroa_idx = getelementptr inbounds i8, ptr %tmp12.sroa.0, i32 20
  %18 = ptrtoint ptr %tmp12.sroa.0.20.tmp12.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp12.sroa.0.20.tmp12.sroa.0.20.tmp12.sroa.0.20.datum.sroa.19.0.copyload = load i32, ptr %tmp12.sroa.0.20.tmp12.sroa_idx, align 4
  %tmp12.sroa.0.24.tmp12.sroa_idx = getelementptr inbounds i8, ptr %tmp12.sroa.0, i32 24
  %19 = ptrtoint ptr %tmp12.sroa.0.24.tmp12.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp12.sroa.0.24.tmp12.sroa.0.24.tmp12.sroa.0.24.datum.sroa.22.0.copyload = load i32, ptr %tmp12.sroa.0.24.tmp12.sroa_idx, align 4
  %tmp12.sroa.0.28.tmp12.sroa_idx = getelementptr inbounds i8, ptr %tmp12.sroa.0, i32 28
  %20 = ptrtoint ptr %tmp12.sroa.0.28.tmp12.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp12.sroa.0.28.tmp12.sroa.0.28.tmp12.sroa.0.28.datum.sroa.25.0.copyload = load i32, ptr %tmp12.sroa.0.28.tmp12.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp12.sroa.0)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i)
  %21 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %tmp12.sroa.0.0.tmp12.sroa.0.0.tmp12.sroa.0.0.datum.sroa.0.0.copyload, ptr %orig.i, align 4, !noalias !215
  %orig.coerce.fca.1.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 1
  %22 = ptrtoint ptr %orig.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %tmp12.sroa.0.4.tmp12.sroa.0.4.tmp12.sroa.0.4.datum.sroa.7.0.copyload, ptr %orig.coerce.fca.1.gep.i, align 4, !noalias !215
  %orig.coerce.fca.2.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 2
  %23 = ptrtoint ptr %orig.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %tmp12.sroa.0.8.tmp12.sroa.0.8.tmp12.sroa.0.8.datum.sroa.10.0.copyload, ptr %orig.coerce.fca.2.gep.i, align 4, !noalias !215
  %orig.coerce.fca.3.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 3
  %24 = ptrtoint ptr %orig.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %tmp12.sroa.0.12.tmp12.sroa.0.12.tmp12.sroa.0.12.datum.sroa.13.0.copyload, ptr %orig.coerce.fca.3.gep.i, align 4, !noalias !215
  %orig.coerce.fca.4.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 4
  %25 = ptrtoint ptr %orig.coerce.fca.4.gep.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %tmp12.sroa.0.16.tmp12.sroa.0.16.tmp12.sroa.0.16.datum.sroa.16.0.copyload, ptr %orig.coerce.fca.4.gep.i, align 4, !noalias !215
  %orig.coerce.fca.5.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 5
  %26 = ptrtoint ptr %orig.coerce.fca.5.gep.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %tmp12.sroa.0.20.tmp12.sroa.0.20.tmp12.sroa.0.20.datum.sroa.19.0.copyload, ptr %orig.coerce.fca.5.gep.i, align 4, !noalias !215
  %orig.coerce.fca.6.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 6
  %27 = ptrtoint ptr %orig.coerce.fca.6.gep.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %tmp12.sroa.0.24.tmp12.sroa.0.24.tmp12.sroa.0.24.datum.sroa.22.0.copyload, ptr %orig.coerce.fca.6.gep.i, align 4, !noalias !215
  %orig.coerce.fca.7.gep.i = getelementptr inbounds [8 x i32], ptr %orig.i, i32 0, i32 7
  %28 = ptrtoint ptr %orig.coerce.fca.7.gep.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tmp12.sroa.0.28.tmp12.sroa.0.28.tmp12.sroa.0.28.datum.sroa.25.0.copyload, ptr %orig.coerce.fca.7.gep.i, align 4, !noalias !215
  %29 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bankwidth, align 4, !noalias !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.i262 = icmp sgt i32 %30, 4
  br i1 %cmp.i262, label %if.then.i264, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %map_word_ff.exit
  %add.i263 = add i32 %9, %sub8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i263, i32 %sub8)
  %cmp119.i = icmp sgt i32 %add.i263, %sub8
  br i1 %cmp119.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end.loopexit.i_crit_edge

for.cond.preheader.i.if.end.loopexit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.loopexit.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i264:                                     ; preds = %map_word_ff.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %orig.i, i32 %sub8
  %31 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %9)
  br label %map_word_load_partial.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %sub8, %for.cond.preheader.i.for.body.i_crit_edge ]
  %or1820.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %tmp12.sroa.0.0.tmp12.sroa.0.0.tmp12.sroa.0.0.datum.sroa.0.0.copyload, %for.cond.preheader.i.for.body.i_crit_edge ]
  %32 = xor i32 %i.021.i, -1
  %sub3.i = add i32 %30, %32
  %mul.i265 = shl i32 %sub3.i, 3
  %shl.i = shl i32 255, %mul.i265
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %or1820.i, %neg.i
  %sub4.i = sub i32 %i.021.i, %sub8
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 %sub4.i
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx5.i, align 1, !noalias !215
  %conv.i = zext i8 %34 to i32
  %shl6.i = shl i32 %conv.i, %mul.i265
  %or.i = or i32 %shl6.i, %and.i
  %inc.i = add nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i263
  br i1 %exitcond.not.i, label %for.body.i.if.end.loopexit.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end.loopexit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.loopexit.i

if.end.loopexit.i:                                ; preds = %for.body.i.if.end.loopexit.i_crit_edge, %for.cond.preheader.i.if.end.loopexit.i_crit_edge
  %or18.lcssa.i = phi i32 [ %tmp12.sroa.0.0.tmp12.sroa.0.0.tmp12.sroa.0.0.datum.sroa.0.0.copyload, %for.cond.preheader.i.if.end.loopexit.i_crit_edge ], [ %or.i, %for.body.i.if.end.loopexit.i_crit_edge ]
  %35 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or18.lcssa.i, ptr %orig.i, align 4, !noalias !215
  br label %map_word_load_partial.exit

map_word_load_partial.exit:                       ; preds = %if.end.loopexit.i, %if.then.i264
  %36 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp13.sroa.0.0.copyload = load i32, ptr %orig.i, align 4
  %37 = ptrtoint ptr %orig.coerce.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp13.sroa.4.0.copyload = load i32, ptr %orig.coerce.fca.1.gep.i, align 4
  %38 = ptrtoint ptr %orig.coerce.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp13.sroa.5.0.copyload = load i32, ptr %orig.coerce.fca.2.gep.i, align 4
  %39 = ptrtoint ptr %orig.coerce.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %tmp13.sroa.6.0.copyload = load i32, ptr %orig.coerce.fca.3.gep.i, align 4
  %40 = ptrtoint ptr %orig.coerce.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %tmp13.sroa.7.0.copyload = load i32, ptr %orig.coerce.fca.4.gep.i, align 4
  %41 = ptrtoint ptr %orig.coerce.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %tmp13.sroa.8.0.copyload = load i32, ptr %orig.coerce.fca.5.gep.i, align 4
  %42 = ptrtoint ptr %orig.coerce.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp13.sroa.9.0.copyload = load i32, ptr %orig.coerce.fca.6.gep.i, align 4
  %43 = ptrtoint ptr %orig.coerce.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %tmp13.sroa.10.0.copyload = load i32, ptr %orig.coerce.fca.7.gep.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i)
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %conv
  %.fca.0.insert165 = insertvalue [8 x i32] poison, i32 %tmp13.sroa.0.0.copyload, 0
  %.fca.1.insert168 = insertvalue [8 x i32] %.fca.0.insert165, i32 %tmp13.sroa.4.0.copyload, 1
  %.fca.2.insert171 = insertvalue [8 x i32] %.fca.1.insert168, i32 %tmp13.sroa.5.0.copyload, 2
  %.fca.3.insert174 = insertvalue [8 x i32] %.fca.2.insert171, i32 %tmp13.sroa.6.0.copyload, 3
  %.fca.4.insert177 = insertvalue [8 x i32] %.fca.3.insert174, i32 %tmp13.sroa.7.0.copyload, 4
  %.fca.5.insert180 = insertvalue [8 x i32] %.fca.4.insert177, i32 %tmp13.sroa.8.0.copyload, 5
  %.fca.6.insert183 = insertvalue [8 x i32] %.fca.5.insert180, i32 %tmp13.sroa.9.0.copyload, 6
  %.fca.7.insert186 = insertvalue [8 x i32] %.fca.6.insert183, i32 %tmp13.sroa.10.0.copyload, 7
  %call = tail call fastcc i32 @do_write_oneword(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %and7, [8 x i32] %.fca.7.insert186, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end, label %map_word_load_partial.exit.cleanup86_crit_edge

map_word_load_partial.exit.cleanup86_crit_edge:   ; preds = %map_word_load_partial.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup86

if.end:                                           ; preds = %map_word_load_partial.exit
  %sub17 = sub i32 %len, %9
  %add = add i32 %9, %conv3
  %add.ptr = getelementptr i8, ptr %buf, i32 %9
  %44 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %retlen, align 4
  %add18 = add i32 %45, %9
  store i32 %add18, ptr %retlen, align 4
  %46 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chipshift, align 4
  %shr20 = lshr i32 %add, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr20)
  %tobool21.not = icmp eq i32 %shr20, 0
  br i1 %tobool21.not, label %if.end.if.end31_crit_edge, label %if.then22

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then22:                                        ; preds = %if.end
  %inc = add i32 %conv, 1
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %48 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %49)
  %cmp23 = icmp eq i32 %inc, %49
  br i1 %cmp23, label %if.then22.cleanup86_crit_edge, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then22.cleanup86_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup86

if.end31:                                         ; preds = %if.then22.if.end31_crit_edge, %if.end.if.end31_crit_edge, %entry.if.end31_crit_edge
  %ofs.2 = phi i32 [ %conv3, %entry.if.end31_crit_edge ], [ 0, %if.then22.if.end31_crit_edge ], [ %add, %if.end.if.end31_crit_edge ]
  %chipnum.2 = phi i32 [ %conv, %entry.if.end31_crit_edge ], [ %inc, %if.then22.if.end31_crit_edge ], [ %conv, %if.end.if.end31_crit_edge ]
  %buf.addr.1 = phi ptr [ %buf, %entry.if.end31_crit_edge ], [ %add.ptr, %if.then22.if.end31_crit_edge ], [ %add.ptr, %if.end.if.end31_crit_edge ]
  %len.addr.1 = phi i32 [ %len, %entry.if.end31_crit_edge ], [ %sub17, %if.then22.if.end31_crit_edge ], [ %sub17, %if.end.if.end31_crit_edge ]
  %50 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bankwidth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.1, i32 %51)
  %cmp33.not384 = icmp ult i32 %len.addr.1, %51
  br i1 %cmp33.not384, label %if.end31.while.end_crit_edge, label %while.body.lr.ph

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end31
  %numchips56 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %datum35.sroa.0.4..sroa_idx = getelementptr inbounds i8, ptr %datum35.sroa.0, i32 4
  %datum35.sroa.0.8..sroa_idx = getelementptr inbounds i8, ptr %datum35.sroa.0, i32 8
  %datum35.sroa.0.12..sroa_idx = getelementptr inbounds i8, ptr %datum35.sroa.0, i32 12
  %datum35.sroa.0.16..sroa_idx = getelementptr inbounds i8, ptr %datum35.sroa.0, i32 16
  %datum35.sroa.0.20..sroa_idx = getelementptr inbounds i8, ptr %datum35.sroa.0, i32 20
  %datum35.sroa.0.24..sroa_idx = getelementptr inbounds i8, ptr %datum35.sroa.0, i32 24
  %datum35.sroa.0.28..sroa_idx = getelementptr inbounds i8, ptr %datum35.sroa.0, i32 28
  br label %while.body

while.body:                                       ; preds = %cleanup62.while.body_crit_edge, %while.body.lr.ph
  %len.addr.2389 = phi i32 [ %len.addr.1, %while.body.lr.ph ], [ %sub50, %cleanup62.while.body_crit_edge ]
  %buf.addr.2387 = phi ptr [ %buf.addr.1, %while.body.lr.ph ], [ %add.ptr46, %cleanup62.while.body_crit_edge ]
  %chipnum.3386 = phi i32 [ %chipnum.2, %while.body.lr.ph ], [ %chipnum.4, %cleanup62.while.body_crit_edge ]
  %ofs.3385 = phi i32 [ %ofs.2, %while.body.lr.ph ], [ %ofs.4, %cleanup62.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %datum35.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %52 = call ptr @memset(ptr %datum35.sroa.0, i32 255, i32 32)
  %53 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bankwidth, align 4, !noalias !218
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %54, label %if.else16.i [
    i32 1, label %if.then.i268
    i32 2, label %if.then4.i
    i32 4, label %if.then11.i
  ]

if.then.i268:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %buf.addr.2387 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %buf.addr.2387, align 1, !noalias !218
  %conv.i267 = zext i8 %57 to i32
  %58 = ptrtoint ptr %datum35.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.i267, ptr %datum35.sroa.0, align 4, !alias.scope !218
  br label %map_word_load.exit

if.then4.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %buf.addr.2387 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %buf.addr.2387, align 1, !noalias !218
  %conv5.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %datum35.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv5.i, ptr %datum35.sroa.0, align 4, !alias.scope !218
  br label %map_word_load.exit

if.then11.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %buf.addr.2387 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %buf.addr.2387, align 1, !noalias !218
  %64 = ptrtoint ptr %datum35.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %datum35.sroa.0, align 4, !alias.scope !218
  br label %map_word_load.exit

if.else16.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp18.i = icmp sgt i32 %54, 4
  br i1 %cmp18.i, label %if.then20.i, label %do.body.i

if.then20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = call ptr @memcpy(ptr %datum35.sroa.0, ptr %buf.addr.2387, i32 %54)
  br label %map_word_load.exit

do.body.i:                                        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #10, !noalias !218, !srcloc !221
  unreachable

map_word_load.exit:                               ; preds = %if.then20.i, %if.then11.i, %if.then4.i, %if.then.i268
  %arrayidx37 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3386
  %66 = ptrtoint ptr %datum35.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %datum35.sroa.0.0.datum35.sroa.0.0.datum35.sroa.0.0..fca.0.load = load i32, ptr %datum35.sroa.0, align 4
  %.fca.0.insert127 = insertvalue [8 x i32] poison, i32 %datum35.sroa.0.0.datum35.sroa.0.0.datum35.sroa.0.0..fca.0.load, 0
  %67 = ptrtoint ptr %datum35.sroa.0.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %67)
  %datum35.sroa.0.4.datum35.sroa.0.4.datum35.sroa.0.4..fca.1.load = load i32, ptr %datum35.sroa.0.4..sroa_idx, align 4
  %.fca.1.insert128 = insertvalue [8 x i32] %.fca.0.insert127, i32 %datum35.sroa.0.4.datum35.sroa.0.4.datum35.sroa.0.4..fca.1.load, 1
  %68 = ptrtoint ptr %datum35.sroa.0.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %68)
  %datum35.sroa.0.8.datum35.sroa.0.8.datum35.sroa.0.8..fca.2.load = load i32, ptr %datum35.sroa.0.8..sroa_idx, align 4
  %.fca.2.insert129 = insertvalue [8 x i32] %.fca.1.insert128, i32 %datum35.sroa.0.8.datum35.sroa.0.8.datum35.sroa.0.8..fca.2.load, 2
  %69 = ptrtoint ptr %datum35.sroa.0.12..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %69)
  %datum35.sroa.0.12.datum35.sroa.0.12.datum35.sroa.0.12..fca.3.load = load i32, ptr %datum35.sroa.0.12..sroa_idx, align 4
  %.fca.3.insert130 = insertvalue [8 x i32] %.fca.2.insert129, i32 %datum35.sroa.0.12.datum35.sroa.0.12.datum35.sroa.0.12..fca.3.load, 3
  %70 = ptrtoint ptr %datum35.sroa.0.16..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %70)
  %datum35.sroa.0.16.datum35.sroa.0.16.datum35.sroa.0.16..fca.4.load = load i32, ptr %datum35.sroa.0.16..sroa_idx, align 4
  %.fca.4.insert131 = insertvalue [8 x i32] %.fca.3.insert130, i32 %datum35.sroa.0.16.datum35.sroa.0.16.datum35.sroa.0.16..fca.4.load, 4
  %71 = ptrtoint ptr %datum35.sroa.0.20..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %datum35.sroa.0.20.datum35.sroa.0.20.datum35.sroa.0.20..fca.5.load = load i32, ptr %datum35.sroa.0.20..sroa_idx, align 4
  %.fca.5.insert132 = insertvalue [8 x i32] %.fca.4.insert131, i32 %datum35.sroa.0.20.datum35.sroa.0.20.datum35.sroa.0.20..fca.5.load, 5
  %72 = ptrtoint ptr %datum35.sroa.0.24..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %datum35.sroa.0.24.datum35.sroa.0.24.datum35.sroa.0.24..fca.6.load = load i32, ptr %datum35.sroa.0.24..sroa_idx, align 4
  %.fca.6.insert133 = insertvalue [8 x i32] %.fca.5.insert132, i32 %datum35.sroa.0.24.datum35.sroa.0.24.datum35.sroa.0.24..fca.6.load, 6
  %73 = ptrtoint ptr %datum35.sroa.0.28..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %73)
  %datum35.sroa.0.28.datum35.sroa.0.28.datum35.sroa.0.28..fca.7.load = load i32, ptr %datum35.sroa.0.28..sroa_idx, align 4
  %.fca.7.insert134 = insertvalue [8 x i32] %.fca.6.insert133, i32 %datum35.sroa.0.28.datum35.sroa.0.28.datum35.sroa.0.28..fca.7.load, 7
  %call39 = tail call fastcc i32 @do_write_oneword(ptr noundef %1, ptr noundef %arrayidx37, i32 noundef %ofs.3385, [8 x i32] %.fca.7.insert134, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %map_word_load.exit.cleanup62.thread_crit_edge

map_word_load.exit.cleanup62.thread_crit_edge:    ; preds = %map_word_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup62.thread

if.end42:                                         ; preds = %map_word_load.exit
  %74 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bankwidth, align 4
  %add44 = add i32 %75, %ofs.3385
  %add.ptr46 = getelementptr i8, ptr %buf.addr.2387, i32 %75
  %76 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %retlen, align 4
  %add48 = add i32 %77, %75
  store i32 %add48, ptr %retlen, align 4
  %78 = load i32, ptr %bankwidth, align 4
  %sub50 = sub i32 %len.addr.2389, %78
  %79 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chipshift, align 4
  %shr52 = lshr i32 %add44, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr52)
  %tobool53.not = icmp eq i32 %shr52, 0
  br i1 %tobool53.not, label %if.end42.cleanup62_crit_edge, label %if.then54

if.end42.cleanup62_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup62

if.then54:                                        ; preds = %if.end42
  %inc55 = add i32 %chipnum.3386, 1
  %81 = ptrtoint ptr %numchips56 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %numchips56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc55, i32 %82)
  %cmp57 = icmp eq i32 %inc55, %82
  br i1 %cmp57, label %if.then54.cleanup62.thread_crit_edge, label %if.then54.cleanup62_crit_edge

if.then54.cleanup62_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup62

if.then54.cleanup62.thread_crit_edge:             ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup62.thread

cleanup62.thread:                                 ; preds = %if.then54.cleanup62.thread_crit_edge, %map_word_load.exit.cleanup62.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %datum35.sroa.0)
  br label %cleanup86

cleanup62:                                        ; preds = %if.then54.cleanup62_crit_edge, %if.end42.cleanup62_crit_edge
  %ofs.4 = phi i32 [ 0, %if.then54.cleanup62_crit_edge ], [ %add44, %if.end42.cleanup62_crit_edge ]
  %chipnum.4 = phi i32 [ %inc55, %if.then54.cleanup62_crit_edge ], [ %chipnum.3386, %if.end42.cleanup62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %datum35.sroa.0)
  %83 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bankwidth, align 4
  %cmp33.not = icmp ult i32 %sub50, %84
  br i1 %cmp33.not, label %cleanup62.while.end_crit_edge, label %cleanup62.while.body_crit_edge

cleanup62.while.body_crit_edge:                   ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup62.while.end_crit_edge:                    ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup62.while.end_crit_edge, %if.end31.while.end_crit_edge
  %ofs.3.lcssa = phi i32 [ %ofs.2, %if.end31.while.end_crit_edge ], [ %ofs.4, %cleanup62.while.end_crit_edge ]
  %chipnum.3.lcssa = phi i32 [ %chipnum.2, %if.end31.while.end_crit_edge ], [ %chipnum.4, %cleanup62.while.end_crit_edge ]
  %buf.addr.2.lcssa = phi ptr [ %buf.addr.1, %if.end31.while.end_crit_edge ], [ %add.ptr46, %cleanup62.while.end_crit_edge ]
  %len.addr.2.lcssa = phi i32 [ %len.addr.1, %if.end31.while.end_crit_edge ], [ %sub50, %cleanup62.while.end_crit_edge ]
  %.lcssa = phi i32 [ %51, %if.end31.while.end_crit_edge ], [ %84, %cleanup62.while.end_crit_edge ]
  %sub66 = add i32 %.lcssa, -1
  %and67 = and i32 %sub66, %len.addr.2.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %while.end.cleanup86_crit_edge, label %if.then69

while.end.cleanup86_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup86

if.then69:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp71.sroa.0)
  %85 = call ptr @memset(ptr %tmp71.sroa.0, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.lcssa)
  %cmp.i270 = icmp slt i32 %.lcssa, 4
  br i1 %cmp.i270, label %if.then.i277, label %for.body.preheader.i273

for.body.preheader.i273:                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %add.i271 = add nuw i32 %.lcssa, 3
  %div9.i272 = and i32 %add.i271, -4
  %86 = call ptr @memset(ptr %tmp71.sroa.0, i32 255, i32 %div9.i272)
  br label %map_word_ff.exit278

if.then.i277:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i274 = shl i32 %.lcssa, 3
  %notmask.i275 = shl nsw i32 -1, %mul.i274
  %sub.i276 = xor i32 %notmask.i275, -1
  %87 = ptrtoint ptr %tmp71.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub.i276, ptr %tmp71.sroa.0, align 4, !alias.scope !222
  br label %map_word_ff.exit278

map_word_ff.exit278:                              ; preds = %if.then.i277, %for.body.preheader.i273
  %88 = ptrtoint ptr %tmp71.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %tmp71.sroa.0.0.tmp71.sroa.0.0.tmp71.sroa.0.0.datum70.sroa.0.0.copyload = load i32, ptr %tmp71.sroa.0, align 4
  %tmp71.sroa.0.4.tmp71.sroa_idx = getelementptr inbounds i8, ptr %tmp71.sroa.0, i32 4
  %89 = ptrtoint ptr %tmp71.sroa.0.4.tmp71.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %89)
  %tmp71.sroa.0.4.tmp71.sroa.0.4.tmp71.sroa.0.4.datum70.sroa.7.0.copyload = load i32, ptr %tmp71.sroa.0.4.tmp71.sroa_idx, align 4
  %tmp71.sroa.0.8.tmp71.sroa_idx = getelementptr inbounds i8, ptr %tmp71.sroa.0, i32 8
  %90 = ptrtoint ptr %tmp71.sroa.0.8.tmp71.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %tmp71.sroa.0.8.tmp71.sroa.0.8.tmp71.sroa.0.8.datum70.sroa.10.0.copyload = load i32, ptr %tmp71.sroa.0.8.tmp71.sroa_idx, align 4
  %tmp71.sroa.0.12.tmp71.sroa_idx = getelementptr inbounds i8, ptr %tmp71.sroa.0, i32 12
  %91 = ptrtoint ptr %tmp71.sroa.0.12.tmp71.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %tmp71.sroa.0.12.tmp71.sroa.0.12.tmp71.sroa.0.12.datum70.sroa.13.0.copyload = load i32, ptr %tmp71.sroa.0.12.tmp71.sroa_idx, align 4
  %tmp71.sroa.0.16.tmp71.sroa_idx = getelementptr inbounds i8, ptr %tmp71.sroa.0, i32 16
  %92 = ptrtoint ptr %tmp71.sroa.0.16.tmp71.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %92)
  %tmp71.sroa.0.16.tmp71.sroa.0.16.tmp71.sroa.0.16.datum70.sroa.16.0.copyload = load i32, ptr %tmp71.sroa.0.16.tmp71.sroa_idx, align 4
  %tmp71.sroa.0.20.tmp71.sroa_idx = getelementptr inbounds i8, ptr %tmp71.sroa.0, i32 20
  %93 = ptrtoint ptr %tmp71.sroa.0.20.tmp71.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %93)
  %tmp71.sroa.0.20.tmp71.sroa.0.20.tmp71.sroa.0.20.datum70.sroa.19.0.copyload = load i32, ptr %tmp71.sroa.0.20.tmp71.sroa_idx, align 4
  %tmp71.sroa.0.24.tmp71.sroa_idx = getelementptr inbounds i8, ptr %tmp71.sroa.0, i32 24
  %94 = ptrtoint ptr %tmp71.sroa.0.24.tmp71.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %94)
  %tmp71.sroa.0.24.tmp71.sroa.0.24.tmp71.sroa.0.24.datum70.sroa.22.0.copyload = load i32, ptr %tmp71.sroa.0.24.tmp71.sroa_idx, align 4
  %tmp71.sroa.0.28.tmp71.sroa_idx = getelementptr inbounds i8, ptr %tmp71.sroa.0, i32 28
  %95 = ptrtoint ptr %tmp71.sroa.0.28.tmp71.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %95)
  %tmp71.sroa.0.28.tmp71.sroa.0.28.tmp71.sroa.0.28.datum70.sroa.25.0.copyload = load i32, ptr %tmp71.sroa.0.28.tmp71.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp71.sroa.0)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i279.sroa.0)
  %96 = ptrtoint ptr %orig.i279.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %tmp71.sroa.0.0.tmp71.sroa.0.0.tmp71.sroa.0.0.datum70.sroa.0.0.copyload, ptr %orig.i279.sroa.0, align 4, !noalias !225
  %orig.i279.sroa.0.4.orig.coerce.fca.1.gep.i280.sroa_idx = getelementptr inbounds i8, ptr %orig.i279.sroa.0, i32 4
  %97 = ptrtoint ptr %orig.i279.sroa.0.4.orig.coerce.fca.1.gep.i280.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %tmp71.sroa.0.4.tmp71.sroa.0.4.tmp71.sroa.0.4.datum70.sroa.7.0.copyload, ptr %orig.i279.sroa.0.4.orig.coerce.fca.1.gep.i280.sroa_idx, align 4, !noalias !225
  %orig.i279.sroa.0.8.orig.coerce.fca.2.gep.i281.sroa_idx = getelementptr inbounds i8, ptr %orig.i279.sroa.0, i32 8
  %98 = ptrtoint ptr %orig.i279.sroa.0.8.orig.coerce.fca.2.gep.i281.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %tmp71.sroa.0.8.tmp71.sroa.0.8.tmp71.sroa.0.8.datum70.sroa.10.0.copyload, ptr %orig.i279.sroa.0.8.orig.coerce.fca.2.gep.i281.sroa_idx, align 4, !noalias !225
  %orig.i279.sroa.0.12.orig.coerce.fca.3.gep.i282.sroa_idx = getelementptr inbounds i8, ptr %orig.i279.sroa.0, i32 12
  %99 = ptrtoint ptr %orig.i279.sroa.0.12.orig.coerce.fca.3.gep.i282.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %tmp71.sroa.0.12.tmp71.sroa.0.12.tmp71.sroa.0.12.datum70.sroa.13.0.copyload, ptr %orig.i279.sroa.0.12.orig.coerce.fca.3.gep.i282.sroa_idx, align 4, !noalias !225
  %orig.i279.sroa.0.16.orig.coerce.fca.4.gep.i283.sroa_idx = getelementptr inbounds i8, ptr %orig.i279.sroa.0, i32 16
  %100 = ptrtoint ptr %orig.i279.sroa.0.16.orig.coerce.fca.4.gep.i283.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %tmp71.sroa.0.16.tmp71.sroa.0.16.tmp71.sroa.0.16.datum70.sroa.16.0.copyload, ptr %orig.i279.sroa.0.16.orig.coerce.fca.4.gep.i283.sroa_idx, align 4, !noalias !225
  %orig.i279.sroa.0.20.orig.coerce.fca.5.gep.i284.sroa_idx = getelementptr inbounds i8, ptr %orig.i279.sroa.0, i32 20
  %101 = ptrtoint ptr %orig.i279.sroa.0.20.orig.coerce.fca.5.gep.i284.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %tmp71.sroa.0.20.tmp71.sroa.0.20.tmp71.sroa.0.20.datum70.sroa.19.0.copyload, ptr %orig.i279.sroa.0.20.orig.coerce.fca.5.gep.i284.sroa_idx, align 4, !noalias !225
  %orig.i279.sroa.0.24.orig.coerce.fca.6.gep.i285.sroa_idx = getelementptr inbounds i8, ptr %orig.i279.sroa.0, i32 24
  %102 = ptrtoint ptr %orig.i279.sroa.0.24.orig.coerce.fca.6.gep.i285.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %tmp71.sroa.0.24.tmp71.sroa.0.24.tmp71.sroa.0.24.datum70.sroa.22.0.copyload, ptr %orig.i279.sroa.0.24.orig.coerce.fca.6.gep.i285.sroa_idx, align 4, !noalias !225
  %orig.i279.sroa.0.28.orig.coerce.fca.7.gep.i286.sroa_idx = getelementptr inbounds i8, ptr %orig.i279.sroa.0, i32 28
  %103 = ptrtoint ptr %orig.i279.sroa.0.28.orig.coerce.fca.7.gep.i286.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %tmp71.sroa.0.28.tmp71.sroa.0.28.tmp71.sroa.0.28.datum70.sroa.25.0.copyload, ptr %orig.i279.sroa.0.28.orig.coerce.fca.7.gep.i286.sroa_idx, align 4, !noalias !225
  %104 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bankwidth, align 4, !noalias !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %105)
  %cmp.i288 = icmp sgt i32 %105, 4
  br i1 %cmp.i288, label %if.then.i292, label %for.cond.preheader.i291

for.cond.preheader.i291:                          ; preds = %map_word_ff.exit278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2.lcssa)
  %cmp119.i290 = icmp sgt i32 %len.addr.2.lcssa, 0
  br i1 %cmp119.i290, label %for.cond.preheader.i291.for.body.i306_crit_edge, label %for.cond.preheader.i291.if.end.loopexit.i308_crit_edge

for.cond.preheader.i291.if.end.loopexit.i308_crit_edge: ; preds = %for.cond.preheader.i291
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.loopexit.i308

for.cond.preheader.i291.for.body.i306_crit_edge:  ; preds = %for.cond.preheader.i291
  br label %for.body.i306

if.then.i292:                                     ; preds = %map_word_ff.exit278
  call void @__sanitizer_cov_trace_pc() #12
  %106 = call ptr @memcpy(ptr %orig.i279.sroa.0, ptr %buf.addr.2.lcssa, i32 %len.addr.2.lcssa)
  br label %map_word_load_partial.exit309

for.body.i306:                                    ; preds = %for.body.i306.for.body.i306_crit_edge, %for.cond.preheader.i291.for.body.i306_crit_edge
  %i.021.i293 = phi i32 [ %inc.i304, %for.body.i306.for.body.i306_crit_edge ], [ 0, %for.cond.preheader.i291.for.body.i306_crit_edge ]
  %or1820.i294 = phi i32 [ %or.i303, %for.body.i306.for.body.i306_crit_edge ], [ %tmp71.sroa.0.0.tmp71.sroa.0.0.tmp71.sroa.0.0.datum70.sroa.0.0.copyload, %for.cond.preheader.i291.for.body.i306_crit_edge ]
  %107 = xor i32 %i.021.i293, -1
  %sub3.i295 = add i32 %105, %107
  %mul.i296 = shl i32 %sub3.i295, 3
  %shl.i297 = shl i32 255, %mul.i296
  %neg.i298 = xor i32 %shl.i297, -1
  %and.i299 = and i32 %or1820.i294, %neg.i298
  %arrayidx5.i300 = getelementptr i8, ptr %buf.addr.2.lcssa, i32 %i.021.i293
  %108 = ptrtoint ptr %arrayidx5.i300 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx5.i300, align 1, !noalias !225
  %conv.i301 = zext i8 %109 to i32
  %shl6.i302 = shl i32 %conv.i301, %mul.i296
  %or.i303 = or i32 %shl6.i302, %and.i299
  %inc.i304 = add nuw nsw i32 %i.021.i293, 1
  %exitcond.not.i305 = icmp eq i32 %inc.i304, %len.addr.2.lcssa
  br i1 %exitcond.not.i305, label %for.body.i306.if.end.loopexit.i308_crit_edge, label %for.body.i306.for.body.i306_crit_edge

for.body.i306.for.body.i306_crit_edge:            ; preds = %for.body.i306
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i306

for.body.i306.if.end.loopexit.i308_crit_edge:     ; preds = %for.body.i306
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.loopexit.i308

if.end.loopexit.i308:                             ; preds = %for.body.i306.if.end.loopexit.i308_crit_edge, %for.cond.preheader.i291.if.end.loopexit.i308_crit_edge
  %or18.lcssa.i307 = phi i32 [ %tmp71.sroa.0.0.tmp71.sroa.0.0.tmp71.sroa.0.0.datum70.sroa.0.0.copyload, %for.cond.preheader.i291.if.end.loopexit.i308_crit_edge ], [ %or.i303, %for.body.i306.if.end.loopexit.i308_crit_edge ]
  %110 = ptrtoint ptr %orig.i279.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or18.lcssa.i307, ptr %orig.i279.sroa.0, align 4, !noalias !225
  br label %map_word_load_partial.exit309

map_word_load_partial.exit309:                    ; preds = %if.end.loopexit.i308, %if.then.i292
  %111 = ptrtoint ptr %orig.i279.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %111)
  %orig.i279.sroa.0.0.orig.i279.sroa.0.0.orig.i279.sroa.0.0.tmp72.sroa.0.0.copyload = load i32, ptr %orig.i279.sroa.0, align 4
  %112 = ptrtoint ptr %orig.i279.sroa.0.4.orig.coerce.fca.1.gep.i280.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %112)
  %orig.i279.sroa.0.4.orig.i279.sroa.0.4.orig.i279.sroa.0.4.tmp72.sroa.4.0.copyload = load i32, ptr %orig.i279.sroa.0.4.orig.coerce.fca.1.gep.i280.sroa_idx, align 4
  %113 = ptrtoint ptr %orig.i279.sroa.0.8.orig.coerce.fca.2.gep.i281.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %113)
  %orig.i279.sroa.0.8.orig.i279.sroa.0.8.orig.i279.sroa.0.8.tmp72.sroa.5.0.copyload = load i32, ptr %orig.i279.sroa.0.8.orig.coerce.fca.2.gep.i281.sroa_idx, align 4
  %114 = ptrtoint ptr %orig.i279.sroa.0.12.orig.coerce.fca.3.gep.i282.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %114)
  %orig.i279.sroa.0.12.orig.i279.sroa.0.12.orig.i279.sroa.0.12.tmp72.sroa.6.0.copyload = load i32, ptr %orig.i279.sroa.0.12.orig.coerce.fca.3.gep.i282.sroa_idx, align 4
  %115 = ptrtoint ptr %orig.i279.sroa.0.16.orig.coerce.fca.4.gep.i283.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %115)
  %orig.i279.sroa.0.16.orig.i279.sroa.0.16.orig.i279.sroa.0.16.tmp72.sroa.7.0.copyload = load i32, ptr %orig.i279.sroa.0.16.orig.coerce.fca.4.gep.i283.sroa_idx, align 4
  %116 = ptrtoint ptr %orig.i279.sroa.0.20.orig.coerce.fca.5.gep.i284.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %116)
  %orig.i279.sroa.0.20.orig.i279.sroa.0.20.orig.i279.sroa.0.20.tmp72.sroa.8.0.copyload = load i32, ptr %orig.i279.sroa.0.20.orig.coerce.fca.5.gep.i284.sroa_idx, align 4
  %117 = ptrtoint ptr %orig.i279.sroa.0.24.orig.coerce.fca.6.gep.i285.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %117)
  %orig.i279.sroa.0.24.orig.i279.sroa.0.24.orig.i279.sroa.0.24.tmp72.sroa.9.0.copyload = load i32, ptr %orig.i279.sroa.0.24.orig.coerce.fca.6.gep.i285.sroa_idx, align 4
  %118 = ptrtoint ptr %orig.i279.sroa.0.28.orig.coerce.fca.7.gep.i286.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %118)
  %orig.i279.sroa.0.28.orig.i279.sroa.0.28.orig.i279.sroa.0.28.tmp72.sroa.10.0.copyload = load i32, ptr %orig.i279.sroa.0.28.orig.coerce.fca.7.gep.i286.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i279.sroa.0)
  %arrayidx75 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.3.lcssa
  %.fca.0.insert96 = insertvalue [8 x i32] poison, i32 %orig.i279.sroa.0.0.orig.i279.sroa.0.0.orig.i279.sroa.0.0.tmp72.sroa.0.0.copyload, 0
  %.fca.1.insert99 = insertvalue [8 x i32] %.fca.0.insert96, i32 %orig.i279.sroa.0.4.orig.i279.sroa.0.4.orig.i279.sroa.0.4.tmp72.sroa.4.0.copyload, 1
  %.fca.2.insert102 = insertvalue [8 x i32] %.fca.1.insert99, i32 %orig.i279.sroa.0.8.orig.i279.sroa.0.8.orig.i279.sroa.0.8.tmp72.sroa.5.0.copyload, 2
  %.fca.3.insert105 = insertvalue [8 x i32] %.fca.2.insert102, i32 %orig.i279.sroa.0.12.orig.i279.sroa.0.12.orig.i279.sroa.0.12.tmp72.sroa.6.0.copyload, 3
  %.fca.4.insert108 = insertvalue [8 x i32] %.fca.3.insert105, i32 %orig.i279.sroa.0.16.orig.i279.sroa.0.16.orig.i279.sroa.0.16.tmp72.sroa.7.0.copyload, 4
  %.fca.5.insert111 = insertvalue [8 x i32] %.fca.4.insert108, i32 %orig.i279.sroa.0.20.orig.i279.sroa.0.20.orig.i279.sroa.0.20.tmp72.sroa.8.0.copyload, 5
  %.fca.6.insert114 = insertvalue [8 x i32] %.fca.5.insert111, i32 %orig.i279.sroa.0.24.orig.i279.sroa.0.24.orig.i279.sroa.0.24.tmp72.sroa.9.0.copyload, 6
  %.fca.7.insert117 = insertvalue [8 x i32] %.fca.6.insert114, i32 %orig.i279.sroa.0.28.orig.i279.sroa.0.28.orig.i279.sroa.0.28.tmp72.sroa.10.0.copyload, 7
  %call77 = tail call fastcc i32 @do_write_oneword(ptr noundef %1, ptr noundef %arrayidx75, i32 noundef %ofs.3.lcssa, [8 x i32] %.fca.7.insert117, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %cleanup82.thread, label %map_word_load_partial.exit309.cleanup86_crit_edge

map_word_load_partial.exit309.cleanup86_crit_edge: ; preds = %map_word_load_partial.exit309
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup86

cleanup82.thread:                                 ; preds = %map_word_load_partial.exit309
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %retlen, align 4
  %add81 = add i32 %120, %len.addr.2.lcssa
  store i32 %add81, ptr %retlen, align 4
  br label %cleanup86

cleanup86:                                        ; preds = %cleanup82.thread, %map_word_load_partial.exit309.cleanup86_crit_edge, %while.end.cleanup86_crit_edge, %cleanup62.thread, %if.then22.cleanup86_crit_edge, %map_word_load_partial.exit.cleanup86_crit_edge
  %retval.5 = phi i32 [ %call39, %cleanup62.thread ], [ %call77, %map_word_load_partial.exit309.cleanup86_crit_edge ], [ 0, %cleanup82.thread ], [ 0, %while.end.cleanup86_crit_edge ], [ 0, %if.then22.cleanup86_crit_edge ], [ %call, %map_word_load_partial.exit.cleanup86_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfi_intelext_sync(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %cmp58 = icmp sgt i32 %5, 0
  br i1 %cmp58, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04659 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04659
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04659, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %retry.i

retry.i:                                          ; preds = %retry.i.retry.i_crit_edge, %for.body
  %call122.i = tail call fastcc i32 @chip_ready(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %7, i32 noundef 13) #10
  %8 = zext i32 %call122.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call122.i, label %if.end.thread [
    i32 -11, label %retry.i.retry.i_crit_edge
    i32 0, label %if.end
  ]

retry.i.retry.i_crit_edge:                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i

if.end.thread:                                    ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %inc54 = add nuw i32 %i.04659, 1
  br label %for.end

if.end:                                           ; preds = %retry.i
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04659, i32 2
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %oldstate = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04659, i32 3
  %11 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %oldstate, align 4
  store i32 13, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %inc = add nuw i32 %i.04659, 1
  %12 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end.thread, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %inc54, %if.end.thread ], [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ]
  %i.148 = add i32 %i.0.lcssa, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.148)
  %cmp549 = icmp sgt i32 %i.148, -1
  br i1 %cmp549, label %for.end.for.body6_crit_edge, label %for.end.for.end20_crit_edge

for.end.for.end20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.end.for.body6_crit_edge:                      ; preds = %for.end
  br label %for.body6

for.body6:                                        ; preds = %if.end16.for.body6_crit_edge, %for.end.for.body6_crit_edge
  %i.150 = phi i32 [ %i.1, %if.end16.for.body6_crit_edge ], [ %i.148, %for.end.for.body6_crit_edge ]
  %mutex9 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.150, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex9, i32 noundef 0) #10
  %state10 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.150, i32 2
  %14 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %15)
  %cmp11 = icmp eq i32 %15, 13
  br i1 %cmp11, label %if.then12, label %for.body6.if.end16_crit_edge

for.body6.if.end16_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then12:                                        ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  %oldstate13 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.150, i32 3
  %16 = ptrtoint ptr %oldstate13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oldstate13, align 4
  %18 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %state10, align 4
  store i32 0, ptr %oldstate13, align 4
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.150, i32 8
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %for.body6.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex9) #10
  %i.1 = add i32 %i.150, -1
  %cmp5 = icmp sgt i32 %i.1, -1
  br i1 %cmp5, label %if.end16.for.body6_crit_edge, label %if.end16.for.end20_crit_edge

if.end16.for.end20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

if.end16.for.body6_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.end20:                                        ; preds = %if.end16.for.end20_crit_edge, %for.end.for.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_lock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %call = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_xxlock_oneblock, i64 noundef %ofs, i32 noundef %conv, ptr noundef nonnull inttoptr (i32 1 to ptr)) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_unlock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %call = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_xxlock_oneblock, i64 noundef %ofs, i32 noundef %conv, ptr noundef nonnull inttoptr (i32 2 to ptr)) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_is_locked(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %call = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_getlockstatus_oneblock, i64 noundef %ofs, i32 noundef %conv, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_suspend(ptr noundef %mtd) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %FeatureSupport, align 1
  %and3 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %numeraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %10 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numeraseregions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp31.i = icmp sgt i32 %11, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %eraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc11.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc12.i, %for.inc11.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eraseregions.i, align 4
  %arrayidx.i = getelementptr %struct.mtd_erase_region_info, ptr %13, i32 %i.032.i
  %lockmap.i = getelementptr %struct.mtd_erase_region_info, ptr %13, i32 %i.032.i, i32 3
  %14 = ptrtoint ptr %lockmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lockmap.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc11.i_crit_edge, label %for.cond1.preheader.i

for.body.i.for.inc11.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc11.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %numblocks.i = getelementptr %struct.mtd_erase_region_info, ptr %13, i32 %i.032.i, i32 2
  %16 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp228.not.i = icmp eq i32 %17, 0
  br i1 %cmp228.not.i, label %for.cond1.preheader.i.for.inc11.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.for.inc11.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc11.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %erasesize.i = getelementptr %struct.mtd_erase_region_info, ptr %13, i32 %i.032.i, i32 1
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %block.029.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %for.inc.i.for.body3.i_crit_edge ]
  %18 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %erasesize.i, align 8
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i, align 8
  %mul.i = mul i32 %19, %block.029.i
  %22 = trunc i64 %21 to i32
  %conv4.i = add i32 %mul.i, %22
  %conv5.i = zext i32 %conv4.i to i64
  %call.i = tail call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_getlockstatus_oneblock, i64 noundef %conv5.i, i32 noundef %19, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  %23 = ptrtoint ptr %lockmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lockmap.i, align 8
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %block.029.i, ptr noundef %24) #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef %block.029.i, ptr noundef %24) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then7.i
  %inc.i = add nuw i32 %block.029.i, 1
  %25 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %numblocks.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %26
  br i1 %cmp2.i, label %for.inc.i.for.body3.i_crit_edge, label %for.inc.i.for.inc11.i_crit_edge

for.inc.i.for.inc11.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc11.i

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.i

for.inc11.i:                                      ; preds = %for.inc.i.for.inc11.i_crit_edge, %for.cond1.preheader.i.for.inc11.i_crit_edge, %for.body.i.for.inc11.i_crit_edge
  %inc12.i = add nuw nsw i32 %i.032.i, 1
  %27 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %numeraseregions.i, align 8
  %cmp.i = icmp slt i32 %inc12.i, %28
  br i1 %cmp.i, label %for.inc11.i.for.body.i_crit_edge, label %for.inc11.i.if.end_crit_edge

for.inc11.i.if.end_crit_edge:                     ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc11.i.for.body.i_crit_edge:                 ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end:                                           ; preds = %for.inc11.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %write = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %29 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp111 = icmp sgt i32 %30, 0
  br i1 %cmp111, label %if.end.for.body_crit_edge, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body26.preheader:                             ; preds = %do.end17, %do.end
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %for.body26

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.082112 = phi i32 [ %inc, %sw.epilog.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.082112
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.082112, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.082112, i32 2
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %32, label %do.end17 [
    i32 0, label %for.body.sw.bb_crit_edge
    i32 1, label %for.body.sw.bb_crit_edge133
    i32 2, label %for.body.sw.bb_crit_edge134
    i32 3, label %for.body.sw.bb_crit_edge135
    i32 12, label %for.body.sw.epilog_crit_edge
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.sw.bb_crit_edge135:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge134:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge133:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge133, %for.body.sw.bb_crit_edge134, %for.body.sw.bb_crit_edge135
  %oldstate = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.082112, i32 3
  %34 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %oldstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp6 = icmp eq i32 %35, 0
  br i1 %cmp6, label %if.then7, label %do.end

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 255, ptr noundef %1, ptr noundef %3) #10
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %41 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %42 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %43 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %44 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %45 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %46 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %47 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %37(ptr noundef %1, [8 x i32] %.fca.7.insert, i32 noundef %39) #10
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state, align 4
  %50 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %oldstate, align 4
  store i32 12, ptr %state, align 4
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %35) #14
  br label %for.body26.preheader

do.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %32) #14
  br label %for.body26.preheader

sw.epilog:                                        ; preds = %if.then7, %for.body.sw.epilog_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  %inc = add nuw nsw i32 %i.082112, 1
  %51 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %52
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.if.end41_crit_edge

sw.epilog.if.end41_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body26:                                       ; preds = %if.end36.for.body26_crit_edge, %for.body26.preheader
  %i.187 = phi i32 [ %i.1, %if.end36.for.body26_crit_edge ], [ %i.082112, %for.body26.preheader ]
  %mutex29 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.187, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex29, i32 noundef 0) #10
  %state30 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.187, i32 2
  %53 = ptrtoint ptr %state30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %54)
  %cmp31 = icmp eq i32 %54, 12
  br i1 %cmp31, label %if.then32, label %for.body26.if.end36_crit_edge

for.body26.if.end36_crit_edge:                    ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #12
  %oldstate33 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.187, i32 3
  %55 = ptrtoint ptr %oldstate33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oldstate33, align 4
  %57 = ptrtoint ptr %state30 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %state30, align 4
  store i32 0, ptr %oldstate33, align 4
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.187, i32 8
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %for.body26.if.end36_crit_edge
  call void @mutex_unlock(ptr noundef %mutex29) #10
  %i.1 = add nsw i32 %i.187, -1
  %cmp25 = icmp sgt i32 %i.187, 0
  br i1 %cmp25, label %if.end36.for.body26_crit_edge, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end36.for.body26_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26

if.end41:                                         ; preds = %if.end36.if.end41_crit_edge, %sw.epilog.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %ret.080 = phi i32 [ 0, %if.end.if.end41_crit_edge ], [ -11, %if.end36.if.end41_crit_edge ], [ 0, %sw.epilog.if.end41_crit_edge ]
  ret i32 %ret.080
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfi_intelext_resume(ptr noundef %mtd) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31 = icmp sgt i32 %7, 0
  br i1 %cmp31, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.032, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.032, i32 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp1 = icmp eq i32 %9, 12
  br i1 %cmp1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.032
  call void @fixup_LH28F640BF(ptr noundef %mtd)
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 255, ptr noundef %1, ptr noundef %3) #10
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %15 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %16 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %17 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %18 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %19 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %20 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %21 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %11(ptr noundef %1, [8 x i32] %.fca.7.insert, i32 noundef %13) #10
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %state, align 4
  %oldstate = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.032, i32 3
  %23 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %oldstate, align 4
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.032, i32 8
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  %inc = add nuw nsw i32 %i.032, 1
  %24 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool6.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %for.end.if.end11_crit_edge, label %land.lhs.true7

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true7:                                   ; preds = %for.end
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %FeatureSupport, align 1
  %and8 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true7.if.end11_crit_edge, label %if.then10

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true7
  %numeraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %30 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %numeraseregions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp32.i = icmp sgt i32 %31, 0
  br i1 %cmp32.i, label %for.body.lr.ph.i, label %if.then10.if.end11_crit_edge

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.body.lr.ph.i:                                 ; preds = %if.then10
  %eraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc14.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc14.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %eraseregions.i, align 4
  %arrayidx.i = getelementptr %struct.mtd_erase_region_info, ptr %33, i32 %i.033.i
  %lockmap.i = getelementptr %struct.mtd_erase_region_info, ptr %33, i32 %i.033.i, i32 3
  %34 = ptrtoint ptr %lockmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lockmap.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %for.body.i.for.inc14.i_crit_edge, label %if.end.i

for.body.i.for.inc14.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc14.i

if.end.i:                                         ; preds = %for.body.i
  %numblocks.i = getelementptr %struct.mtd_erase_region_info, ptr %33, i32 %i.033.i, i32 2
  %36 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %numblocks.i, align 4
  %call.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %35, i32 noundef %37, i32 noundef 0) #10
  %38 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %numblocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %39)
  %cmp430.i = icmp ult i32 %call.i, %39
  br i1 %cmp430.i, label %for.body5.lr.ph.i, label %if.end.i.for.inc14.i_crit_edge

if.end.i.for.inc14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc14.i

for.body5.lr.ph.i:                                ; preds = %if.end.i
  %erasesize.i = getelementptr %struct.mtd_erase_region_info, ptr %33, i32 %i.033.i, i32 1
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %block.031.i = phi i32 [ %call.i, %for.body5.lr.ph.i ], [ %call13.i, %for.body5.i.for.body5.i_crit_edge ]
  %40 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %erasesize.i, align 8
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.i, align 8
  %mul.i = mul i32 %41, %block.031.i
  %44 = trunc i64 %43 to i32
  %conv6.i = add i32 %mul.i, %44
  %conv7.i = zext i32 %conv6.i to i64
  %call.i.i = call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @do_xxlock_oneblock, i64 noundef %conv7.i, i32 noundef %41, ptr noundef nonnull inttoptr (i32 2 to ptr)) #10
  %45 = ptrtoint ptr %lockmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lockmap.i, align 8
  %47 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %numblocks.i, align 4
  %add12.i = add nuw i32 %block.031.i, 1
  %call13.i = call i32 @_find_next_zero_bit_be(ptr noundef %46, i32 noundef %48, i32 noundef %add12.i) #10
  %49 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %numblocks.i, align 4
  %cmp4.i = icmp ult i32 %call13.i, %50
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.for.inc14.i_crit_edge

for.body5.i.for.inc14.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc14.i

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5.i

for.inc14.i:                                      ; preds = %for.body5.i.for.inc14.i_crit_edge, %if.end.i.for.inc14.i_crit_edge, %for.body.i.for.inc14.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %51 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %numeraseregions.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %52
  br i1 %cmp.i, label %for.inc14.i.for.body.i_crit_edge, label %for.inc14.i.if.end11_crit_edge

for.inc14.i.if.end11_crit_edge:                   ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.inc14.i.for.body.i_crit_edge:                 ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end11:                                         ; preds = %for.inc14.i.if.end11_crit_edge, %if.then10.if.end11_crit_edge, %land.lhs.true7.if.end11_crit_edge, %for.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_reboot(ptr nocapture noundef readonly %nb, i32 noundef %val, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -208
  tail call fastcc void @cfi_intelext_reset(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_fixup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfi_read_pri(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_convert_atmel_pri(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %FeatureSupport, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = lshr i32 %8, 24
  %10 = call ptr @memset(ptr %FeatureSupport, i32 0, i32 14)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %9) #14
  %11 = and i32 %9, 7
  %and22 = shl nuw nsw i32 %9, 6
  %12 = and i32 %and22, 512
  %13 = or i32 %12, %11
  %and29 = shl nuw nsw i32 %9, 2
  %14 = and i32 %and29, 128
  %15 = or i32 %13, %14
  %and36 = lshr i32 %8, 26
  %16 = and i32 %and36, 16
  %17 = or i32 %15, %16
  %and43 = lshr i32 %8, 25
  %18 = and i32 %and43, 64
  %19 = or i32 %17, %18
  %20 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %FeatureSupport, align 1
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfiq, align 4
  %BufWriteTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %BufWriteTimeoutTyp to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %BufWriteTimeoutTyp, align 1
  %24 = load ptr, ptr %cfiq, align 4
  %BufWriteTimeoutMax = getelementptr inbounds %struct.cfi_ident, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %BufWriteTimeoutMax to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %BufWriteTimeoutMax, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fixup_at49bv640dx_lock(ptr nocapture noundef %mtd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %FeatureSupport, align 1
  %or = or i32 %7, 32
  store i32 %or, ptr %FeatureSupport, align 1
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or1 = or i32 %9, 8192
  store i32 %or1, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_use_write_buffers(ptr nocapture noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %BufWriteTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %BufWriteTimeoutTyp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %BufWriteTimeoutTyp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #14
  %_write = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 25
  %8 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cfi_intelext_write_buffers, ptr %_write, align 8
  %_writev = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 36
  %9 = ptrtoint ptr %_writev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cfi_intelext_writev, ptr %_writev, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fixup_st_m28w320ct(ptr nocapture noundef readonly %mtd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %BufWriteTimeoutTyp = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %BufWriteTimeoutTyp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %BufWriteTimeoutTyp, align 1
  %7 = load ptr, ptr %cfiq, align 4
  %BufWriteTimeoutMax = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %BufWriteTimeoutMax to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %BufWriteTimeoutMax, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fixup_st_m28w320cb(ptr nocapture noundef readonly %mtd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %and = and i32 %7, -65536
  %or = or i32 %and, 62
  store i32 %or, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_unlock_powerup_lock(ptr nocapture noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %FeatureSupport, align 1
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #14
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 8192
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_LH28F640BF(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp3 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %mfr.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %mfr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mfr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %7)
  %cmp.i = icmp eq i32 %7, 176
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %id.i = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  %10 = and i32 %9, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %10)
  %switch.i = icmp eq i32 %10, 176
  br i1 %switch.i, label %do.end, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  %write = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 96, ptr noundef %1, ptr noundef %3) #10
  %13 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.0.load11 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert12 = insertvalue [8 x i32] poison, i32 %.fca.0.load11, 0
  %.fca.1.gep13 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %14 = ptrtoint ptr %.fca.1.gep13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.1.load14 = load i32, ptr %.fca.1.gep13, align 4
  %.fca.1.insert15 = insertvalue [8 x i32] %.fca.0.insert12, i32 %.fca.1.load14, 1
  %.fca.2.gep16 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %15 = ptrtoint ptr %.fca.2.gep16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.2.load17 = load i32, ptr %.fca.2.gep16, align 4
  %.fca.2.insert18 = insertvalue [8 x i32] %.fca.1.insert15, i32 %.fca.2.load17, 2
  %.fca.3.gep19 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %16 = ptrtoint ptr %.fca.3.gep19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.3.load20 = load i32, ptr %.fca.3.gep19, align 4
  %.fca.3.insert21 = insertvalue [8 x i32] %.fca.2.insert18, i32 %.fca.3.load20, 3
  %.fca.4.gep22 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %17 = ptrtoint ptr %.fca.4.gep22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.4.load23 = load i32, ptr %.fca.4.gep22, align 4
  %.fca.4.insert24 = insertvalue [8 x i32] %.fca.3.insert21, i32 %.fca.4.load23, 4
  %.fca.5.gep25 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %18 = ptrtoint ptr %.fca.5.gep25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.5.load26 = load i32, ptr %.fca.5.gep25, align 4
  %.fca.5.insert27 = insertvalue [8 x i32] %.fca.4.insert24, i32 %.fca.5.load26, 5
  %.fca.6.gep28 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %19 = ptrtoint ptr %.fca.6.gep28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.6.load29 = load i32, ptr %.fca.6.gep28, align 4
  %.fca.6.insert30 = insertvalue [8 x i32] %.fca.5.insert27, i32 %.fca.6.load29, 6
  %.fca.7.gep31 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %20 = ptrtoint ptr %.fca.7.gep31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.7.load32 = load i32, ptr %.fca.7.gep31, align 4
  %.fca.7.insert33 = insertvalue [8 x i32] %.fca.6.insert30, i32 %.fca.7.load32, 7
  call void %12(ptr noundef %1, [8 x i32] %.fca.7.insert33, i32 noundef 0) #10
  %21 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp3, i32 noundef 4, ptr noundef %1, ptr noundef %3) #10
  %23 = ptrtoint ptr %agg.tmp3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.0.load = load i32, ptr %agg.tmp3, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp3, i32 0, i32 1
  %24 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp3, i32 0, i32 2
  %25 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp3, i32 0, i32 3
  %26 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp3, i32 0, i32 4
  %27 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp3, i32 0, i32 5
  %28 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp3, i32 0, i32 6
  %29 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp3, i32 0, i32 7
  %30 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %22(ptr noundef %1, [8 x i32] %.fca.7.insert, i32 noundef 0) #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 3
  %31 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %FeatureSupport, align 1
  %and = and i32 %32, -513
  store i32 %and, ptr %FeatureSupport, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_write_buffers(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  %vec = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #10
  %0 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %1 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %vec, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %0, align 4
  %call = call i32 @cfi_intelext_writev(ptr noundef %mtd, ptr noundef nonnull %vec, i32 noundef 1, i64 noundef %to, ptr noundef %retlen)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_writev(ptr nocapture noundef readonly %mtd, ptr noundef %vecs, i32 noundef %count, i64 noundef %to, ptr nocapture noundef %retlen) #0 align 64 {
entry:
  %orig.i.i = alloca %union.map_word, align 4
  %status.i = alloca %union.map_word, align 4
  %tmp.i = alloca %union.map_word, align 4
  %tmp4.i = alloca %union.map_word, align 4
  %agg.tmp.i = alloca %union.map_word, align 4
  %tmp25.i = alloca %union.map_word, align 4
  %agg.tmp41.i = alloca %union.map_word, align 4
  %agg.tmp44.i = alloca %union.map_word, align 4
  %Xstatus.i = alloca %union.map_word, align 4
  %agg.tmp55.i = alloca %union.map_word, align 4
  %tmp58.i = alloca %union.map_word, align 4
  %agg.tmp61.i = alloca %union.map_word, align 4
  %agg.tmp64.i = alloca %union.map_word, align 4
  %tmp89.sroa.0.i = alloca [8 x i32], align 4
  %agg.tmp92.i = alloca %union.map_word, align 4
  %tmp113.sroa.0.i = alloca [8 x i32], align 4
  %agg.tmp139.i = alloca %union.map_word, align 4
  %agg.tmp146.i = alloca %union.map_word, align 4
  %tmp156.i = alloca %union.map_word, align 4
  %tmp168.i = alloca %union.map_word, align 4
  %agg.tmp183.i = alloca %union.map_word, align 4
  %agg.tmp186.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp85.not = icmp eq i32 %count, 0
  br i1 %cmp85.not, label %entry.cleanup32_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.087 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.086 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %iov_len = getelementptr %struct.kvec, ptr %vecs, i32 %i.086, i32 1
  %10 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iov_len, align 4
  %add = add i32 %11, %len.087
  %inc = add nuw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %for.end.cleanup32_crit_edge, label %if.end

for.end.cleanup32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.end:                                           ; preds = %for.end
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %13 to i64
  %shr = ashr i64 %to, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %shl4 = shl i32 %conv2, %13
  %14 = trunc i64 %to to i32
  %conv6 = sub i32 %14, %shl4
  %sub7 = add i32 %shl, -1
  %15 = getelementptr inbounds [8 x i32], ptr %status.i, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i32], ptr %status.i, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i32], ptr %status.i, i32 0, i32 3
  %18 = getelementptr inbounds [8 x i32], ptr %status.i, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i32], ptr %status.i, i32 0, i32 5
  %20 = getelementptr inbounds [8 x i32], ptr %status.i, i32 0, i32 6
  %21 = getelementptr inbounds [8 x i32], ptr %status.i, i32 0, i32 7
  %write_cmd.sroa.6.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 4
  %write_cmd.sroa.8.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %write_cmd.sroa.10.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 12
  %write_cmd.sroa.12.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 16
  %write_cmd.sroa.14.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 20
  %write_cmd.sroa.16.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 24
  %write_cmd.sroa.18.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 28
  %write_cmd.sroa.6.0.tmp4.sroa_idx.i = getelementptr inbounds i8, ptr %tmp4.i, i32 4
  %write_cmd.sroa.8.0.tmp4.sroa_idx.i = getelementptr inbounds i8, ptr %tmp4.i, i32 8
  %write_cmd.sroa.10.0.tmp4.sroa_idx.i = getelementptr inbounds i8, ptr %tmp4.i, i32 12
  %write_cmd.sroa.12.0.tmp4.sroa_idx.i = getelementptr inbounds i8, ptr %tmp4.i, i32 16
  %write_cmd.sroa.14.0.tmp4.sroa_idx.i = getelementptr inbounds i8, ptr %tmp4.i, i32 20
  %write_cmd.sroa.16.0.tmp4.sroa_idx.i = getelementptr inbounds i8, ptr %tmp4.i, i32 24
  %write_cmd.sroa.18.0.tmp4.sroa_idx.i = getelementptr inbounds i8, ptr %tmp4.i, i32 28
  %set_vpp.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 12
  %write.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %.fca.1.gep466.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 1
  %.fca.2.gep469.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 2
  %.fca.3.gep472.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 3
  %.fca.4.gep475.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 4
  %.fca.5.gep478.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 5
  %.fca.6.gep481.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 6
  %.fca.7.gep484.i = getelementptr inbounds [8 x i32], ptr %agg.tmp.i, i32 0, i32 7
  %read.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 7
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %.fca.1.gep439.i = getelementptr inbounds [8 x i32], ptr %agg.tmp41.i, i32 0, i32 1
  %.fca.2.gep442.i = getelementptr inbounds [8 x i32], ptr %agg.tmp41.i, i32 0, i32 2
  %.fca.3.gep445.i = getelementptr inbounds [8 x i32], ptr %agg.tmp41.i, i32 0, i32 3
  %.fca.4.gep448.i = getelementptr inbounds [8 x i32], ptr %agg.tmp41.i, i32 0, i32 4
  %.fca.5.gep451.i = getelementptr inbounds [8 x i32], ptr %agg.tmp41.i, i32 0, i32 5
  %.fca.6.gep454.i = getelementptr inbounds [8 x i32], ptr %agg.tmp41.i, i32 0, i32 6
  %.fca.7.gep457.i = getelementptr inbounds [8 x i32], ptr %agg.tmp41.i, i32 0, i32 7
  %.fca.1.gep415.i = getelementptr inbounds [8 x i32], ptr %agg.tmp44.i, i32 0, i32 1
  %.fca.2.gep418.i = getelementptr inbounds [8 x i32], ptr %agg.tmp44.i, i32 0, i32 2
  %.fca.3.gep421.i = getelementptr inbounds [8 x i32], ptr %agg.tmp44.i, i32 0, i32 3
  %.fca.4.gep424.i = getelementptr inbounds [8 x i32], ptr %agg.tmp44.i, i32 0, i32 4
  %.fca.5.gep427.i = getelementptr inbounds [8 x i32], ptr %agg.tmp44.i, i32 0, i32 5
  %.fca.6.gep430.i = getelementptr inbounds [8 x i32], ptr %agg.tmp44.i, i32 0, i32 6
  %.fca.7.gep433.i = getelementptr inbounds [8 x i32], ptr %agg.tmp44.i, i32 0, i32 7
  %.fca.1.gep391.i = getelementptr inbounds [8 x i32], ptr %agg.tmp55.i, i32 0, i32 1
  %.fca.2.gep394.i = getelementptr inbounds [8 x i32], ptr %agg.tmp55.i, i32 0, i32 2
  %.fca.3.gep397.i = getelementptr inbounds [8 x i32], ptr %agg.tmp55.i, i32 0, i32 3
  %.fca.4.gep400.i = getelementptr inbounds [8 x i32], ptr %agg.tmp55.i, i32 0, i32 4
  %.fca.5.gep403.i = getelementptr inbounds [8 x i32], ptr %agg.tmp55.i, i32 0, i32 5
  %.fca.6.gep406.i = getelementptr inbounds [8 x i32], ptr %agg.tmp55.i, i32 0, i32 6
  %.fca.7.gep409.i = getelementptr inbounds [8 x i32], ptr %agg.tmp55.i, i32 0, i32 7
  %.fca.1.gep367.i = getelementptr inbounds [8 x i32], ptr %agg.tmp61.i, i32 0, i32 1
  %.fca.2.gep370.i = getelementptr inbounds [8 x i32], ptr %agg.tmp61.i, i32 0, i32 2
  %.fca.3.gep373.i = getelementptr inbounds [8 x i32], ptr %agg.tmp61.i, i32 0, i32 3
  %.fca.4.gep376.i = getelementptr inbounds [8 x i32], ptr %agg.tmp61.i, i32 0, i32 4
  %.fca.5.gep379.i = getelementptr inbounds [8 x i32], ptr %agg.tmp61.i, i32 0, i32 5
  %.fca.6.gep382.i = getelementptr inbounds [8 x i32], ptr %agg.tmp61.i, i32 0, i32 6
  %.fca.7.gep385.i = getelementptr inbounds [8 x i32], ptr %agg.tmp61.i, i32 0, i32 7
  %.fca.1.gep343.i = getelementptr inbounds [8 x i32], ptr %agg.tmp64.i, i32 0, i32 1
  %.fca.2.gep346.i = getelementptr inbounds [8 x i32], ptr %agg.tmp64.i, i32 0, i32 2
  %.fca.3.gep349.i = getelementptr inbounds [8 x i32], ptr %agg.tmp64.i, i32 0, i32 3
  %.fca.4.gep352.i = getelementptr inbounds [8 x i32], ptr %agg.tmp64.i, i32 0, i32 4
  %.fca.5.gep355.i = getelementptr inbounds [8 x i32], ptr %agg.tmp64.i, i32 0, i32 5
  %.fca.6.gep358.i = getelementptr inbounds [8 x i32], ptr %agg.tmp64.i, i32 0, i32 6
  %.fca.7.gep361.i = getelementptr inbounds [8 x i32], ptr %agg.tmp64.i, i32 0, i32 7
  %.fca.1.gep319.i = getelementptr inbounds [8 x i32], ptr %agg.tmp92.i, i32 0, i32 1
  %.fca.2.gep322.i = getelementptr inbounds [8 x i32], ptr %agg.tmp92.i, i32 0, i32 2
  %.fca.3.gep325.i = getelementptr inbounds [8 x i32], ptr %agg.tmp92.i, i32 0, i32 3
  %.fca.4.gep328.i = getelementptr inbounds [8 x i32], ptr %agg.tmp92.i, i32 0, i32 4
  %.fca.5.gep331.i = getelementptr inbounds [8 x i32], ptr %agg.tmp92.i, i32 0, i32 5
  %.fca.6.gep334.i = getelementptr inbounds [8 x i32], ptr %agg.tmp92.i, i32 0, i32 6
  %.fca.7.gep337.i = getelementptr inbounds [8 x i32], ptr %agg.tmp92.i, i32 0, i32 7
  %orig.coerce.fca.1.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 1
  %orig.coerce.fca.2.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 2
  %orig.coerce.fca.3.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 3
  %orig.coerce.fca.4.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 4
  %orig.coerce.fca.5.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 5
  %orig.coerce.fca.6.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 6
  %orig.coerce.fca.7.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 7
  %.fca.1.gep290.i = getelementptr inbounds [8 x i32], ptr %agg.tmp139.i, i32 0, i32 1
  %.fca.2.gep293.i = getelementptr inbounds [8 x i32], ptr %agg.tmp139.i, i32 0, i32 2
  %.fca.3.gep296.i = getelementptr inbounds [8 x i32], ptr %agg.tmp139.i, i32 0, i32 3
  %.fca.4.gep299.i = getelementptr inbounds [8 x i32], ptr %agg.tmp139.i, i32 0, i32 4
  %.fca.5.gep302.i = getelementptr inbounds [8 x i32], ptr %agg.tmp139.i, i32 0, i32 5
  %.fca.6.gep305.i = getelementptr inbounds [8 x i32], ptr %agg.tmp139.i, i32 0, i32 6
  %.fca.7.gep308.i = getelementptr inbounds [8 x i32], ptr %agg.tmp139.i, i32 0, i32 7
  %.fca.1.gep266.i = getelementptr inbounds [8 x i32], ptr %agg.tmp146.i, i32 0, i32 1
  %.fca.2.gep269.i = getelementptr inbounds [8 x i32], ptr %agg.tmp146.i, i32 0, i32 2
  %.fca.3.gep272.i = getelementptr inbounds [8 x i32], ptr %agg.tmp146.i, i32 0, i32 3
  %.fca.4.gep275.i = getelementptr inbounds [8 x i32], ptr %agg.tmp146.i, i32 0, i32 4
  %.fca.5.gep278.i = getelementptr inbounds [8 x i32], ptr %agg.tmp146.i, i32 0, i32 5
  %.fca.6.gep281.i = getelementptr inbounds [8 x i32], ptr %agg.tmp146.i, i32 0, i32 6
  %.fca.7.gep284.i = getelementptr inbounds [8 x i32], ptr %agg.tmp146.i, i32 0, i32 7
  %.fca.1.gep237.i = getelementptr inbounds [8 x i32], ptr %agg.tmp183.i, i32 0, i32 1
  %.fca.2.gep240.i = getelementptr inbounds [8 x i32], ptr %agg.tmp183.i, i32 0, i32 2
  %.fca.3.gep243.i = getelementptr inbounds [8 x i32], ptr %agg.tmp183.i, i32 0, i32 3
  %.fca.4.gep246.i = getelementptr inbounds [8 x i32], ptr %agg.tmp183.i, i32 0, i32 4
  %.fca.5.gep249.i = getelementptr inbounds [8 x i32], ptr %agg.tmp183.i, i32 0, i32 5
  %.fca.6.gep252.i = getelementptr inbounds [8 x i32], ptr %agg.tmp183.i, i32 0, i32 6
  %.fca.7.gep255.i = getelementptr inbounds [8 x i32], ptr %agg.tmp183.i, i32 0, i32 7
  %.fca.1.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp186.i, i32 0, i32 1
  %.fca.2.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp186.i, i32 0, i32 2
  %.fca.3.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp186.i, i32 0, i32 3
  %.fca.4.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp186.i, i32 0, i32 4
  %.fca.5.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp186.i, i32 0, i32 5
  %.fca.6.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp186.i, i32 0, i32 6
  %.fca.7.gep.i = getelementptr inbounds [8 x i32], ptr %agg.tmp186.i, i32 0, i32 7
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %tmp89.sroa.0.i.4.i.4.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89.sroa.0.i, i32 4
  %tmp89.sroa.0.i.8.i.8.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89.sroa.0.i, i32 8
  %tmp89.sroa.0.i.12.i.12.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89.sroa.0.i, i32 12
  %tmp89.sroa.0.i.16.i.16.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89.sroa.0.i, i32 16
  %tmp89.sroa.0.i.20.i.20.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89.sroa.0.i, i32 20
  %tmp89.sroa.0.i.24.i.24.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89.sroa.0.i, i32 24
  %tmp89.sroa.0.i.28.i.28.tmp89.sroa_idx = getelementptr inbounds i8, ptr %tmp89.sroa.0.i, i32 28
  %tmp113.sroa.0.i.4.i.4.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113.sroa.0.i, i32 4
  %tmp113.sroa.0.i.8.i.8.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113.sroa.0.i, i32 8
  %tmp113.sroa.0.i.12.i.12.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113.sroa.0.i, i32 12
  %tmp113.sroa.0.i.16.i.16.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113.sroa.0.i, i32 16
  %tmp113.sroa.0.i.20.i.20.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113.sroa.0.i, i32 20
  %tmp113.sroa.0.i.24.i.24.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113.sroa.0.i, i32 24
  %tmp113.sroa.0.i.28.i.28.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113.sroa.0.i, i32 28
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %vecs.addr.0 = phi ptr [ %vecs, %if.end ], [ %vecs.addr.1, %do.cond.do.body_crit_edge ]
  %vec_seek.0 = phi i32 [ 0, %if.end ], [ %vec_seek.1, %do.cond.do.body_crit_edge ]
  %chipnum.0 = phi i32 [ %conv2, %if.end ], [ %chipnum.1, %do.cond.do.body_crit_edge ]
  %ofs.0 = phi i32 [ %conv6, %if.end ], [ %ofs.1, %do.cond.do.body_crit_edge ]
  %len.1 = phi i32 [ %add, %if.end ], [ %sub19, %do.cond.do.body_crit_edge ]
  %and = and i32 %ofs.0, %sub7
  %sub8 = sub i32 %shl, %and
  %22 = call i32 @llvm.umin.i32(i32 %sub8, i32 %len.1)
  %arrayidx13 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp25.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp41.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp44.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp55.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp61.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp64.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp92.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp139.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp146.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp168.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp183.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp186.i)
  %23 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status.i) #10
  %interleave.i = getelementptr inbounds %struct.cfi_private, ptr %24, i32 0, i32 2
  %25 = call ptr @memset(ptr %status.i, i32 255, i32 32)
  %26 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %interleave.i, align 4
  %cfiq.i = getelementptr inbounds %struct.cfi_private, ptr %24, i32 0, i32 8
  %28 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfiq.i, align 4
  %MaxBufWriteSize.i = getelementptr inbounds %struct.cfi_ident, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %MaxBufWriteSize.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %MaxBufWriteSize.i, align 1
  %conv.i = zext i16 %31 to i32
  %shl.i = shl i32 %27, %conv.i
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx13, align 4
  %add.i = add i32 %33, %ofs.0
  %neg.i = sub i32 0, %shl.i
  %and.i = and i32 %add.i, %neg.i
  %mfr.i.i = getelementptr inbounds %struct.cfi_private, ptr %24, i32 0, i32 9
  %34 = ptrtoint ptr %mfr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mfr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 176
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %do.body._crit_edge

do.body._crit_edge:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %39

land.lhs.true.i.i:                                ; preds = %do.body
  %id.i.i = getelementptr inbounds %struct.cfi_private, ptr %24, i32 0, i32 10
  %36 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i.i, align 4
  %38 = and i32 %37, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %38)
  %switch.i.i = icmp eq i32 %38, 176
  br i1 %switch.i.i, label %land.lhs.true.i.i.is_LH28F640BF.exit.i_crit_edge, label %land.lhs.true.i.i._crit_edge

land.lhs.true.i.i._crit_edge:                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %39

land.lhs.true.i.i.is_LH28F640BF.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_LH28F640BF.exit.i

39:                                               ; preds = %land.lhs.true.i.i._crit_edge, %do.body._crit_edge
  br label %is_LH28F640BF.exit.i

is_LH28F640BF.exit.i:                             ; preds = %39, %land.lhs.true.i.i.is_LH28F640BF.exit.i_crit_edge
  %40 = phi i32 [ %and.i, %39 ], [ %add.i, %land.lhs.true.i.i.is_LH28F640BF.exit.i_crit_edge ]
  %P_ID.i = getelementptr inbounds %struct.cfi_ident, ptr %29, i32 0, i32 1
  %41 = ptrtoint ptr %P_ID.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %P_ID.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %42)
  %cmp.not.i = icmp eq i16 %42, 512
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %is_LH28F640BF.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #10
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp.i, i32 noundef 232, ptr noundef %1, ptr noundef %24) #10
  %43 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %write_cmd.sroa.0.0.copyload.i = load i32, ptr %tmp.i, align 4
  %44 = ptrtoint ptr %write_cmd.sroa.6.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %write_cmd.sroa.6.0.copyload.i = load i32, ptr %write_cmd.sroa.6.0.tmp.sroa_idx.i, align 4
  %45 = ptrtoint ptr %write_cmd.sroa.8.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %write_cmd.sroa.8.0.copyload.i = load i32, ptr %write_cmd.sroa.8.0.tmp.sroa_idx.i, align 4
  %46 = ptrtoint ptr %write_cmd.sroa.10.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %write_cmd.sroa.10.0.copyload.i = load i32, ptr %write_cmd.sroa.10.0.tmp.sroa_idx.i, align 4
  %47 = ptrtoint ptr %write_cmd.sroa.12.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %write_cmd.sroa.12.0.copyload.i = load i32, ptr %write_cmd.sroa.12.0.tmp.sroa_idx.i, align 4
  %48 = ptrtoint ptr %write_cmd.sroa.14.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %write_cmd.sroa.14.0.copyload.i = load i32, ptr %write_cmd.sroa.14.0.tmp.sroa_idx.i, align 4
  %49 = ptrtoint ptr %write_cmd.sroa.16.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %write_cmd.sroa.16.0.copyload.i = load i32, ptr %write_cmd.sroa.16.0.tmp.sroa_idx.i, align 4
  %50 = ptrtoint ptr %write_cmd.sroa.18.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %write_cmd.sroa.18.0.copyload.i = load i32, ptr %write_cmd.sroa.18.0.tmp.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %is_LH28F640BF.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp4.i) #10
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp4.i, i32 noundef 233, ptr noundef %1, ptr noundef %24) #10
  %51 = ptrtoint ptr %tmp4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %write_cmd.sroa.0.0.copyload619.i = load i32, ptr %tmp4.i, align 4
  %52 = ptrtoint ptr %write_cmd.sroa.6.0.tmp4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %write_cmd.sroa.6.0.copyload620.i = load i32, ptr %write_cmd.sroa.6.0.tmp4.sroa_idx.i, align 4
  %53 = ptrtoint ptr %write_cmd.sroa.8.0.tmp4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %write_cmd.sroa.8.0.copyload621.i = load i32, ptr %write_cmd.sroa.8.0.tmp4.sroa_idx.i, align 4
  %54 = ptrtoint ptr %write_cmd.sroa.10.0.tmp4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %write_cmd.sroa.10.0.copyload622.i = load i32, ptr %write_cmd.sroa.10.0.tmp4.sroa_idx.i, align 4
  %55 = ptrtoint ptr %write_cmd.sroa.12.0.tmp4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %write_cmd.sroa.12.0.copyload623.i = load i32, ptr %write_cmd.sroa.12.0.tmp4.sroa_idx.i, align 4
  %56 = ptrtoint ptr %write_cmd.sroa.14.0.tmp4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %write_cmd.sroa.14.0.copyload624.i = load i32, ptr %write_cmd.sroa.14.0.tmp4.sroa_idx.i, align 4
  %57 = ptrtoint ptr %write_cmd.sroa.16.0.tmp4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %write_cmd.sroa.16.0.copyload625.i = load i32, ptr %write_cmd.sroa.16.0.tmp4.sroa_idx.i, align 4
  %58 = ptrtoint ptr %write_cmd.sroa.18.0.tmp4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %write_cmd.sroa.18.0.copyload626.i = load i32, ptr %write_cmd.sroa.18.0.tmp4.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp4.i) #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %write_cmd.sroa.10.0.i = phi i32 [ %write_cmd.sroa.10.0.copyload.i, %cond.true.i ], [ %write_cmd.sroa.10.0.copyload622.i, %cond.false.i ]
  %write_cmd.sroa.8.0.i = phi i32 [ %write_cmd.sroa.8.0.copyload.i, %cond.true.i ], [ %write_cmd.sroa.8.0.copyload621.i, %cond.false.i ]
  %write_cmd.sroa.6.0.i = phi i32 [ %write_cmd.sroa.6.0.copyload.i, %cond.true.i ], [ %write_cmd.sroa.6.0.copyload620.i, %cond.false.i ]
  %write_cmd.sroa.0.0.i = phi i32 [ %write_cmd.sroa.0.0.copyload.i, %cond.true.i ], [ %write_cmd.sroa.0.0.copyload619.i, %cond.false.i ]
  %write_cmd.sroa.12.0.i = phi i32 [ %write_cmd.sroa.12.0.copyload.i, %cond.true.i ], [ %write_cmd.sroa.12.0.copyload623.i, %cond.false.i ]
  %write_cmd.sroa.14.0.i = phi i32 [ %write_cmd.sroa.14.0.copyload.i, %cond.true.i ], [ %write_cmd.sroa.14.0.copyload624.i, %cond.false.i ]
  %write_cmd.sroa.16.0.i = phi i32 [ %write_cmd.sroa.16.0.copyload.i, %cond.true.i ], [ %write_cmd.sroa.16.0.copyload625.i, %cond.false.i ]
  %write_cmd.sroa.18.0.i = phi i32 [ %write_cmd.sroa.18.0.copyload.i, %cond.true.i ], [ %write_cmd.sroa.18.0.copyload626.i, %cond.false.i ]
  %mutex.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %call6.i = call fastcc i32 @get_chip(ptr noundef %1, ptr noundef %arrayidx13, i32 noundef %40, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i, label %do_write_buffer.exit.thread

do_write_buffer.exit.thread:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp25.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp41.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp44.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp55.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp61.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp64.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp92.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp139.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp146.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp168.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp183.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp186.i)
  br label %cleanup32

do.body.i:                                        ; preds = %cond.end.i
  %59 = ptrtoint ptr %set_vpp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_vpp.i, align 4
  %tobool11.not.i = icmp eq ptr %60, null
  br i1 %tobool11.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then12.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %60(ptr noundef %1, i32 noundef 1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %do.body.i.do.end.i_crit_edge
  %state.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0, i32 2
  %61 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp15.not.i = icmp eq i32 %62, 1
  br i1 %cmp15.not.i, label %do.end.i.if.end19.i_crit_edge, label %if.then17.i

do.end.i.if.end19.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then17.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp.i, i32 noundef 112, ptr noundef %1, ptr noundef %24) #10
  %65 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.0.load464.i = load i32, ptr %agg.tmp.i, align 4
  %.fca.0.insert465.i = insertvalue [8 x i32] poison, i32 %.fca.0.load464.i, 0
  %66 = ptrtoint ptr %.fca.1.gep466.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.1.load467.i = load i32, ptr %.fca.1.gep466.i, align 4
  %.fca.1.insert468.i = insertvalue [8 x i32] %.fca.0.insert465.i, i32 %.fca.1.load467.i, 1
  %67 = ptrtoint ptr %.fca.2.gep469.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.2.load470.i = load i32, ptr %.fca.2.gep469.i, align 4
  %.fca.2.insert471.i = insertvalue [8 x i32] %.fca.1.insert468.i, i32 %.fca.2.load470.i, 2
  %68 = ptrtoint ptr %.fca.3.gep472.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.3.load473.i = load i32, ptr %.fca.3.gep472.i, align 4
  %.fca.3.insert474.i = insertvalue [8 x i32] %.fca.2.insert471.i, i32 %.fca.3.load473.i, 3
  %69 = ptrtoint ptr %.fca.4.gep475.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.4.load476.i = load i32, ptr %.fca.4.gep475.i, align 4
  %.fca.4.insert477.i = insertvalue [8 x i32] %.fca.3.insert474.i, i32 %.fca.4.load476.i, 4
  %70 = ptrtoint ptr %.fca.5.gep478.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.5.load479.i = load i32, ptr %.fca.5.gep478.i, align 4
  %.fca.5.insert480.i = insertvalue [8 x i32] %.fca.4.insert477.i, i32 %.fca.5.load479.i, 5
  %71 = ptrtoint ptr %.fca.6.gep481.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.6.load482.i = load i32, ptr %.fca.6.gep481.i, align 4
  %.fca.6.insert483.i = insertvalue [8 x i32] %.fca.5.insert480.i, i32 %.fca.6.load482.i, 6
  %72 = ptrtoint ptr %.fca.7.gep484.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.fca.7.load485.i = load i32, ptr %.fca.7.gep484.i, align 4
  %.fca.7.insert486.i = insertvalue [8 x i32] %.fca.6.insert483.i, i32 %.fca.7.load485.i, 7
  call void %64(ptr noundef %1, [8 x i32] %.fca.7.insert486.i, i32 noundef %40) #10
  %73 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %state.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %do.end.i.if.end19.i_crit_edge
  %74 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read.i, align 4
  call void %75(ptr nonnull sret(%union.map_word) align 4 %status.i, ptr noundef %1, i32 noundef %40) #10
  %76 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bankwidth.i, align 4
  %add22823.i = add i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add22823.i)
  %cmp23825.not.i = icmp ult i32 %add22823.i, 4
  br i1 %cmp23825.not.i, label %if.end19.i.if.end46.i_crit_edge, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  br label %for.body.i

if.end19.i.if.end46.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0826.i, 1
  %78 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bankwidth.i, align 4
  %add22.i = add i32 %79, 3
  %div779.i = lshr i32 %add22.i, 2
  %cmp23.i = icmp ult i32 %inc.i, %div779.i
  br i1 %cmp23.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end46.i_crit_edge

for.cond.i.if.end46.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end19.i.for.body.i_crit_edge
  %i.0826.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end19.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i32], ptr %status.i, i32 0, i32 %i.0826.i
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp25.i, i32 noundef 48, ptr noundef %1, ptr noundef %24) #10
  %arrayidx26.i = getelementptr [8 x i32], ptr %tmp25.i, i32 0, i32 %i.0826.i
  %82 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx26.i, align 4
  %and27.i = and i32 %83, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %for.cond.i, label %do.end36.critedge.i

do.end36.critedge.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %status.i, align 4
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %85) #14
  %86 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp41.i, i32 noundef 80, ptr noundef %1, ptr noundef %24) #10
  %88 = ptrtoint ptr %agg.tmp41.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.fca.0.load437.i = load i32, ptr %agg.tmp41.i, align 4
  %.fca.0.insert438.i = insertvalue [8 x i32] poison, i32 %.fca.0.load437.i, 0
  %89 = ptrtoint ptr %.fca.1.gep439.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.fca.1.load440.i = load i32, ptr %.fca.1.gep439.i, align 4
  %.fca.1.insert441.i = insertvalue [8 x i32] %.fca.0.insert438.i, i32 %.fca.1.load440.i, 1
  %90 = ptrtoint ptr %.fca.2.gep442.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.fca.2.load443.i = load i32, ptr %.fca.2.gep442.i, align 4
  %.fca.2.insert444.i = insertvalue [8 x i32] %.fca.1.insert441.i, i32 %.fca.2.load443.i, 2
  %91 = ptrtoint ptr %.fca.3.gep445.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.fca.3.load446.i = load i32, ptr %.fca.3.gep445.i, align 4
  %.fca.3.insert447.i = insertvalue [8 x i32] %.fca.2.insert444.i, i32 %.fca.3.load446.i, 3
  %92 = ptrtoint ptr %.fca.4.gep448.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.fca.4.load449.i = load i32, ptr %.fca.4.gep448.i, align 4
  %.fca.4.insert450.i = insertvalue [8 x i32] %.fca.3.insert447.i, i32 %.fca.4.load449.i, 4
  %93 = ptrtoint ptr %.fca.5.gep451.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.fca.5.load452.i = load i32, ptr %.fca.5.gep451.i, align 4
  %.fca.5.insert453.i = insertvalue [8 x i32] %.fca.4.insert450.i, i32 %.fca.5.load452.i, 5
  %94 = ptrtoint ptr %.fca.6.gep454.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.fca.6.load455.i = load i32, ptr %.fca.6.gep454.i, align 4
  %.fca.6.insert456.i = insertvalue [8 x i32] %.fca.5.insert453.i, i32 %.fca.6.load455.i, 6
  %95 = ptrtoint ptr %.fca.7.gep457.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.fca.7.load458.i = load i32, ptr %.fca.7.gep457.i, align 4
  %.fca.7.insert459.i = insertvalue [8 x i32] %.fca.6.insert456.i, i32 %.fca.7.load458.i, 7
  call void %87(ptr noundef %1, [8 x i32] %.fca.7.insert459.i, i32 noundef %40) #10
  %96 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp44.i, i32 noundef 112, ptr noundef %1, ptr noundef %24) #10
  %98 = ptrtoint ptr %agg.tmp44.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.fca.0.load413.i = load i32, ptr %agg.tmp44.i, align 4
  %.fca.0.insert414.i = insertvalue [8 x i32] poison, i32 %.fca.0.load413.i, 0
  %99 = ptrtoint ptr %.fca.1.gep415.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.fca.1.load416.i = load i32, ptr %.fca.1.gep415.i, align 4
  %.fca.1.insert417.i = insertvalue [8 x i32] %.fca.0.insert414.i, i32 %.fca.1.load416.i, 1
  %100 = ptrtoint ptr %.fca.2.gep418.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %.fca.2.load419.i = load i32, ptr %.fca.2.gep418.i, align 4
  %.fca.2.insert420.i = insertvalue [8 x i32] %.fca.1.insert417.i, i32 %.fca.2.load419.i, 2
  %101 = ptrtoint ptr %.fca.3.gep421.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.fca.3.load422.i = load i32, ptr %.fca.3.gep421.i, align 4
  %.fca.3.insert423.i = insertvalue [8 x i32] %.fca.2.insert420.i, i32 %.fca.3.load422.i, 3
  %102 = ptrtoint ptr %.fca.4.gep424.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.fca.4.load425.i = load i32, ptr %.fca.4.gep424.i, align 4
  %.fca.4.insert426.i = insertvalue [8 x i32] %.fca.3.insert423.i, i32 %.fca.4.load425.i, 4
  %103 = ptrtoint ptr %.fca.5.gep427.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.fca.5.load428.i = load i32, ptr %.fca.5.gep427.i, align 4
  %.fca.5.insert429.i = insertvalue [8 x i32] %.fca.4.insert426.i, i32 %.fca.5.load428.i, 5
  %104 = ptrtoint ptr %.fca.6.gep430.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.fca.6.load431.i = load i32, ptr %.fca.6.gep430.i, align 4
  %.fca.6.insert432.i = insertvalue [8 x i32] %.fca.5.insert429.i, i32 %.fca.6.load431.i, 6
  %105 = ptrtoint ptr %.fca.7.gep433.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.fca.7.load434.i = load i32, ptr %.fca.7.gep433.i, align 4
  %.fca.7.insert435.i = insertvalue [8 x i32] %.fca.6.insert432.i, i32 %.fca.7.load434.i, 7
  call void %97(ptr noundef %1, [8 x i32] %.fca.7.insert435.i, i32 noundef %40) #10
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end36.critedge.i, %for.cond.i.if.end46.i_crit_edge, %if.end19.i.if.end46.i_crit_edge
  %106 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 8, ptr %state.i, align 4
  %107 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write.i, align 4
  %.fca.0.insert597.i = insertvalue [8 x i32] poison, i32 %write_cmd.sroa.0.0.i, 0
  %.fca.1.insert600.i = insertvalue [8 x i32] %.fca.0.insert597.i, i32 %write_cmd.sroa.6.0.i, 1
  %.fca.2.insert603.i = insertvalue [8 x i32] %.fca.1.insert600.i, i32 %write_cmd.sroa.8.0.i, 2
  %.fca.3.insert606.i = insertvalue [8 x i32] %.fca.2.insert603.i, i32 %write_cmd.sroa.10.0.i, 3
  %.fca.4.insert609.i = insertvalue [8 x i32] %.fca.3.insert606.i, i32 %write_cmd.sroa.12.0.i, 4
  %.fca.5.insert612.i = insertvalue [8 x i32] %.fca.4.insert609.i, i32 %write_cmd.sroa.14.0.i, 5
  %.fca.6.insert615.i = insertvalue [8 x i32] %.fca.5.insert612.i, i32 %write_cmd.sroa.16.0.i, 6
  %.fca.7.insert618.i = insertvalue [8 x i32] %.fca.6.insert615.i, i32 %write_cmd.sroa.18.0.i, 7
  call void %108(ptr noundef %1, [8 x i32] %.fca.7.insert618.i, i32 noundef %40) #10
  %call50.i = call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %1, ptr noundef %arrayidx13, i32 noundef %40, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end73.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %Xstatus.i) #10
  %109 = call ptr @memset(ptr %Xstatus.i, i32 255, i32 32)
  %110 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read.i, align 4
  call void %111(ptr nonnull sret(%union.map_word) align 4 %Xstatus.i, ptr noundef %1, i32 noundef %40) #10
  %112 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp55.i, i32 noundef 112, ptr noundef %1, ptr noundef %24) #10
  %114 = ptrtoint ptr %agg.tmp55.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.fca.0.load389.i = load i32, ptr %agg.tmp55.i, align 4
  %.fca.0.insert390.i = insertvalue [8 x i32] poison, i32 %.fca.0.load389.i, 0
  %115 = ptrtoint ptr %.fca.1.gep391.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.fca.1.load392.i = load i32, ptr %.fca.1.gep391.i, align 4
  %.fca.1.insert393.i = insertvalue [8 x i32] %.fca.0.insert390.i, i32 %.fca.1.load392.i, 1
  %116 = ptrtoint ptr %.fca.2.gep394.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.fca.2.load395.i = load i32, ptr %.fca.2.gep394.i, align 4
  %.fca.2.insert396.i = insertvalue [8 x i32] %.fca.1.insert393.i, i32 %.fca.2.load395.i, 2
  %117 = ptrtoint ptr %.fca.3.gep397.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.fca.3.load398.i = load i32, ptr %.fca.3.gep397.i, align 4
  %.fca.3.insert399.i = insertvalue [8 x i32] %.fca.2.insert396.i, i32 %.fca.3.load398.i, 3
  %118 = ptrtoint ptr %.fca.4.gep400.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.fca.4.load401.i = load i32, ptr %.fca.4.gep400.i, align 4
  %.fca.4.insert402.i = insertvalue [8 x i32] %.fca.3.insert399.i, i32 %.fca.4.load401.i, 4
  %119 = ptrtoint ptr %.fca.5.gep403.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.fca.5.load404.i = load i32, ptr %.fca.5.gep403.i, align 4
  %.fca.5.insert405.i = insertvalue [8 x i32] %.fca.4.insert402.i, i32 %.fca.5.load404.i, 5
  %120 = ptrtoint ptr %.fca.6.gep406.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.fca.6.load407.i = load i32, ptr %.fca.6.gep406.i, align 4
  %.fca.6.insert408.i = insertvalue [8 x i32] %.fca.5.insert405.i, i32 %.fca.6.load407.i, 6
  %121 = ptrtoint ptr %.fca.7.gep409.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %.fca.7.load410.i = load i32, ptr %.fca.7.gep409.i, align 4
  %.fca.7.insert411.i = insertvalue [8 x i32] %.fca.6.insert408.i, i32 %.fca.7.load410.i, 7
  call void %113(ptr noundef %1, [8 x i32] %.fca.7.insert411.i, i32 noundef %40) #10
  %122 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %state.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp58.i) #10
  %123 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read.i, align 4
  call void %124(ptr nonnull sret(%union.map_word) align 4 %tmp58.i, ptr noundef %1, i32 noundef %40) #10
  %125 = call ptr @memcpy(ptr %status.i, ptr %tmp58.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp58.i) #10
  %126 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp61.i, i32 noundef 80, ptr noundef %1, ptr noundef %24) #10
  %128 = ptrtoint ptr %agg.tmp61.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.fca.0.load365.i = load i32, ptr %agg.tmp61.i, align 4
  %.fca.0.insert366.i = insertvalue [8 x i32] poison, i32 %.fca.0.load365.i, 0
  %129 = ptrtoint ptr %.fca.1.gep367.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.fca.1.load368.i = load i32, ptr %.fca.1.gep367.i, align 4
  %.fca.1.insert369.i = insertvalue [8 x i32] %.fca.0.insert366.i, i32 %.fca.1.load368.i, 1
  %130 = ptrtoint ptr %.fca.2.gep370.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %.fca.2.load371.i = load i32, ptr %.fca.2.gep370.i, align 4
  %.fca.2.insert372.i = insertvalue [8 x i32] %.fca.1.insert369.i, i32 %.fca.2.load371.i, 2
  %131 = ptrtoint ptr %.fca.3.gep373.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.fca.3.load374.i = load i32, ptr %.fca.3.gep373.i, align 4
  %.fca.3.insert375.i = insertvalue [8 x i32] %.fca.2.insert372.i, i32 %.fca.3.load374.i, 3
  %132 = ptrtoint ptr %.fca.4.gep376.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %.fca.4.load377.i = load i32, ptr %.fca.4.gep376.i, align 4
  %.fca.4.insert378.i = insertvalue [8 x i32] %.fca.3.insert375.i, i32 %.fca.4.load377.i, 4
  %133 = ptrtoint ptr %.fca.5.gep379.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.fca.5.load380.i = load i32, ptr %.fca.5.gep379.i, align 4
  %.fca.5.insert381.i = insertvalue [8 x i32] %.fca.4.insert378.i, i32 %.fca.5.load380.i, 5
  %134 = ptrtoint ptr %.fca.6.gep382.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.fca.6.load383.i = load i32, ptr %.fca.6.gep382.i, align 4
  %.fca.6.insert384.i = insertvalue [8 x i32] %.fca.5.insert381.i, i32 %.fca.6.load383.i, 6
  %135 = ptrtoint ptr %.fca.7.gep385.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.fca.7.load386.i = load i32, ptr %.fca.7.gep385.i, align 4
  %.fca.7.insert387.i = insertvalue [8 x i32] %.fca.6.insert384.i, i32 %.fca.7.load386.i, 7
  call void %127(ptr noundef %1, [8 x i32] %.fca.7.insert387.i, i32 noundef %40) #10
  %136 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp64.i, i32 noundef 112, ptr noundef %1, ptr noundef %24) #10
  %138 = ptrtoint ptr %agg.tmp64.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.fca.0.load341.i = load i32, ptr %agg.tmp64.i, align 4
  %.fca.0.insert342.i = insertvalue [8 x i32] poison, i32 %.fca.0.load341.i, 0
  %139 = ptrtoint ptr %.fca.1.gep343.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %.fca.1.load344.i = load i32, ptr %.fca.1.gep343.i, align 4
  %.fca.1.insert345.i = insertvalue [8 x i32] %.fca.0.insert342.i, i32 %.fca.1.load344.i, 1
  %140 = ptrtoint ptr %.fca.2.gep346.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %.fca.2.load347.i = load i32, ptr %.fca.2.gep346.i, align 4
  %.fca.2.insert348.i = insertvalue [8 x i32] %.fca.1.insert345.i, i32 %.fca.2.load347.i, 2
  %141 = ptrtoint ptr %.fca.3.gep349.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %.fca.3.load350.i = load i32, ptr %.fca.3.gep349.i, align 4
  %.fca.3.insert351.i = insertvalue [8 x i32] %.fca.2.insert348.i, i32 %.fca.3.load350.i, 3
  %142 = ptrtoint ptr %.fca.4.gep352.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %.fca.4.load353.i = load i32, ptr %.fca.4.gep352.i, align 4
  %.fca.4.insert354.i = insertvalue [8 x i32] %.fca.3.insert351.i, i32 %.fca.4.load353.i, 4
  %143 = ptrtoint ptr %.fca.5.gep355.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.fca.5.load356.i = load i32, ptr %.fca.5.gep355.i, align 4
  %.fca.5.insert357.i = insertvalue [8 x i32] %.fca.4.insert354.i, i32 %.fca.5.load356.i, 5
  %144 = ptrtoint ptr %.fca.6.gep358.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %.fca.6.load359.i = load i32, ptr %.fca.6.gep358.i, align 4
  %.fca.6.insert360.i = insertvalue [8 x i32] %.fca.5.insert357.i, i32 %.fca.6.load359.i, 6
  %145 = ptrtoint ptr %.fca.7.gep361.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %.fca.7.load362.i = load i32, ptr %.fca.7.gep361.i, align 4
  %.fca.7.insert363.i = insertvalue [8 x i32] %.fca.6.insert360.i, i32 %.fca.7.load362.i, 7
  call void %137(ptr noundef %1, [8 x i32] %.fca.7.insert363.i, i32 noundef %40) #10
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %148 = ptrtoint ptr %Xstatus.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %Xstatus.i, align 4
  %150 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %status.i, align 4
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %147, i32 noundef %149, i32 noundef %151) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %Xstatus.i) #10
  br label %do.body212.i

if.end73.i:                                       ; preds = %if.end46.i
  %sub74.i = sub i32 0, %add.i
  %152 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bankwidth.i, align 4
  %sub76.i = add i32 %153, -1
  %and77.i = and i32 %sub76.i, %sub74.i
  %add80.i = add i32 %sub76.i, %22
  %sub81.i = sub i32 %add80.i, %and77.i
  %div83.i = sdiv i32 %sub81.i, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool84.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool84.not.i, label %if.then85.i, label %if.else.i

if.then85.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add i32 %div83.i, -1
  br label %if.end90.i

if.else.i:                                        ; preds = %if.end73.i
  %sub87.i = sub i32 %153, %and77.i
  %sub88.i = sub i32 %add.i, %sub87.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp89.sroa.0.i)
  %154 = call ptr @memset(ptr %tmp89.sroa.0.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %153)
  %cmp.i784.i = icmp slt i32 %153, 4
  br i1 %cmp.i784.i, label %if.then.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i = add nuw i32 %153, 3
  %div9.i.i = and i32 %add.i.i, -4
  %155 = call ptr @memset(ptr %tmp89.sroa.0.i, i32 255, i32 %div9.i.i)
  br label %map_word_ff.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = shl i32 %153, 3
  %notmask.i.i = shl nsw i32 -1, %mul.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %156 = ptrtoint ptr %tmp89.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %sub.i.i, ptr %tmp89.sroa.0.i, align 4, !alias.scope !228
  br label %map_word_ff.exit.i

map_word_ff.exit.i:                               ; preds = %if.then.i.i, %for.body.preheader.i.i
  %157 = ptrtoint ptr %tmp89.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %tmp89.sroa.0.i.0.tmp89.sroa.0.i.0.tmp89.sroa.0.0.tmp89.sroa.0.0.tmp89.sroa.0.0.datum.sroa.0.0.copyload.i = load i32, ptr %tmp89.sroa.0.i, align 4
  %158 = ptrtoint ptr %tmp89.sroa.0.i.4.i.4.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %158)
  %tmp89.sroa.0.i.4.tmp89.sroa.0.i.4.tmp89.sroa.0.4.tmp89.sroa.0.4.tmp89.sroa.0.4.datum.sroa.8.0.copyload.i = load i32, ptr %tmp89.sroa.0.i.4.i.4.tmp89.sroa_idx, align 4
  %159 = ptrtoint ptr %tmp89.sroa.0.i.8.i.8.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %159)
  %tmp89.sroa.0.i.8.tmp89.sroa.0.i.8.tmp89.sroa.0.8.tmp89.sroa.0.8.tmp89.sroa.0.8.datum.sroa.11.0.copyload.i = load i32, ptr %tmp89.sroa.0.i.8.i.8.tmp89.sroa_idx, align 4
  %160 = ptrtoint ptr %tmp89.sroa.0.i.12.i.12.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %160)
  %tmp89.sroa.0.i.12.tmp89.sroa.0.i.12.tmp89.sroa.0.12.tmp89.sroa.0.12.tmp89.sroa.0.12.datum.sroa.14.0.copyload.i = load i32, ptr %tmp89.sroa.0.i.12.i.12.tmp89.sroa_idx, align 4
  %161 = ptrtoint ptr %tmp89.sroa.0.i.16.i.16.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %161)
  %tmp89.sroa.0.i.16.tmp89.sroa.0.i.16.tmp89.sroa.0.16.tmp89.sroa.0.16.tmp89.sroa.0.16.datum.sroa.17.0.copyload.i = load i32, ptr %tmp89.sroa.0.i.16.i.16.tmp89.sroa_idx, align 4
  %162 = ptrtoint ptr %tmp89.sroa.0.i.20.i.20.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %162)
  %tmp89.sroa.0.i.20.tmp89.sroa.0.i.20.tmp89.sroa.0.20.tmp89.sroa.0.20.tmp89.sroa.0.20.datum.sroa.20.0.copyload.i = load i32, ptr %tmp89.sroa.0.i.20.i.20.tmp89.sroa_idx, align 4
  %163 = ptrtoint ptr %tmp89.sroa.0.i.24.i.24.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %163)
  %tmp89.sroa.0.i.24.tmp89.sroa.0.i.24.tmp89.sroa.0.24.tmp89.sroa.0.24.tmp89.sroa.0.24.datum.sroa.23.0.copyload.i = load i32, ptr %tmp89.sroa.0.i.24.i.24.tmp89.sroa_idx, align 4
  %164 = ptrtoint ptr %tmp89.sroa.0.i.28.i.28.tmp89.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %164)
  %tmp89.sroa.0.i.28.tmp89.sroa.0.i.28.tmp89.sroa.0.28.tmp89.sroa.0.28.tmp89.sroa.0.28.datum.sroa.26.0.copyload.i = load i32, ptr %tmp89.sroa.0.i.28.i.28.tmp89.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp89.sroa.0.i)
  br label %if.end90.i

if.end90.i:                                       ; preds = %map_word_ff.exit.i, %if.then85.i
  %datum.sroa.26.0.i = phi i32 [ %tmp89.sroa.0.i.28.tmp89.sroa.0.i.28.tmp89.sroa.0.28.tmp89.sroa.0.28.tmp89.sroa.0.28.datum.sroa.26.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.then85.i ]
  %datum.sroa.23.0.i = phi i32 [ %tmp89.sroa.0.i.24.tmp89.sroa.0.i.24.tmp89.sroa.0.24.tmp89.sroa.0.24.tmp89.sroa.0.24.datum.sroa.23.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.then85.i ]
  %datum.sroa.20.0.i = phi i32 [ %tmp89.sroa.0.i.20.tmp89.sroa.0.i.20.tmp89.sroa.0.20.tmp89.sroa.0.20.tmp89.sroa.0.20.datum.sroa.20.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.then85.i ]
  %datum.sroa.17.0.i = phi i32 [ %tmp89.sroa.0.i.16.tmp89.sroa.0.i.16.tmp89.sroa.0.16.tmp89.sroa.0.16.tmp89.sroa.0.16.datum.sroa.17.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.then85.i ]
  %datum.sroa.14.0.i = phi i32 [ %tmp89.sroa.0.i.12.tmp89.sroa.0.i.12.tmp89.sroa.0.12.tmp89.sroa.0.12.tmp89.sroa.0.12.datum.sroa.14.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.then85.i ]
  %datum.sroa.11.0.i = phi i32 [ %tmp89.sroa.0.i.8.tmp89.sroa.0.i.8.tmp89.sroa.0.8.tmp89.sroa.0.8.tmp89.sroa.0.8.datum.sroa.11.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.then85.i ]
  %datum.sroa.8.0.i = phi i32 [ %tmp89.sroa.0.i.4.tmp89.sroa.0.i.4.tmp89.sroa.0.4.tmp89.sroa.0.4.tmp89.sroa.0.4.datum.sroa.8.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.then85.i ]
  %datum.sroa.0.0.i = phi i32 [ %tmp89.sroa.0.i.0.tmp89.sroa.0.i.0.tmp89.sroa.0.0.tmp89.sroa.0.0.tmp89.sroa.0.0.datum.sroa.0.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.then85.i ]
  %word_gap.0.i = phi i32 [ %sub87.i, %map_word_ff.exit.i ], [ 0, %if.then85.i ]
  %words.0.i = phi i32 [ %div83.i, %map_word_ff.exit.i ], [ %dec.i, %if.then85.i ]
  %adr.addr.0.i = phi i32 [ %sub88.i, %map_word_ff.exit.i ], [ %add.i, %if.then85.i ]
  %165 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp92.i, i32 noundef %words.0.i, ptr noundef %1, ptr noundef %24) #10
  %167 = ptrtoint ptr %agg.tmp92.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %.fca.0.load317.i = load i32, ptr %agg.tmp92.i, align 4
  %.fca.0.insert318.i = insertvalue [8 x i32] poison, i32 %.fca.0.load317.i, 0
  %168 = ptrtoint ptr %.fca.1.gep319.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %.fca.1.load320.i = load i32, ptr %.fca.1.gep319.i, align 4
  %.fca.1.insert321.i = insertvalue [8 x i32] %.fca.0.insert318.i, i32 %.fca.1.load320.i, 1
  %169 = ptrtoint ptr %.fca.2.gep322.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %.fca.2.load323.i = load i32, ptr %.fca.2.gep322.i, align 4
  %.fca.2.insert324.i = insertvalue [8 x i32] %.fca.1.insert321.i, i32 %.fca.2.load323.i, 2
  %170 = ptrtoint ptr %.fca.3.gep325.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %.fca.3.load326.i = load i32, ptr %.fca.3.gep325.i, align 4
  %.fca.3.insert327.i = insertvalue [8 x i32] %.fca.2.insert324.i, i32 %.fca.3.load326.i, 3
  %171 = ptrtoint ptr %.fca.4.gep328.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %.fca.4.load329.i = load i32, ptr %.fca.4.gep328.i, align 4
  %.fca.4.insert330.i = insertvalue [8 x i32] %.fca.3.insert327.i, i32 %.fca.4.load329.i, 4
  %172 = ptrtoint ptr %.fca.5.gep331.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %.fca.5.load332.i = load i32, ptr %.fca.5.gep331.i, align 4
  %.fca.5.insert333.i = insertvalue [8 x i32] %.fca.4.insert330.i, i32 %.fca.5.load332.i, 5
  %173 = ptrtoint ptr %.fca.6.gep334.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %.fca.6.load335.i = load i32, ptr %.fca.6.gep334.i, align 4
  %.fca.6.insert336.i = insertvalue [8 x i32] %.fca.5.insert333.i, i32 %.fca.6.load335.i, 6
  %174 = ptrtoint ptr %.fca.7.gep337.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %.fca.7.load338.i = load i32, ptr %.fca.7.gep337.i, align 4
  %.fca.7.insert339.i = insertvalue [8 x i32] %.fca.6.insert336.i, i32 %.fca.7.load338.i, 7
  call void %166(ptr noundef %1, [8 x i32] %.fca.7.insert339.i, i32 noundef %40) #10
  br label %do.body94.i

do.body94.i:                                      ; preds = %if.end128.i.do.body94.i_crit_edge, %if.end90.i
  %datum.sroa.26.1.i = phi i32 [ %datum.sroa.26.0.i, %if.end90.i ], [ %tmp115.sroa.10.0.copyload.i, %if.end128.i.do.body94.i_crit_edge ]
  %datum.sroa.23.1.i = phi i32 [ %datum.sroa.23.0.i, %if.end90.i ], [ %tmp115.sroa.9.0.copyload.i, %if.end128.i.do.body94.i_crit_edge ]
  %datum.sroa.20.1.i = phi i32 [ %datum.sroa.20.0.i, %if.end90.i ], [ %tmp115.sroa.8.0.copyload.i, %if.end128.i.do.body94.i_crit_edge ]
  %datum.sroa.17.1.i = phi i32 [ %datum.sroa.17.0.i, %if.end90.i ], [ %tmp115.sroa.7.0.copyload.i, %if.end128.i.do.body94.i_crit_edge ]
  %datum.sroa.14.1.i = phi i32 [ %datum.sroa.14.0.i, %if.end90.i ], [ %tmp115.sroa.6.0.copyload.i, %if.end128.i.do.body94.i_crit_edge ]
  %datum.sroa.11.1.i = phi i32 [ %datum.sroa.11.0.i, %if.end90.i ], [ %tmp115.sroa.5.0.copyload.i, %if.end128.i.do.body94.i_crit_edge ]
  %datum.sroa.8.1.i = phi i32 [ %datum.sroa.8.0.i, %if.end90.i ], [ %tmp115.sroa.4.0.copyload.i, %if.end128.i.do.body94.i_crit_edge ]
  %datum.sroa.0.1.i = phi i32 [ %datum.sroa.0.0.i, %if.end90.i ], [ %tmp115.sroa.0.0.copyload.i, %if.end128.i.do.body94.i_crit_edge ]
  %word_gap.1.i = phi i32 [ %word_gap.0.i, %if.end90.i ], [ %word_gap.2.i, %if.end128.i.do.body94.i_crit_edge ]
  %vec.0.i = phi ptr [ %vecs.addr.0, %if.end90.i ], [ %spec.select782.i, %if.end128.i.do.body94.i_crit_edge ]
  %vec_seek.0.i = phi i32 [ %vec_seek.0, %if.end90.i ], [ %spec.select783.i, %if.end128.i.do.body94.i_crit_edge ]
  %len.addr.0.i = phi i32 [ %22, %if.end90.i ], [ %sub117.i, %if.end128.i.do.body94.i_crit_edge ]
  %adr.addr.1.i = phi i32 [ %adr.addr.0.i, %if.end90.i ], [ %adr.addr.2.i, %if.end128.i.do.body94.i_crit_edge ]
  %175 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %bankwidth.i, align 4
  %sub96.i = sub i32 %176, %word_gap.1.i
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %vec.0.i, i32 0, i32 1
  %177 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %iov_len.i, align 4
  %sub97.i = sub i32 %178, %vec_seek.0.i
  %179 = call i32 @llvm.umin.i32(i32 %sub96.i, i32 %sub97.i) #10
  %180 = call i32 @llvm.smin.i32(i32 %179, i32 %len.addr.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word_gap.1.i)
  %tobool108.not.i = icmp eq i32 %word_gap.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i, i32 %176)
  %cmp110.i = icmp slt i32 %len.addr.0.i, %176
  %or.cond.i = select i1 %tobool108.not.i, i1 %cmp110.i, i1 false
  br i1 %or.cond.i, label %if.then112.i, label %do.body94.i.if.end114.i_crit_edge

do.body94.i.if.end114.i_crit_edge:                ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114.i

if.then112.i:                                     ; preds = %do.body94.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp113.sroa.0.i)
  %181 = call ptr @memset(ptr %tmp113.sroa.0.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %176)
  %cmp.i787.i = icmp slt i32 %176, 4
  br i1 %cmp.i787.i, label %if.then.i794.i, label %for.body.preheader.i790.i

for.body.preheader.i790.i:                        ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i788.i = add nuw i32 %176, 3
  %div9.i789.i = and i32 %add.i788.i, -4
  %182 = call ptr @memset(ptr %tmp113.sroa.0.i, i32 255, i32 %div9.i789.i)
  br label %map_word_ff.exit796.i

if.then.i794.i:                                   ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i791.i = shl i32 %176, 3
  %notmask.i792.i = shl nsw i32 -1, %mul.i791.i
  %sub.i793.i = xor i32 %notmask.i792.i, -1
  %183 = ptrtoint ptr %tmp113.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %sub.i793.i, ptr %tmp113.sroa.0.i, align 4, !alias.scope !231
  br label %map_word_ff.exit796.i

map_word_ff.exit796.i:                            ; preds = %if.then.i794.i, %for.body.preheader.i790.i
  %184 = ptrtoint ptr %tmp113.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %tmp113.sroa.0.i.0.tmp113.sroa.0.i.0.tmp113.sroa.0.0.tmp113.sroa.0.0.tmp113.sroa.0.0.datum.sroa.0.0.copyload578.i = load i32, ptr %tmp113.sroa.0.i, align 4
  %185 = ptrtoint ptr %tmp113.sroa.0.i.4.i.4.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %185)
  %tmp113.sroa.0.i.4.tmp113.sroa.0.i.4.tmp113.sroa.0.4.tmp113.sroa.0.4.tmp113.sroa.0.4.datum.sroa.8.0.copyload580.i = load i32, ptr %tmp113.sroa.0.i.4.i.4.tmp113.sroa_idx, align 4
  %186 = ptrtoint ptr %tmp113.sroa.0.i.8.i.8.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %186)
  %tmp113.sroa.0.i.8.tmp113.sroa.0.i.8.tmp113.sroa.0.8.tmp113.sroa.0.8.tmp113.sroa.0.8.datum.sroa.11.0.copyload582.i = load i32, ptr %tmp113.sroa.0.i.8.i.8.tmp113.sroa_idx, align 4
  %187 = ptrtoint ptr %tmp113.sroa.0.i.12.i.12.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %187)
  %tmp113.sroa.0.i.12.tmp113.sroa.0.i.12.tmp113.sroa.0.12.tmp113.sroa.0.12.tmp113.sroa.0.12.datum.sroa.14.0.copyload584.i = load i32, ptr %tmp113.sroa.0.i.12.i.12.tmp113.sroa_idx, align 4
  %188 = ptrtoint ptr %tmp113.sroa.0.i.16.i.16.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %188)
  %tmp113.sroa.0.i.16.tmp113.sroa.0.i.16.tmp113.sroa.0.16.tmp113.sroa.0.16.tmp113.sroa.0.16.datum.sroa.17.0.copyload586.i = load i32, ptr %tmp113.sroa.0.i.16.i.16.tmp113.sroa_idx, align 4
  %189 = ptrtoint ptr %tmp113.sroa.0.i.20.i.20.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %189)
  %tmp113.sroa.0.i.20.tmp113.sroa.0.i.20.tmp113.sroa.0.20.tmp113.sroa.0.20.tmp113.sroa.0.20.datum.sroa.20.0.copyload588.i = load i32, ptr %tmp113.sroa.0.i.20.i.20.tmp113.sroa_idx, align 4
  %190 = ptrtoint ptr %tmp113.sroa.0.i.24.i.24.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %190)
  %tmp113.sroa.0.i.24.tmp113.sroa.0.i.24.tmp113.sroa.0.24.tmp113.sroa.0.24.tmp113.sroa.0.24.datum.sroa.23.0.copyload590.i = load i32, ptr %tmp113.sroa.0.i.24.i.24.tmp113.sroa_idx, align 4
  %191 = ptrtoint ptr %tmp113.sroa.0.i.28.i.28.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %191)
  %tmp113.sroa.0.i.28.tmp113.sroa.0.i.28.tmp113.sroa.0.28.tmp113.sroa.0.28.tmp113.sroa.0.28.datum.sroa.26.0.copyload592.i = load i32, ptr %tmp113.sroa.0.i.28.i.28.tmp113.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp113.sroa.0.i)
  br label %if.end114.i

if.end114.i:                                      ; preds = %map_word_ff.exit796.i, %do.body94.i.if.end114.i_crit_edge
  %datum.sroa.26.2.i = phi i32 [ %datum.sroa.26.1.i, %do.body94.i.if.end114.i_crit_edge ], [ %tmp113.sroa.0.i.28.tmp113.sroa.0.i.28.tmp113.sroa.0.28.tmp113.sroa.0.28.tmp113.sroa.0.28.datum.sroa.26.0.copyload592.i, %map_word_ff.exit796.i ]
  %datum.sroa.23.2.i = phi i32 [ %datum.sroa.23.1.i, %do.body94.i.if.end114.i_crit_edge ], [ %tmp113.sroa.0.i.24.tmp113.sroa.0.i.24.tmp113.sroa.0.24.tmp113.sroa.0.24.tmp113.sroa.0.24.datum.sroa.23.0.copyload590.i, %map_word_ff.exit796.i ]
  %datum.sroa.20.2.i = phi i32 [ %datum.sroa.20.1.i, %do.body94.i.if.end114.i_crit_edge ], [ %tmp113.sroa.0.i.20.tmp113.sroa.0.i.20.tmp113.sroa.0.20.tmp113.sroa.0.20.tmp113.sroa.0.20.datum.sroa.20.0.copyload588.i, %map_word_ff.exit796.i ]
  %datum.sroa.17.2.i = phi i32 [ %datum.sroa.17.1.i, %do.body94.i.if.end114.i_crit_edge ], [ %tmp113.sroa.0.i.16.tmp113.sroa.0.i.16.tmp113.sroa.0.16.tmp113.sroa.0.16.tmp113.sroa.0.16.datum.sroa.17.0.copyload586.i, %map_word_ff.exit796.i ]
  %datum.sroa.14.2.i = phi i32 [ %datum.sroa.14.1.i, %do.body94.i.if.end114.i_crit_edge ], [ %tmp113.sroa.0.i.12.tmp113.sroa.0.i.12.tmp113.sroa.0.12.tmp113.sroa.0.12.tmp113.sroa.0.12.datum.sroa.14.0.copyload584.i, %map_word_ff.exit796.i ]
  %datum.sroa.11.2.i = phi i32 [ %datum.sroa.11.1.i, %do.body94.i.if.end114.i_crit_edge ], [ %tmp113.sroa.0.i.8.tmp113.sroa.0.i.8.tmp113.sroa.0.8.tmp113.sroa.0.8.tmp113.sroa.0.8.datum.sroa.11.0.copyload582.i, %map_word_ff.exit796.i ]
  %datum.sroa.8.2.i = phi i32 [ %datum.sroa.8.1.i, %do.body94.i.if.end114.i_crit_edge ], [ %tmp113.sroa.0.i.4.tmp113.sroa.0.i.4.tmp113.sroa.0.4.tmp113.sroa.0.4.tmp113.sroa.0.4.datum.sroa.8.0.copyload580.i, %map_word_ff.exit796.i ]
  %datum.sroa.0.2.i = phi i32 [ %datum.sroa.0.1.i, %do.body94.i.if.end114.i_crit_edge ], [ %tmp113.sroa.0.i.0.tmp113.sroa.0.i.0.tmp113.sroa.0.0.tmp113.sroa.0.0.tmp113.sroa.0.0.datum.sroa.0.0.copyload578.i, %map_word_ff.exit796.i ]
  %192 = ptrtoint ptr %vec.0.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %vec.0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %193, i32 %vec_seek.0.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i.i) #10
  %194 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %datum.sroa.0.2.i, ptr %orig.i.i, align 4, !noalias !234
  %195 = ptrtoint ptr %orig.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %datum.sroa.8.2.i, ptr %orig.coerce.fca.1.gep.i.i, align 4, !noalias !234
  %196 = ptrtoint ptr %orig.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %datum.sroa.11.2.i, ptr %orig.coerce.fca.2.gep.i.i, align 4, !noalias !234
  %197 = ptrtoint ptr %orig.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %datum.sroa.14.2.i, ptr %orig.coerce.fca.3.gep.i.i, align 4, !noalias !234
  %198 = ptrtoint ptr %orig.coerce.fca.4.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %datum.sroa.17.2.i, ptr %orig.coerce.fca.4.gep.i.i, align 4, !noalias !234
  %199 = ptrtoint ptr %orig.coerce.fca.5.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %datum.sroa.20.2.i, ptr %orig.coerce.fca.5.gep.i.i, align 4, !noalias !234
  %200 = ptrtoint ptr %orig.coerce.fca.6.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %datum.sroa.23.2.i, ptr %orig.coerce.fca.6.gep.i.i, align 4, !noalias !234
  %201 = ptrtoint ptr %orig.coerce.fca.7.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %datum.sroa.26.2.i, ptr %orig.coerce.fca.7.gep.i.i, align 4, !noalias !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %176)
  %cmp.i798.i = icmp sgt i32 %176, 4
  br i1 %cmp.i798.i, label %if.then.i800.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end114.i
  %add.i799.i = add i32 %180, %word_gap.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i799.i, i32 %word_gap.1.i)
  %cmp119.i.i = icmp sgt i32 %add.i799.i, %word_gap.1.i
  br i1 %cmp119.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.if.end.loopexit.i.i_crit_edge

for.cond.preheader.i.i.if.end.loopexit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.loopexit.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

if.then.i800.i:                                   ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %orig.i.i, i32 %word_gap.1.i
  %202 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr.i, i32 %180)
  %.pre.i = add i32 %180, %word_gap.1.i
  br label %map_word_load_partial.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.021.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %word_gap.1.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %or1820.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %datum.sroa.0.2.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %203 = xor i32 %i.021.i.i, -1
  %sub3.i.i = add i32 %176, %203
  %mul.i801.i = shl i32 %sub3.i.i, 3
  %shl.i.i = shl i32 255, %mul.i801.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %or1820.i.i, %neg.i.i
  %sub4.i.i = sub i32 %i.021.i.i, %word_gap.1.i
  %arrayidx5.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub4.i.i
  %204 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx5.i.i, align 1, !noalias !234
  %conv.i.i = zext i8 %205 to i32
  %shl6.i.i = shl i32 %conv.i.i, %mul.i801.i
  %or.i.i = or i32 %shl6.i.i, %and.i.i
  %inc.i.i = add nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %add.i799.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.loopexit.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.if.end.loopexit.i.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.loopexit.i.i

if.end.loopexit.i.i:                              ; preds = %for.body.i.i.if.end.loopexit.i.i_crit_edge, %for.cond.preheader.i.i.if.end.loopexit.i.i_crit_edge
  %or18.lcssa.i.i = phi i32 [ %datum.sroa.0.2.i, %for.cond.preheader.i.i.if.end.loopexit.i.i_crit_edge ], [ %or.i.i, %for.body.i.i.if.end.loopexit.i.i_crit_edge ]
  %206 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or18.lcssa.i.i, ptr %orig.i.i, align 4, !noalias !234
  br label %map_word_load_partial.exit.i

map_word_load_partial.exit.i:                     ; preds = %if.end.loopexit.i.i, %if.then.i800.i
  %add118.pre-phi.i = phi i32 [ %.pre.i, %if.then.i800.i ], [ %add.i799.i, %if.end.loopexit.i.i ]
  %207 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %tmp115.sroa.0.0.copyload.i = load i32, ptr %orig.i.i, align 4
  %208 = ptrtoint ptr %orig.coerce.fca.1.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %tmp115.sroa.4.0.copyload.i = load i32, ptr %orig.coerce.fca.1.gep.i.i, align 4
  %209 = ptrtoint ptr %orig.coerce.fca.2.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %tmp115.sroa.5.0.copyload.i = load i32, ptr %orig.coerce.fca.2.gep.i.i, align 4
  %210 = ptrtoint ptr %orig.coerce.fca.3.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %tmp115.sroa.6.0.copyload.i = load i32, ptr %orig.coerce.fca.3.gep.i.i, align 4
  %211 = ptrtoint ptr %orig.coerce.fca.4.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %tmp115.sroa.7.0.copyload.i = load i32, ptr %orig.coerce.fca.4.gep.i.i, align 4
  %212 = ptrtoint ptr %orig.coerce.fca.5.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %tmp115.sroa.8.0.copyload.i = load i32, ptr %orig.coerce.fca.5.gep.i.i, align 4
  %213 = ptrtoint ptr %orig.coerce.fca.6.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %tmp115.sroa.9.0.copyload.i = load i32, ptr %orig.coerce.fca.6.gep.i.i, align 4
  %214 = ptrtoint ptr %orig.coerce.fca.7.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %tmp115.sroa.10.0.copyload.i = load i32, ptr %orig.coerce.fca.7.gep.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i.i) #10
  %sub117.i = sub i32 %len.addr.0.i, %180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub117.i)
  %tobool119.not.i = icmp eq i32 %sub117.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add118.pre-phi.i, i32 %176)
  %cmp121.i = icmp eq i32 %add118.pre-phi.i, %176
  %or.cond819.i = select i1 %tobool119.not.i, i1 true, i1 %cmp121.i
  br i1 %or.cond819.i, label %if.then123.i, label %map_word_load_partial.exit.i.if.end128.i_crit_edge

map_word_load_partial.exit.i.if.end128.i_crit_edge: ; preds = %map_word_load_partial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128.i

if.then123.i:                                     ; preds = %map_word_load_partial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %215 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %write.i, align 4
  %.fca.0.insert556.i = insertvalue [8 x i32] poison, i32 %tmp115.sroa.0.0.copyload.i, 0
  %.fca.1.insert559.i = insertvalue [8 x i32] %.fca.0.insert556.i, i32 %tmp115.sroa.4.0.copyload.i, 1
  %.fca.2.insert562.i = insertvalue [8 x i32] %.fca.1.insert559.i, i32 %tmp115.sroa.5.0.copyload.i, 2
  %.fca.3.insert565.i = insertvalue [8 x i32] %.fca.2.insert562.i, i32 %tmp115.sroa.6.0.copyload.i, 3
  %.fca.4.insert568.i = insertvalue [8 x i32] %.fca.3.insert565.i, i32 %tmp115.sroa.7.0.copyload.i, 4
  %.fca.5.insert571.i = insertvalue [8 x i32] %.fca.4.insert568.i, i32 %tmp115.sroa.8.0.copyload.i, 5
  %.fca.6.insert574.i = insertvalue [8 x i32] %.fca.5.insert571.i, i32 %tmp115.sroa.9.0.copyload.i, 6
  %.fca.7.insert577.i = insertvalue [8 x i32] %.fca.6.insert574.i, i32 %tmp115.sroa.10.0.copyload.i, 7
  call void %216(ptr noundef %1, [8 x i32] %.fca.7.insert577.i, i32 noundef %adr.addr.1.i) #10
  %217 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %bankwidth.i, align 4
  %add127.i = add i32 %218, %adr.addr.1.i
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then123.i, %map_word_load_partial.exit.i.if.end128.i_crit_edge
  %word_gap.2.i = phi i32 [ 0, %if.then123.i ], [ %add118.pre-phi.i, %map_word_load_partial.exit.i.if.end128.i_crit_edge ]
  %adr.addr.2.i = phi i32 [ %add127.i, %if.then123.i ], [ %adr.addr.1.i, %map_word_load_partial.exit.i.if.end128.i_crit_edge ]
  %add129.i = add i32 %180, %vec_seek.0.i
  %219 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %220)
  %cmp131.i = icmp eq i32 %add129.i, %220
  %spec.select782.idx.i = zext i1 %cmp131.i to i32
  %spec.select782.i = getelementptr %struct.kvec, ptr %vec.0.i, i32 %spec.select782.idx.i
  %spec.select783.i = select i1 %cmp131.i, i32 0, i32 %add129.i
  br i1 %tobool119.not.i, label %do.end137.i, label %if.end128.i.do.body94.i_crit_edge

if.end128.i.do.body94.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body94.i

do.end137.i:                                      ; preds = %if.end128.i
  %221 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp139.i, i32 noundef 208, ptr noundef %1, ptr noundef %24) #10
  %223 = ptrtoint ptr %agg.tmp139.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %.fca.0.load288.i = load i32, ptr %agg.tmp139.i, align 4
  %.fca.0.insert289.i = insertvalue [8 x i32] poison, i32 %.fca.0.load288.i, 0
  %224 = ptrtoint ptr %.fca.1.gep290.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %.fca.1.load291.i = load i32, ptr %.fca.1.gep290.i, align 4
  %.fca.1.insert292.i = insertvalue [8 x i32] %.fca.0.insert289.i, i32 %.fca.1.load291.i, 1
  %225 = ptrtoint ptr %.fca.2.gep293.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %.fca.2.load294.i = load i32, ptr %.fca.2.gep293.i, align 4
  %.fca.2.insert295.i = insertvalue [8 x i32] %.fca.1.insert292.i, i32 %.fca.2.load294.i, 2
  %226 = ptrtoint ptr %.fca.3.gep296.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %.fca.3.load297.i = load i32, ptr %.fca.3.gep296.i, align 4
  %.fca.3.insert298.i = insertvalue [8 x i32] %.fca.2.insert295.i, i32 %.fca.3.load297.i, 3
  %227 = ptrtoint ptr %.fca.4.gep299.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %.fca.4.load300.i = load i32, ptr %.fca.4.gep299.i, align 4
  %.fca.4.insert301.i = insertvalue [8 x i32] %.fca.3.insert298.i, i32 %.fca.4.load300.i, 4
  %228 = ptrtoint ptr %.fca.5.gep302.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %.fca.5.load303.i = load i32, ptr %.fca.5.gep302.i, align 4
  %.fca.5.insert304.i = insertvalue [8 x i32] %.fca.4.insert301.i, i32 %.fca.5.load303.i, 5
  %229 = ptrtoint ptr %.fca.6.gep305.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %.fca.6.load306.i = load i32, ptr %.fca.6.gep305.i, align 4
  %.fca.6.insert307.i = insertvalue [8 x i32] %.fca.5.insert304.i, i32 %.fca.6.load306.i, 6
  %230 = ptrtoint ptr %.fca.7.gep308.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %.fca.7.load309.i = load i32, ptr %.fca.7.gep308.i, align 4
  %.fca.7.insert310.i = insertvalue [8 x i32] %.fca.6.insert307.i, i32 %.fca.7.load309.i, 7
  call void %222(ptr noundef %1, [8 x i32] %.fca.7.insert310.i, i32 noundef %40) #10
  %231 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 7, ptr %state.i, align 4
  %buffer_write_time.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0, i32 10
  %232 = ptrtoint ptr %buffer_write_time.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %buffer_write_time.i, align 4
  %buffer_write_time_max.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0, i32 13
  %234 = ptrtoint ptr %buffer_write_time_max.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %buffer_write_time_max.i, align 4
  %call142.i = call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %1, ptr noundef %arrayidx13, i32 noundef %40, i32 noundef %add.i, i32 noundef %22, i32 noundef %233, i32 noundef %235) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %tobool143.not.i = icmp eq i32 %call142.i, 0
  br i1 %tobool143.not.i, label %if.end155.i, label %if.then144.i

if.then144.i:                                     ; preds = %do.end137.i
  call void @__sanitizer_cov_trace_pc() #12
  %236 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp146.i, i32 noundef 112, ptr noundef %1, ptr noundef %24) #10
  %238 = ptrtoint ptr %agg.tmp146.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %.fca.0.load264.i = load i32, ptr %agg.tmp146.i, align 4
  %.fca.0.insert265.i = insertvalue [8 x i32] poison, i32 %.fca.0.load264.i, 0
  %239 = ptrtoint ptr %.fca.1.gep266.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %.fca.1.load267.i = load i32, ptr %.fca.1.gep266.i, align 4
  %.fca.1.insert268.i = insertvalue [8 x i32] %.fca.0.insert265.i, i32 %.fca.1.load267.i, 1
  %240 = ptrtoint ptr %.fca.2.gep269.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %.fca.2.load270.i = load i32, ptr %.fca.2.gep269.i, align 4
  %.fca.2.insert271.i = insertvalue [8 x i32] %.fca.1.insert268.i, i32 %.fca.2.load270.i, 2
  %241 = ptrtoint ptr %.fca.3.gep272.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %.fca.3.load273.i = load i32, ptr %.fca.3.gep272.i, align 4
  %.fca.3.insert274.i = insertvalue [8 x i32] %.fca.2.insert271.i, i32 %.fca.3.load273.i, 3
  %242 = ptrtoint ptr %.fca.4.gep275.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %.fca.4.load276.i = load i32, ptr %.fca.4.gep275.i, align 4
  %.fca.4.insert277.i = insertvalue [8 x i32] %.fca.3.insert274.i, i32 %.fca.4.load276.i, 4
  %243 = ptrtoint ptr %.fca.5.gep278.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %.fca.5.load279.i = load i32, ptr %.fca.5.gep278.i, align 4
  %.fca.5.insert280.i = insertvalue [8 x i32] %.fca.4.insert277.i, i32 %.fca.5.load279.i, 5
  %244 = ptrtoint ptr %.fca.6.gep281.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %.fca.6.load282.i = load i32, ptr %.fca.6.gep281.i, align 4
  %.fca.6.insert283.i = insertvalue [8 x i32] %.fca.5.insert280.i, i32 %.fca.6.load282.i, 6
  %245 = ptrtoint ptr %.fca.7.gep284.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %.fca.7.load285.i = load i32, ptr %.fca.7.gep284.i, align 4
  %.fca.7.insert286.i = insertvalue [8 x i32] %.fca.6.insert283.i, i32 %.fca.7.load285.i, 7
  call void %237(ptr noundef %1, [8 x i32] %.fca.7.insert286.i, i32 noundef %40) #10
  %246 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 1, ptr %state.i, align 4
  %247 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %1, align 4
  %call154.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %248) #14
  br label %do.body212.i

if.end155.i:                                      ; preds = %do.end137.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp156.i) #10
  %249 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %read.i, align 4
  call void %250(ptr nonnull sret(%union.map_word) align 4 %tmp156.i, ptr noundef %1, i32 noundef %40) #10
  %251 = call ptr @memcpy(ptr %status.i, ptr %tmp156.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp156.i) #10
  %252 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %bankwidth.i, align 4
  %add162827.i = add i32 %253, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add162827.i)
  %cmp164829.not.i = icmp ult i32 %add162827.i, 4
  br i1 %cmp164829.not.i, label %if.end155.i.do.body212.i_crit_edge, label %if.end155.i.for.body166.i_crit_edge

if.end155.i.for.body166.i_crit_edge:              ; preds = %if.end155.i
  br label %for.body166.i

if.end155.i.do.body212.i_crit_edge:               ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body212.i

for.cond160.i:                                    ; preds = %for.body166.i
  %inc175.i = add nuw nsw i32 %i158.0830.i, 1
  %254 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %bankwidth.i, align 4
  %add162.i = add i32 %255, 3
  %div163780.i = lshr i32 %add162.i, 2
  %cmp164.i = icmp ult i32 %inc175.i, %div163780.i
  br i1 %cmp164.i, label %for.cond160.i.for.body166.i_crit_edge, label %for.cond160.i.do.body212.i_crit_edge

for.cond160.i.do.body212.i_crit_edge:             ; preds = %for.cond160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body212.i

for.cond160.i.for.body166.i_crit_edge:            ; preds = %for.cond160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body166.i

for.body166.i:                                    ; preds = %for.cond160.i.for.body166.i_crit_edge, %if.end155.i.for.body166.i_crit_edge
  %i158.0830.i = phi i32 [ %inc175.i, %for.cond160.i.for.body166.i_crit_edge ], [ 0, %if.end155.i.for.body166.i_crit_edge ]
  %arrayidx167.i = getelementptr [8 x i32], ptr %status.i, i32 0, i32 %i158.0830.i
  %256 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx167.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp168.i, i32 noundef 26, ptr noundef %1, ptr noundef %24) #10
  %arrayidx169.i = getelementptr [8 x i32], ptr %tmp168.i, i32 0, i32 %i158.0830.i
  %258 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx169.i, align 4
  %and170.i = and i32 %259, %257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  br i1 %tobool171.not.i, label %for.cond160.i, label %if.then179.critedge.i

if.then179.critedge.i:                            ; preds = %for.body166.i
  %260 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %.fca.0.load628.i = load i32, ptr %status.i, align 4
  %.fca.0.insert629.i = insertvalue [8 x i32] poison, i32 %.fca.0.load628.i, 0
  %261 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %261)
  %.fca.1.load631.i = load i32, ptr %15, align 4
  %.fca.1.insert632.i = insertvalue [8 x i32] %.fca.0.insert629.i, i32 %.fca.1.load631.i, 1
  %262 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %262)
  %.fca.2.load634.i = load i32, ptr %16, align 4
  %.fca.2.insert635.i = insertvalue [8 x i32] %.fca.1.insert632.i, i32 %.fca.2.load634.i, 2
  %263 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %263)
  %.fca.3.load637.i = load i32, ptr %17, align 4
  %.fca.3.insert638.i = insertvalue [8 x i32] %.fca.2.insert635.i, i32 %.fca.3.load637.i, 3
  %264 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %264)
  %.fca.4.load640.i = load i32, ptr %18, align 4
  %.fca.4.insert641.i = insertvalue [8 x i32] %.fca.3.insert638.i, i32 %.fca.4.load640.i, 4
  %265 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %265)
  %.fca.5.load643.i = load i32, ptr %19, align 4
  %.fca.5.insert644.i = insertvalue [8 x i32] %.fca.4.insert641.i, i32 %.fca.5.load643.i, 5
  %266 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %266)
  %.fca.6.load646.i = load i32, ptr %20, align 4
  %.fca.6.insert647.i = insertvalue [8 x i32] %.fca.5.insert644.i, i32 %.fca.6.load646.i, 6
  %267 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %267)
  %.fca.7.load649.i = load i32, ptr %21, align 4
  %.fca.7.insert650.i = insertvalue [8 x i32] %.fca.6.insert647.i, i32 %.fca.7.load649.i, 7
  %call181.i = call i32 @cfi_merge_status([8 x i32] %.fca.7.insert650.i, ptr noundef %1, ptr noundef %24) #10
  %268 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp183.i, i32 noundef 80, ptr noundef %1, ptr noundef %24) #10
  %270 = ptrtoint ptr %agg.tmp183.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %.fca.0.load235.i = load i32, ptr %agg.tmp183.i, align 4
  %.fca.0.insert236.i = insertvalue [8 x i32] poison, i32 %.fca.0.load235.i, 0
  %271 = ptrtoint ptr %.fca.1.gep237.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %.fca.1.load238.i = load i32, ptr %.fca.1.gep237.i, align 4
  %.fca.1.insert239.i = insertvalue [8 x i32] %.fca.0.insert236.i, i32 %.fca.1.load238.i, 1
  %272 = ptrtoint ptr %.fca.2.gep240.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %.fca.2.load241.i = load i32, ptr %.fca.2.gep240.i, align 4
  %.fca.2.insert242.i = insertvalue [8 x i32] %.fca.1.insert239.i, i32 %.fca.2.load241.i, 2
  %273 = ptrtoint ptr %.fca.3.gep243.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %.fca.3.load244.i = load i32, ptr %.fca.3.gep243.i, align 4
  %.fca.3.insert245.i = insertvalue [8 x i32] %.fca.2.insert242.i, i32 %.fca.3.load244.i, 3
  %274 = ptrtoint ptr %.fca.4.gep246.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %.fca.4.load247.i = load i32, ptr %.fca.4.gep246.i, align 4
  %.fca.4.insert248.i = insertvalue [8 x i32] %.fca.3.insert245.i, i32 %.fca.4.load247.i, 4
  %275 = ptrtoint ptr %.fca.5.gep249.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %.fca.5.load250.i = load i32, ptr %.fca.5.gep249.i, align 4
  %.fca.5.insert251.i = insertvalue [8 x i32] %.fca.4.insert248.i, i32 %.fca.5.load250.i, 5
  %276 = ptrtoint ptr %.fca.6.gep252.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %.fca.6.load253.i = load i32, ptr %.fca.6.gep252.i, align 4
  %.fca.6.insert254.i = insertvalue [8 x i32] %.fca.5.insert251.i, i32 %.fca.6.load253.i, 6
  %277 = ptrtoint ptr %.fca.7.gep255.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %.fca.7.load256.i = load i32, ptr %.fca.7.gep255.i, align 4
  %.fca.7.insert257.i = insertvalue [8 x i32] %.fca.6.insert254.i, i32 %.fca.7.load256.i, 7
  call void %269(ptr noundef %1, [8 x i32] %.fca.7.insert257.i, i32 noundef %40) #10
  %278 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp186.i, i32 noundef 112, ptr noundef %1, ptr noundef %24) #10
  %280 = ptrtoint ptr %agg.tmp186.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %.fca.0.load.i = load i32, ptr %agg.tmp186.i, align 4
  %.fca.0.insert.i = insertvalue [8 x i32] poison, i32 %.fca.0.load.i, 0
  %281 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [8 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %282 = ptrtoint ptr %.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %.fca.2.load.i = load i32, ptr %.fca.2.gep.i, align 4
  %.fca.2.insert.i = insertvalue [8 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  %283 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.3.insert.i = insertvalue [8 x i32] %.fca.2.insert.i, i32 %.fca.3.load.i, 3
  %284 = ptrtoint ptr %.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %.fca.4.load.i = load i32, ptr %.fca.4.gep.i, align 4
  %.fca.4.insert.i = insertvalue [8 x i32] %.fca.3.insert.i, i32 %.fca.4.load.i, 4
  %285 = ptrtoint ptr %.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %.fca.5.load.i = load i32, ptr %.fca.5.gep.i, align 4
  %.fca.5.insert.i = insertvalue [8 x i32] %.fca.4.insert.i, i32 %.fca.5.load.i, 5
  %286 = ptrtoint ptr %.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %.fca.6.load.i = load i32, ptr %.fca.6.gep.i, align 4
  %.fca.6.insert.i = insertvalue [8 x i32] %.fca.5.insert.i, i32 %.fca.6.load.i, 6
  %287 = ptrtoint ptr %.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %.fca.7.load.i = load i32, ptr %.fca.7.gep.i, align 4
  %.fca.7.insert.i = insertvalue [8 x i32] %.fca.6.insert.i, i32 %.fca.7.load.i, 7
  call void %279(ptr noundef %1, [8 x i32] %.fca.7.insert.i, i32 noundef %40) #10
  %and188.i = and i32 %call181.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188.i)
  %tobool189.not.i = icmp eq i32 %and188.i, 0
  br i1 %tobool189.not.i, label %if.else191.i, label %if.then179.critedge.i.do.body212.i_crit_edge

if.then179.critedge.i.do.body212.i_crit_edge:     ; preds = %if.then179.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body212.i

if.else191.i:                                     ; preds = %if.then179.critedge.i
  %and192.i = and i32 %call181.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i)
  %tobool193.not.i = icmp eq i32 %and192.i, 0
  %288 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %1, align 4
  br i1 %tobool193.not.i, label %do.end204.i, label %do.end197.i

do.end197.i:                                      ; preds = %if.else191.i
  call void @__sanitizer_cov_trace_pc() #12
  %call200.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %289) #14
  br label %do.body212.i

do.end204.i:                                      ; preds = %if.else191.i
  call void @__sanitizer_cov_trace_pc() #12
  %call207.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %289, i32 noundef %call181.i) #14
  br label %do.body212.i

do.body212.i:                                     ; preds = %do.end204.i, %do.end197.i, %if.then179.critedge.i.do.body212.i_crit_edge, %for.cond160.i.do.body212.i_crit_edge, %if.end155.i.do.body212.i_crit_edge, %if.then144.i, %if.then52.i
  %vecs.addr.1 = phi ptr [ %spec.select782.i, %if.end155.i.do.body212.i_crit_edge ], [ %spec.select782.i, %do.end204.i ], [ %spec.select782.i, %do.end197.i ], [ %spec.select782.i, %if.then179.critedge.i.do.body212.i_crit_edge ], [ %spec.select782.i, %if.then144.i ], [ %vecs.addr.0, %if.then52.i ], [ %spec.select782.i, %for.cond160.i.do.body212.i_crit_edge ]
  %vec_seek.1 = phi i32 [ %spec.select783.i, %if.end155.i.do.body212.i_crit_edge ], [ %spec.select783.i, %do.end204.i ], [ %spec.select783.i, %do.end197.i ], [ %spec.select783.i, %if.then179.critedge.i.do.body212.i_crit_edge ], [ %spec.select783.i, %if.then144.i ], [ %vec_seek.0, %if.then52.i ], [ %spec.select783.i, %for.cond160.i.do.body212.i_crit_edge ]
  %ret.1.i = phi i32 [ 0, %if.end155.i.do.body212.i_crit_edge ], [ -22, %do.end204.i ], [ -5, %do.end197.i ], [ -30, %if.then179.critedge.i.do.body212.i_crit_edge ], [ %call142.i, %if.then144.i ], [ %call50.i, %if.then52.i ], [ 0, %for.cond160.i.do.body212.i_crit_edge ]
  %290 = ptrtoint ptr %set_vpp.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %set_vpp.i, align 4
  %tobool214.not.i = icmp eq ptr %291, null
  br i1 %tobool214.not.i, label %do.body212.i.do_write_buffer.exit_crit_edge, label %if.then215.i

do.body212.i.do_write_buffer.exit_crit_edge:      ; preds = %do.body212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_write_buffer.exit

if.then215.i:                                     ; preds = %do.body212.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %291(ptr noundef %1, i32 noundef 0) #10
  br label %do_write_buffer.exit

do_write_buffer.exit:                             ; preds = %if.then215.i, %do.body212.i.do_write_buffer.exit_crit_edge
  call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx13) #10
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp25.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp41.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp44.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp55.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp61.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp64.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp92.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp139.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp146.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp168.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp183.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp186.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool14.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool14.not, label %if.end16, label %do_write_buffer.exit.cleanup32_crit_edge

do_write_buffer.exit.cleanup32_crit_edge:         ; preds = %do_write_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.end16:                                         ; preds = %do_write_buffer.exit
  %add17 = add i32 %22, %ofs.0
  %292 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %retlen, align 4
  %add18 = add i32 %293, %22
  store i32 %add18, ptr %retlen, align 4
  %sub19 = sub i32 %len.1, %22
  %294 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %chipshift, align 4
  %shr21 = lshr i32 %add17, %295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr21)
  %tobool22.not = icmp eq i32 %shr21, 0
  br i1 %tobool22.not, label %if.end16.do.cond_crit_edge, label %if.then23

if.end16.do.cond_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then23:                                        ; preds = %if.end16
  %inc24 = add i32 %chipnum.0, 1
  %296 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc24, i32 %297)
  %cmp25 = icmp eq i32 %inc24, %297
  br i1 %cmp25, label %if.then23.cleanup32_crit_edge, label %if.then23.do.cond_crit_edge

if.then23.do.cond_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then23.cleanup32_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

do.cond:                                          ; preds = %if.then23.do.cond_crit_edge, %if.end16.do.cond_crit_edge
  %chipnum.1 = phi i32 [ %inc24, %if.then23.do.cond_crit_edge ], [ %chipnum.0, %if.end16.do.cond_crit_edge ]
  %ofs.1 = phi i32 [ 0, %if.then23.do.cond_crit_edge ], [ %add17, %if.end16.do.cond_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1917, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  %tobool31.not = icmp eq i32 %sub19, 0
  br i1 %tobool31.not, label %do.cond.cleanup32_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond.cleanup32_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

cleanup32:                                        ; preds = %do.cond.cleanup32_crit_edge, %if.then23.cleanup32_crit_edge, %do_write_buffer.exit.cleanup32_crit_edge, %do_write_buffer.exit.thread, %for.end.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.2 = phi i32 [ 0, %for.end.cleanup32_crit_edge ], [ %call6.i, %do_write_buffer.exit.thread ], [ 0, %entry.cleanup32_crit_edge ], [ %ret.1.i, %do_write_buffer.exit.cleanup32_crit_edge ], [ 0, %if.then23.cleanup32_crit_edge ], [ 0, %do.cond.cleanup32_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_build_cmd(ptr sret(%union.map_word) align 4, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %mode) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !200) #10
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
  %priv = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 15
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %mutex18 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp38 = icmp eq i32 %mode, 4
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  br label %retry

retry:                                            ; preds = %retry.backedge, %entry
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %retry.if.end121_crit_edge, label %land.lhs.true

retry.if.end121_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

land.lhs.true:                                    ; preds = %retry
  %15 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %mode, label %land.lhs.true.if.end121_crit_edge [
    i32 7, label %land.lhs.true.land.lhs.true7_crit_edge
    i32 4, label %land.lhs.true.land.lhs.true7_crit_edge183
    i32 9, label %land.lhs.true.land.lhs.true7_crit_edge184
    i32 20, label %land.lhs.true.land.lhs.true7_crit_edge185
  ]

land.lhs.true.land.lhs.true7_crit_edge185:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true7

land.lhs.true.land.lhs.true7_crit_edge184:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true7

land.lhs.true.land.lhs.true7_crit_edge183:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true7

land.lhs.true.land.lhs.true7_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true7

land.lhs.true.if.end121_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

land.lhs.true7:                                   ; preds = %land.lhs.true.land.lhs.true7_crit_edge, %land.lhs.true.land.lhs.true7_crit_edge183, %land.lhs.true.land.lhs.true7_crit_edge184, %land.lhs.true.land.lhs.true7_crit_edge185
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %17)
  %cmp8.not = icmp eq i32 %17, 13
  br i1 %cmp8.not, label %land.lhs.true7.if.end121_crit_edge, label %if.then

land.lhs.true7.if.end121_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then:                                          ; preds = %land.lhs.true7
  call void @mutex_lock_nested(ptr noundef nonnull %14, i32 noundef 0) #10
  %writing = getelementptr inbounds %struct.flchip_shared, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %writing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %writing, align 4
  %tobool10.not = icmp eq ptr %19, null
  %cmp12.not = icmp eq ptr %19, %chip
  %or.cond = or i1 %tobool10.not, %cmp12.not
  br i1 %or.cond, label %if.then.if.end37_crit_edge, label %if.then13

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then13:                                        ; preds = %if.then
  %mutex = getelementptr inbounds %struct.flchip, ptr %19, i32 0, i32 7
  %call14 = call i32 @mutex_trylock(ptr noundef %mutex) #10
  call void @mutex_unlock(ptr noundef nonnull %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.then13.retry.backedge_crit_edge, label %if.end

if.then13.retry.backedge_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.backedge

if.end:                                           ; preds = %if.then13
  call void @mutex_unlock(ptr noundef %mutex18) #10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %call19 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef nonnull %19, i32 noundef %21, i32 noundef %mode)
  call void @mutex_lock_nested(ptr noundef %mutex18, i32 noundef 0) #10
  %22 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call19, label %cleanup.thread [
    i32 -11, label %if.then22
    i32 0, label %if.end28
  ]

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end121.retry.backedge_crit_edge, %__here, %if.then32, %if.then22, %if.then13.retry.backedge_crit_edge
  br label %retry

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup126

if.end28:                                         ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull %14, i32 noundef 0) #10
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %24)
  %cmp31 = icmp eq i32 %24, 13
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @put_chip(ptr noundef %map, ptr noundef nonnull %19)
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %retry.backedge

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.then.if.end37_crit_edge
  br i1 %cmp38, label %land.lhs.true39, label %if.end37.cleanup.thread180_crit_edge

if.end37.cleanup.thread180_crit_edge:             ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread180

land.lhs.true39:                                  ; preds = %if.end37
  %erasing = getelementptr inbounds %struct.flchip_shared, ptr %14, i32 0, i32 2
  %25 = ptrtoint ptr %erasing to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %erasing, align 4
  %tobool40.not = icmp eq ptr %26, null
  br i1 %tobool40.not, label %land.lhs.true39.if.then116_crit_edge, label %land.lhs.true41

land.lhs.true39.if.then116_crit_edge:             ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %oldstate = getelementptr inbounds %struct.flchip, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %oldstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp43 = icmp eq i32 %28, 4
  br i1 %cmp43, label %if.then44, label %land.lhs.true41.if.then116_crit_edge

land.lhs.true41.if.then116_crit_edge:             ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116

if.then44:                                        ; preds = %land.lhs.true41
  call void @mutex_unlock(ptr noundef nonnull %14) #10
  br label %__here

__here:                                           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 212
  %31 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 ptrtoint (ptr blockaddress(@get_chip, %__here) to i32), ptr %task_state_change, align 4
  %32 = load ptr, ptr %task, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 2, ptr %32, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !237
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex18) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_lock_nested(ptr noundef %mutex18, i32 noundef 0) #10
  br label %retry.backedge

if.then116:                                       ; preds = %land.lhs.true41.if.then116_crit_edge, %land.lhs.true39.if.then116_crit_edge
  %34 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %chip, ptr %writing, align 4
  br label %cleanup.thread180

cleanup.thread180:                                ; preds = %if.then116, %if.end37.cleanup.thread180_crit_edge
  %erasing.sink = phi ptr [ %erasing, %if.then116 ], [ %writing, %if.end37.cleanup.thread180_crit_edge ]
  %35 = ptrtoint ptr %erasing.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %chip, ptr %erasing.sink, align 4
  call void @mutex_unlock(ptr noundef nonnull %14) #10
  br label %if.end121

if.end121:                                        ; preds = %cleanup.thread180, %land.lhs.true7.if.end121_crit_edge, %land.lhs.true.if.end121_crit_edge, %retry.if.end121_crit_edge
  %call122 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call122)
  %cmp123 = icmp eq i32 %call122, -11
  br i1 %cmp123, label %if.end121.retry.backedge_crit_edge, label %if.end121.cleanup126_crit_edge

if.end121.cleanup126_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup126

if.end121.retry.backedge_crit_edge:               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.backedge

cleanup126:                                       ; preds = %if.end121.cleanup126_crit_edge, %cleanup.thread
  %retval.3 = phi i32 [ %call19, %cleanup.thread ], [ %call122, %if.end121.cleanup126_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %map, ptr noundef %chip, i32 noundef %cmd_adr, i32 noundef %inval_adr, i32 noundef %inval_len, i32 noundef %chip_op_time, i32 noundef %chip_op_time_max) #0 align 64 {
entry:
  %status = alloca %union.map_word, align 4
  %status_OK = alloca %union.map_word, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #10
  %2 = call ptr @memset(ptr %status, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status_OK) #10
  %3 = call ptr @memset(ptr %status_OK, i32 255, i32 32)
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %status_OK, i32 noundef 128, ptr noundef %map, ptr noundef %1) #10
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inval_len)
  %tobool.not = icmp eq i32 %inval_len, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %do.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.body:                                          ; preds = %entry
  %inval_cache = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 11
  %6 = ptrtoint ptr %inval_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inval_cache, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %do.body.if.end4_crit_edge, label %if.then2

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void %7(ptr noundef %map, i32 noundef %inval_adr, i32 noundef %inval_len) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %do.body.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip_op_time_max)
  %tobool6.not = icmp eq i32 %chip_op_time_max, 0
  %spec.store.select = select i1 %tobool6.not, i32 500000, i32 %chip_op_time_max
  %div179 = lshr i32 %chip_op_time, 1
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %erase_suspended = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp97 = icmp eq i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp108 = icmp eq i32 %5, 7
  %12 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end125, %if.end4
  %sleep_time.0.ph = phi i32 [ %sleep_time.1, %if.end125 ], [ %div179, %if.end4 ]
  %timeo.0.ph = phi i32 [ %timeo.3, %if.end125 ], [ %spec.store.select, %if.end4 ]
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %5)
  %cmp.not190 = icmp eq i32 %14, %5
  br i1 %cmp.not190, label %for.cond.outer.if.end82_crit_edge, label %for.cond.outer.if.then10_crit_edge

for.cond.outer.if.then10_crit_edge:               ; preds = %for.cond.outer
  br label %if.then10

for.cond.outer.if.end82_crit_edge:                ; preds = %for.cond.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then10:                                        ; preds = %__here.if.then10_crit_edge, %for.cond.outer.if.then10_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %15 = call ptr @memset(ptr %12, i32 255, i32 16)
  %16 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wait, align 4
  %17 = call i32 @llvm.read_register.i32(metadata !200) #10
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %8, align 4
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @default_wake_function, ptr %9, align 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %10, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %11, align 4
  br label %__here

__here:                                           ; preds = %if.then10
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@inval_cache_and_wait_for_operation, %__here) to i32), ptr %task_state_change, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 2, ptr %28, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !238
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  %cmp.not = icmp eq i32 %31, %5
  br i1 %cmp.not, label %__here.if.end82_crit_edge, label %__here.if.then10_crit_edge

__here.if.then10_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

__here.if.end82_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end82:                                         ; preds = %__here.if.end82_crit_edge, %for.cond.outer.if.end82_crit_edge
  %32 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read, align 4
  call void %33(ptr nonnull sret(%union.map_word) align 4 %status, ptr noundef %map, i32 noundef %cmd_adr) #10
  %34 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bankwidth, align 4
  %add = add i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp86191.not = icmp ult i32 %add, 4
  br i1 %cmp86191.not, label %if.end82.cleanup_crit_edge, label %for.body.preheader

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %if.end82
  %div85180 = lshr i32 %add, 2
  br label %for.body

for.cond84:                                       ; preds = %for.body
  %inc = add nuw nsw i32 %i.0192, 1
  %exitcond.not = icmp eq i32 %inc, %div85180
  br i1 %exitcond.not, label %for.cond84.cleanup_crit_edge, label %for.cond84.for.body_crit_edge

for.cond84.for.body_crit_edge:                    ; preds = %for.cond84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond84.cleanup_crit_edge:                     ; preds = %for.cond84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond84.for.body_crit_edge, %for.body.preheader
  %i.0192 = phi i32 [ %inc, %for.cond84.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0192
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %arrayidx87 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i.0192
  %38 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx87, align 4
  %and = and i32 %39, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %39)
  %cmp89.not = icmp eq i32 %and, %39
  br i1 %cmp89.not, label %for.cond84, label %if.end95.critedge

if.end95.critedge:                                ; preds = %for.body
  %40 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %erase_suspended, align 4
  %41 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool96.not = icmp ne i8 %41, 0
  %or.cond = select i1 %tobool96.not, i1 %cmp97, i1 false
  br i1 %or.cond, label %if.end102.thread, label %if.end102

if.end102.thread:                                 ; preds = %if.end95.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear101 = and i8 %bf.load, -65
  br label %if.end118.sink.split

if.end102:                                        ; preds = %if.end95.critedge
  %42 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load103 = load i8, ptr %erase_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load103)
  %tobool106.not = icmp slt i8 %bf.load103, 0
  %or.cond181 = select i1 %tobool106.not, i1 %cmp108, i1 false
  br i1 %or.cond181, label %if.then109, label %if.end114

if.then109:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear112 = and i8 %bf.load103, 127
  br label %if.end118.sink.split

if.end114:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0.ph)
  %tobool115.not = icmp eq i32 %timeo.0.ph, 0
  br i1 %tobool115.not, label %if.then116, label %if.end114.if.end118_crit_edge

if.end114.if.end118_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %43 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %45 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %46 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %47 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %48 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %48)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %49 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %50 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %51 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %52 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %44(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %cmd_adr) #10
  br label %cleanup

if.end118.sink.split:                             ; preds = %if.then109, %if.end102.thread
  %bf.clear101.sink = phi i8 [ %bf.clear101, %if.end102.thread ], [ %bf.clear112, %if.then109 ]
  %53 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %bf.clear101.sink, ptr %erase_suspended, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end118.sink.split, %if.end114.if.end118_crit_edge
  %timeo.2189 = phi i32 [ %timeo.0.ph, %if.end114.if.end118_crit_edge ], [ %spec.store.select, %if.end118.sink.split ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %sleep_time.0.ph)
  %cmp120 = icmp ugt i32 %sleep_time.0.ph, 9999
  br i1 %cmp120, label %if.then121, label %if.else

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %div122 = udiv i32 %sleep_time.0.ph, 1000
  call void @msleep(i32 noundef %div122) #10
  %sub = sub i32 %timeo.2189, %sleep_time.0.ph
  br label %if.end125

if.else:                                          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748) #10
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1339, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  %dec = add i32 %timeo.2189, -1
  br label %if.end125

if.end125:                                        ; preds = %if.else, %if.then121
  %sleep_time.1 = phi i32 [ 10000, %if.then121 ], [ %sleep_time.0.ph, %if.else ]
  %timeo.3 = phi i32 [ %sub, %if.then121 ], [ %dec, %if.else ]
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br label %for.cond.outer

cleanup:                                          ; preds = %if.then116, %for.cond84.cleanup_crit_edge, %if.end82.cleanup_crit_edge
  %retval.0 = phi i32 [ -62, %if.then116 ], [ 0, %for.cond84.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ]
  %55 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %state, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status_OK) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_merge_status([8 x i32], ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_chip(ptr noundef %map, ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp32 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %priv = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull %3, i32 noundef 0) #10
  %writing = getelementptr inbounds %struct.flchip_shared, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %writing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %writing, align 4
  %cmp = icmp eq ptr %5, %chip
  br i1 %cmp, label %land.lhs.true, label %if.else.thread

land.lhs.true:                                    ; preds = %if.then
  %oldstate = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %6 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oldstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then3:                                         ; preds = %land.lhs.true
  %erasing = getelementptr inbounds %struct.flchip_shared, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %erasing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %erasing, align 4
  %10 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %writing, align 4
  %tobool6.not = icmp eq ptr %9, null
  %cmp9.not = icmp eq ptr %9, %chip
  %or.cond = or i1 %tobool6.not, %cmp9.not
  br i1 %or.cond, label %if.end, label %if.then10

common.ret:                                       ; preds = %sw.epilog, %if.then23, %if.then10
  ret void

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.flchip, ptr %9, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef nonnull %3) #10
  %mutex13 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %mutex13) #10
  tail call fastcc void @put_chip(ptr noundef %map, ptr noundef nonnull %9)
  tail call void @mutex_lock_nested(ptr noundef %mutex13, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %common.ret

if.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %erasing to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %erasing, align 4
  %12 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %writing, align 4
  br label %if.end27

if.else.thread:                                   ; preds = %if.then
  %erasing181 = getelementptr inbounds %struct.flchip_shared, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %erasing181 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %erasing181, align 4
  %cmp192 = icmp eq ptr %14, %chip
  br i1 %cmp192, label %if.then23, label %if.else.thread.if.end27_crit_edge

if.else.thread.if.end27_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then23:                                        ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull %3) #10
  %wq25 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wq25, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %common.ret

if.end27:                                         ; preds = %if.else.thread.if.end27_crit_edge, %if.end, %land.lhs.true.if.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull %3) #10
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %entry.if.end29_crit_edge
  %oldstate30 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %oldstate30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oldstate30, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %16, label %do.end [
    i32 4, label %sw.bb
    i32 18, label %sw.bb36
    i32 0, label %if.end29.sw.epilog_crit_edge
    i32 1, label %if.end29.sw.epilog_crit_edge3
    i32 3, label %if.end29.sw.epilog_crit_edge4
  ]

if.end29.sw.epilog_crit_edge4:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end29.sw.epilog_crit_edge3:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 208, ptr noundef %map, ptr noundef %1) #10
  %in_progress_block_addr = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 5
  %20 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_progress_block_addr, align 4
  %22 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %.fca.0.load47 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert48 = insertvalue [8 x i32] poison, i32 %.fca.0.load47, 0
  %.fca.1.gep49 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %23 = ptrtoint ptr %.fca.1.gep49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.1.load50 = load i32, ptr %.fca.1.gep49, align 4
  %.fca.1.insert51 = insertvalue [8 x i32] %.fca.0.insert48, i32 %.fca.1.load50, 1
  %.fca.2.gep52 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %24 = ptrtoint ptr %.fca.2.gep52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.2.load53 = load i32, ptr %.fca.2.gep52, align 4
  %.fca.2.insert54 = insertvalue [8 x i32] %.fca.1.insert51, i32 %.fca.2.load53, 2
  %.fca.3.gep55 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %25 = ptrtoint ptr %.fca.3.gep55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.3.load56 = load i32, ptr %.fca.3.gep55, align 4
  %.fca.3.insert57 = insertvalue [8 x i32] %.fca.2.insert54, i32 %.fca.3.load56, 3
  %.fca.4.gep58 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %26 = ptrtoint ptr %.fca.4.gep58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.4.load59 = load i32, ptr %.fca.4.gep58, align 4
  %.fca.4.insert60 = insertvalue [8 x i32] %.fca.3.insert57, i32 %.fca.4.load59, 4
  %.fca.5.gep61 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %27 = ptrtoint ptr %.fca.5.gep61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.5.load62 = load i32, ptr %.fca.5.gep61, align 4
  %.fca.5.insert63 = insertvalue [8 x i32] %.fca.4.insert60, i32 %.fca.5.load62, 5
  %.fca.6.gep64 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %28 = ptrtoint ptr %.fca.6.gep64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.6.load65 = load i32, ptr %.fca.6.gep64, align 4
  %.fca.6.insert66 = insertvalue [8 x i32] %.fca.5.insert63, i32 %.fca.6.load65, 6
  %.fca.7.gep67 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %29 = ptrtoint ptr %.fca.7.gep67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.7.load68 = load i32, ptr %.fca.7.gep67, align 4
  %.fca.7.insert69 = insertvalue [8 x i32] %.fca.6.insert66, i32 %.fca.7.load68, 7
  call void %19(ptr noundef %map, [8 x i32] %.fca.7.insert69, i32 noundef %21) #10
  %30 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp32, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %32 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_progress_block_addr, align 4
  %34 = ptrtoint ptr %agg.tmp32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.fca.0.load = load i32, ptr %agg.tmp32, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp32, i32 0, i32 1
  %35 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp32, i32 0, i32 2
  %36 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp32, i32 0, i32 3
  %37 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp32, i32 0, i32 4
  %38 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp32, i32 0, i32 5
  %39 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp32, i32 0, i32 6
  %40 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp32, i32 0, i32 7
  %41 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %31(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %33) #10
  %42 = ptrtoint ptr %oldstate30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %oldstate30, align 4
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %state, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %state38 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %44 = ptrtoint ptr %state38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 18, ptr %state38, align 4
  %45 = ptrtoint ptr %oldstate30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %oldstate30, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %47, i32 noundef %16) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb36, %sw.bb, %if.end29.sw.epilog_crit_edge, %if.end29.sw.epilog_crit_edge3, %if.end29.sw.epilog_crit_edge4
  %wq42 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  call void @__wake_up(ptr noundef %wq42, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %common.ret
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %mode) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %status = alloca %union.map_word, align 4
  %status_OK = alloca %union.map_word, align 4
  %status_PWS = alloca %union.map_word, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp71 = alloca %union.map_word, align 4
  %tmp77 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !200) #10
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #10
  %15 = call ptr @memset(ptr %status, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status_OK) #10
  %16 = call ptr @memset(ptr %status_OK, i32 255, i32 32)
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %status_OK, i32 noundef 128, ptr noundef %map, ptr noundef %14) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status_PWS) #10
  %17 = call ptr @memset(ptr %status_PWS, i32 255, i32 32)
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %status_PWS, i32 noundef 1, ptr noundef %map, ptr noundef %14) #10
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmdset_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %mode)
  %cmp = icmp eq i32 %mode, 13
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %oldstate = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %21 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oldstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2.not = icmp eq i32 %22, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.__here_crit_edge

land.lhs.true.__here_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %24, label %if.end.__here_crit_edge [
    i32 1, label %for.cond
    i32 0, label %if.end.cleanup_crit_edge
    i32 2, label %if.end.cleanup_crit_edge352
    i32 3, label %if.end.cleanup_crit_edge353
    i32 4, label %sw.bb41
    i32 18, label %sw.bb115
    i32 20, label %sw.bb136
    i32 17, label %sw.bb137
  ]

if.end.cleanup_crit_edge353:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge352:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.__here_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

for.cond:                                         ; preds = %if.end
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %26 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read, align 4
  call void %27(ptr nonnull sret(%union.map_word) align 4 %status, ptr noundef %map, i32 noundef %adr) #10
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %28 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bankwidth, align 4
  %add4 = add i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add4)
  %cmp5337.not = icmp ult i32 %add4, 4
  br i1 %cmp5337.not, label %for.cond.cleanup_crit_edge, label %for.body.preheader

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond
  %div324 = lshr i32 %add4, 2
  br label %for.body

for.cond3:                                        ; preds = %for.body
  %inc = add nuw nsw i32 %i.0338, 1
  %exitcond343.not = icmp eq i32 %inc, %div324
  br i1 %exitcond343.not, label %for.cond3.cleanup_crit_edge, label %for.cond3.for.body_crit_edge

for.cond3.for.body_crit_edge:                     ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond3.cleanup_crit_edge:                      ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond3.for.body_crit_edge, %for.body.preheader
  %i.0338 = phi i32 [ %inc, %for.cond3.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0338
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i.0338
  %32 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx6, align 4
  %and = and i32 %33, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %33)
  %cmp8.not = icmp eq i32 %and, %33
  br i1 %cmp8.not, label %for.cond3, label %if.end13.critedge

if.end13.critedge:                                ; preds = %for.body
  %priv = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 15
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  %tobool14.not = icmp eq ptr %35, null
  br i1 %tobool14.not, label %if.end13.critedge.if.end37_crit_edge, label %if.end13.critedge.for.body23_crit_edge

if.end13.critedge.for.body23_crit_edge:           ; preds = %if.end13.critedge
  br label %for.body23

if.end13.critedge.if.end37_crit_edge:             ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

for.cond18:                                       ; preds = %for.body23
  %inc32 = add nuw nsw i32 %i16.0339, 1
  %exitcond345.not = icmp eq i32 %inc32, %div324
  br i1 %exitcond345.not, label %for.cond18.cleanup_crit_edge, label %for.cond18.for.body23_crit_edge

for.cond18.for.body23_crit_edge:                  ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

for.cond18.cleanup_crit_edge:                     ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body23:                                       ; preds = %for.cond18.for.body23_crit_edge, %if.end13.critedge.for.body23_crit_edge
  %i16.0339 = phi i32 [ %inc32, %for.cond18.for.body23_crit_edge ], [ 0, %if.end13.critedge.for.body23_crit_edge ]
  %arrayidx24 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i16.0339
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx24, align 4
  %arrayidx25 = getelementptr [8 x i32], ptr %status_PWS, i32 0, i32 %i16.0339
  %38 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx25, align 4
  %and26 = and i32 %39, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %39)
  %cmp28.not = icmp eq i32 %and26, %39
  br i1 %cmp28.not, label %for.cond18, label %for.body23.if.end37_crit_edge

for.body23.if.end37_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %for.body23.if.end37_crit_edge, %if.end13.critedge.if.end37_crit_edge
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @cfi_udelay(i32 noundef 1) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  %tobool42.not = icmp eq ptr %19, null
  br i1 %tobool42.not, label %sw.bb41.__here_crit_edge, label %lor.lhs.false

sw.bb41.__here_crit_edge:                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

lor.lhs.false:                                    ; preds = %sw.bb41
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %19, i32 0, i32 3
  %40 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %FeatureSupport, align 1
  %and43 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false.__here_crit_edge, label %lor.lhs.false45

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %42 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %mode, label %lor.lhs.false45.__here_crit_edge [
    i32 0, label %lor.lhs.false45.if.end55_crit_edge
    i32 17, label %lor.lhs.false45.if.end55_crit_edge354
    i32 7, label %land.lhs.true51
  ]

lor.lhs.false45.if.end55_crit_edge354:            ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

lor.lhs.false45.if.end55_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

lor.lhs.false45.__here_crit_edge:                 ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

land.lhs.true51:                                  ; preds = %lor.lhs.false45
  %SuspendCmdSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %19, i32 0, i32 4
  %43 = ptrtoint ptr %SuspendCmdSupport to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %SuspendCmdSupport, align 1
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool53.not = icmp eq i8 %45, 0
  br i1 %tobool53.not, label %land.lhs.true51.__here_crit_edge, label %land.lhs.true51.if.end55_crit_edge

land.lhs.true51.if.end55_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true51.__here_crit_edge:                 ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

if.end55:                                         ; preds = %land.lhs.true51.if.end55_crit_edge, %lor.lhs.false45.if.end55_crit_edge, %lor.lhs.false45.if.end55_crit_edge354
  %in_progress_block_mask = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 6
  %46 = ptrtoint ptr %in_progress_block_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %in_progress_block_mask, align 4
  %and56 = and i32 %47, %adr
  %in_progress_block_addr = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 5
  %48 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %in_progress_block_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and56, i32 %49)
  %cmp57 = icmp eq i32 %and56, %49
  br i1 %cmp57, label %if.end55.__here_crit_edge, label %if.end60

if.end55.__here_crit_edge:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

if.end60:                                         ; preds = %if.end55
  %mfr.i = getelementptr inbounds %struct.cfi_private, ptr %14, i32 0, i32 9
  %50 = ptrtoint ptr %mfr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mfr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %51)
  %cmp.i = icmp eq i32 %51, 137
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end60.if.end68_crit_edge

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true.i:                                  ; preds = %if.end60
  %id.i = getelementptr inbounds %struct.cfi_private, ptr %14, i32 0, i32 10
  %52 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35171, i32 %53)
  %cmp1.i = icmp eq i32 %53, 35171
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %47)
  %cmp65 = icmp eq i32 %47, -32768
  %or.cond = select i1 %cmp1.i, i1 %cmp65, i1 false
  br i1 %or.cond, label %land.lhs.true.i.__here_crit_edge, label %land.lhs.true.i.if.end68_crit_edge

land.lhs.true.i.if.end68_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true.i.__here_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

if.end68:                                         ; preds = %land.lhs.true.i.if.end68_crit_edge, %if.end60.if.end68_crit_edge
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %54 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 176, ptr noundef %map, ptr noundef %14) #10
  %56 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %in_progress_block_addr, align 4
  %58 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %58)
  %.fca.0.load231 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert232 = insertvalue [8 x i32] poison, i32 %.fca.0.load231, 0
  %.fca.1.gep233 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %59 = ptrtoint ptr %.fca.1.gep233 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.fca.1.load234 = load i32, ptr %.fca.1.gep233, align 4
  %.fca.1.insert235 = insertvalue [8 x i32] %.fca.0.insert232, i32 %.fca.1.load234, 1
  %.fca.2.gep236 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %60 = ptrtoint ptr %.fca.2.gep236 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.fca.2.load237 = load i32, ptr %.fca.2.gep236, align 4
  %.fca.2.insert238 = insertvalue [8 x i32] %.fca.1.insert235, i32 %.fca.2.load237, 2
  %.fca.3.gep239 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %61 = ptrtoint ptr %.fca.3.gep239 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.fca.3.load240 = load i32, ptr %.fca.3.gep239, align 4
  %.fca.3.insert241 = insertvalue [8 x i32] %.fca.2.insert238, i32 %.fca.3.load240, 3
  %.fca.4.gep242 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %62 = ptrtoint ptr %.fca.4.gep242 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.fca.4.load243 = load i32, ptr %.fca.4.gep242, align 4
  %.fca.4.insert244 = insertvalue [8 x i32] %.fca.3.insert241, i32 %.fca.4.load243, 4
  %.fca.5.gep245 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %63 = ptrtoint ptr %.fca.5.gep245 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.5.load246 = load i32, ptr %.fca.5.gep245, align 4
  %.fca.5.insert247 = insertvalue [8 x i32] %.fca.4.insert244, i32 %.fca.5.load246, 5
  %.fca.6.gep248 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %64 = ptrtoint ptr %.fca.6.gep248 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.6.load249 = load i32, ptr %.fca.6.gep248, align 4
  %.fca.6.insert250 = insertvalue [8 x i32] %.fca.5.insert247, i32 %.fca.6.load249, 6
  %.fca.7.gep251 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %65 = ptrtoint ptr %.fca.7.gep251 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.7.load252 = load i32, ptr %.fca.7.gep251, align 4
  %.fca.7.insert253 = insertvalue [8 x i32] %.fca.6.insert250, i32 %.fca.7.load252, 7
  call void %55(ptr noundef %map, [8 x i32] %.fca.7.insert253, i32 noundef %57) #10
  %66 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp71, i32 noundef 112, ptr noundef %map, ptr noundef %14) #10
  %68 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %in_progress_block_addr, align 4
  %70 = ptrtoint ptr %agg.tmp71 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.0.load = load i32, ptr %agg.tmp71, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp71, i32 0, i32 1
  %71 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp71, i32 0, i32 2
  %72 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %72)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp71, i32 0, i32 3
  %73 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %73)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp71, i32 0, i32 4
  %74 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %74)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp71, i32 0, i32 5
  %75 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %75)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp71, i32 0, i32 6
  %76 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %76)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp71, i32 0, i32 7
  %77 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %77)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %67(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %69) #10
  %oldstate74 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %78 = ptrtoint ptr %oldstate74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %oldstate74, align 4
  %79 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 5, ptr %state, align 4
  %erase_suspended = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 4
  %80 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load = load i8, ptr %erase_suspended, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %erase_suspended, align 4
  %read78 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp77) #10
  %81 = ptrtoint ptr %read78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read78, align 4
  %83 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %in_progress_block_addr, align 4
  call void %82(ptr nonnull sret(%union.map_word) align 4 %tmp77, ptr noundef %map, i32 noundef %84) #10
  %85 = call ptr @memcpy(ptr %status, ptr %tmp77, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp77) #10
  %bankwidth83 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %86 = ptrtoint ptr %bankwidth83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bankwidth83, align 4
  %add84333 = add i32 %87, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add84333)
  %cmp86331335.not = icmp ult i32 %add84333, 4
  br i1 %cmp86331335.not, label %if.end68.for.end113_crit_edge, label %for.body88.lr.ph.lr.ph

if.end68.for.end113_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end113

for.body88.lr.ph.lr.ph:                           ; preds = %if.end68
  %mutex111 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  br label %for.body88.lr.ph

for.body88.lr.ph:                                 ; preds = %if.end110.for.body88.lr.ph_crit_edge, %for.body88.lr.ph.lr.ph
  %div85323336.in = phi i32 [ %add84333, %for.body88.lr.ph.lr.ph ], [ %add84, %if.end110.for.body88.lr.ph_crit_edge ]
  %div85323336 = lshr i32 %div85323336.in, 2
  br label %for.body88

for.cond82:                                       ; preds = %for.body88
  %inc98 = add nuw nsw i32 %i80.0332, 1
  %exitcond.not = icmp eq i32 %inc98, %div85323336
  br i1 %exitcond.not, label %for.cond82.for.end113_crit_edge, label %for.cond82.for.body88_crit_edge

for.cond82.for.body88_crit_edge:                  ; preds = %for.cond82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body88

for.cond82.for.end113_crit_edge:                  ; preds = %for.cond82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end113

for.body88:                                       ; preds = %for.cond82.for.body88_crit_edge, %for.body88.lr.ph
  %i80.0332 = phi i32 [ 0, %for.body88.lr.ph ], [ %inc98, %for.cond82.for.body88_crit_edge ]
  %arrayidx89 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i80.0332
  %88 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx89, align 4
  %arrayidx90 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i80.0332
  %90 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx90, align 4
  %and91 = and i32 %91, %89
  call void @__sanitizer_cov_trace_cmp4(i32 %and91, i32 %91)
  %cmp93.not = icmp eq i32 %and91, %91
  br i1 %cmp93.not, label %for.cond82, label %if.end103.critedge

if.end103.critedge:                               ; preds = %for.body88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp104 = icmp slt i32 %sub, 0
  br i1 %cmp104, label %if.then106, label %if.end110

if.then106:                                       ; preds = %if.end103.critedge
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  %93 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %map, align 4
  %95 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %status, align 4
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %94, i32 noundef %96) #14
  br label %cleanup

if.end110:                                        ; preds = %if.end103.critedge
  call void @mutex_unlock(ptr noundef %mutex111) #10
  call void @cfi_udelay(i32 noundef 1) #10
  call void @mutex_lock_nested(ptr noundef %mutex111, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp77) #10
  %97 = ptrtoint ptr %read78 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read78, align 4
  %99 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %in_progress_block_addr, align 4
  call void %98(ptr nonnull sret(%union.map_word) align 4 %tmp77, ptr noundef %map, i32 noundef %100) #10
  %101 = call ptr @memcpy(ptr %status, ptr %tmp77, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp77) #10
  %102 = ptrtoint ptr %bankwidth83 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bankwidth83, align 4
  %add84 = add i32 %103, 3
  %cmp86331.not = icmp ult i32 %add84, 4
  br i1 %cmp86331.not, label %if.end110.for.end113_crit_edge, label %if.end110.for.body88.lr.ph_crit_edge

if.end110.for.body88.lr.ph_crit_edge:             ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body88.lr.ph

if.end110.for.end113_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end113

for.end113:                                       ; preds = %if.end110.for.end113_crit_edge, %for.cond82.for.end113_crit_edge, %if.end68.for.end113_crit_edge
  %104 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %state, align 4
  br label %cleanup

sw.bb115:                                         ; preds = %if.end
  %105 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %mode, label %sw.bb115.__here_crit_edge [
    i32 0, label %sw.bb115.if.end132_crit_edge
    i32 17, label %sw.bb115.if.end132_crit_edge355
    i32 7, label %lor.lhs.false124
  ]

sw.bb115.if.end132_crit_edge355:                  ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

sw.bb115.if.end132_crit_edge:                     ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

sw.bb115.__here_crit_edge:                        ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

lor.lhs.false124:                                 ; preds = %sw.bb115
  %tobool125.not = icmp eq ptr %19, null
  br i1 %tobool125.not, label %lor.lhs.false124.__here_crit_edge, label %lor.lhs.false126

lor.lhs.false124.__here_crit_edge:                ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

lor.lhs.false126:                                 ; preds = %lor.lhs.false124
  %SuspendCmdSupport127 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %19, i32 0, i32 4
  %106 = ptrtoint ptr %SuspendCmdSupport127 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %SuspendCmdSupport127, align 1
  %108 = and i8 %107, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool130.not = icmp eq i8 %108, 0
  br i1 %tobool130.not, label %lor.lhs.false126.__here_crit_edge, label %lor.lhs.false126.if.end132_crit_edge

lor.lhs.false126.if.end132_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

lor.lhs.false126.__here_crit_edge:                ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

if.end132:                                        ; preds = %lor.lhs.false126.if.end132_crit_edge, %sw.bb115.if.end132_crit_edge, %sw.bb115.if.end132_crit_edge355
  %oldstate134 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %109 = ptrtoint ptr %oldstate134 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 18, ptr %oldstate134, align 4
  %110 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %state, align 4
  br label %cleanup

sw.bb136:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb137:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp138 = icmp eq i32 %mode, 0
  br i1 %cmp138, label %land.lhs.true140, label %sw.bb137.__here_crit_edge

sw.bb137.__here_crit_edge:                        ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

land.lhs.true140:                                 ; preds = %sw.bb137
  %oldstate141 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %111 = ptrtoint ptr %oldstate141 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %oldstate141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp142 = icmp eq i32 %112, 0
  br i1 %cmp142, label %land.lhs.true140.cleanup_crit_edge, label %land.lhs.true140.__here_crit_edge

land.lhs.true140.__here_crit_edge:                ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

land.lhs.true140.cleanup_crit_edge:               ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__here:                                           ; preds = %land.lhs.true140.__here_crit_edge, %sw.bb137.__here_crit_edge, %lor.lhs.false126.__here_crit_edge, %lor.lhs.false124.__here_crit_edge, %sw.bb115.__here_crit_edge, %land.lhs.true.i.__here_crit_edge, %if.end55.__here_crit_edge, %land.lhs.true51.__here_crit_edge, %lor.lhs.false45.__here_crit_edge, %lor.lhs.false.__here_crit_edge, %sw.bb41.__here_crit_edge, %if.end.__here_crit_edge, %land.lhs.true.__here_crit_edge
  %113 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 212
  %115 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 ptrtoint (ptr blockaddress(@chip_ready, %__here) to i32), ptr %task_state_change, align 4
  %116 = load ptr, ptr %task, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 2, ptr %116, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !239
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  %mutex215 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %mutex215) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_lock_nested(ptr noundef %mutex215, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %__here, %land.lhs.true140.cleanup_crit_edge, %sw.bb136, %if.end132, %for.end113, %if.then106, %if.end37, %for.cond18.cleanup_crit_edge, %for.cond3.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge352, %if.end.cleanup_crit_edge353
  %retval.0 = phi i32 [ -11, %__here ], [ -5, %sw.bb136 ], [ 0, %if.end132 ], [ 0, %for.end113 ], [ -5, %if.then106 ], [ -11, %if.end37 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge352 ], [ 0, %if.end.cleanup_crit_edge353 ], [ 0, %land.lhs.true140.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %for.cond18.cleanup_crit_edge ], [ 0, %for.cond3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status_PWS) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status_OK) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_udelay(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fixup_use_fwh_lock(ptr nocapture noundef writeonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %0 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %.compoundliteral, align 4
  %state = getelementptr inbounds %struct.fwh_xxlock_thunk, ptr %.compoundliteral, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %state, align 4
  %call = call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @fwh_xxlock_oneblock, i64 noundef %ofs, i32 noundef %conv, ptr noundef nonnull %.compoundliteral) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwh_unlock_varsize(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.fwh_xxlock_thunk, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %0 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %.compoundliteral, align 4
  %state = getelementptr inbounds %struct.fwh_xxlock_thunk, ptr %.compoundliteral, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %state, align 4
  %call = call i32 @cfi_varsize_frob(ptr noundef %mtd, ptr noundef nonnull @fwh_xxlock_oneblock, i64 noundef %ofs, i32 noundef %conv, ptr noundef nonnull %.compoundliteral) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_varsize_frob(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwh_xxlock_oneblock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %len, ptr nocapture noundef readonly %thunk) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwh_xxlock_oneblock.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwh_xxlock_oneblock, %if.then3)) #10
          to label %cleanup [label %if.then3], !srcloc !240

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fwh_xxlock_oneblock.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %5) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %and = and i32 %adr, -65536
  %sub = add i32 %and, -4194302
  %add = add i32 %sub, %3
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br label %retry.i

retry.i:                                          ; preds = %retry.i.retry.i_crit_edge, %if.end5
  %call122.i = tail call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 15) #10
  %6 = zext i32 %call122.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call122.i, label %if.then9 [
    i32 -11, label %retry.i.retry.i_crit_edge
    i32 0, label %if.end11
  ]

retry.i.retry.i_crit_edge:                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i

if.then9:                                         ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end11:                                         ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %oldstate = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %9 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %oldstate, align 4
  %state12 = getelementptr inbounds %struct.fwh_xxlock_thunk, ptr %thunk, i32 0, i32 1
  %10 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state12, align 4
  store i32 %11, ptr %state, align 4
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %14 = ptrtoint ptr %thunk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %thunk, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef %15, ptr noundef %map, ptr noundef %1) #10
  %16 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %17 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %18 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %19 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %20 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %21 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %22 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %23 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %13(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add) #10
  %24 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oldstate, align 4
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %state, align 4
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then3, %do.body
  %retval.0 = phi i32 [ %call122.i, %if.then9 ], [ 0, %if.end11 ], [ -5, %if.then3 ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fixup_use_point(ptr nocapture noundef %mtd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_point = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 22
  %0 = ptrtoint ptr %_point to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_point, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %phys = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %_point to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cfi_intelext_point, ptr %_point, align 4
  %_unpoint = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 23
  %7 = ptrtoint ptr %_unpoint to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cfi_intelext_unpoint, ptr %_unpoint, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_point(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr nocapture noundef writeonly %virt, ptr noundef writeonly %phys) #0 align 64 {
entry:
  %agg.tmp.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %virt1 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %virt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup54_crit_edge, label %if.end

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

if.end:                                           ; preds = %entry
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %7 to i64
  %shr = ashr i64 %from, %sh_prom
  %conv = trunc i64 %shr to i32
  %shl = shl i32 %conv, %7
  %8 = trunc i64 %from to i32
  %conv4 = sub i32 %8, %shl
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %10
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %conv4
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr6, ptr %virt, align 4
  %tobool7.not = icmp eq ptr %phys, null
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %phys9 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %phys9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys9, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %conv4
  %add13 = add i32 %add, %15
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add13, ptr %phys, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool15.not102 = icmp eq i32 %len, 0
  br i1 %tobool15.not102, label %if.end14.cleanup54_crit_edge, label %while.body.lr.ph

if.end14.cleanup54_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

while.body.lr.ph:                                 ; preds = %if.end14
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
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %chipnum.0106 = phi i32 [ %conv, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %last_end.0105 = phi i32 [ 0, %while.body.lr.ph ], [ %add53, %cleanup.while.body_crit_edge ]
  %ofs.0104 = phi i32 [ %conv4, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %len.addr.0103 = phi i32 [ %len, %while.body.lr.ph ], [ %sub50, %cleanup.while.body_crit_edge ]
  %17 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chipnum.0106, i32 %18)
  %cmp.not = icmp slt i32 %chipnum.0106, %18
  br i1 %cmp.not, label %if.end18, label %while.body.cleanup54_crit_edge

while.body.cleanup54_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

if.end18:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_end.0105)
  %tobool19.not = icmp eq i32 %last_end.0105, 0
  %arrayidx22 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0106
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx22, align 4
  br i1 %tobool19.not, label %if.end18.if.end31_crit_edge, label %if.else

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %last_end.0105)
  %cmp27.not = icmp eq i32 %20, %last_end.0105
  br i1 %cmp27.not, label %if.else.if.end31_crit_edge, label %if.else.cleanup54_crit_edge

if.else.cleanup54_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end31:                                         ; preds = %if.else.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  %last_end.1 = phi i32 [ %last_end.0105, %if.else.if.end31_crit_edge ], [ %20, %if.end18.if.end31_crit_edge ]
  %add32 = add i32 %len.addr.0103, -1
  %sub33 = add i32 %add32, %ofs.0104
  %21 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chipshift, align 4
  %shr35 = lshr i32 %sub33, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr35)
  %tobool36.not = icmp eq i32 %shr35, 0
  %shl39 = shl nuw i32 1, %22
  %sub40 = sub i32 %shl39, %ofs.0104
  %thislen.0 = select i1 %tobool36.not, i32 %len.addr.0103, i32 %sub40
  %arrayidx44 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0106
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %agg.tmp.i)
  %23 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fldrv_priv, align 4
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx44, align 4
  %27 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bankwidth.i, align 4
  %neg.i = sub i32 0, %28
  %29 = add i32 %26, %ofs.0104
  %conv2.i = and i32 %29, %neg.i
  %mutex.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0106, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  br label %retry.i.i

retry.i.i:                                        ; preds = %retry.i.i.retry.i.i_crit_edge, %if.end31
  %call122.i.i = call fastcc i32 @chip_ready(ptr noundef %1, ptr noundef %arrayidx44, i32 noundef %conv2.i, i32 noundef 17) #10
  %30 = zext i32 %call122.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call122.i.i, label %do_point_onechip.exit [
    i32 -11, label %retry.i.i.retry.i.i_crit_edge
    i32 0, label %if.then.i
  ]

retry.i.i.retry.i.i_crit_edge:                    ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i.i

if.then.i:                                        ; preds = %retry.i.i
  %state.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0106, i32 2
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %32, label %if.then7.i [
    i32 17, label %if.then.i.cleanup_crit_edge
    i32 0, label %if.then.i.cleanup_crit_edge107
  ]

if.then.i.cleanup_crit_edge107:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp.i, i32 noundef 255, ptr noundef %1, ptr noundef %24) #10
  %36 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.0.load.i = load i32, ptr %agg.tmp.i, align 4
  %.fca.0.insert.i = insertvalue [8 x i32] poison, i32 %.fca.0.load.i, 0
  %37 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [8 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %38 = ptrtoint ptr %.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.2.load.i = load i32, ptr %.fca.2.gep.i, align 4
  %.fca.2.insert.i = insertvalue [8 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  %39 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.3.insert.i = insertvalue [8 x i32] %.fca.2.insert.i, i32 %.fca.3.load.i, 3
  %40 = ptrtoint ptr %.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.4.load.i = load i32, ptr %.fca.4.gep.i, align 4
  %.fca.4.insert.i = insertvalue [8 x i32] %.fca.3.insert.i, i32 %.fca.4.load.i, 4
  %41 = ptrtoint ptr %.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.5.load.i = load i32, ptr %.fca.5.gep.i, align 4
  %.fca.5.insert.i = insertvalue [8 x i32] %.fca.4.insert.i, i32 %.fca.5.load.i, 5
  %42 = ptrtoint ptr %.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.6.load.i = load i32, ptr %.fca.6.gep.i, align 4
  %.fca.6.insert.i = insertvalue [8 x i32] %.fca.5.insert.i, i32 %.fca.6.load.i, 6
  %43 = ptrtoint ptr %.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.7.load.i = load i32, ptr %.fca.7.gep.i, align 4
  %.fca.7.insert.i = insertvalue [8 x i32] %.fca.6.insert.i, i32 %.fca.7.load.i, 7
  call void %35(ptr noundef %1, [8 x i32] %.fca.7.insert.i, i32 noundef %conv2.i) #10
  br label %cleanup

do_point_onechip.exit:                            ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp.i)
  br label %cleanup54

cleanup:                                          ; preds = %if.then7.i, %if.then.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge107
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 17, ptr %state.i, align 4
  %ref_point_counter.i = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0106, i32 1
  %45 = ptrtoint ptr %ref_point_counter.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ref_point_counter.i, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %ref_point_counter.i, align 4
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %agg.tmp.i)
  %47 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %retlen, align 4
  %add49 = add i32 %48, %thislen.0
  store i32 %add49, ptr %retlen, align 4
  %sub50 = sub i32 %len.addr.0103, %thislen.0
  %49 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chipshift, align 4
  %shl52 = shl nuw i32 1, %50
  %add53 = add i32 %shl52, %last_end.1
  %inc = add i32 %chipnum.0106, 1
  %tobool15.not = icmp eq i32 %sub50, 0
  br i1 %tobool15.not, label %cleanup.cleanup54_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup54_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

cleanup54:                                        ; preds = %cleanup.cleanup54_crit_edge, %do_point_onechip.exit, %if.else.cleanup54_crit_edge, %while.body.cleanup54_crit_edge, %if.end14.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup54_crit_edge ], [ 0, %do_point_onechip.exit ], [ 0, %if.end14.cleanup54_crit_edge ], [ 0, %if.else.cleanup54_crit_edge ], [ 0, %while.body.cleanup54_crit_edge ], [ 0, %cleanup.cleanup54_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_unpoint(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %tobool.not64.not = icmp eq i32 %len, 0
  br i1 %tobool.not64.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %5 to i64
  %shr = ashr i64 %from, %sh_prom
  %conv = trunc i64 %shr to i32
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not73 = icmp sgt i32 %7, %conv
  br i1 %cmp.not73, label %if.end.lr.ph, label %while.body.lr.ph.while.end_crit_edge

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.lr.ph:                                     ; preds = %while.body.lr.ph
  %8 = trunc i64 %from to i32
  %shl = shl i32 %conv, %5
  %conv3 = sub i32 %8, %shl
  br label %if.end

while.body:                                       ; preds = %cleanup
  %inc = add nsw i32 %chipnum.06675, 1
  %9 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %numchips, align 4
  %cmp.not = icmp slt i32 %inc, %10
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %if.end.lr.ph
  %ofs.06576 = phi i32 [ %conv3, %if.end.lr.ph ], [ 0, %while.body.if.end_crit_edge ]
  %chipnum.06675 = phi i32 [ %conv, %if.end.lr.ph ], [ %inc, %while.body.if.end_crit_edge ]
  %len.addr.06974 = phi i32 [ %len, %if.end.lr.ph ], [ %20, %while.body.if.end_crit_edge ]
  %arrayidx77 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.06675
  %add = add i32 %len.addr.06974, %ofs.06576
  %sub6 = add i32 %add, -1
  %11 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chipshift, align 4
  %shr8 = lshr i32 %sub6, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr8)
  %tobool9.not = icmp ne i32 %shr8, 0
  %shl12.neg = shl nsw i32 -1, %12
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.06675, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.06675, i32 2
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %14)
  %cmp15 = icmp eq i32 %14, 17
  br i1 %cmp15, label %if.then17, label %do.end

if.then17:                                        ; preds = %if.end
  %ref_point_counter = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.06675, i32 1
  %15 = ptrtoint ptr %ref_point_counter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ref_point_counter, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %ref_point_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp19 = icmp eq i32 %dec, 0
  br i1 %cmp19, label %if.then21, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %state, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %19) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then21, %if.then17.cleanup_crit_edge
  %err.1 = phi i32 [ 0, %if.then21 ], [ 0, %if.then17.cleanup_crit_edge ], [ -22, %do.end ]
  tail call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx77)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %20 = add i32 %add, %shl12.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not71 = icmp ne i32 %20, 0
  %tobool.not = select i1 %tobool9.not, i1 %tobool.not71, i1 false
  %or.cond = and i1 %cmp15, %tobool.not
  br i1 %or.cond, label %while.body, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 0, %while.body.lr.ph.while.end_crit_edge ], [ %err.1, %cleanup.while.end_crit_edge ], [ %err.1, %while.body.while.end_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfi_intelext_destroy(ptr noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  tail call fastcc void @cfi_intelext_reset(ptr noundef %mtd)
  %reboot_notifier = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 51
  %call1 = tail call i32 @unregister_reboot_notifier(ptr noundef %reboot_notifier) #10
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdset_priv, align 4
  tail call void @kfree(ptr noundef %5) #10
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfiq, align 4
  tail call void @kfree(ptr noundef %7) #10
  %priv2 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 3, i32 5
  %8 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv2, align 4
  tail call void @kfree(ptr noundef %9) #10
  tail call void @kfree(ptr noundef %3) #10
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %10 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15 = icmp sgt i32 %11, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eraseregions, align 4
  %lockmap = getelementptr %struct.mtd_erase_region_info, ptr %13, i32 %i.016, i32 3
  %14 = ptrtoint ptr %lockmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lockmap, align 8
  tail call void @kfree(ptr noundef %15) #10
  %inc = add nuw nsw i32 %i.016, 1
  %16 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numeraseregions, align 8
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %eraseregions4 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %18 = ptrtoint ptr %eraseregions4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eraseregions4, align 4
  tail call void @kfree(ptr noundef %19) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cfi_intelext_reset(ptr nocapture noundef readonly %mtd) unnamed_addr #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call = call fastcc i32 @get_chip(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %7, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 255, ptr noundef %1, ptr noundef %3) #10
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
  call void %9(ptr noundef %1, [8 x i32] %.fca.7.insert, i32 noundef %11) #10
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.02, i32 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 20, ptr %state, align 4
  call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  %inc = add nuw nsw i32 %i.02, 1
  %21 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_read_fact_prot_reg(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_intelext_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef nonnull @do_otp_read, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_read_user_prot_reg(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_intelext_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef nonnull @do_otp_read, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_write_user_prot_reg(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_intelext_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef nonnull @do_otp_write, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_lock_user_prot_reg(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len) #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !241
  %call = call fastcc i32 @cfi_intelext_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef nonnull %retlen, ptr noundef null, ptr noundef nonnull @do_otp_lock, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_get_fact_prot_info(ptr nocapture noundef readonly %mtd, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_intelext_otp_walk(ptr noundef %mtd, i64 noundef 0, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_intelext_get_user_prot_info(ptr nocapture noundef readonly %mtd, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cfi_intelext_otp_walk(ptr noundef %mtd, i64 noundef 0, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef null, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfi_intelext_otp_walk(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf, ptr noundef readonly %action, i32 noundef %user_regs) unnamed_addr #0 align 64 {
entry:
  %lockword = alloca %union.map_word, align 4
  %tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %retlen, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup124_crit_edge, label %lor.lhs.false

entry.cleanup124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124

lor.lhs.false:                                    ; preds = %entry
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %FeatureSupport, align 1
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup124_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup124_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %NumProtectionFields = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %NumProtectionFields to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %NumProtectionFields, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup124_crit_edge, label %if.end

lor.lhs.false2.cleanup124_crit_edge:              ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124

if.end:                                           ; preds = %lor.lhs.false2
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfiq, align 4
  %DevSize = getelementptr inbounds %struct.cfi_ident, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %DevSize to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %DevSize, align 1
  %conv = zext i8 %14 to i32
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %interleave, align 4
  %mul = shl i32 %16, %conv
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chipshift, align 4
  %shr = lshr i32 %mul, %18
  %mfr = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %20)
  %cmp = icmp eq i32 %20, 137
  br i1 %cmp, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %.off = add i32 %22, -34827
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %sub = add i32 %shr, -1
  %spec.select = select i1 %switch, i32 %sub, i32 0
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %chip_num.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %spec.select, %if.then5 ]
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chip_num.0, i32 %24)
  %cmp7288 = icmp ult i32 %chip_num.0, %24
  br i1 %cmp7288, label %for.body.lr.ph, label %if.end6.cleanup124_crit_edge

if.end6.cleanup124_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124

for.body.lr.ph:                                   ; preds = %if.end6
  %extra = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 12
  %ProtRegAddr = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 9
  %FactProtRegSize = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 10
  %UserProtRegSize = getelementptr inbounds %struct.cfi_pri_intelext, ptr %5, i32 0, i32 11
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user_regs)
  %tobool28.not = icmp eq i32 %user_regs, 0
  %tobool39.not = icmp eq ptr %action, null
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc121.for.body_crit_edge, %for.body.lr.ph
  %chip_num.1292 = phi i32 [ %chip_num.0, %for.body.lr.ph ], [ %add122, %for.inc121.for.body_crit_edge ]
  %from.addr.0291 = phi i64 [ %from, %for.body.lr.ph ], [ %from.addr.5, %for.inc121.for.body_crit_edge ]
  %len.addr.0290 = phi i32 [ %len, %for.body.lr.ph ], [ %len.addr.5, %for.inc121.for.body_crit_edge ]
  %buf.addr.0289 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.6, %for.inc121.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chip_num.1292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0290)
  %cmp15.not271 = icmp eq i32 %len.addr.0290, 0
  br i1 %cmp15.not271, label %for.body.for.inc121_crit_edge, label %while.body.preheader

for.body.for.inc121_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc121

while.body.preheader:                             ; preds = %for.body
  %25 = ptrtoint ptr %ProtRegAddr to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %ProtRegAddr, align 1
  %conv10 = zext i16 %26 to i32
  br label %while.body

while.body:                                       ; preds = %if.end110.while.body_crit_edge, %while.body.preheader
  %reg_user_groups.0281 = phi i32 [ %conv116, %if.end110.while.body_crit_edge ], [ 1, %while.body.preheader ]
  %reg_fact_groups.0280 = phi i32 [ %conv112, %if.end110.while.body_crit_edge ], [ 1, %while.body.preheader ]
  %conv13.pn.in.in279 = phi ptr [ %UserProtRegSize117, %if.end110.while.body_crit_edge ], [ %UserProtRegSize, %while.body.preheader ]
  %conv11.pn.in.in278 = phi ptr [ %FactProtRegSize113, %if.end110.while.body_crit_edge ], [ %FactProtRegSize, %while.body.preheader ]
  %field.0277 = phi i32 [ %inc104, %if.end110.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %reg_prot_offset.0276 = phi i32 [ %57, %if.end110.while.body_crit_edge ], [ %conv10, %while.body.preheader ]
  %otp.0275 = phi ptr [ %incdec.ptr, %if.end110.while.body_crit_edge ], [ %extra, %while.body.preheader ]
  %from.addr.1274 = phi i64 [ %from.addr.2.lcssa, %if.end110.while.body_crit_edge ], [ %from.addr.0291, %while.body.preheader ]
  %len.addr.1273 = phi i32 [ %len.addr.2.lcssa, %if.end110.while.body_crit_edge ], [ %len.addr.0290, %while.body.preheader ]
  %buf.addr.1272 = phi ptr [ %buf.addr.2.lcssa, %if.end110.while.body_crit_edge ], [ %buf.addr.0289, %while.body.preheader ]
  %27 = ptrtoint ptr %conv11.pn.in.in278 to i32
  call void @__asan_load1_noabort(i32 %27)
  %conv11.pn.in = load i8, ptr %conv11.pn.in.in278, align 1
  %conv11.pn = zext i8 %conv11.pn.in to i32
  %add = add i32 %reg_prot_offset.0276, 1
  %28 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %interleave, align 4
  %30 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device_type, align 4
  %mul18 = mul i32 %31, %29
  %mul19 = mul i32 %mul18, %add
  %mul23 = mul i32 %mul18, %reg_prot_offset.0276
  %mul25 = shl i32 %29, %conv11.pn
  br i1 %tobool28.not, label %while.body.if.end32_crit_edge, label %if.then29

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %conv13.pn.in.in279 to i32
  call void @__asan_load1_noabort(i32 %32)
  %conv13.pn.in = load i8, ptr %conv13.pn.in.in279, align 1
  %conv13.pn = zext i8 %conv13.pn.in to i32
  %mul27 = shl i32 %29, %conv13.pn
  %mul30 = mul i32 %mul25, %reg_fact_groups.0280
  %add31 = add i32 %mul19, %mul30
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %while.body.if.end32_crit_edge
  %data_offset.0 = phi i32 [ %add31, %if.then29 ], [ %mul19, %while.body.if.end32_crit_edge ]
  %groups.0 = phi i32 [ %reg_user_groups.0281, %if.then29 ], [ %reg_fact_groups.0280, %while.body.if.end32_crit_edge ]
  %groupno.0 = phi i32 [ %reg_fact_groups.0280, %if.then29 ], [ 0, %while.body.if.end32_crit_edge ]
  %groupsize.0 = phi i32 [ %mul27, %if.then29 ], [ %mul25, %while.body.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %groups.0)
  %cmp36.not258 = icmp eq i32 %groups.0, 0
  br i1 %cmp36.not258, label %if.end32.while.end_crit_edge, label %while.body38.lr.ph

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body38.lr.ph:                               ; preds = %if.end32
  %conv71 = zext i32 %groupsize.0 to i64
  br label %while.body38

while.body38:                                     ; preds = %if.end102.while.body38_crit_edge, %while.body38.lr.ph
  %groupno.1265 = phi i32 [ %groupno.0, %while.body38.lr.ph ], [ %inc103, %if.end102.while.body38_crit_edge ]
  %groups.1264 = phi i32 [ %groups.0, %while.body38.lr.ph ], [ %dec, %if.end102.while.body38_crit_edge ]
  %data_offset.1263 = phi i32 [ %data_offset.0, %while.body38.lr.ph ], [ %data_offset.3, %if.end102.while.body38_crit_edge ]
  %from.addr.2262 = phi i64 [ %from.addr.1274, %while.body38.lr.ph ], [ %from.addr.4, %if.end102.while.body38_crit_edge ]
  %len.addr.2261 = phi i32 [ %len.addr.1273, %while.body38.lr.ph ], [ %len.addr.4, %if.end102.while.body38_crit_edge ]
  %buf.addr.2260 = phi ptr [ %buf.addr.1272, %while.body38.lr.ph ], [ %buf.addr.5, %if.end102.while.body38_crit_edge ]
  br i1 %tobool39.not, label %if.then40, label %if.else70

if.then40:                                        ; preds = %while.body38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lockword) #10
  %sub41 = add i32 %len.addr.2261, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41)
  %cmp42 = icmp eq i32 %sub41, 0
  %33 = call ptr @memset(ptr %lockword, i32 255, i32 32)
  br i1 %cmp42, label %if.then40.cleanup.thread_crit_edge, label %if.end45

if.then40.cleanup.thread_crit_edge:               ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end45:                                         ; preds = %if.then40
  %34 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bankwidth, align 4
  %call = call i32 @do_otp_read(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %mul23, ptr noundef nonnull %lockword, i32 noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool46.not = icmp eq i32 %call, 0
  br i1 %tobool46.not, label %if.end48, label %if.end45.cleanup.thread_crit_edge

if.end45.cleanup.thread_crit_edge:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end48:                                         ; preds = %if.end45
  %conv49 = trunc i64 %from.addr.2262 to i32
  %36 = ptrtoint ptr %buf.addr.2260 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv49, ptr %buf.addr.2260, align 4
  %length = getelementptr inbounds %struct.otp_info, ptr %buf.addr.2260, i32 0, i32 1
  %37 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %groupsize.0, ptr %length, align 4
  %38 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bankwidth, align 4
  %40 = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %40)
  %cmp54253 = icmp ult i32 %40, -4
  br i1 %cmp54253, label %for.body56.lr.ph, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body56.lr.ph:                                 ; preds = %if.end48
  %shl58 = shl nuw i32 1, %groupno.1265
  br label %for.body56

for.cond51:                                       ; preds = %for.body56
  %inc = add nuw nsw i32 %i.0254, 1
  %41 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bankwidth, align 4
  %add53 = add i32 %42, 3
  %div233 = lshr i32 %add53, 2
  %cmp54 = icmp ult i32 %inc, %div233
  br i1 %cmp54, label %for.cond51.for.body56_crit_edge, label %for.cond51.cleanup_crit_edge

for.cond51.cleanup_crit_edge:                     ; preds = %for.cond51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond51.for.body56_crit_edge:                  ; preds = %for.cond51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body56

for.body56:                                       ; preds = %for.cond51.for.body56_crit_edge, %for.body56.lr.ph
  %i.0254 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc, %for.cond51.for.body56_crit_edge ]
  %arrayidx57 = getelementptr [8 x i32], ptr %lockword, i32 0, i32 %i.0254
  %43 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx57, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp, i32 noundef %shl58, ptr noundef %1, ptr noundef %3) #10
  %arrayidx59 = getelementptr [8 x i32], ptr %tmp, i32 0, i32 %i.0254
  %45 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx59, align 4
  %and60 = and i32 %46, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %for.cond51, label %for.body56.cleanup_crit_edge

for.body56.cleanup_crit_edge:                     ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end45.cleanup.thread_crit_edge, %if.then40.cleanup.thread_crit_edge
  %retval.3.ph = phi i32 [ %call, %if.end45.cleanup.thread_crit_edge ], [ -28, %if.then40.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lockword) #10
  br label %cleanup124

cleanup:                                          ; preds = %for.body56.cleanup_crit_edge, %for.cond51.cleanup_crit_edge, %if.end48.cleanup_crit_edge
  %cmp54.lcssa = phi i32 [ 1, %if.end48.cleanup_crit_edge ], [ 1, %for.cond51.cleanup_crit_edge ], [ 0, %for.body56.cleanup_crit_edge ]
  %locked = getelementptr inbounds %struct.otp_info, ptr %buf.addr.2260, i32 0, i32 2
  %47 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cmp54.lcssa, ptr %locked, align 4
  %add67 = add i64 %from.addr.2262, %conv71
  %add.ptr = getelementptr i8, ptr %buf.addr.2260, i32 12
  %48 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %retlen, align 4
  %add68 = add i32 %49, 12
  store i32 %add68, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lockword) #10
  br label %if.end102

if.else70:                                        ; preds = %while.body38
  call void @__sanitizer_cov_trace_cmp8(i64 %from.addr.2262, i64 %conv71)
  %cmp72.not = icmp slt i64 %from.addr.2262, %conv71
  br i1 %cmp72.not, label %if.else78, label %if.then74

if.then74:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #12
  %sub76 = sub i64 %from.addr.2262, %conv71
  %add77 = add i32 %data_offset.1263, %groupsize.0
  br label %if.end102

if.else78:                                        ; preds = %if.else70
  %50 = trunc i64 %from.addr.2262 to i32
  %conv81 = add i32 %data_offset.1263, %50
  %conv84 = sub i32 %groupsize.0, %50
  %51 = call i32 @llvm.umin.i32(i32 %conv84, i32 %len.addr.2261)
  %call89 = call i32 %action(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %conv81, ptr noundef %buf.addr.2260, i32 noundef %51, i32 noundef %mul23, i32 noundef %groupno.1265, i32 noundef %groupsize.0) #10, !callees !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.else78.cleanup124_crit_edge, label %cleanup98

if.else78.cleanup124_crit_edge:                   ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124

cleanup98:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr94 = getelementptr i8, ptr %buf.addr.2260, i32 %51
  %sub95 = sub i32 %len.addr.2261, %51
  %52 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %retlen, align 4
  %add96 = add i32 %53, %51
  store i32 %add96, ptr %retlen, align 4
  %add97 = add i32 %51, %conv81
  br label %if.end102

if.end102:                                        ; preds = %cleanup98, %if.then74, %cleanup
  %buf.addr.5 = phi ptr [ %buf.addr.2260, %if.then74 ], [ %add.ptr94, %cleanup98 ], [ %add.ptr, %cleanup ]
  %len.addr.4 = phi i32 [ %len.addr.2261, %if.then74 ], [ %sub95, %cleanup98 ], [ %sub41, %cleanup ]
  %from.addr.4 = phi i64 [ %sub76, %if.then74 ], [ 0, %cleanup98 ], [ %add67, %cleanup ]
  %data_offset.3 = phi i32 [ %add77, %if.then74 ], [ %add97, %cleanup98 ], [ %data_offset.1263, %cleanup ]
  %inc103 = add nuw nsw i32 %groupno.1265, 1
  %dec = add nsw i32 %groups.1264, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.4)
  %cmp34.not = icmp eq i32 %len.addr.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp36.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp34.not, i1 true, i1 %cmp36.not
  br i1 %or.cond, label %if.end102.while.end_crit_edge, label %if.end102.while.body38_crit_edge

if.end102.while.body38_crit_edge:                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body38

if.end102.while.end_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end102.while.end_crit_edge, %if.end32.while.end_crit_edge
  %buf.addr.2.lcssa = phi ptr [ %buf.addr.1272, %if.end32.while.end_crit_edge ], [ %buf.addr.5, %if.end102.while.end_crit_edge ]
  %len.addr.2.lcssa = phi i32 [ %len.addr.1273, %if.end32.while.end_crit_edge ], [ %len.addr.4, %if.end102.while.end_crit_edge ]
  %from.addr.2.lcssa = phi i64 [ %from.addr.1274, %if.end32.while.end_crit_edge ], [ %from.addr.4, %if.end102.while.end_crit_edge ]
  %inc104 = add i32 %field.0277, 1
  %54 = ptrtoint ptr %NumProtectionFields to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %NumProtectionFields, align 1
  %conv106 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc104, i32 %conv106)
  %cmp107 = icmp eq i32 %inc104, %conv106
  br i1 %cmp107, label %while.end.for.inc121_crit_edge, label %if.end110

while.end.for.inc121_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc121

if.end110:                                        ; preds = %while.end
  %56 = ptrtoint ptr %otp.0275 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %otp.0275, align 1
  %FactGroups = getelementptr inbounds %struct.cfi_intelext_otpinfo, ptr %otp.0275, i32 0, i32 1
  %58 = ptrtoint ptr %FactGroups to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %FactGroups, align 1
  %conv112 = zext i16 %59 to i32
  %FactProtRegSize113 = getelementptr inbounds %struct.cfi_intelext_otpinfo, ptr %otp.0275, i32 0, i32 2
  %UserGroups = getelementptr inbounds %struct.cfi_intelext_otpinfo, ptr %otp.0275, i32 0, i32 3
  %60 = ptrtoint ptr %UserGroups to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %UserGroups, align 1
  %conv116 = zext i16 %61 to i32
  %UserProtRegSize117 = getelementptr inbounds %struct.cfi_intelext_otpinfo, ptr %otp.0275, i32 0, i32 4
  %incdec.ptr = getelementptr %struct.cfi_intelext_otpinfo, ptr %otp.0275, i32 1
  %cmp15.not = icmp eq i32 %len.addr.2.lcssa, 0
  br i1 %cmp15.not, label %if.end110.for.inc121_crit_edge, label %if.end110.while.body_crit_edge

if.end110.while.body_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end110.for.inc121_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc121

for.inc121:                                       ; preds = %if.end110.for.inc121_crit_edge, %while.end.for.inc121_crit_edge, %for.body.for.inc121_crit_edge
  %buf.addr.6 = phi ptr [ %buf.addr.0289, %for.body.for.inc121_crit_edge ], [ %buf.addr.2.lcssa, %if.end110.for.inc121_crit_edge ], [ %buf.addr.2.lcssa, %while.end.for.inc121_crit_edge ]
  %len.addr.5 = phi i32 [ 0, %for.body.for.inc121_crit_edge ], [ %len.addr.2.lcssa, %while.end.for.inc121_crit_edge ], [ 0, %if.end110.for.inc121_crit_edge ]
  %from.addr.5 = phi i64 [ %from.addr.0291, %for.body.for.inc121_crit_edge ], [ %from.addr.2.lcssa, %if.end110.for.inc121_crit_edge ], [ %from.addr.2.lcssa, %while.end.for.inc121_crit_edge ]
  %add122 = add i32 %chip_num.1292, %shr
  %62 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %numchips, align 4
  %cmp7 = icmp ult i32 %add122, %63
  br i1 %cmp7, label %for.inc121.for.body_crit_edge, label %for.inc121.cleanup124_crit_edge

for.inc121.cleanup124_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124

for.inc121.for.body_crit_edge:                    ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup124:                                       ; preds = %for.inc121.cleanup124_crit_edge, %if.else78.cleanup124_crit_edge, %cleanup.thread, %if.end6.cleanup124_crit_edge, %lor.lhs.false2.cleanup124_crit_edge, %lor.lhs.false.cleanup124_crit_edge, %entry.cleanup124_crit_edge
  %retval.7 = phi i32 [ -61, %lor.lhs.false2.cleanup124_crit_edge ], [ -61, %lor.lhs.false.cleanup124_crit_edge ], [ -61, %entry.cleanup124_crit_edge ], [ %retval.3.ph, %cleanup.thread ], [ 0, %if.end6.cleanup124_crit_edge ], [ %call89, %if.else78.cleanup124_crit_edge ], [ 0, %for.inc121.cleanup124_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_otp_read(ptr noundef %map, ptr noundef %chip, i32 noundef %offset, ptr noundef %buf, i32 noundef %size, i32 noundef %prot, i32 noundef %grpno, i32 noundef %grpsz) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  br label %retry.i

retry.i:                                          ; preds = %retry.i.retry.i_crit_edge, %entry
  %call122.i = tail call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %3, i32 noundef 3) #10
  %4 = zext i32 %call122.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call122.i, label %if.then [
    i32 -11, label %retry.i.retry.i_crit_edge
    i32 0, label %do.body
  ]

retry.i.retry.i_crit_edge:                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i

if.then:                                          ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

do.body:                                          ; preds = %retry.i
  %inval_cache = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 11
  %5 = ptrtoint ptr %inval_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inval_cache, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %do.body.do.end_crit_edge, label %if.then3

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip, align 4
  %add = add i32 %8, %offset
  tail call void %6(ptr noundef %map, i32 noundef %add, i32 noundef %size) #10
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body.do.end_crit_edge
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.not = icmp eq i32 %10, 3
  br i1 %cmp.not, label %do.end.if.end10_crit_edge, label %if.then7

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 144, ptr noundef %map, ptr noundef %1) #10
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip, align 4
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
  call void %12(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %14) #10
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %state, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end.if.end10_crit_edge
  %copy_from = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 8
  %24 = ptrtoint ptr %copy_from to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %copy_from, align 4
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chip, align 4
  %add12 = add i32 %27, %offset
  call void %25(ptr noundef %map, ptr noundef %buf, i32 noundef %add12, i32 noundef %size) #10
  %28 = ptrtoint ptr %inval_cache to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inval_cache, align 4
  %tobool15.not = icmp eq ptr %29, null
  br i1 %tobool15.not, label %if.end10.do.end22_crit_edge, label %if.then16

if.end10.do.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chip, align 4
  %add19 = add i32 %31, %offset
  call void %29(ptr noundef %map, i32 noundef %add19, i32 noundef %size) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %if.end10.do.end22_crit_edge
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then
  ret i32 %call122.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_otp_write(ptr noundef %map, ptr noundef %chip, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %size, i32 noundef %prot, i32 noundef %grpno, i32 noundef %grpsz) #0 align 64 {
entry:
  %orig.i = alloca %union.map_word, align 4
  %datum.sroa.0 = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not98 = icmp eq i32 %size, 0
  br i1 %tobool.not98, label %entry.cleanup11_crit_edge, label %while.body.lr.ph

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

while.body.lr.ph:                                 ; preds = %entry
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
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
  %offset.addr.0103 = phi i32 [ %offset, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %buf.addr.0100 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %size.addr.099 = phi i32 [ %size, %while.body.lr.ph ], [ %sub7, %cleanup.while.body_crit_edge ]
  %0 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bankwidth, align 4
  %neg = sub i32 0, %1
  %and = and i32 %offset.addr.0103, %neg
  %sub1 = sub i32 %offset.addr.0103, %and
  %sub3 = sub i32 %1, %sub1
  %2 = tail call i32 @llvm.smin.i32(i32 %size.addr.099, i32 %sub3)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %datum.sroa.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp slt i32 %1, 4
  %3 = call ptr @memset(ptr %datum.sroa.0, i32 255, i32 32)
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw i32 %1, 3
  %div9.i = and i32 %add.i, -4
  %4 = call ptr @memset(ptr %datum.sroa.0, i32 255, i32 %div9.i)
  br label %map_word_ff.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl i32 %1, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  %5 = ptrtoint ptr %datum.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %datum.sroa.0, align 4, !alias.scope !243
  br label %map_word_ff.exit

map_word_ff.exit:                                 ; preds = %if.then.i, %for.body.preheader.i
  %6 = ptrtoint ptr %datum.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load = load i32, ptr %datum.sroa.0, align 4
  %7 = ptrtoint ptr %datum.sroa.0.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %datum.sroa.0.4.datum.sroa.0.4.datum.sroa.0.4..fca.1.load = load i32, ptr %datum.sroa.0.4..sroa_idx, align 4
  %8 = ptrtoint ptr %datum.sroa.0.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %datum.sroa.0.8.datum.sroa.0.8.datum.sroa.0.8..fca.2.load = load i32, ptr %datum.sroa.0.8..sroa_idx, align 4
  %9 = ptrtoint ptr %datum.sroa.0.12..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %datum.sroa.0.12.datum.sroa.0.12.datum.sroa.0.12..fca.3.load = load i32, ptr %datum.sroa.0.12..sroa_idx, align 4
  %10 = ptrtoint ptr %datum.sroa.0.16..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %datum.sroa.0.16.datum.sroa.0.16.datum.sroa.0.16..fca.4.load = load i32, ptr %datum.sroa.0.16..sroa_idx, align 4
  %11 = ptrtoint ptr %datum.sroa.0.20..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %datum.sroa.0.20.datum.sroa.0.20.datum.sroa.0.20..fca.5.load = load i32, ptr %datum.sroa.0.20..sroa_idx, align 4
  %12 = ptrtoint ptr %datum.sroa.0.24..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %datum.sroa.0.24.datum.sroa.0.24.datum.sroa.0.24..fca.6.load = load i32, ptr %datum.sroa.0.24..sroa_idx, align 4
  %13 = ptrtoint ptr %datum.sroa.0.28..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %datum.sroa.0.28.datum.sroa.0.28.datum.sroa.0.28..fca.7.load = load i32, ptr %datum.sroa.0.28..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i)
  %14 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load, ptr %orig.i, align 4, !noalias !246
  %15 = ptrtoint ptr %orig.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %datum.sroa.0.4.datum.sroa.0.4.datum.sroa.0.4..fca.1.load, ptr %orig.coerce.fca.1.gep.i, align 4, !noalias !246
  %16 = ptrtoint ptr %orig.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %datum.sroa.0.8.datum.sroa.0.8.datum.sroa.0.8..fca.2.load, ptr %orig.coerce.fca.2.gep.i, align 4, !noalias !246
  %17 = ptrtoint ptr %orig.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %datum.sroa.0.12.datum.sroa.0.12.datum.sroa.0.12..fca.3.load, ptr %orig.coerce.fca.3.gep.i, align 4, !noalias !246
  %18 = ptrtoint ptr %orig.coerce.fca.4.gep.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %datum.sroa.0.16.datum.sroa.0.16.datum.sroa.0.16..fca.4.load, ptr %orig.coerce.fca.4.gep.i, align 4, !noalias !246
  %19 = ptrtoint ptr %orig.coerce.fca.5.gep.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %datum.sroa.0.20.datum.sroa.0.20.datum.sroa.0.20..fca.5.load, ptr %orig.coerce.fca.5.gep.i, align 4, !noalias !246
  %20 = ptrtoint ptr %orig.coerce.fca.6.gep.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %datum.sroa.0.24.datum.sroa.0.24.datum.sroa.0.24..fca.6.load, ptr %orig.coerce.fca.6.gep.i, align 4, !noalias !246
  %21 = ptrtoint ptr %orig.coerce.fca.7.gep.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %datum.sroa.0.28.datum.sroa.0.28.datum.sroa.0.28..fca.7.load, ptr %orig.coerce.fca.7.gep.i, align 4, !noalias !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i55 = icmp sgt i32 %1, 4
  br i1 %cmp.i55, label %if.then.i57, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %map_word_ff.exit
  %add.i56 = add i32 %2, %sub1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i56, i32 %sub1)
  %cmp119.i = icmp sgt i32 %add.i56, %sub1
  br i1 %cmp119.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end.loopexit.i_crit_edge

for.cond.preheader.i.if.end.loopexit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.loopexit.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i57:                                      ; preds = %map_word_ff.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %orig.i, i32 %sub1
  %22 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf.addr.0100, i32 %2)
  br label %map_word_load_partial.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %sub1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %or1820.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load, %for.cond.preheader.i.for.body.i_crit_edge ]
  %23 = xor i32 %i.021.i, -1
  %sub3.i = add i32 %1, %23
  %mul.i58 = shl i32 %sub3.i, 3
  %shl.i = shl i32 255, %mul.i58
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %or1820.i, %neg.i
  %sub4.i = sub i32 %i.021.i, %sub1
  %arrayidx5.i = getelementptr i8, ptr %buf.addr.0100, i32 %sub4.i
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.i, align 1, !noalias !246
  %conv.i = zext i8 %25 to i32
  %shl6.i = shl i32 %conv.i, %mul.i58
  %or.i = or i32 %shl6.i, %and.i
  %inc.i = add nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i56
  br i1 %exitcond.not.i, label %for.body.i.if.end.loopexit.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end.loopexit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.loopexit.i

if.end.loopexit.i:                                ; preds = %for.body.i.if.end.loopexit.i_crit_edge, %for.cond.preheader.i.if.end.loopexit.i_crit_edge
  %or18.lcssa.i = phi i32 [ %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load, %for.cond.preheader.i.if.end.loopexit.i_crit_edge ], [ %or.i, %for.body.i.if.end.loopexit.i_crit_edge ]
  %26 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or18.lcssa.i, ptr %orig.i, align 4, !noalias !246
  br label %map_word_load_partial.exit

map_word_load_partial.exit:                       ; preds = %if.end.loopexit.i, %if.then.i57
  %27 = call ptr @memcpy(ptr %datum.sroa.0, ptr %orig.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i)
  %28 = ptrtoint ptr %datum.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load14 = load i32, ptr %datum.sroa.0, align 4
  %.fca.0.insert15 = insertvalue [8 x i32] poison, i32 %datum.sroa.0.0.datum.sroa.0.0.datum.sroa.0.0..fca.0.load14, 0
  %29 = ptrtoint ptr %datum.sroa.0.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %datum.sroa.0.4.datum.sroa.0.4.datum.sroa.0.4..fca.1.load17 = load i32, ptr %datum.sroa.0.4..sroa_idx, align 4
  %.fca.1.insert18 = insertvalue [8 x i32] %.fca.0.insert15, i32 %datum.sroa.0.4.datum.sroa.0.4.datum.sroa.0.4..fca.1.load17, 1
  %30 = ptrtoint ptr %datum.sroa.0.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %datum.sroa.0.8.datum.sroa.0.8.datum.sroa.0.8..fca.2.load20 = load i32, ptr %datum.sroa.0.8..sroa_idx, align 4
  %.fca.2.insert21 = insertvalue [8 x i32] %.fca.1.insert18, i32 %datum.sroa.0.8.datum.sroa.0.8.datum.sroa.0.8..fca.2.load20, 2
  %31 = ptrtoint ptr %datum.sroa.0.12..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %datum.sroa.0.12.datum.sroa.0.12.datum.sroa.0.12..fca.3.load23 = load i32, ptr %datum.sroa.0.12..sroa_idx, align 4
  %.fca.3.insert24 = insertvalue [8 x i32] %.fca.2.insert21, i32 %datum.sroa.0.12.datum.sroa.0.12.datum.sroa.0.12..fca.3.load23, 3
  %32 = ptrtoint ptr %datum.sroa.0.16..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %datum.sroa.0.16.datum.sroa.0.16.datum.sroa.0.16..fca.4.load26 = load i32, ptr %datum.sroa.0.16..sroa_idx, align 4
  %.fca.4.insert27 = insertvalue [8 x i32] %.fca.3.insert24, i32 %datum.sroa.0.16.datum.sroa.0.16.datum.sroa.0.16..fca.4.load26, 4
  %33 = ptrtoint ptr %datum.sroa.0.20..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %datum.sroa.0.20.datum.sroa.0.20.datum.sroa.0.20..fca.5.load29 = load i32, ptr %datum.sroa.0.20..sroa_idx, align 4
  %.fca.5.insert30 = insertvalue [8 x i32] %.fca.4.insert27, i32 %datum.sroa.0.20.datum.sroa.0.20.datum.sroa.0.20..fca.5.load29, 5
  %34 = ptrtoint ptr %datum.sroa.0.24..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %datum.sroa.0.24.datum.sroa.0.24.datum.sroa.0.24..fca.6.load32 = load i32, ptr %datum.sroa.0.24..sroa_idx, align 4
  %.fca.6.insert33 = insertvalue [8 x i32] %.fca.5.insert30, i32 %datum.sroa.0.24.datum.sroa.0.24.datum.sroa.0.24..fca.6.load32, 6
  %35 = ptrtoint ptr %datum.sroa.0.28..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %datum.sroa.0.28.datum.sroa.0.28.datum.sroa.0.28..fca.7.load35 = load i32, ptr %datum.sroa.0.28..sroa_idx, align 4
  %.fca.7.insert36 = insertvalue [8 x i32] %.fca.6.insert33, i32 %datum.sroa.0.28.datum.sroa.0.28.datum.sroa.0.28..fca.7.load35, 7
  %call = tail call fastcc i32 @do_write_oneword(ptr noundef %map, ptr noundef %chip, i32 noundef %and, [8 x i32] %.fca.7.insert36, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %map_word_load_partial.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %datum.sroa.0)
  br label %cleanup11

cleanup:                                          ; preds = %map_word_load_partial.exit
  %add = add i32 %2, %offset.addr.0103
  %add.ptr = getelementptr i8, ptr %buf.addr.0100, i32 %2
  %sub7 = sub i32 %size.addr.099, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %datum.sroa.0)
  %tobool.not = icmp eq i32 %sub7, 0
  br i1 %tobool.not, label %cleanup.cleanup11_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup11_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup.cleanup11_crit_edge, %cleanup.thread, %entry.cleanup11_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup.thread ], [ 0, %entry.cleanup11_crit_edge ], [ 0, %cleanup.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_write_oneword(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, [8 x i32] %datum.coerce, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %status = alloca %union.map_word, align 4
  %tmp = alloca %union.map_word, align 4
  %tmp2 = alloca %union.map_word, align 4
  %tmp5 = alloca %union.map_word, align 4
  %tmp29 = alloca %union.map_word, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp42 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #10
  %2 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 7
  %9 = call ptr @memset(ptr %status, i32 255, i32 32)
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip, align 4
  %add = add i32 %11, %adr
  %12 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 9, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfiq, align 4
  %P_ID = getelementptr inbounds %struct.cfi_ident, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %P_ID to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %P_ID, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %16)
  %cmp.not = icmp eq i16 %16, 512
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #10
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp, i32 noundef 64, ptr noundef %map, ptr noundef %1) #10
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %write_cmd.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  %write_cmd.sroa.7.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %18 = ptrtoint ptr %write_cmd.sroa.7.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %write_cmd.sroa.7.0.copyload = load i32, ptr %write_cmd.sroa.7.0.tmp.sroa_idx, align 4
  %write_cmd.sroa.9.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %19 = ptrtoint ptr %write_cmd.sroa.9.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %write_cmd.sroa.9.0.copyload = load i32, ptr %write_cmd.sroa.9.0.tmp.sroa_idx, align 4
  %write_cmd.sroa.11.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 12
  %20 = ptrtoint ptr %write_cmd.sroa.11.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %write_cmd.sroa.11.0.copyload = load i32, ptr %write_cmd.sroa.11.0.tmp.sroa_idx, align 4
  %write_cmd.sroa.13.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 16
  %21 = ptrtoint ptr %write_cmd.sroa.13.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %write_cmd.sroa.13.0.copyload = load i32, ptr %write_cmd.sroa.13.0.tmp.sroa_idx, align 4
  %write_cmd.sroa.15.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 20
  %22 = ptrtoint ptr %write_cmd.sroa.15.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %write_cmd.sroa.15.0.copyload = load i32, ptr %write_cmd.sroa.15.0.tmp.sroa_idx, align 4
  %write_cmd.sroa.17.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 24
  %23 = ptrtoint ptr %write_cmd.sroa.17.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %write_cmd.sroa.17.0.copyload = load i32, ptr %write_cmd.sroa.17.0.tmp.sroa_idx, align 4
  %write_cmd.sroa.19.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 28
  %24 = ptrtoint ptr %write_cmd.sroa.19.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %write_cmd.sroa.19.0.copyload = load i32, ptr %write_cmd.sroa.19.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #10
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp2) #10
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp2, i32 noundef 65, ptr noundef %map, ptr noundef %1) #10
  %25 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %write_cmd.sroa.0.0.copyload134 = load i32, ptr %tmp2, align 4
  %write_cmd.sroa.7.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 4
  %26 = ptrtoint ptr %write_cmd.sroa.7.0.tmp2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %write_cmd.sroa.7.0.copyload136 = load i32, ptr %write_cmd.sroa.7.0.tmp2.sroa_idx, align 4
  %write_cmd.sroa.9.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 8
  %27 = ptrtoint ptr %write_cmd.sroa.9.0.tmp2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %write_cmd.sroa.9.0.copyload138 = load i32, ptr %write_cmd.sroa.9.0.tmp2.sroa_idx, align 4
  %write_cmd.sroa.11.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 12
  %28 = ptrtoint ptr %write_cmd.sroa.11.0.tmp2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %write_cmd.sroa.11.0.copyload140 = load i32, ptr %write_cmd.sroa.11.0.tmp2.sroa_idx, align 4
  %write_cmd.sroa.13.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 16
  %29 = ptrtoint ptr %write_cmd.sroa.13.0.tmp2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %write_cmd.sroa.13.0.copyload142 = load i32, ptr %write_cmd.sroa.13.0.tmp2.sroa_idx, align 4
  %write_cmd.sroa.15.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 20
  %30 = ptrtoint ptr %write_cmd.sroa.15.0.tmp2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %write_cmd.sroa.15.0.copyload144 = load i32, ptr %write_cmd.sroa.15.0.tmp2.sroa_idx, align 4
  %write_cmd.sroa.17.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 24
  %31 = ptrtoint ptr %write_cmd.sroa.17.0.tmp2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %write_cmd.sroa.17.0.copyload146 = load i32, ptr %write_cmd.sroa.17.0.tmp2.sroa_idx, align 4
  %write_cmd.sroa.19.0.tmp2.sroa_idx = getelementptr inbounds i8, ptr %tmp2, i32 28
  %32 = ptrtoint ptr %write_cmd.sroa.19.0.tmp2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %write_cmd.sroa.19.0.copyload148 = load i32, ptr %write_cmd.sroa.19.0.tmp2.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp2) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp5) #10
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp5, i32 noundef 192, ptr noundef %map, ptr noundef %1) #10
  %33 = ptrtoint ptr %tmp5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %write_cmd.sroa.0.0.copyload135 = load i32, ptr %tmp5, align 4
  %write_cmd.sroa.7.0.tmp5.sroa_idx = getelementptr inbounds i8, ptr %tmp5, i32 4
  %34 = ptrtoint ptr %write_cmd.sroa.7.0.tmp5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %write_cmd.sroa.7.0.copyload137 = load i32, ptr %write_cmd.sroa.7.0.tmp5.sroa_idx, align 4
  %write_cmd.sroa.9.0.tmp5.sroa_idx = getelementptr inbounds i8, ptr %tmp5, i32 8
  %35 = ptrtoint ptr %write_cmd.sroa.9.0.tmp5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %write_cmd.sroa.9.0.copyload139 = load i32, ptr %write_cmd.sroa.9.0.tmp5.sroa_idx, align 4
  %write_cmd.sroa.11.0.tmp5.sroa_idx = getelementptr inbounds i8, ptr %tmp5, i32 12
  %36 = ptrtoint ptr %write_cmd.sroa.11.0.tmp5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %write_cmd.sroa.11.0.copyload141 = load i32, ptr %write_cmd.sroa.11.0.tmp5.sroa_idx, align 4
  %write_cmd.sroa.13.0.tmp5.sroa_idx = getelementptr inbounds i8, ptr %tmp5, i32 16
  %37 = ptrtoint ptr %write_cmd.sroa.13.0.tmp5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %write_cmd.sroa.13.0.copyload143 = load i32, ptr %write_cmd.sroa.13.0.tmp5.sroa_idx, align 4
  %write_cmd.sroa.15.0.tmp5.sroa_idx = getelementptr inbounds i8, ptr %tmp5, i32 20
  %38 = ptrtoint ptr %write_cmd.sroa.15.0.tmp5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %write_cmd.sroa.15.0.copyload145 = load i32, ptr %write_cmd.sroa.15.0.tmp5.sroa_idx, align 4
  %write_cmd.sroa.17.0.tmp5.sroa_idx = getelementptr inbounds i8, ptr %tmp5, i32 24
  %39 = ptrtoint ptr %write_cmd.sroa.17.0.tmp5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %write_cmd.sroa.17.0.copyload147 = load i32, ptr %write_cmd.sroa.17.0.tmp5.sroa_idx, align 4
  %write_cmd.sroa.19.0.tmp5.sroa_idx = getelementptr inbounds i8, ptr %tmp5, i32 28
  %40 = ptrtoint ptr %write_cmd.sroa.19.0.tmp5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %write_cmd.sroa.19.0.copyload149 = load i32, ptr %write_cmd.sroa.19.0.tmp5.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp5) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %cond.false, %cond.true
  %write_cmd.sroa.17.0 = phi i32 [ %write_cmd.sroa.17.0.copyload147, %sw.bb4 ], [ %write_cmd.sroa.17.0.copyload, %cond.true ], [ %write_cmd.sroa.17.0.copyload146, %cond.false ]
  %write_cmd.sroa.15.0 = phi i32 [ %write_cmd.sroa.15.0.copyload145, %sw.bb4 ], [ %write_cmd.sroa.15.0.copyload, %cond.true ], [ %write_cmd.sroa.15.0.copyload144, %cond.false ]
  %write_cmd.sroa.13.0 = phi i32 [ %write_cmd.sroa.13.0.copyload143, %sw.bb4 ], [ %write_cmd.sroa.13.0.copyload, %cond.true ], [ %write_cmd.sroa.13.0.copyload142, %cond.false ]
  %write_cmd.sroa.11.0 = phi i32 [ %write_cmd.sroa.11.0.copyload141, %sw.bb4 ], [ %write_cmd.sroa.11.0.copyload, %cond.true ], [ %write_cmd.sroa.11.0.copyload140, %cond.false ]
  %write_cmd.sroa.9.0 = phi i32 [ %write_cmd.sroa.9.0.copyload139, %sw.bb4 ], [ %write_cmd.sroa.9.0.copyload, %cond.true ], [ %write_cmd.sroa.9.0.copyload138, %cond.false ]
  %write_cmd.sroa.7.0 = phi i32 [ %write_cmd.sroa.7.0.copyload137, %sw.bb4 ], [ %write_cmd.sroa.7.0.copyload, %cond.true ], [ %write_cmd.sroa.7.0.copyload136, %cond.false ]
  %write_cmd.sroa.0.0 = phi i32 [ %write_cmd.sroa.0.0.copyload135, %sw.bb4 ], [ %write_cmd.sroa.0.0.copyload, %cond.true ], [ %write_cmd.sroa.0.0.copyload134, %cond.false ]
  %write_cmd.sroa.19.0 = phi i32 [ %write_cmd.sroa.19.0.copyload149, %sw.bb4 ], [ %write_cmd.sroa.19.0.copyload, %cond.true ], [ %write_cmd.sroa.19.0.copyload148, %cond.false ]
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body:                                          ; preds = %sw.epilog
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %41 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_vpp, align 4
  %tobool7.not = icmp eq ptr %42, null
  br i1 %tobool7.not, label %do.body.do.end_crit_edge, label %if.then8

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void %42(ptr noundef %map, i32 noundef 1) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body.do.end_crit_edge
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %43 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write, align 4
  %.fca.0.insert112 = insertvalue [8 x i32] poison, i32 %write_cmd.sroa.0.0, 0
  %.fca.1.insert115 = insertvalue [8 x i32] %.fca.0.insert112, i32 %write_cmd.sroa.7.0, 1
  %.fca.2.insert118 = insertvalue [8 x i32] %.fca.1.insert115, i32 %write_cmd.sroa.9.0, 2
  %.fca.3.insert121 = insertvalue [8 x i32] %.fca.2.insert118, i32 %write_cmd.sroa.11.0, 3
  %.fca.4.insert124 = insertvalue [8 x i32] %.fca.3.insert121, i32 %write_cmd.sroa.13.0, 4
  %.fca.5.insert127 = insertvalue [8 x i32] %.fca.4.insert124, i32 %write_cmd.sroa.15.0, 5
  %.fca.6.insert130 = insertvalue [8 x i32] %.fca.5.insert127, i32 %write_cmd.sroa.17.0, 6
  %.fca.7.insert133 = insertvalue [8 x i32] %.fca.6.insert130, i32 %write_cmd.sroa.19.0, 7
  call void %44(ptr noundef %map, [8 x i32] %.fca.7.insert133, i32 noundef %add) #10
  %45 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write, align 4
  call void %46(ptr noundef %map, [8 x i32] %datum.coerce, i32 noundef %add) #10
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mode, ptr %state, align 4
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %48 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bankwidth, align 4
  %word_write_time = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 9
  %50 = ptrtoint ptr %word_write_time to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %word_write_time, align 4
  %word_write_time_max = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 12
  %52 = ptrtoint ptr %word_write_time_max to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %word_write_time_max, align 4
  %call14 = call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef %add, i32 noundef %49, i32 noundef %51, i32 noundef %53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map, align 4
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %55) #14
  br label %do.body66

if.end22:                                         ; preds = %do.end
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %56 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read, align 4
  call void %57(ptr nonnull sret(%union.map_word) align 4 %status, ptr noundef %map, i32 noundef %add) #10
  %58 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bankwidth, align 4
  %add26258 = add i32 %59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add26258)
  %cmp27260.not = icmp ult i32 %add26258, 4
  br i1 %cmp27260.not, label %if.end22.do.body66_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.do.body66_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0261, 1
  %60 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bankwidth, align 4
  %add26 = add i32 %61, 3
  %div257 = lshr i32 %add26, 2
  %cmp27 = icmp ult i32 %inc, %div257
  br i1 %cmp27, label %for.cond.for.body_crit_edge, label %for.cond.do.body66_crit_edge

for.cond.do.body66_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end22.for.body_crit_edge
  %i.0261 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0261
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp29, i32 noundef 26, ptr noundef %map, ptr noundef %1) #10
  %arrayidx30 = getelementptr [8 x i32], ptr %tmp29, i32 0, i32 %i.0261
  %64 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx30, align 4
  %and = and i32 %65, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %for.cond, label %if.then36.critedge

if.then36.critedge:                               ; preds = %for.body
  %66 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.0.load151 = load i32, ptr %status, align 4
  %.fca.0.insert152 = insertvalue [8 x i32] poison, i32 %.fca.0.load151, 0
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.1.load154 = load i32, ptr %2, align 4
  %.fca.1.insert155 = insertvalue [8 x i32] %.fca.0.insert152, i32 %.fca.1.load154, 1
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.2.load157 = load i32, ptr %3, align 4
  %.fca.2.insert158 = insertvalue [8 x i32] %.fca.1.insert155, i32 %.fca.2.load157, 2
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.3.load160 = load i32, ptr %4, align 4
  %.fca.3.insert161 = insertvalue [8 x i32] %.fca.2.insert158, i32 %.fca.3.load160, 3
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.4.load163 = load i32, ptr %5, align 4
  %.fca.4.insert164 = insertvalue [8 x i32] %.fca.3.insert161, i32 %.fca.4.load163, 4
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.5.load166 = load i32, ptr %6, align 4
  %.fca.5.insert167 = insertvalue [8 x i32] %.fca.4.insert164, i32 %.fca.5.load166, 5
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.fca.6.load169 = load i32, ptr %7, align 4
  %.fca.6.insert170 = insertvalue [8 x i32] %.fca.5.insert167, i32 %.fca.6.load169, 6
  %73 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.fca.7.load172 = load i32, ptr %8, align 4
  %.fca.7.insert173 = insertvalue [8 x i32] %.fca.6.insert170, i32 %.fca.7.load172, 7
  %call38 = call i32 @cfi_merge_status([8 x i32] %.fca.7.insert173, ptr noundef %map, ptr noundef %1) #10
  %74 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 80, ptr noundef %map, ptr noundef %1) #10
  %76 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %76)
  %.fca.0.load79 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert80 = insertvalue [8 x i32] poison, i32 %.fca.0.load79, 0
  %.fca.1.gep81 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %77 = ptrtoint ptr %.fca.1.gep81 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.fca.1.load82 = load i32, ptr %.fca.1.gep81, align 4
  %.fca.1.insert83 = insertvalue [8 x i32] %.fca.0.insert80, i32 %.fca.1.load82, 1
  %.fca.2.gep84 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %78 = ptrtoint ptr %.fca.2.gep84 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.fca.2.load85 = load i32, ptr %.fca.2.gep84, align 4
  %.fca.2.insert86 = insertvalue [8 x i32] %.fca.1.insert83, i32 %.fca.2.load85, 2
  %.fca.3.gep87 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %79 = ptrtoint ptr %.fca.3.gep87 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.fca.3.load88 = load i32, ptr %.fca.3.gep87, align 4
  %.fca.3.insert89 = insertvalue [8 x i32] %.fca.2.insert86, i32 %.fca.3.load88, 3
  %.fca.4.gep90 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %80 = ptrtoint ptr %.fca.4.gep90 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.fca.4.load91 = load i32, ptr %.fca.4.gep90, align 4
  %.fca.4.insert92 = insertvalue [8 x i32] %.fca.3.insert89, i32 %.fca.4.load91, 4
  %.fca.5.gep93 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %81 = ptrtoint ptr %.fca.5.gep93 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.fca.5.load94 = load i32, ptr %.fca.5.gep93, align 4
  %.fca.5.insert95 = insertvalue [8 x i32] %.fca.4.insert92, i32 %.fca.5.load94, 5
  %.fca.6.gep96 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %82 = ptrtoint ptr %.fca.6.gep96 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.fca.6.load97 = load i32, ptr %.fca.6.gep96, align 4
  %.fca.6.insert98 = insertvalue [8 x i32] %.fca.5.insert95, i32 %.fca.6.load97, 6
  %.fca.7.gep99 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %83 = ptrtoint ptr %.fca.7.gep99 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.fca.7.load100 = load i32, ptr %.fca.7.gep99, align 4
  %.fca.7.insert101 = insertvalue [8 x i32] %.fca.6.insert98, i32 %.fca.7.load100, 7
  call void %75(ptr noundef %map, [8 x i32] %.fca.7.insert101, i32 noundef %add) #10
  %84 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp42, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %86 = ptrtoint ptr %agg.tmp42 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.fca.0.load = load i32, ptr %agg.tmp42, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 1
  %87 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %87)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 2
  %88 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %88)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 3
  %89 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %89)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 4
  %90 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %90)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 5
  %91 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %91)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 6
  %92 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %92)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 7
  %93 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %93)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %85(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add) #10
  %and44 = and i32 %call38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else, label %if.then36.critedge.do.body66_crit_edge

if.then36.critedge.do.body66_crit_edge:           ; preds = %if.then36.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

if.else:                                          ; preds = %if.then36.critedge
  %and47 = and i32 %call38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %94 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %map, align 4
  br i1 %tobool48.not, label %do.end59, label %do.end52

do.end52:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %95) #14
  br label %do.body66

do.end59:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %95, i32 noundef %call38) #14
  br label %do.body66

do.body66:                                        ; preds = %do.end59, %do.end52, %if.then36.critedge.do.body66_crit_edge, %for.cond.do.body66_crit_edge, %if.end22.do.body66_crit_edge, %do.end19
  %ret.1 = phi i32 [ %call14, %do.end19 ], [ -5, %do.end52 ], [ -22, %do.end59 ], [ -30, %if.then36.critedge.do.body66_crit_edge ], [ 0, %if.end22.do.body66_crit_edge ], [ 0, %for.cond.do.body66_crit_edge ]
  %96 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_vpp, align 4
  %tobool68.not = icmp eq ptr %97, null
  br i1 %tobool68.not, label %do.body66.do.end73_crit_edge, label %if.then69

do.body66.do.end73_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

if.then69:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  call void %97(ptr noundef %map, i32 noundef 0) #10
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body66.do.end73_crit_edge
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end73, %sw.epilog.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.1, %do.end73 ], [ %call, %sw.epilog.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_otp_lock(ptr noundef %map, ptr noundef %chip, i32 noundef %offset, ptr nocapture noundef readnone %buf, i32 noundef %size, i32 noundef %prot, i32 noundef %grpno, i32 noundef %grpsz) #0 align 64 {
entry:
  %datum = alloca %union.map_word, align 4
  %tmp.sroa.0 = alloca [8 x i32], align 4
  %r = alloca %union.map_word, align 4
  %tmp2 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %datum) #10
  %2 = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i32], ptr %datum, i32 0, i32 7
  call void @__sanitizer_cov_trace_cmp4(i32 %size, i32 %grpsz)
  %cmp.not = icmp eq i32 %size, %grpsz
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %9 = call ptr @memset(ptr %tmp.sroa.0, i32 255, i32 32)
  %10 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bankwidth.i, align 4, !noalias !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i = icmp slt i32 %11, 4
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw i32 %11, 3
  %div9.i = and i32 %add.i, -4
  %12 = call ptr @memset(ptr %tmp.sroa.0, i32 255, i32 %div9.i)
  br label %map_word_ff.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl i32 %11, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  %13 = ptrtoint ptr %tmp.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.i, ptr %tmp.sroa.0, align 4, !alias.scope !249
  br label %map_word_ff.exit

map_word_ff.exit:                                 ; preds = %if.then.i, %for.body.preheader.i
  %14 = call ptr @memcpy(ptr %datum, ptr %tmp.sroa.0, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.sroa.0)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #10
  %15 = call ptr @memset(ptr %r, i32 255, i32 32)
  %16 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bankwidth.i, align 4
  %add15 = add i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add15)
  %cmp117.not = icmp ult i32 %add15, 4
  br i1 %cmp117.not, label %map_word_ff.exit.for.end_crit_edge, label %for.body.lr.ph

map_word_ff.exit.for.end_crit_edge:               ; preds = %map_word_ff.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %map_word_ff.exit
  %shl = shl nuw i32 1, %grpno
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr %datum, i32 0, i32 %i.018
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp2, i32 noundef %shl, ptr noundef %map, ptr noundef %1) #10
  %arrayidx3 = getelementptr [8 x i32], ptr %tmp2, i32 0, i32 %i.018
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3, align 4
  %neg = xor i32 %21, -1
  %and = and i32 %19, %neg
  %arrayidx4 = getelementptr [8 x i32], ptr %r, i32 0, i32 %i.018
  %22 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.018, 1
  %23 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bankwidth.i, align 4
  %add = add i32 %24, 3
  %div14 = lshr i32 %add, 2
  %cmp1 = icmp ult i32 %inc, %div14
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %map_word_ff.exit.for.end_crit_edge
  %25 = call ptr @memcpy(ptr %datum, ptr %r, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #10
  %26 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.0.load = load i32, ptr %datum, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.1.load = load i32, ptr %2, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.2.load = load i32, ptr %3, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.3.load = load i32, ptr %4, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.4.load = load i32, ptr %5, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.5.load = load i32, ptr %6, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.6.load = load i32, ptr %7, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.fca.7.load = load i32, ptr %8, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %call = call fastcc i32 @do_write_oneword(ptr noundef %map, ptr noundef %chip, i32 noundef %prot, [8 x i32] %.fca.7.insert, i32 noundef 9)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.end ], [ -18, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %datum) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_erase_oneblock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %len, ptr nocapture noundef readnone %thunk) #0 align 64 {
entry:
  %status = alloca %union.map_word, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp7 = alloca %union.map_word, align 4
  %agg.tmp10 = alloca %union.map_word, align 4
  %agg.tmp16 = alloca %union.map_word, align 4
  %agg.tmp25 = alloca %union.map_word, align 4
  %tmp31 = alloca %union.map_word, align 4
  %agg.tmp42 = alloca %union.map_word, align 4
  %agg.tmp45 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #10
  %2 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i32], ptr %status, i32 0, i32 7
  %9 = call ptr @memset(ptr %status, i32 255, i32 32)
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip, align 4
  %add = add i32 %11, %adr
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call428 = call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call428)
  %tobool.not429 = icmp eq i32 %call428, 0
  br i1 %tobool.not429, label %do.body.lr.ph, label %entry.cleanup109_crit_edge

entry.cleanup109_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

do.body.lr.ph:                                    ; preds = %entry
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep245 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep248 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep251 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep254 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep257 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep260 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep263 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %.fca.1.gep221 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 1
  %.fca.2.gep224 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 2
  %.fca.3.gep227 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 3
  %.fca.4.gep230 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 4
  %.fca.5.gep233 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 5
  %.fca.6.gep236 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 6
  %.fca.7.gep239 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 7
  %.fca.1.gep197 = getelementptr inbounds [8 x i32], ptr %agg.tmp10, i32 0, i32 1
  %.fca.2.gep200 = getelementptr inbounds [8 x i32], ptr %agg.tmp10, i32 0, i32 2
  %.fca.3.gep203 = getelementptr inbounds [8 x i32], ptr %agg.tmp10, i32 0, i32 3
  %.fca.4.gep206 = getelementptr inbounds [8 x i32], ptr %agg.tmp10, i32 0, i32 4
  %.fca.5.gep209 = getelementptr inbounds [8 x i32], ptr %agg.tmp10, i32 0, i32 5
  %.fca.6.gep212 = getelementptr inbounds [8 x i32], ptr %agg.tmp10, i32 0, i32 6
  %.fca.7.gep215 = getelementptr inbounds [8 x i32], ptr %agg.tmp10, i32 0, i32 7
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %erase_suspended = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 4
  %in_progress_block_addr = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 5
  %neg = sub i32 0, %len
  %in_progress_block_mask = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 6
  %erase_time = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 11
  %erase_time_max = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 14
  %.fca.1.gep149 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 1
  %.fca.2.gep152 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 2
  %.fca.3.gep155 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 3
  %.fca.4.gep158 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 4
  %.fca.5.gep161 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 5
  %.fca.6.gep164 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 6
  %.fca.7.gep167 = getelementptr inbounds [8 x i32], ptr %agg.tmp25, i32 0, i32 7
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %.fca.1.gep116 = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 1
  %.fca.2.gep119 = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 2
  %.fca.3.gep122 = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 3
  %.fca.4.gep125 = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 4
  %.fca.5.gep128 = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 5
  %.fca.6.gep131 = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 6
  %.fca.7.gep134 = getelementptr inbounds [8 x i32], ptr %agg.tmp42, i32 0, i32 7
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp45, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp45, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp45, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp45, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp45, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp45, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp45, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %do.body.lr.ph
  %retries.0430 = phi i32 [ 3, %do.body.lr.ph ], [ %dec, %cleanup.do.body_crit_edge ]
  %12 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_vpp, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %do.body.do.end_crit_edge, label %if.then3

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void %13(ptr noundef %map, i32 noundef 1) #10
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body.do.end_crit_edge
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 80, ptr noundef %map, ptr noundef %1) #10
  %16 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.0.load243 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert244 = insertvalue [8 x i32] poison, i32 %.fca.0.load243, 0
  %17 = ptrtoint ptr %.fca.1.gep245 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.1.load246 = load i32, ptr %.fca.1.gep245, align 4
  %.fca.1.insert247 = insertvalue [8 x i32] %.fca.0.insert244, i32 %.fca.1.load246, 1
  %18 = ptrtoint ptr %.fca.2.gep248 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.2.load249 = load i32, ptr %.fca.2.gep248, align 4
  %.fca.2.insert250 = insertvalue [8 x i32] %.fca.1.insert247, i32 %.fca.2.load249, 2
  %19 = ptrtoint ptr %.fca.3.gep251 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.3.load252 = load i32, ptr %.fca.3.gep251, align 4
  %.fca.3.insert253 = insertvalue [8 x i32] %.fca.2.insert250, i32 %.fca.3.load252, 3
  %20 = ptrtoint ptr %.fca.4.gep254 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.4.load255 = load i32, ptr %.fca.4.gep254, align 4
  %.fca.4.insert256 = insertvalue [8 x i32] %.fca.3.insert253, i32 %.fca.4.load255, 4
  %21 = ptrtoint ptr %.fca.5.gep257 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.fca.5.load258 = load i32, ptr %.fca.5.gep257, align 4
  %.fca.5.insert259 = insertvalue [8 x i32] %.fca.4.insert256, i32 %.fca.5.load258, 5
  %22 = ptrtoint ptr %.fca.6.gep260 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.fca.6.load261 = load i32, ptr %.fca.6.gep260, align 4
  %.fca.6.insert262 = insertvalue [8 x i32] %.fca.5.insert259, i32 %.fca.6.load261, 6
  %23 = ptrtoint ptr %.fca.7.gep263 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.7.load264 = load i32, ptr %.fca.7.gep263, align 4
  %.fca.7.insert265 = insertvalue [8 x i32] %.fca.6.insert262, i32 %.fca.7.load264, 7
  call void %15(ptr noundef %map, [8 x i32] %.fca.7.insert265, i32 noundef %add) #10
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp7, i32 noundef 32, ptr noundef %map, ptr noundef %1) #10
  %26 = ptrtoint ptr %agg.tmp7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.0.load219 = load i32, ptr %agg.tmp7, align 4
  %.fca.0.insert220 = insertvalue [8 x i32] poison, i32 %.fca.0.load219, 0
  %27 = ptrtoint ptr %.fca.1.gep221 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.1.load222 = load i32, ptr %.fca.1.gep221, align 4
  %.fca.1.insert223 = insertvalue [8 x i32] %.fca.0.insert220, i32 %.fca.1.load222, 1
  %28 = ptrtoint ptr %.fca.2.gep224 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.2.load225 = load i32, ptr %.fca.2.gep224, align 4
  %.fca.2.insert226 = insertvalue [8 x i32] %.fca.1.insert223, i32 %.fca.2.load225, 2
  %29 = ptrtoint ptr %.fca.3.gep227 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.3.load228 = load i32, ptr %.fca.3.gep227, align 4
  %.fca.3.insert229 = insertvalue [8 x i32] %.fca.2.insert226, i32 %.fca.3.load228, 3
  %30 = ptrtoint ptr %.fca.4.gep230 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.4.load231 = load i32, ptr %.fca.4.gep230, align 4
  %.fca.4.insert232 = insertvalue [8 x i32] %.fca.3.insert229, i32 %.fca.4.load231, 4
  %31 = ptrtoint ptr %.fca.5.gep233 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.5.load234 = load i32, ptr %.fca.5.gep233, align 4
  %.fca.5.insert235 = insertvalue [8 x i32] %.fca.4.insert232, i32 %.fca.5.load234, 5
  %32 = ptrtoint ptr %.fca.6.gep236 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.6.load237 = load i32, ptr %.fca.6.gep236, align 4
  %.fca.6.insert238 = insertvalue [8 x i32] %.fca.5.insert235, i32 %.fca.6.load237, 6
  %33 = ptrtoint ptr %.fca.7.gep239 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.fca.7.load240 = load i32, ptr %.fca.7.gep239, align 4
  %.fca.7.insert241 = insertvalue [8 x i32] %.fca.6.insert238, i32 %.fca.7.load240, 7
  call void %25(ptr noundef %map, [8 x i32] %.fca.7.insert241, i32 noundef %add) #10
  %34 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp10, i32 noundef 208, ptr noundef %map, ptr noundef %1) #10
  %36 = ptrtoint ptr %agg.tmp10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.0.load195 = load i32, ptr %agg.tmp10, align 4
  %.fca.0.insert196 = insertvalue [8 x i32] poison, i32 %.fca.0.load195, 0
  %37 = ptrtoint ptr %.fca.1.gep197 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.1.load198 = load i32, ptr %.fca.1.gep197, align 4
  %.fca.1.insert199 = insertvalue [8 x i32] %.fca.0.insert196, i32 %.fca.1.load198, 1
  %38 = ptrtoint ptr %.fca.2.gep200 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.2.load201 = load i32, ptr %.fca.2.gep200, align 4
  %.fca.2.insert202 = insertvalue [8 x i32] %.fca.1.insert199, i32 %.fca.2.load201, 2
  %39 = ptrtoint ptr %.fca.3.gep203 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.3.load204 = load i32, ptr %.fca.3.gep203, align 4
  %.fca.3.insert205 = insertvalue [8 x i32] %.fca.2.insert202, i32 %.fca.3.load204, 3
  %40 = ptrtoint ptr %.fca.4.gep206 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.4.load207 = load i32, ptr %.fca.4.gep206, align 4
  %.fca.4.insert208 = insertvalue [8 x i32] %.fca.3.insert205, i32 %.fca.4.load207, 4
  %41 = ptrtoint ptr %.fca.5.gep209 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.5.load210 = load i32, ptr %.fca.5.gep209, align 4
  %.fca.5.insert211 = insertvalue [8 x i32] %.fca.4.insert208, i32 %.fca.5.load210, 5
  %42 = ptrtoint ptr %.fca.6.gep212 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.6.load213 = load i32, ptr %.fca.6.gep212, align 4
  %.fca.6.insert214 = insertvalue [8 x i32] %.fca.5.insert211, i32 %.fca.6.load213, 6
  %43 = ptrtoint ptr %.fca.7.gep215 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.7.load216 = load i32, ptr %.fca.7.gep215, align 4
  %.fca.7.insert217 = insertvalue [8 x i32] %.fca.6.insert214, i32 %.fca.7.load216, 7
  call void %35(ptr noundef %map, [8 x i32] %.fca.7.insert217, i32 noundef %add) #10
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %state, align 4
  %45 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %erase_suspended, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %erase_suspended, align 4
  %46 = ptrtoint ptr %in_progress_block_addr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add, ptr %in_progress_block_addr, align 4
  %47 = ptrtoint ptr %in_progress_block_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %neg, ptr %in_progress_block_mask, align 4
  %48 = ptrtoint ptr %erase_time to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %erase_time, align 4
  %50 = ptrtoint ptr %erase_time_max to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %erase_time_max, align 4
  %call12 = call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef %add, i32 noundef %len, i32 noundef %49, i32 noundef %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %52 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write, align 4
  br i1 %tobool13.not, label %if.end23, label %if.then14

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp16, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %54 = ptrtoint ptr %agg.tmp16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.0.load171 = load i32, ptr %agg.tmp16, align 4
  %.fca.0.insert172 = insertvalue [8 x i32] poison, i32 %.fca.0.load171, 0
  %.fca.1.gep173 = getelementptr inbounds [8 x i32], ptr %agg.tmp16, i32 0, i32 1
  %55 = ptrtoint ptr %.fca.1.gep173 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.1.load174 = load i32, ptr %.fca.1.gep173, align 4
  %.fca.1.insert175 = insertvalue [8 x i32] %.fca.0.insert172, i32 %.fca.1.load174, 1
  %.fca.2.gep176 = getelementptr inbounds [8 x i32], ptr %agg.tmp16, i32 0, i32 2
  %56 = ptrtoint ptr %.fca.2.gep176 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.fca.2.load177 = load i32, ptr %.fca.2.gep176, align 4
  %.fca.2.insert178 = insertvalue [8 x i32] %.fca.1.insert175, i32 %.fca.2.load177, 2
  %.fca.3.gep179 = getelementptr inbounds [8 x i32], ptr %agg.tmp16, i32 0, i32 3
  %57 = ptrtoint ptr %.fca.3.gep179 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.fca.3.load180 = load i32, ptr %.fca.3.gep179, align 4
  %.fca.3.insert181 = insertvalue [8 x i32] %.fca.2.insert178, i32 %.fca.3.load180, 3
  %.fca.4.gep182 = getelementptr inbounds [8 x i32], ptr %agg.tmp16, i32 0, i32 4
  %58 = ptrtoint ptr %.fca.4.gep182 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.fca.4.load183 = load i32, ptr %.fca.4.gep182, align 4
  %.fca.4.insert184 = insertvalue [8 x i32] %.fca.3.insert181, i32 %.fca.4.load183, 4
  %.fca.5.gep185 = getelementptr inbounds [8 x i32], ptr %agg.tmp16, i32 0, i32 5
  %59 = ptrtoint ptr %.fca.5.gep185 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.fca.5.load186 = load i32, ptr %.fca.5.gep185, align 4
  %.fca.5.insert187 = insertvalue [8 x i32] %.fca.4.insert184, i32 %.fca.5.load186, 5
  %.fca.6.gep188 = getelementptr inbounds [8 x i32], ptr %agg.tmp16, i32 0, i32 6
  %60 = ptrtoint ptr %.fca.6.gep188 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.fca.6.load189 = load i32, ptr %.fca.6.gep188, align 4
  %.fca.6.insert190 = insertvalue [8 x i32] %.fca.5.insert187, i32 %.fca.6.load189, 6
  %.fca.7.gep191 = getelementptr inbounds [8 x i32], ptr %agg.tmp16, i32 0, i32 7
  %61 = ptrtoint ptr %.fca.7.gep191 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.fca.7.load192 = load i32, ptr %.fca.7.gep191, align 4
  %.fca.7.insert193 = insertvalue [8 x i32] %.fca.6.insert190, i32 %.fca.7.load192, 7
  call void %53(ptr noundef %map, [8 x i32] %.fca.7.insert193, i32 noundef %add) #10
  %62 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %state, align 4
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %64) #14
  br label %do.body100

if.end23:                                         ; preds = %do.end
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp25, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %65 = ptrtoint ptr %agg.tmp25 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.0.load147 = load i32, ptr %agg.tmp25, align 4
  %.fca.0.insert148 = insertvalue [8 x i32] poison, i32 %.fca.0.load147, 0
  %66 = ptrtoint ptr %.fca.1.gep149 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.1.load150 = load i32, ptr %.fca.1.gep149, align 4
  %.fca.1.insert151 = insertvalue [8 x i32] %.fca.0.insert148, i32 %.fca.1.load150, 1
  %67 = ptrtoint ptr %.fca.2.gep152 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.2.load153 = load i32, ptr %.fca.2.gep152, align 4
  %.fca.2.insert154 = insertvalue [8 x i32] %.fca.1.insert151, i32 %.fca.2.load153, 2
  %68 = ptrtoint ptr %.fca.3.gep155 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.3.load156 = load i32, ptr %.fca.3.gep155, align 4
  %.fca.3.insert157 = insertvalue [8 x i32] %.fca.2.insert154, i32 %.fca.3.load156, 3
  %69 = ptrtoint ptr %.fca.4.gep158 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.4.load159 = load i32, ptr %.fca.4.gep158, align 4
  %.fca.4.insert160 = insertvalue [8 x i32] %.fca.3.insert157, i32 %.fca.4.load159, 4
  %70 = ptrtoint ptr %.fca.5.gep161 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.5.load162 = load i32, ptr %.fca.5.gep161, align 4
  %.fca.5.insert163 = insertvalue [8 x i32] %.fca.4.insert160, i32 %.fca.5.load162, 5
  %71 = ptrtoint ptr %.fca.6.gep164 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.6.load165 = load i32, ptr %.fca.6.gep164, align 4
  %.fca.6.insert166 = insertvalue [8 x i32] %.fca.5.insert163, i32 %.fca.6.load165, 6
  %72 = ptrtoint ptr %.fca.7.gep167 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.fca.7.load168 = load i32, ptr %.fca.7.gep167, align 4
  %.fca.7.insert169 = insertvalue [8 x i32] %.fca.6.insert166, i32 %.fca.7.load168, 7
  call void %53(ptr noundef %map, [8 x i32] %.fca.7.insert169, i32 noundef %add) #10
  %73 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %state, align 4
  %74 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read, align 4
  call void %75(ptr nonnull sret(%union.map_word) align 4 %status, ptr noundef %map, i32 noundef %add) #10
  %76 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bankwidth, align 4
  %add30421 = add i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add30421)
  %cmp423.not = icmp ult i32 %add30421, 4
  br i1 %cmp423.not, label %if.end23.do.body100_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.do.body100_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body100

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0424, 1
  %78 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bankwidth, align 4
  %add30 = add i32 %79, 3
  %div379 = lshr i32 %add30, 2
  %cmp = icmp ult i32 %inc, %div379
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.do.body100_crit_edge

for.cond.do.body100_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body100

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end23.for.body_crit_edge
  %i.0424 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0424
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp31, i32 noundef 58, ptr noundef %map, ptr noundef %1) #10
  %arrayidx32 = getelementptr [8 x i32], ptr %tmp31, i32 0, i32 %i.0424
  %82 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx32, align 4
  %and = and i32 %83, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %for.cond, label %if.then38.critedge

if.then38.critedge:                               ; preds = %for.body
  %84 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %84)
  %.fca.0.load270 = load i32, ptr %status, align 4
  %.fca.0.insert271 = insertvalue [8 x i32] poison, i32 %.fca.0.load270, 0
  %85 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.fca.1.load273 = load i32, ptr %2, align 4
  %.fca.1.insert274 = insertvalue [8 x i32] %.fca.0.insert271, i32 %.fca.1.load273, 1
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.fca.2.load276 = load i32, ptr %3, align 4
  %.fca.2.insert277 = insertvalue [8 x i32] %.fca.1.insert274, i32 %.fca.2.load276, 2
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.fca.3.load279 = load i32, ptr %4, align 4
  %.fca.3.insert280 = insertvalue [8 x i32] %.fca.2.insert277, i32 %.fca.3.load279, 3
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.fca.4.load282 = load i32, ptr %5, align 4
  %.fca.4.insert283 = insertvalue [8 x i32] %.fca.3.insert280, i32 %.fca.4.load282, 4
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.fca.5.load285 = load i32, ptr %6, align 4
  %.fca.5.insert286 = insertvalue [8 x i32] %.fca.4.insert283, i32 %.fca.5.load285, 5
  %90 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.fca.6.load288 = load i32, ptr %7, align 4
  %.fca.6.insert289 = insertvalue [8 x i32] %.fca.5.insert286, i32 %.fca.6.load288, 6
  %91 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.fca.7.load291 = load i32, ptr %8, align 4
  %.fca.7.insert292 = insertvalue [8 x i32] %.fca.6.insert289, i32 %.fca.7.load291, 7
  %call40 = call i32 @cfi_merge_status([8 x i32] %.fca.7.insert292, ptr noundef %map, ptr noundef %1) #10
  %92 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp42, i32 noundef 80, ptr noundef %map, ptr noundef %1) #10
  %94 = ptrtoint ptr %agg.tmp42 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.fca.0.load114 = load i32, ptr %agg.tmp42, align 4
  %.fca.0.insert115 = insertvalue [8 x i32] poison, i32 %.fca.0.load114, 0
  %95 = ptrtoint ptr %.fca.1.gep116 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.fca.1.load117 = load i32, ptr %.fca.1.gep116, align 4
  %.fca.1.insert118 = insertvalue [8 x i32] %.fca.0.insert115, i32 %.fca.1.load117, 1
  %96 = ptrtoint ptr %.fca.2.gep119 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.fca.2.load120 = load i32, ptr %.fca.2.gep119, align 4
  %.fca.2.insert121 = insertvalue [8 x i32] %.fca.1.insert118, i32 %.fca.2.load120, 2
  %97 = ptrtoint ptr %.fca.3.gep122 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.fca.3.load123 = load i32, ptr %.fca.3.gep122, align 4
  %.fca.3.insert124 = insertvalue [8 x i32] %.fca.2.insert121, i32 %.fca.3.load123, 3
  %98 = ptrtoint ptr %.fca.4.gep125 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.fca.4.load126 = load i32, ptr %.fca.4.gep125, align 4
  %.fca.4.insert127 = insertvalue [8 x i32] %.fca.3.insert124, i32 %.fca.4.load126, 4
  %99 = ptrtoint ptr %.fca.5.gep128 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.fca.5.load129 = load i32, ptr %.fca.5.gep128, align 4
  %.fca.5.insert130 = insertvalue [8 x i32] %.fca.4.insert127, i32 %.fca.5.load129, 5
  %100 = ptrtoint ptr %.fca.6.gep131 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.fca.6.load132 = load i32, ptr %.fca.6.gep131, align 4
  %.fca.6.insert133 = insertvalue [8 x i32] %.fca.5.insert130, i32 %.fca.6.load132, 6
  %101 = ptrtoint ptr %.fca.7.gep134 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.fca.7.load135 = load i32, ptr %.fca.7.gep134, align 4
  %.fca.7.insert136 = insertvalue [8 x i32] %.fca.6.insert133, i32 %.fca.7.load135, 7
  call void %93(ptr noundef %map, [8 x i32] %.fca.7.insert136, i32 noundef %add) #10
  %102 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp45, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %104 = ptrtoint ptr %agg.tmp45 to i32
  call void @__asan_load4_noabort(i32 %104)
  %.fca.0.load = load i32, ptr %agg.tmp45, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %105 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %105)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %106 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %106)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %107 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %107)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %108 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %108)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %109 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %109)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %110 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %110)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %111 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %111)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %103(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add) #10
  %and47 = and i32 %call40, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and47)
  %cmp48 = icmp eq i32 %and47, 48
  br i1 %cmp48, label %do.end52, label %if.else

do.end52:                                         ; preds = %if.then38.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %map, align 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %113, i32 noundef %call40) #14
  br label %do.body100

if.else:                                          ; preds = %if.then38.critedge
  %and56 = and i32 %call40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else59, label %if.else.do.body100_crit_edge

if.else.do.body100_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body100

if.else59:                                        ; preds = %if.else
  %and60 = and i32 %call40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else69, label %do.end65

do.end65:                                         ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map, align 4
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %115) #14
  br label %do.body100

if.else69:                                        ; preds = %if.else59
  %and70 = and i32 %call40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else69.do.end91_crit_edge, label %land.lhs.true

if.else69.do.end91_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

land.lhs.true:                                    ; preds = %if.else69
  %dec = add nsw i32 %retries.0430, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0430)
  %tobool72.not = icmp eq i32 %retries.0430, 0
  br i1 %tobool72.not, label %land.lhs.true.do.end91_crit_edge, label %do.end76

land.lhs.true.do.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

do.end76:                                         ; preds = %land.lhs.true
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %add, i32 noundef %call40) #14
  %116 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %set_vpp, align 4
  %tobool81.not = icmp eq ptr %117, null
  br i1 %tobool81.not, label %do.end76.cleanup_crit_edge, label %if.then82

do.end76.cleanup_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then82:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  call void %117(ptr noundef %map, i32 noundef 0) #10
  br label %cleanup

do.end91:                                         ; preds = %land.lhs.true.do.end91_crit_edge, %if.else69.do.end91_crit_edge
  %118 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %map, align 4
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %119, i32 noundef %add, i32 noundef %call40) #14
  br label %do.body100

cleanup:                                          ; preds = %if.then82, %do.end76.cleanup_crit_edge
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = call fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 4)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.do.body_crit_edge, label %cleanup.cleanup109_crit_edge

cleanup.cleanup109_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body100:                                       ; preds = %do.end91, %do.end65, %if.else.do.body100_crit_edge, %do.end52, %for.cond.do.body100_crit_edge, %if.end23.do.body100_crit_edge, %if.then14
  %ret.2 = phi i32 [ %call12, %if.then14 ], [ -5, %do.end91 ], [ -5, %do.end65 ], [ -22, %do.end52 ], [ 0, %for.cond.do.body100_crit_edge ], [ 0, %if.end23.do.body100_crit_edge ], [ -30, %if.else.do.body100_crit_edge ]
  %120 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %set_vpp, align 4
  %tobool102.not = icmp eq ptr %121, null
  br i1 %tobool102.not, label %do.body100.do.end107_crit_edge, label %if.then103

do.body100.do.end107_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end107

if.then103:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  call void %121(ptr noundef %map, i32 noundef 0) #10
  br label %do.end107

do.end107:                                        ; preds = %if.then103, %do.body100.do.end107_crit_edge
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  br label %cleanup109

cleanup109:                                       ; preds = %do.end107, %cleanup.cleanup109_crit_edge, %entry.cleanup109_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.end107 ], [ %call428, %entry.cleanup109_crit_edge ], [ %call, %cleanup.cleanup109_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_xxlock_oneblock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, i32 noundef %len, ptr noundef %thunk) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp8 = alloca %union.map_word, align 4
  %agg.tmp13 = alloca %union.map_word, align 4
  %agg.tmp31 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmdset_priv, align 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip, align 4
  %add = add i32 %5, %adr
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br label %retry.i

retry.i:                                          ; preds = %retry.i.retry.i_crit_edge, %entry
  %call122.i = tail call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 15) #10
  %6 = zext i32 %call122.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call122.i, label %if.then [
    i32 -11, label %retry.i.retry.i_crit_edge
    i32 0, label %do.body
  ]

retry.i.retry.i_crit_edge:                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i

if.then:                                          ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

do.body:                                          ; preds = %retry.i
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %7 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_vpp, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %do.body.do.end_crit_edge, label %if.then3

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %8(ptr noundef %map, i32 noundef 1) #10
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body.do.end_crit_edge
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 96, ptr noundef %map, ptr noundef %1) #10
  %11 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.0.load100 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert101 = insertvalue [8 x i32] poison, i32 %.fca.0.load100, 0
  %.fca.1.gep102 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %12 = ptrtoint ptr %.fca.1.gep102 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.1.load103 = load i32, ptr %.fca.1.gep102, align 4
  %.fca.1.insert104 = insertvalue [8 x i32] %.fca.0.insert101, i32 %.fca.1.load103, 1
  %.fca.2.gep105 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %13 = ptrtoint ptr %.fca.2.gep105 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.2.load106 = load i32, ptr %.fca.2.gep105, align 4
  %.fca.2.insert107 = insertvalue [8 x i32] %.fca.1.insert104, i32 %.fca.2.load106, 2
  %.fca.3.gep108 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %14 = ptrtoint ptr %.fca.3.gep108 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.3.load109 = load i32, ptr %.fca.3.gep108, align 4
  %.fca.3.insert110 = insertvalue [8 x i32] %.fca.2.insert107, i32 %.fca.3.load109, 3
  %.fca.4.gep111 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %15 = ptrtoint ptr %.fca.4.gep111 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.4.load112 = load i32, ptr %.fca.4.gep111, align 4
  %.fca.4.insert113 = insertvalue [8 x i32] %.fca.3.insert110, i32 %.fca.4.load112, 4
  %.fca.5.gep114 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %16 = ptrtoint ptr %.fca.5.gep114 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.5.load115 = load i32, ptr %.fca.5.gep114, align 4
  %.fca.5.insert116 = insertvalue [8 x i32] %.fca.4.insert113, i32 %.fca.5.load115, 5
  %.fca.6.gep117 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %17 = ptrtoint ptr %.fca.6.gep117 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.6.load118 = load i32, ptr %.fca.6.gep117, align 4
  %.fca.6.insert119 = insertvalue [8 x i32] %.fca.5.insert116, i32 %.fca.6.load118, 6
  %.fca.7.gep120 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %18 = ptrtoint ptr %.fca.7.gep120 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.7.load121 = load i32, ptr %.fca.7.gep120, align 4
  %.fca.7.insert122 = insertvalue [8 x i32] %.fca.6.insert119, i32 %.fca.7.load121, 7
  call void %10(ptr noundef %map, [8 x i32] %.fca.7.insert122, i32 noundef %add) #10
  %magicptr = ptrtoint ptr %thunk to i32
  %19 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %magicptr, label %do.body17 [
    i32 1, label %if.then6
    i32 2, label %if.then11
  ]

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp8, i32 noundef 1, ptr noundef %map, ptr noundef %1) #10
  br label %if.end24

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp13, i32 noundef 208, ptr noundef %map, ptr noundef %1) #10
  br label %if.end24

do.body17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/cfi_cmdset_0001.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2132, 0\0A.popsection", ""() #10, !srcloc !252
  unreachable

if.end24:                                         ; preds = %if.then11, %if.then6
  %agg.tmp13.sink182 = phi ptr [ %agg.tmp13, %if.then11 ], [ %agg.tmp8, %if.then6 ]
  %.sink176 = phi ptr [ %23, %if.then11 ], [ %21, %if.then6 ]
  %.sink = phi i32 [ 16, %if.then11 ], [ 15, %if.then6 ]
  %24 = ptrtoint ptr %agg.tmp13.sink182 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.0.load52.sink = load i32, ptr %agg.tmp13.sink182, align 4
  %.fca.0.insert53 = insertvalue [8 x i32] poison, i32 %.fca.0.load52.sink, 0
  %.fca.1.gep54 = getelementptr inbounds [8 x i32], ptr %agg.tmp13.sink182, i32 0, i32 1
  %25 = ptrtoint ptr %.fca.1.gep54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.1.load55 = load i32, ptr %.fca.1.gep54, align 4
  %.fca.1.insert56 = insertvalue [8 x i32] %.fca.0.insert53, i32 %.fca.1.load55, 1
  %.fca.2.gep57 = getelementptr inbounds [8 x i32], ptr %agg.tmp13.sink182, i32 0, i32 2
  %26 = ptrtoint ptr %.fca.2.gep57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.2.load58 = load i32, ptr %.fca.2.gep57, align 4
  %.fca.2.insert59 = insertvalue [8 x i32] %.fca.1.insert56, i32 %.fca.2.load58, 2
  %.fca.3.gep60 = getelementptr inbounds [8 x i32], ptr %agg.tmp13.sink182, i32 0, i32 3
  %27 = ptrtoint ptr %.fca.3.gep60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.3.load61 = load i32, ptr %.fca.3.gep60, align 4
  %.fca.3.insert62 = insertvalue [8 x i32] %.fca.2.insert59, i32 %.fca.3.load61, 3
  %.fca.4.gep63 = getelementptr inbounds [8 x i32], ptr %agg.tmp13.sink182, i32 0, i32 4
  %28 = ptrtoint ptr %.fca.4.gep63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.4.load64 = load i32, ptr %.fca.4.gep63, align 4
  %.fca.4.insert65 = insertvalue [8 x i32] %.fca.3.insert62, i32 %.fca.4.load64, 4
  %.fca.5.gep66 = getelementptr inbounds [8 x i32], ptr %agg.tmp13.sink182, i32 0, i32 5
  %29 = ptrtoint ptr %.fca.5.gep66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.5.load67 = load i32, ptr %.fca.5.gep66, align 4
  %.fca.5.insert68 = insertvalue [8 x i32] %.fca.4.insert65, i32 %.fca.5.load67, 5
  %.fca.6.gep69 = getelementptr inbounds [8 x i32], ptr %agg.tmp13.sink182, i32 0, i32 6
  %30 = ptrtoint ptr %.fca.6.gep69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.6.load70 = load i32, ptr %.fca.6.gep69, align 4
  %.fca.6.insert71 = insertvalue [8 x i32] %.fca.5.insert68, i32 %.fca.6.load70, 6
  %.fca.7.gep72 = getelementptr inbounds [8 x i32], ptr %agg.tmp13.sink182, i32 0, i32 7
  %31 = ptrtoint ptr %.fca.7.gep72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.7.load73 = load i32, ptr %.fca.7.gep72, align 4
  %.fca.7.insert74 = insertvalue [8 x i32] %.fca.6.insert71, i32 %.fca.7.load73, 7
  call void %.sink176(ptr noundef %map, [8 x i32] %.fca.7.insert74, i32 noundef %add) #10
  %state15 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %32 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %state15, align 4
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %if.end24.lor.end_crit_edge, label %lor.rhs

if.end24.lor.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %FeatureSupport, align 1
  %and = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %phi.sel = select i1 %tobool26.not, i32 1500, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end24.lor.end_crit_edge
  %35 = phi i32 [ 1500, %if.end24.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %mul = mul nuw nsw i32 %35, 1000
  %call27 = call fastcc i32 @inval_cache_and_wait_for_operation(ptr noundef %map, ptr noundef %chip, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef %35, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.end.do.body39_crit_edge, label %if.then29

lor.end.do.body39_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39

if.then29:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp31, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %38 = ptrtoint ptr %agg.tmp31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.0.load = load i32, ptr %agg.tmp31, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 1
  %39 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 2
  %40 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 3
  %41 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 4
  %42 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 5
  %43 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 6
  %44 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 7
  %45 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %37(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add) #10
  %state33 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %46 = ptrtoint ptr %state33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %state33, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 4
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %48) #14
  br label %do.body39

do.body39:                                        ; preds = %if.then29, %lor.end.do.body39_crit_edge
  %49 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_vpp, align 4
  %tobool41.not = icmp eq ptr %50, null
  br i1 %tobool41.not, label %do.body39.do.end46_crit_edge, label %if.then42

do.body39.do.end46_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

if.then42:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  call void %50(ptr noundef %map, i32 noundef 0) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body39.do.end46_crit_edge
  call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.then
  %retval.0 = phi i32 [ %call122.i, %if.then ], [ %call27, %do.end46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_getlockstatus_oneblock(ptr noundef %map, ptr nocapture noundef %chip, i32 noundef %adr, i32 noundef %len, ptr nocapture noundef readnone %thunk) #0 align 64 {
entry:
  %val.i = alloca %union.map_word, align 4
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interleave, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_type, align 4
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip, align 4
  %add = add i32 %7, %adr
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 144, ptr noundef %map, ptr noundef %1) #10
  %mul = shl i32 %3, 1
  %mul1 = mul i32 %mul, %5
  %add2 = add i32 %add, %mul1
  %10 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %11 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %12 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %13 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %14 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %15 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %16 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %17 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %9(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add2) #10
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i) #10
  %read.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %19 = call ptr @memset(ptr %val.i, i32 255, i32 32)
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  call void %21(ptr nonnull sret(%union.map_word) align 4 %val.i, ptr noundef %map, i32 noundef %add2) #10
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %22 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bankwidth.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %23, label %if.else31.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

if.then4.i:                                       ; preds = %entry
  %swap.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %27 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %cond.true7.i, label %cond.false9.i

cond.true7.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

cond.false9.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp16.i = icmp eq i32 %28, 3
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i, align 4
  br i1 %cmp16.i, label %cond.true18.i, label %cond.false22.i

cond.true18.i:                                    ; preds = %cond.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv21.i = and i32 %33, 65535
  br label %cfi_read_query.exit

cond.false22.i:                                   ; preds = %cond.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv24.i = trunc i32 %33 to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv24.i) #10
  %conv25.i = zext i16 %34 to i32
  br label %cfi_read_query.exit

if.else31.i:                                      ; preds = %entry
  %swap32.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %35 = ptrtoint ptr %swap32.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %swap32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %cond.true40.i, label %cond.false42.i

cond.true40.i:                                    ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i, align 4
  br label %cfi_read_query.exit

cond.false42.i:                                   ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp49.i = icmp eq i32 %36, 3
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #10
  %spec.select.i = select i1 %cmp49.i, i32 %41, i32 %42
  br label %cfi_read_query.exit

cfi_read_query.exit:                              ; preds = %cond.false42.i, %cond.true40.i, %cond.false22.i, %cond.true18.i, %cond.true7.i, %if.then.i
  %retval.0.in.i = phi i32 [ %26, %if.then.i ], [ %31, %cond.true7.i ], [ %conv21.i, %cond.true18.i ], [ %conv25.i, %cond.false22.i ], [ %39, %cond.true40.i ], [ %spec.select.i, %cond.false42.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i) #10
  %conv = and i32 %retval.0.in.i, 255
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199}
!llvm.named.register.sp = !{!200}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 536, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cfi_cmdset_0001._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cfi_cmdset_0001._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @cfi_cmdset_0001.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 587, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_cfi_cmdset_0001, !10, !"__ksymtab_cfi_cmdset_0001", i1 false, i1 false}
!10 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 596, i32 1}
!11 = !{ptr @__ksymtab_cfi_cmdset_0003, !12, !"__ksymtab_cfi_cmdset_0003", i1 false, i1 false}
!12 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 597, i32 1}
!13 = !{ptr @__ksymtab_cfi_cmdset_0200, !14, !"__ksymtab_cfi_cmdset_0200", i1 false, i1 false}
!14 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 598, i32 1}
!15 = !{ptr @__UNIQUE_ID_file197, !16, !"__UNIQUE_ID_file197", i1 false, i1 false}
!16 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2688, i32 1}
!17 = !{ptr @__UNIQUE_ID_license198, !16, !"__UNIQUE_ID_license198", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author199, !19, !"__UNIQUE_ID_author199", i1 false, i1 false}
!19 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2689, i32 1}
!20 = !{ptr @__UNIQUE_ID_description200, !21, !"__UNIQUE_ID_description200", i1 false, i1 false}
!21 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2690, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias201, !23, !"__UNIQUE_ID_alias201", i1 false, i1 false}
!23 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2691, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias202, !25, !"__UNIQUE_ID_alias202", i1 false, i1 false}
!25 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2692, i32 1}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 400, i32 70}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 408, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @read_pri_intelext._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @read_pri_intelext._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 469, i32 5}
!35 = !{ptr @read_pri_intelext._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @read_pri_intelext._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @cfi_fixup_table, !38, !"cfi_fixup_table", i1 false, i1 false}
!38 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 333, i32 25}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 187, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @fixup_convert_atmel_pri._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @fixup_convert_atmel_pri._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 312, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @fixup_use_write_buffers._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @fixup_use_write_buffers._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1755, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @do_write_buffer._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @do_write_buffer._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1773, i32 3}
!56 = !{ptr @do_write_buffer._entry.16, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @do_write_buffer._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1838, i32 3}
!60 = !{ptr @do_write_buffer._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @do_write_buffer._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1855, i32 4}
!64 = !{ptr @do_write_buffer._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @do_write_buffer._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1858, i32 4}
!68 = !{ptr @do_write_buffer._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @do_write_buffer._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1001, i32 4}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 885, i32 5}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @chip_ready._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @chip_ready._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 917, i32 3}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1297, i32 4}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1089, i32 3}
!83 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @put_chip._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @put_chip._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 328, i32 3}
!88 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @fixup_unlock_powerup_lock._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @fixup_unlock_powerup_lock._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 287, i32 3}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @fixup_LH28F640BF._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @fixup_LH28F640BF._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 293, i32 3}
!98 = !{ptr @fixup_LH28F640BF._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @fixup_LH28F640BF._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @jedec_fixup_table, !101, !"jedec_fixup_table", i1 false, i1 false}
!101 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 354, i32 25}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/chips/fwh_lock.h", i32 103, i32 2}
!104 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @fixup_use_fwh_lock._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @fixup_use_fwh_lock._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/chips/fwh_lock.h", i32 38, i32 3}
!110 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @fwh_xxlock_oneblock.__UNIQUE_ID_ddebug189, !109, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!112 = !{ptr @fixup_table, !113, !"fixup_table", i1 false, i1 false}
!113 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 362, i32 25}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1468, i32 4}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cfi_intelext_unpoint._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @cfi_intelext_unpoint._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @cfi_intelext_chipdrv, !120, !"cfi_intelext_chipdrv", i1 false, i1 false}
!120 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 109, i32 31}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 640, i32 3}
!123 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cfi_intelext_setup._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @cfi_intelext_setup._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 645, i32 3}
!128 = !{ptr @cfi_intelext_setup._entry.48, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cfi_intelext_setup._entry_ptr.50, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1592, i32 3}
!132 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @do_write_oneword._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @do_write_oneword._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1609, i32 4}
!137 = !{ptr @do_write_oneword._entry.53, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @do_write_oneword._entry_ptr.55, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1612, i32 4}
!141 = !{ptr @do_write_oneword._entry.56, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @do_write_oneword._entry_ptr.58, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 742, i32 4}
!145 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @cfi_intelext_partition_fixup._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @cfi_intelext_partition_fixup._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 756, i32 4}
!150 = !{ptr @cfi_intelext_partition_fixup._entry.61, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @cfi_intelext_partition_fixup._entry_ptr.63, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @cfi_intelext_partition_fixup.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 781, i32 4}
!154 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @cfi_intelext_partition_fixup.__key.65, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 788, i32 5}
!157 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @cfi_intelext_partition_fixup.__key.67, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 789, i32 5}
!160 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 794, i32 3}
!163 = !{ptr @cfi_intelext_partition_fixup._entry.69, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cfi_intelext_partition_fixup._entry_ptr.71, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1976, i32 3}
!167 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @do_erase_oneblock._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @do_erase_oneblock._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 1995, i32 4}
!172 = !{ptr @do_erase_oneblock._entry.74, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @do_erase_oneblock._entry_ptr.76, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2002, i32 4}
!176 = !{ptr @do_erase_oneblock._entry.77, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @do_erase_oneblock._entry_ptr.79, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2005, i32 4}
!180 = !{ptr @do_erase_oneblock._entry.80, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @do_erase_oneblock._entry_ptr.82, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2011, i32 4}
!184 = !{ptr @do_erase_oneblock._entry.83, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @do_erase_oneblock._entry_ptr.85, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2153, i32 3}
!188 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @do_xxlock_oneblock._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @do_xxlock_oneblock._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2542, i32 5}
!193 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @cfi_intelext_suspend._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @cfi_intelext_suspend._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mtd/chips/cfi_cmdset_0001.c", i32 2551, i32 4}
!198 = !{ptr @cfi_intelext_suspend._entry.90, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @cfi_intelext_suspend._entry_ptr.92, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{!"sp"}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{!"branch_weights", i32 1, i32 2000}
!211 = !{i32 0, i32 33}
!212 = !{!213}
!213 = distinct !{!213, !214, !"map_word_ff: %agg.result"}
!214 = distinct !{!214, !"map_word_ff"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"map_word_load_partial: %agg.result"}
!217 = distinct !{!217, !"map_word_load_partial"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"map_word_load: %agg.result"}
!220 = distinct !{!220, !"map_word_load"}
!221 = !{i64 2152838167, i64 2152838655, i64 2152838204, i64 2152838260, i64 2152838294, i64 2152838318, i64 2152838359, i64 2152838380, i64 2152838408, i64 2152838442}
!222 = !{!223}
!223 = distinct !{!223, !224, !"map_word_ff: %agg.result"}
!224 = distinct !{!224, !"map_word_ff"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"map_word_load_partial: %agg.result"}
!227 = distinct !{!227, !"map_word_load_partial"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"map_word_ff: %agg.result"}
!230 = distinct !{!230, !"map_word_ff"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"map_word_ff: %agg.result"}
!233 = distinct !{!233, !"map_word_ff"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"map_word_load_partial: %agg.result"}
!236 = distinct !{!236, !"map_word_load_partial"}
!237 = !{i64 2153360190}
!238 = !{i64 2153367800}
!239 = !{i64 2153354978}
!240 = !{i64 2149028243, i64 2149028248, i64 2149028261, i64 2149028305, i64 2149028339, i64 2149028360}
!241 = !{!"auto-init"}
!242 = !{ptr @do_otp_lock, ptr @do_otp_read, ptr @do_otp_write}
!243 = !{!244}
!244 = distinct !{!244, !245, !"map_word_ff: %agg.result"}
!245 = distinct !{!245, !"map_word_ff"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"map_word_load_partial: %agg.result"}
!248 = distinct !{!248, !"map_word_load_partial"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"map_word_ff: %agg.result"}
!251 = distinct !{!251, !"map_word_ff"}
!252 = !{i64 2153404982, i64 2153405483, i64 2153405019, i64 2153405075, i64 2153405109, i64 2153405133, i64 2153405174, i64 2153405195, i64 2153405223, i64 2153405257}
