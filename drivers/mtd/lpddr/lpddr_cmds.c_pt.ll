; ModuleID = '/llk/IR_all_yes/drivers/mtd/lpddr/lpddr_cmds.c_pt.bc'
source_filename = "../drivers/mtd/lpddr/lpddr_cmds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lpddr_cmdset\22, \22a\22\09"
module asm "\09.weak\09__crc_lpddr_cmdset\09\09\09\09"
module asm "\09.long\09__crc_lpddr_cmdset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lpddr_cmdset:\09\09\09\09\09"
module asm "\09.asciz \09\22lpddr_cmdset\22\09\09\09\09\09"
module asm "__kstrtabns_lpddr_cmdset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.lpddr_private = type { i16, i16, ptr, i32, i32, [0 x %struct.flchip] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.qinfo_chip = type { i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.flchip_shared = type { %struct.mutex, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.kvec = type { ptr, i32 }
%union.map_word = type { [8 x i32] }
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

@lpddr_cmdset.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&shared[i].lock\00", [16 x i8] zeroinitializer }, align 32
@lpddr_cmdset.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&chip->wq\00", [22 x i8] zeroinitializer }, align 32
@lpddr_cmdset.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_lpddr_cmdset = external dso_local constant [0 x i8], align 1
@__kstrtabns_lpddr_cmdset = external dso_local constant [0 x i8], align 1
@__ksymtab_lpddr_cmdset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lpddr_cmdset to i32), ptr @__kstrtab_lpddr_cmdset, ptr @__kstrtabns_lpddr_cmdset }, section "___ksymtab+lpddr_cmdset", align 4
@__UNIQUE_ID_file188 = internal constant [45 x i8] c"lpddr_cmds.file=drivers/mtd/lpddr/lpddr_cmds\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [23 x i8] c"lpddr_cmds.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [58 x i8] c"lpddr_cmds.author=Alexey Korolev <akorolev@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [56 x i8] c"lpddr_cmds.description=MTD driver for LPDDR flash chips\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mtd/lpddr/lpddr_cmds.c\00", [33 x i8] zeroinitializer }, align 32
@chip_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: suspend operation failed.State may be wrong \0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_ready\00", [21 x i8] zeroinitializer }, align 32
@chip_ready._entry_ptr = internal global ptr @chip_ready._entry, section ".printk_index", align 4
@wait_for_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Flash timeout error state %d \0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wait_for_ready\00", [17 x i8] zeroinitializer }, align 32
@wait_for_ready._entry_ptr = internal global ptr @wait_for_ready._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wait_for_ready._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: Bad status on wait: 0x%x \0A\00", [63 x i8] zeroinitializer }, align 32
@wait_for_ready._entry_ptr.12 = internal global ptr @wait_for_ready._entry.10, section ".printk_index", align 4
@print_drs_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015DSR.15: (0) Device not Available\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"print_drs_error\00", [16 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr = internal global ptr @print_drs_error._entry, section ".printk_index", align 4
@print_drs_error._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015DSR.9,8: (11) Attempt to program invalid half with 41h command\0A\00", [62 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.17 = internal global ptr @print_drs_error._entry.15, section ".printk_index", align 4
@print_drs_error._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.5, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\015DSR.9,8: (10) Object Mode Program attempt in region with Control Mode data\0A\00", [50 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.20 = internal global ptr @print_drs_error._entry.18, section ".printk_index", align 4
@print_drs_error._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.5, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015DSR.9,8: (01) Program attempt in region with Object Mode data\0A\00", [63 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.23 = internal global ptr @print_drs_error._entry.21, section ".printk_index", align 4
@print_drs_error._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.5, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015DSR.7: (0) Device is Busy\0A\00", [35 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.26 = internal global ptr @print_drs_error._entry.24, section ".printk_index", align 4
@print_drs_error._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.5, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015DSR.6: (1) Erase Suspended\0A\00", [34 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.29 = internal global ptr @print_drs_error._entry.27, section ".printk_index", align 4
@print_drs_error._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.14, ptr @.str.5, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015DSR.5: (1) Erase/Blank check error\0A\00", [58 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.32 = internal global ptr @print_drs_error._entry.30, section ".printk_index", align 4
@print_drs_error._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.14, ptr @.str.5, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015DSR.4: (1) Program Error\0A\00", [36 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.35 = internal global ptr @print_drs_error._entry.33, section ".printk_index", align 4
@print_drs_error._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.14, ptr @.str.5, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015DSR.3: (1) Vpp low detect, operation aborted\0A\00", [48 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.38 = internal global ptr @print_drs_error._entry.36, section ".printk_index", align 4
@print_drs_error._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.14, ptr @.str.5, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015DSR.2: (1) Program suspended\0A\00", [32 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.41 = internal global ptr @print_drs_error._entry.39, section ".printk_index", align 4
@print_drs_error._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.14, ptr @.str.5, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015DSR.1: (1) Aborted Erase/Program attempt on locked block\0A\00", [36 x i8] zeroinitializer }, align 32
@print_drs_error._entry_ptr.44 = internal global ptr @print_drs_error._entry.42, section ".printk_index", align 4
@put_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: put_chip() called with oldstate %d!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_chip\00", [23 x i8] zeroinitializer }, align 32
@put_chip._entry_ptr = internal global ptr @put_chip._entry, section ".printk_index", align 4
@lpddr_unpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: Warning: unpoint called on nonpointed region\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpddr_unpoint\00", [18 x i8] zeroinitializer }, align 32
@lpddr_unpoint._entry_ptr = internal global ptr @lpddr_unpoint._entry, section ".printk_index", align 4
@do_write_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s Buffer program error: %d at %lx; \0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_write_buffer\00", [16 x i8] zeroinitializer }, align 32
@do_write_buffer._entry_ptr = internal global ptr @do_write_buffer._entry, section ".printk_index", align 4
@do_erase_oneblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s Erase block error %d at : %llx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_erase_oneblock\00", [46 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr = internal global ptr @do_erase_oneblock._entry, section ".printk_index", align 4
@do_xxlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: block unlock error status %d \0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"do_xxlock\00", [22 x i8] zeroinitializer }, align 32
@do_xxlock._entry_ptr = internal global ptr @do_xxlock._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 17]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 17]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 79, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 87, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 88, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 271, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 323, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 145, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 189, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 102, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 104, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 106, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 108, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 110, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 112, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 114, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 116, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 118, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 120, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 122, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 397, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 617, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 474, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 502, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [34 x i8] c"../drivers/mtd/lpddr/lpddr_cmds.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 742, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__ksymtab_lpddr_cmdset, ptr @chip_ready._entry, ptr @chip_ready._entry_ptr, ptr @do_erase_oneblock._entry, ptr @do_erase_oneblock._entry_ptr, ptr @do_write_buffer._entry, ptr @do_write_buffer._entry_ptr, ptr @do_xxlock._entry, ptr @do_xxlock._entry_ptr, ptr @lpddr_unpoint._entry, ptr @lpddr_unpoint._entry_ptr, ptr @print_drs_error._entry, ptr @print_drs_error._entry.15, ptr @print_drs_error._entry.18, ptr @print_drs_error._entry.21, ptr @print_drs_error._entry.24, ptr @print_drs_error._entry.27, ptr @print_drs_error._entry.30, ptr @print_drs_error._entry.33, ptr @print_drs_error._entry.36, ptr @print_drs_error._entry.39, ptr @print_drs_error._entry.42, ptr @print_drs_error._entry_ptr, ptr @print_drs_error._entry_ptr.17, ptr @print_drs_error._entry_ptr.20, ptr @print_drs_error._entry_ptr.23, ptr @print_drs_error._entry_ptr.26, ptr @print_drs_error._entry_ptr.29, ptr @print_drs_error._entry_ptr.32, ptr @print_drs_error._entry_ptr.35, ptr @print_drs_error._entry_ptr.38, ptr @print_drs_error._entry_ptr.41, ptr @print_drs_error._entry_ptr.44, ptr @put_chip._entry, ptr @put_chip._entry_ptr, ptr @wait_for_ready._entry, ptr @wait_for_ready._entry.10, ptr @wait_for_ready._entry_ptr, ptr @wait_for_ready._entry_ptr.12, ptr @lpddr_cmdset.__key, ptr @.str, ptr @lpddr_cmdset.__key.1, ptr @.str.2, ptr @lpddr_cmdset.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr_cmdset.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr_cmdset.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr_cmdset.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_ready._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_drs_error._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr_unpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_xxlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpddr_cmdset(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1408) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 54
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %map, ptr %priv, align 8
  %_read = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 24
  %4 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lpddr_read, ptr %_read, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %call7.i.i, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1024, ptr %flags, align 4
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 21
  %7 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lpddr_erase, ptr %_erase, align 8
  %_write = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 25
  %8 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @lpddr_write_buffers, ptr %_write, align 8
  %_writev = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 36
  %9 = ptrtoint ptr %_writev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @lpddr_writev, ptr %_writev, align 4
  %_lock = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 38
  %10 = ptrtoint ptr %_lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @lpddr_lock, ptr %_lock, align 4
  %_unlock = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 39
  %11 = ptrtoint ptr %_unlock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @lpddr_unlock, ptr %_unlock, align 8
  %phys = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 2
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not = icmp eq i32 %13, -1
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %_point = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 22
  %14 = ptrtoint ptr %_point to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @lpddr_point, ptr %_point, align 4
  %_unpoint = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 23
  %15 = ptrtoint ptr %_unpoint to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @lpddr_unpoint, ptr %_unpoint, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %qinfo = getelementptr inbounds %struct.lpddr_private, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qinfo, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  %conv = zext i16 %19 to i32
  %shl = shl nuw i32 1, %conv
  %conv5 = sext i32 %shl to i64
  %size = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv5, ptr %size, align 8
  %21 = load ptr, ptr %qinfo, align 4
  %UniformBlockSizeShift = getelementptr inbounds %struct.qinfo_chip, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %UniformBlockSizeShift to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %UniformBlockSizeShift, align 2
  %conv7 = zext i16 %23 to i32
  %shl8 = shl nuw i32 1, %conv7
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl8, ptr %erasesize, align 8
  %25 = load ptr, ptr %qinfo, align 4
  %BufSizeShift = getelementptr inbounds %struct.qinfo_chip, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %BufSizeShift to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %BufSizeShift, align 2
  %conv10 = zext i16 %27 to i32
  %shl11 = shl nuw i32 1, %conv10
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl11, ptr %writesize, align 4
  %numchips12 = getelementptr inbounds %struct.lpddr_private, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %numchips12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %numchips12, align 4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 100) #9
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %if.end4.if.then15_crit_edge, label %if.end7.i, !prof !119

if.end4.if.then15_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.end7.i:                                        ; preds = %if.end4
  %33 = extractvalue { i32, i1 } %31, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #13
  %tobool14.not = icmp eq ptr %call8.i, null
  br i1 %tobool14.not, label %if.end7.i.if.then15_crit_edge, label %if.end16

if.end7.i.if.then15_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %if.end7.i.if.then15_crit_edge, %if.end4.if.then15_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end7.i
  %34 = ptrtoint ptr %numchips12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %numchips12, align 4
  %36 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qinfo, align 4
  %HWPartsNum = getelementptr inbounds %struct.qinfo_chip, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %HWPartsNum to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %HWPartsNum, align 2
  %conv19 = zext i16 %39 to i32
  %div = sdiv i32 %35, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp20112 = icmp sgt i32 %div, 0
  br i1 %cmp20112, label %for.body.lr.ph, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end16
  %chips = getelementptr inbounds %struct.lpddr_private, ptr %1, i32 0, i32 5
  %chipshift = getelementptr inbounds %struct.lpddr_private, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc43.for.body_crit_edge, %for.body.lr.ph
  %i.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc44, %for.inc43.for.body_crit_edge ]
  %chip.0113 = phi ptr [ %chips, %for.body.lr.ph ], [ %chip.1.lcssa, %for.inc43.for.body_crit_edge ]
  %arrayidx22 = getelementptr %struct.flchip_shared, ptr %call8.i, i32 %i.0114
  %erasing = getelementptr %struct.flchip_shared, ptr %call8.i, i32 %i.0114, i32 2
  %40 = ptrtoint ptr %erasing to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %erasing, align 4
  %writing = getelementptr %struct.flchip_shared, ptr %call8.i, i32 %i.0114, i32 1
  %41 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %writing, align 4
  tail call void @__mutex_init(ptr noundef %arrayidx22, ptr noundef nonnull @.str, ptr noundef nonnull @lpddr_cmdset.__key) #9
  %42 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qinfo, align 4
  %HWPartsNum27107 = getelementptr inbounds %struct.qinfo_chip, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %HWPartsNum27107 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %HWPartsNum27107, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp29109.not = icmp eq i16 %45, 0
  br i1 %cmp29109.not, label %for.body.for.inc43_crit_edge, label %for.body31.lr.ph

for.body.for.inc43_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc43

for.body31.lr.ph:                                 ; preds = %for.body
  %arrayidx33 = getelementptr %struct.lpddr_private, ptr %1, i32 0, i32 5, i32 %i.0114
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %j.0111 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc, %for.body31.for.body31_crit_edge ]
  %chip.1110 = phi ptr [ %chip.0113, %for.body31.lr.ph ], [ %incdec.ptr, %for.body31.for.body31_crit_edge ]
  %46 = call ptr @memcpy(ptr %chip.1110, ptr %arrayidx33, i32 200)
  %47 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chipshift, align 4
  %shl34 = shl i32 %j.0111, %48
  %49 = ptrtoint ptr %chip.1110 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chip.1110, align 4
  %add = add i32 %50, %shl34
  store i32 %add, ptr %chip.1110, align 4
  %state = getelementptr inbounds %struct.flchip, ptr %chip.1110, i32 0, i32 2
  %51 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %state, align 4
  %oldstate = getelementptr inbounds %struct.flchip, ptr %chip.1110, i32 0, i32 3
  %52 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %oldstate, align 4
  %priv36 = getelementptr inbounds %struct.flchip, ptr %chip.1110, i32 0, i32 15
  %53 = ptrtoint ptr %priv36 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx22, ptr %priv36, align 4
  %wq = getelementptr inbounds %struct.flchip, ptr %chip.1110, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.2, ptr noundef nonnull @lpddr_cmdset.__key.1) #9
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip.1110, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @lpddr_cmdset.__key.3) #9
  %incdec.ptr = getelementptr %struct.flchip, ptr %chip.1110, i32 1
  %inc = add nuw nsw i32 %j.0111, 1
  %54 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %qinfo, align 4
  %HWPartsNum27 = getelementptr inbounds %struct.qinfo_chip, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %HWPartsNum27 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %HWPartsNum27, align 2
  %conv28 = zext i16 %57 to i32
  %cmp29 = icmp ult i32 %inc, %conv28
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %for.body31.for.inc43_crit_edge

for.body31.for.inc43_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc43

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31

for.inc43:                                        ; preds = %for.body31.for.inc43_crit_edge, %for.body.for.inc43_crit_edge
  %chip.1.lcssa = phi ptr [ %chip.0113, %for.body.for.inc43_crit_edge ], [ %incdec.ptr, %for.body31.for.inc43_crit_edge ]
  %inc44 = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc44, %div
  br i1 %exitcond.not, label %for.inc43.cleanup_crit_edge, label %for.inc43.for.body_crit_edge

for.inc43.for.body_crit_edge:                     ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc43.cleanup_crit_edge:                      ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc43.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then15 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end16.cleanup_crit_edge ], [ %call7.i.i, %for.inc43.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr_read(ptr nocapture noundef readonly %mtd, i64 noundef %adr, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %chipshift = getelementptr inbounds %struct.lpddr_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %5 to i64
  %shr = ashr i64 %adr, %sh_prom
  %conv = trunc i64 %shr to i32
  %arrayidx = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %conv
  %mutex = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %conv, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  br label %retry.i

retry.i:                                          ; preds = %retry.i.retry.i_crit_edge, %entry
  %call117.i = tail call fastcc i32 @chip_ready(ptr noundef %1, ptr noundef %arrayidx, i32 noundef 0) #9
  %6 = zext i32 %call117.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call117.i, label %retry.i.cleanup_crit_edge [
    i32 -11, label %retry.i.retry.i_crit_edge
    i32 0, label %if.end
  ]

retry.i.retry.i_crit_edge:                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.i

retry.i.cleanup_crit_edge:                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #11
  %copy_from = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %copy_from to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %copy_from, align 4
  %conv2 = trunc i64 %adr to i32
  tail call void %8(ptr noundef %1, ptr noundef %buf, i32 noundef %conv2, i32 noundef %len) #9
  %9 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %retlen, align 4
  tail call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %retry.i.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %call117.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %qinfo = getelementptr inbounds %struct.lpddr_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qinfo, align 4
  %UniformBlockSizeShift = getelementptr inbounds %struct.qinfo_chip, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %UniformBlockSizeShift to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %UniformBlockSizeShift, align 2
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 1, %conv
  %len2 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %8 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len2, align 8
  %conv3 = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp.not20 = icmp eq i32 %conv3, 0
  br i1 %cmp.not20, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %10 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %instr, align 8
  %conv1 = trunc i64 %11 to i32
  br label %while.body

while.body:                                       ; preds = %if.end.critedge.while.body_crit_edge, %while.body.preheader
  %ofs.022 = phi i32 [ %add, %if.end.critedge.while.body_crit_edge ], [ %conv1, %while.body.preheader ]
  %len.021 = phi i32 [ %sub, %if.end.critedge.while.body_crit_edge ], [ %conv3, %while.body.preheader ]
  %conv5 = zext i32 %ofs.022 to i64
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %fldrv_priv.i = getelementptr inbounds %struct.map_info, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %fldrv_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fldrv_priv.i, align 4
  %chipshift.i = getelementptr inbounds %struct.lpddr_private, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %chipshift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chipshift.i, align 4
  %sh_prom.i = zext i32 %17 to i64
  %shr.i19 = lshr i64 %conv5, %sh_prom.i
  %conv.i = trunc i64 %shr.i19 to i32
  %arrayidx.i = getelementptr %struct.lpddr_private, ptr %15, i32 0, i32 5, i32 %conv.i
  %mutex.i = getelementptr %struct.lpddr_private, ptr %15, i32 0, i32 5, i32 %conv.i, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call fastcc i32 @get_chip(ptr noundef %13, ptr noundef %arrayidx.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.cleanup.sink.split_crit_edge

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %while.body
  %bankwidth.i.i = getelementptr inbounds %struct.map_info, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %bankwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bankwidth.i.i, align 4
  %mul.i.i = shl i32 %19, 3
  %write.i.i = getelementptr inbounds %struct.map_info, ptr %13, i32 0, i32 9
  %20 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i.i, align 4
  %pfow_base.i.i = getelementptr inbounds %struct.map_info, ptr %13, i32 0, i32 13
  %22 = ptrtoint ptr %pfow_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pfow_base.i.i, align 4
  %add.i.i = add i32 %23, 128
  tail call void %21(ptr noundef %13, [8 x i32] [i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add.i.i) #9
  %24 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %mul.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %ofs.022, %sub.i.i
  %26 = ptrtoint ptr %pfow_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pfow_base.i.i, align 4
  %add4.i.i = add i32 %27, 136
  %.fca.0.insert111.i.i = insertvalue [8 x i32] poison, i32 %and.i.i, 0
  %.fca.1.insert114.i.i = insertvalue [8 x i32] %.fca.0.insert111.i.i, i32 0, 1
  %.fca.2.insert117.i.i = insertvalue [8 x i32] %.fca.1.insert114.i.i, i32 0, 2
  %.fca.3.insert120.i.i = insertvalue [8 x i32] %.fca.2.insert117.i.i, i32 0, 3
  %.fca.4.insert123.i.i = insertvalue [8 x i32] %.fca.3.insert120.i.i, i32 0, 4
  %.fca.5.insert126.i.i = insertvalue [8 x i32] %.fca.4.insert123.i.i, i32 0, 5
  %.fca.6.insert129.i.i = insertvalue [8 x i32] %.fca.5.insert126.i.i, i32 0, 6
  %.fca.7.insert132.i.i = insertvalue [8 x i32] %.fca.6.insert129.i.i, i32 0, 7
  tail call void %25(ptr noundef %13, [8 x i32] %.fca.7.insert132.i.i, i32 noundef %add4.i.i) #9
  %28 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i.i, align 4
  %shr.i.i = lshr i32 %ofs.022, %mul.i.i
  %30 = ptrtoint ptr %pfow_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pfow_base.i.i, align 4
  %add9.i.i = add i32 %31, 138
  %.fca.0.insert87.i.i = insertvalue [8 x i32] poison, i32 %shr.i.i, 0
  %.fca.1.insert90.i.i = insertvalue [8 x i32] %.fca.0.insert87.i.i, i32 0, 1
  %.fca.2.insert93.i.i = insertvalue [8 x i32] %.fca.1.insert90.i.i, i32 0, 2
  %.fca.3.insert96.i.i = insertvalue [8 x i32] %.fca.2.insert93.i.i, i32 0, 3
  %.fca.4.insert99.i.i = insertvalue [8 x i32] %.fca.3.insert96.i.i, i32 0, 4
  %.fca.5.insert102.i.i = insertvalue [8 x i32] %.fca.4.insert99.i.i, i32 0, 5
  %.fca.6.insert105.i.i = insertvalue [8 x i32] %.fca.5.insert102.i.i, i32 0, 6
  %.fca.7.insert108.i.i = insertvalue [8 x i32] %.fca.6.insert105.i.i, i32 0, 7
  tail call void %29(ptr noundef %13, [8 x i32] %.fca.7.insert108.i.i, i32 noundef %add9.i.i) #9
  %32 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i.i, align 4
  %34 = ptrtoint ptr %pfow_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pfow_base.i.i, align 4
  %add35.i.i = add i32 %35, 192
  tail call void %33(ptr noundef %13, [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add35.i.i) #9
  %state.i = getelementptr %struct.lpddr_private, ptr %15, i32 0, i32 5, i32 %conv.i, i32 2
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %state.i, align 4
  %qinfo.i = getelementptr inbounds %struct.lpddr_private, ptr %15, i32 0, i32 2
  %37 = ptrtoint ptr %qinfo.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qinfo.i, align 4
  %BlockEraseTime.i = getelementptr inbounds %struct.qinfo_chip, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %BlockEraseTime.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %BlockEraseTime.i, align 2
  %conv3.i = zext i16 %40 to i32
  %mul.i = shl i32 1000, %conv3.i
  %call4.i = tail call fastcc i32 @wait_for_ready(ptr noundef %13, ptr noundef %arrayidx.i, i32 noundef %mul.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.critedge, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %13, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %42, i32 noundef %call4.i, i64 noundef %conv5) #14
  tail call fastcc void @put_chip(ptr noundef %13, ptr noundef %arrayidx.i) #9
  br label %cleanup.sink.split

if.end.critedge:                                  ; preds = %if.end.i
  tail call fastcc void @put_chip(ptr noundef %13, ptr noundef %arrayidx.i) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %add = add i32 %ofs.022, %shl
  %sub = sub i32 %len.021, %shl
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end.critedge.cleanup_crit_edge, label %if.end.critedge.while.body_crit_edge

if.end.critedge.while.body_crit_edge:             ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.critedge.cleanup_crit_edge:                ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end.i, %while.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call4.i, %do.end.i ], [ %call.i, %while.body.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.critedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %if.end.critedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr_write_buffers(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  %vec = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #9
  %0 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %1 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %vec, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %0, align 4
  %call = call i32 @lpddr_writev(ptr noundef %mtd, ptr noundef nonnull %vec, i32 noundef 1, i64 noundef %to, ptr noundef %retlen)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr_writev(ptr nocapture noundef readonly %mtd, ptr noundef %vecs, i32 noundef %count, i64 noundef %to, ptr nocapture noundef %retlen) #0 align 64 {
entry:
  %orig.i.i = alloca %union.map_word, align 4
  %tmp.sroa.0.i = alloca [8 x i32], align 4
  %tmp15.i = alloca %union.map_word, align 4
  %tmp34.sroa.0.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %qinfo = getelementptr inbounds %struct.lpddr_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qinfo, align 4
  %BufSizeShift = getelementptr inbounds %struct.qinfo_chip, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %BufSizeShift to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %BufSizeShift, align 2
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp75.not = icmp eq i32 %count, 0
  br i1 %cmp75.not, label %entry.cleanup18_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.077 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.076 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %iov_len = getelementptr %struct.kvec, ptr %vecs, i32 %i.076, i32 1
  %8 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iov_len, align 4
  %add = add i32 %9, %len.077
  %inc = add nuw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %for.end.cleanup18_crit_edge, label %if.end

for.end.cleanup18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

if.end:                                           ; preds = %for.end
  %chipshift = getelementptr inbounds %struct.lpddr_private, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %11 to i64
  %shr = ashr i64 %to, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %conv3 = trunc i64 %to to i32
  %sub = add i32 %shl, -1
  %arrayidx9 = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %conv2
  %mutex.i = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %conv2, i32 7
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %pfow_base.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 13
  %read.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 7
  %orig.coerce.fca.1.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 1
  %orig.coerce.fca.2.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 2
  %orig.coerce.fca.3.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 3
  %orig.coerce.fca.4.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 4
  %orig.coerce.fca.5.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 5
  %orig.coerce.fca.6.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 6
  %orig.coerce.fca.7.gep.i.i = getelementptr inbounds [8 x i32], ptr %orig.i.i, i32 0, i32 7
  %write.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %state.i = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %conv2, i32 2
  %tmp.sroa.0.i.4.i.4.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0.i, i32 4
  %tmp.sroa.0.i.8.i.8.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0.i, i32 8
  %tmp.sroa.0.i.12.i.12.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0.i, i32 12
  %tmp.sroa.0.i.16.i.16.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0.i, i32 16
  %tmp.sroa.0.i.20.i.20.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0.i, i32 20
  %tmp.sroa.0.i.24.i.24.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0.i, i32 24
  %tmp.sroa.0.i.28.i.28.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0.i, i32 28
  %tmp34.sroa.0.i.4.i.4.tmp34.sroa_idx = getelementptr inbounds i8, ptr %tmp34.sroa.0.i, i32 4
  %tmp34.sroa.0.i.8.i.8.tmp34.sroa_idx = getelementptr inbounds i8, ptr %tmp34.sroa.0.i, i32 8
  %tmp34.sroa.0.i.12.i.12.tmp34.sroa_idx = getelementptr inbounds i8, ptr %tmp34.sroa.0.i, i32 12
  %tmp34.sroa.0.i.16.i.16.tmp34.sroa_idx = getelementptr inbounds i8, ptr %tmp34.sroa.0.i, i32 16
  %tmp34.sroa.0.i.20.i.20.tmp34.sroa_idx = getelementptr inbounds i8, ptr %tmp34.sroa.0.i, i32 20
  %tmp34.sroa.0.i.24.i.24.tmp34.sroa_idx = getelementptr inbounds i8, ptr %tmp34.sroa.0.i, i32 24
  %tmp34.sroa.0.i.28.i.28.tmp34.sroa_idx = getelementptr inbounds i8, ptr %tmp34.sroa.0.i, i32 28
  br label %do.body

do.body:                                          ; preds = %do.cond.critedge.do.body_crit_edge, %if.end
  %vecs.addr.0 = phi ptr [ %vecs, %if.end ], [ %spec.select185.i, %do.cond.critedge.do.body_crit_edge ]
  %vec_seek.0 = phi i32 [ 0, %if.end ], [ %spec.select186.i, %do.cond.critedge.do.body_crit_edge ]
  %ofs.0 = phi i32 [ %conv3, %if.end ], [ %add13, %do.cond.critedge.do.body_crit_edge ]
  %len.1 = phi i32 [ %add, %if.end ], [ %sub15, %do.cond.critedge.do.body_crit_edge ]
  %and = and i32 %ofs.0, %sub
  %sub4 = sub i32 %shl, %and
  %12 = call i32 @llvm.umin.i32(i32 %sub4, i32 %len.1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp15.i)
  %13 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fldrv_priv, align 4
  %qinfo.i = getelementptr inbounds %struct.lpddr_private, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %qinfo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qinfo.i, align 4
  %BufSizeShift.i = getelementptr inbounds %struct.qinfo_chip, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %BufSizeShift.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %BufSizeShift.i, align 2
  %conv.i = zext i16 %18 to i32
  %shl.i = shl nuw i32 1, %conv.i
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = call fastcc i32 @get_chip(ptr noundef %1, ptr noundef %arrayidx9, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %do.body
  %sub.i = sub i32 0, %ofs.0
  %19 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bankwidth.i, align 4
  %sub2.i = add i32 %20, -1
  %and.i = and i32 %sub2.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.else.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  %sub10.i = sub i32 %20, %and.i
  %sub11.i = sub i32 %ofs.0, %sub10.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.sroa.0.i)
  %21 = call ptr @memset(ptr %tmp.sroa.0.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp.i.i = icmp slt i32 %20, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add nuw i32 %20, 3
  %div9.i.i = and i32 %add.i.i, -4
  %22 = call ptr @memset(ptr %tmp.sroa.0.i, i32 255, i32 %div9.i.i)
  br label %map_word_ff.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = shl i32 %20, 3
  %notmask.i.i = shl nsw i32 -1, %mul.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %23 = ptrtoint ptr %tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i.i, ptr %tmp.sroa.0.i, align 4, !alias.scope !120
  br label %map_word_ff.exit.i

map_word_ff.exit.i:                               ; preds = %if.then.i.i, %for.body.preheader.i.i
  %24 = ptrtoint ptr %tmp.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %tmp.sroa.0.i.0.tmp.sroa.0.i.0.tmp.sroa.0.0.tmp.sroa.0.0.tmp.sroa.0.0.datum.sroa.0.0.copyload.i = load i32, ptr %tmp.sroa.0.i, align 4
  %25 = ptrtoint ptr %tmp.sroa.0.i.4.i.4.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %tmp.sroa.0.i.4.tmp.sroa.0.i.4.tmp.sroa.0.4.tmp.sroa.0.4.tmp.sroa.0.4.datum.sroa.8.0.copyload.i = load i32, ptr %tmp.sroa.0.i.4.i.4.tmp.sroa_idx, align 4
  %26 = ptrtoint ptr %tmp.sroa.0.i.8.i.8.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.sroa.0.i.8.tmp.sroa.0.i.8.tmp.sroa.0.8.tmp.sroa.0.8.tmp.sroa.0.8.datum.sroa.11.0.copyload.i = load i32, ptr %tmp.sroa.0.i.8.i.8.tmp.sroa_idx, align 4
  %27 = ptrtoint ptr %tmp.sroa.0.i.12.i.12.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %tmp.sroa.0.i.12.tmp.sroa.0.i.12.tmp.sroa.0.12.tmp.sroa.0.12.tmp.sroa.0.12.datum.sroa.14.0.copyload.i = load i32, ptr %tmp.sroa.0.i.12.i.12.tmp.sroa_idx, align 4
  %28 = ptrtoint ptr %tmp.sroa.0.i.16.i.16.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.sroa.0.i.16.tmp.sroa.0.i.16.tmp.sroa.0.16.tmp.sroa.0.16.tmp.sroa.0.16.datum.sroa.17.0.copyload.i = load i32, ptr %tmp.sroa.0.i.16.i.16.tmp.sroa_idx, align 4
  %29 = ptrtoint ptr %tmp.sroa.0.i.20.i.20.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %tmp.sroa.0.i.20.tmp.sroa.0.i.20.tmp.sroa.0.20.tmp.sroa.0.20.tmp.sroa.0.20.datum.sroa.20.0.copyload.i = load i32, ptr %tmp.sroa.0.i.20.i.20.tmp.sroa_idx, align 4
  %30 = ptrtoint ptr %tmp.sroa.0.i.24.i.24.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %tmp.sroa.0.i.24.tmp.sroa.0.i.24.tmp.sroa.0.24.tmp.sroa.0.24.tmp.sroa.0.24.datum.sroa.23.0.copyload.i = load i32, ptr %tmp.sroa.0.i.24.i.24.tmp.sroa_idx, align 4
  %31 = ptrtoint ptr %tmp.sroa.0.i.28.i.28.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %tmp.sroa.0.i.28.tmp.sroa.0.i.28.tmp.sroa.0.28.tmp.sroa.0.28.tmp.sroa.0.28.datum.sroa.26.0.copyload.i = load i32, ptr %tmp.sroa.0.i.28.i.28.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.sroa.0.i)
  br label %if.end12.i

if.end12.i:                                       ; preds = %map_word_ff.exit.i, %if.end.i.if.end12.i_crit_edge
  %adr.addr.0.i = phi i32 [ %sub11.i, %map_word_ff.exit.i ], [ %ofs.0, %if.end.i.if.end12.i_crit_edge ]
  %datum.sroa.26.0.i = phi i32 [ %tmp.sroa.0.i.28.tmp.sroa.0.i.28.tmp.sroa.0.28.tmp.sroa.0.28.tmp.sroa.0.28.datum.sroa.26.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.end.i.if.end12.i_crit_edge ]
  %datum.sroa.23.0.i = phi i32 [ %tmp.sroa.0.i.24.tmp.sroa.0.i.24.tmp.sroa.0.24.tmp.sroa.0.24.tmp.sroa.0.24.datum.sroa.23.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.end.i.if.end12.i_crit_edge ]
  %datum.sroa.20.0.i = phi i32 [ %tmp.sroa.0.i.20.tmp.sroa.0.i.20.tmp.sroa.0.20.tmp.sroa.0.20.tmp.sroa.0.20.datum.sroa.20.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.end.i.if.end12.i_crit_edge ]
  %datum.sroa.17.0.i = phi i32 [ %tmp.sroa.0.i.16.tmp.sroa.0.i.16.tmp.sroa.0.16.tmp.sroa.0.16.tmp.sroa.0.16.datum.sroa.17.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.end.i.if.end12.i_crit_edge ]
  %datum.sroa.14.0.i = phi i32 [ %tmp.sroa.0.i.12.tmp.sroa.0.i.12.tmp.sroa.0.12.tmp.sroa.0.12.tmp.sroa.0.12.datum.sroa.14.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.end.i.if.end12.i_crit_edge ]
  %datum.sroa.11.0.i = phi i32 [ %tmp.sroa.0.i.8.tmp.sroa.0.i.8.tmp.sroa.0.8.tmp.sroa.0.8.tmp.sroa.0.8.datum.sroa.11.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.end.i.if.end12.i_crit_edge ]
  %datum.sroa.8.0.i = phi i32 [ %tmp.sroa.0.i.4.tmp.sroa.0.i.4.tmp.sroa.0.4.tmp.sroa.0.4.tmp.sroa.0.4.datum.sroa.8.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.end.i.if.end12.i_crit_edge ]
  %datum.sroa.0.0.i = phi i32 [ %tmp.sroa.0.i.0.tmp.sroa.0.i.0.tmp.sroa.0.0.tmp.sroa.0.0.tmp.sroa.0.0.datum.sroa.0.0.copyload.i, %map_word_ff.exit.i ], [ -1, %if.end.i.if.end12.i_crit_edge ]
  %word_gap.0.i = phi i32 [ %sub10.i, %map_word_ff.exit.i ], [ 0, %if.end.i.if.end12.i_crit_edge ]
  %32 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pfow_base.i, align 4
  %34 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i, align 4
  %add14.i = add i32 %33, 64
  call void %35(ptr nonnull sret(%union.map_word) align 4 %tmp15.i, ptr noundef %1, i32 noundef %add14.i) #9
  %36 = ptrtoint ptr %tmp15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp15.i, align 4
  %add16.i = add i32 %37, %33
  br label %do.body.i

do.body.i:                                        ; preds = %if.end47.i.do.body.i_crit_edge, %if.end12.i
  %len.addr.0.i = phi i32 [ %12, %if.end12.i ], [ %sub37.i, %if.end47.i.do.body.i_crit_edge ]
  %datum.sroa.26.1.i = phi i32 [ %datum.sroa.26.0.i, %if.end12.i ], [ %tmp36.sroa.10.0.copyload.i, %if.end47.i.do.body.i_crit_edge ]
  %datum.sroa.23.1.i = phi i32 [ %datum.sroa.23.0.i, %if.end12.i ], [ %tmp36.sroa.9.0.copyload.i, %if.end47.i.do.body.i_crit_edge ]
  %datum.sroa.20.1.i = phi i32 [ %datum.sroa.20.0.i, %if.end12.i ], [ %tmp36.sroa.8.0.copyload.i, %if.end47.i.do.body.i_crit_edge ]
  %datum.sroa.17.1.i = phi i32 [ %datum.sroa.17.0.i, %if.end12.i ], [ %tmp36.sroa.7.0.copyload.i, %if.end47.i.do.body.i_crit_edge ]
  %datum.sroa.14.1.i = phi i32 [ %datum.sroa.14.0.i, %if.end12.i ], [ %tmp36.sroa.6.0.copyload.i, %if.end47.i.do.body.i_crit_edge ]
  %datum.sroa.11.1.i = phi i32 [ %datum.sroa.11.0.i, %if.end12.i ], [ %tmp36.sroa.5.0.copyload.i, %if.end47.i.do.body.i_crit_edge ]
  %datum.sroa.8.1.i = phi i32 [ %datum.sroa.8.0.i, %if.end12.i ], [ %tmp36.sroa.4.0.copyload.i, %if.end47.i.do.body.i_crit_edge ]
  %datum.sroa.0.1.i = phi i32 [ %datum.sroa.0.0.i, %if.end12.i ], [ %tmp36.sroa.0.0.copyload.i, %if.end47.i.do.body.i_crit_edge ]
  %word_gap.1.i = phi i32 [ %word_gap.0.i, %if.end12.i ], [ %word_gap.2.i, %if.end47.i.do.body.i_crit_edge ]
  %vec.0.i = phi ptr [ %vecs.addr.0, %if.end12.i ], [ %spec.select185.i, %if.end47.i.do.body.i_crit_edge ]
  %vec_seek.0.i = phi i32 [ %vec_seek.0, %if.end12.i ], [ %spec.select186.i, %if.end47.i.do.body.i_crit_edge ]
  %prog_buf_ofs.0.i = phi i32 [ %add16.i, %if.end12.i ], [ %prog_buf_ofs.1.i, %if.end47.i.do.body.i_crit_edge ]
  %38 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bankwidth.i, align 4
  %sub18.i = sub i32 %39, %word_gap.1.i
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %vec.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iov_len.i, align 4
  %sub19.i = sub i32 %41, %vec_seek.0.i
  %42 = call i32 @llvm.umin.i32(i32 %sub18.i, i32 %sub19.i) #9
  %43 = call i32 @llvm.smin.i32(i32 %42, i32 %len.addr.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word_gap.1.i)
  %tobool29.not.i = icmp eq i32 %word_gap.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i, i32 %39)
  %cmp31.i = icmp slt i32 %len.addr.0.i, %39
  %or.cond.i = select i1 %tobool29.not.i, i1 %cmp31.i, i1 false
  br i1 %or.cond.i, label %if.then33.i, label %do.body.i.if.end35.i_crit_edge

do.body.i.if.end35.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then33.i:                                      ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp34.sroa.0.i)
  %44 = call ptr @memset(ptr %tmp34.sroa.0.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.i188.i = icmp slt i32 %39, 4
  br i1 %cmp.i188.i, label %if.then.i195.i, label %for.body.preheader.i191.i

for.body.preheader.i191.i:                        ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i189.i = add nuw i32 %39, 3
  %div9.i190.i = and i32 %add.i189.i, -4
  %45 = call ptr @memset(ptr %tmp34.sroa.0.i, i32 255, i32 %div9.i190.i)
  br label %map_word_ff.exit196.i

if.then.i195.i:                                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i192.i = shl i32 %39, 3
  %notmask.i193.i = shl nsw i32 -1, %mul.i192.i
  %sub.i194.i = xor i32 %notmask.i193.i, -1
  %46 = ptrtoint ptr %tmp34.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i194.i, ptr %tmp34.sroa.0.i, align 4, !alias.scope !123
  br label %map_word_ff.exit196.i

map_word_ff.exit196.i:                            ; preds = %if.then.i195.i, %for.body.preheader.i191.i
  %47 = ptrtoint ptr %tmp34.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %tmp34.sroa.0.i.0.tmp34.sroa.0.i.0.tmp34.sroa.0.0.tmp34.sroa.0.0.tmp34.sroa.0.0.datum.sroa.0.0.copyload128.i = load i32, ptr %tmp34.sroa.0.i, align 4
  %48 = ptrtoint ptr %tmp34.sroa.0.i.4.i.4.tmp34.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %tmp34.sroa.0.i.4.tmp34.sroa.0.i.4.tmp34.sroa.0.4.tmp34.sroa.0.4.tmp34.sroa.0.4.datum.sroa.8.0.copyload130.i = load i32, ptr %tmp34.sroa.0.i.4.i.4.tmp34.sroa_idx, align 4
  %49 = ptrtoint ptr %tmp34.sroa.0.i.8.i.8.tmp34.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %tmp34.sroa.0.i.8.tmp34.sroa.0.i.8.tmp34.sroa.0.8.tmp34.sroa.0.8.tmp34.sroa.0.8.datum.sroa.11.0.copyload132.i = load i32, ptr %tmp34.sroa.0.i.8.i.8.tmp34.sroa_idx, align 4
  %50 = ptrtoint ptr %tmp34.sroa.0.i.12.i.12.tmp34.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %tmp34.sroa.0.i.12.tmp34.sroa.0.i.12.tmp34.sroa.0.12.tmp34.sroa.0.12.tmp34.sroa.0.12.datum.sroa.14.0.copyload134.i = load i32, ptr %tmp34.sroa.0.i.12.i.12.tmp34.sroa_idx, align 4
  %51 = ptrtoint ptr %tmp34.sroa.0.i.16.i.16.tmp34.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %51)
  %tmp34.sroa.0.i.16.tmp34.sroa.0.i.16.tmp34.sroa.0.16.tmp34.sroa.0.16.tmp34.sroa.0.16.datum.sroa.17.0.copyload136.i = load i32, ptr %tmp34.sroa.0.i.16.i.16.tmp34.sroa_idx, align 4
  %52 = ptrtoint ptr %tmp34.sroa.0.i.20.i.20.tmp34.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %tmp34.sroa.0.i.20.tmp34.sroa.0.i.20.tmp34.sroa.0.20.tmp34.sroa.0.20.tmp34.sroa.0.20.datum.sroa.20.0.copyload138.i = load i32, ptr %tmp34.sroa.0.i.20.i.20.tmp34.sroa_idx, align 4
  %53 = ptrtoint ptr %tmp34.sroa.0.i.24.i.24.tmp34.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %tmp34.sroa.0.i.24.tmp34.sroa.0.i.24.tmp34.sroa.0.24.tmp34.sroa.0.24.tmp34.sroa.0.24.datum.sroa.23.0.copyload140.i = load i32, ptr %tmp34.sroa.0.i.24.i.24.tmp34.sroa_idx, align 4
  %54 = ptrtoint ptr %tmp34.sroa.0.i.28.i.28.tmp34.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %tmp34.sroa.0.i.28.tmp34.sroa.0.i.28.tmp34.sroa.0.28.tmp34.sroa.0.28.tmp34.sroa.0.28.datum.sroa.26.0.copyload142.i = load i32, ptr %tmp34.sroa.0.i.28.i.28.tmp34.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp34.sroa.0.i)
  br label %if.end35.i

if.end35.i:                                       ; preds = %map_word_ff.exit196.i, %do.body.i.if.end35.i_crit_edge
  %datum.sroa.26.2.i = phi i32 [ %datum.sroa.26.1.i, %do.body.i.if.end35.i_crit_edge ], [ %tmp34.sroa.0.i.28.tmp34.sroa.0.i.28.tmp34.sroa.0.28.tmp34.sroa.0.28.tmp34.sroa.0.28.datum.sroa.26.0.copyload142.i, %map_word_ff.exit196.i ]
  %datum.sroa.23.2.i = phi i32 [ %datum.sroa.23.1.i, %do.body.i.if.end35.i_crit_edge ], [ %tmp34.sroa.0.i.24.tmp34.sroa.0.i.24.tmp34.sroa.0.24.tmp34.sroa.0.24.tmp34.sroa.0.24.datum.sroa.23.0.copyload140.i, %map_word_ff.exit196.i ]
  %datum.sroa.20.2.i = phi i32 [ %datum.sroa.20.1.i, %do.body.i.if.end35.i_crit_edge ], [ %tmp34.sroa.0.i.20.tmp34.sroa.0.i.20.tmp34.sroa.0.20.tmp34.sroa.0.20.tmp34.sroa.0.20.datum.sroa.20.0.copyload138.i, %map_word_ff.exit196.i ]
  %datum.sroa.17.2.i = phi i32 [ %datum.sroa.17.1.i, %do.body.i.if.end35.i_crit_edge ], [ %tmp34.sroa.0.i.16.tmp34.sroa.0.i.16.tmp34.sroa.0.16.tmp34.sroa.0.16.tmp34.sroa.0.16.datum.sroa.17.0.copyload136.i, %map_word_ff.exit196.i ]
  %datum.sroa.14.2.i = phi i32 [ %datum.sroa.14.1.i, %do.body.i.if.end35.i_crit_edge ], [ %tmp34.sroa.0.i.12.tmp34.sroa.0.i.12.tmp34.sroa.0.12.tmp34.sroa.0.12.tmp34.sroa.0.12.datum.sroa.14.0.copyload134.i, %map_word_ff.exit196.i ]
  %datum.sroa.11.2.i = phi i32 [ %datum.sroa.11.1.i, %do.body.i.if.end35.i_crit_edge ], [ %tmp34.sroa.0.i.8.tmp34.sroa.0.i.8.tmp34.sroa.0.8.tmp34.sroa.0.8.tmp34.sroa.0.8.datum.sroa.11.0.copyload132.i, %map_word_ff.exit196.i ]
  %datum.sroa.8.2.i = phi i32 [ %datum.sroa.8.1.i, %do.body.i.if.end35.i_crit_edge ], [ %tmp34.sroa.0.i.4.tmp34.sroa.0.i.4.tmp34.sroa.0.4.tmp34.sroa.0.4.tmp34.sroa.0.4.datum.sroa.8.0.copyload130.i, %map_word_ff.exit196.i ]
  %datum.sroa.0.2.i = phi i32 [ %datum.sroa.0.1.i, %do.body.i.if.end35.i_crit_edge ], [ %tmp34.sroa.0.i.0.tmp34.sroa.0.i.0.tmp34.sroa.0.0.tmp34.sroa.0.0.tmp34.sroa.0.0.datum.sroa.0.0.copyload128.i, %map_word_ff.exit196.i ]
  %55 = ptrtoint ptr %vec.0.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vec.0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 %vec_seek.0.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %orig.i.i) #9
  %57 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %datum.sroa.0.2.i, ptr %orig.i.i, align 4, !noalias !126
  %58 = ptrtoint ptr %orig.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %datum.sroa.8.2.i, ptr %orig.coerce.fca.1.gep.i.i, align 4, !noalias !126
  %59 = ptrtoint ptr %orig.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %datum.sroa.11.2.i, ptr %orig.coerce.fca.2.gep.i.i, align 4, !noalias !126
  %60 = ptrtoint ptr %orig.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %datum.sroa.14.2.i, ptr %orig.coerce.fca.3.gep.i.i, align 4, !noalias !126
  %61 = ptrtoint ptr %orig.coerce.fca.4.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %datum.sroa.17.2.i, ptr %orig.coerce.fca.4.gep.i.i, align 4, !noalias !126
  %62 = ptrtoint ptr %orig.coerce.fca.5.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %datum.sroa.20.2.i, ptr %orig.coerce.fca.5.gep.i.i, align 4, !noalias !126
  %63 = ptrtoint ptr %orig.coerce.fca.6.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %datum.sroa.23.2.i, ptr %orig.coerce.fca.6.gep.i.i, align 4, !noalias !126
  %64 = ptrtoint ptr %orig.coerce.fca.7.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %datum.sroa.26.2.i, ptr %orig.coerce.fca.7.gep.i.i, align 4, !noalias !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.i198.i = icmp sgt i32 %39, 4
  br i1 %cmp.i198.i, label %if.then.i200.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end35.i
  %add.i199.i = add i32 %43, %word_gap.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i199.i, i32 %word_gap.1.i)
  %cmp119.i.i = icmp sgt i32 %add.i199.i, %word_gap.1.i
  br i1 %cmp119.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.if.end.loopexit.i.i_crit_edge

for.cond.preheader.i.i.if.end.loopexit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.loopexit.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

if.then.i200.i:                                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %orig.i.i, i32 %word_gap.1.i
  %65 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr.i, i32 %43)
  %.pre.i = add i32 %43, %word_gap.1.i
  br label %map_word_load_partial.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.021.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %word_gap.1.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %or1820.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %datum.sroa.0.2.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %66 = xor i32 %i.021.i.i, -1
  %sub3.i.i = add i32 %39, %66
  %mul.i201.i = shl i32 %sub3.i.i, 3
  %shl.i.i = shl i32 255, %mul.i201.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %or1820.i.i, %neg.i.i
  %sub4.i.i = sub i32 %i.021.i.i, %word_gap.1.i
  %arrayidx5.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub4.i.i
  %67 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx5.i.i, align 1, !noalias !126
  %conv.i.i = zext i8 %68 to i32
  %shl6.i.i = shl i32 %conv.i.i, %mul.i201.i
  %or.i.i = or i32 %shl6.i.i, %and.i.i
  %inc.i.i = add nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %add.i199.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.loopexit.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.if.end.loopexit.i.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.loopexit.i.i

if.end.loopexit.i.i:                              ; preds = %for.body.i.i.if.end.loopexit.i.i_crit_edge, %for.cond.preheader.i.i.if.end.loopexit.i.i_crit_edge
  %or18.lcssa.i.i = phi i32 [ %datum.sroa.0.2.i, %for.cond.preheader.i.i.if.end.loopexit.i.i_crit_edge ], [ %or.i.i, %for.body.i.i.if.end.loopexit.i.i_crit_edge ]
  %69 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or18.lcssa.i.i, ptr %orig.i.i, align 4, !noalias !126
  br label %map_word_load_partial.exit.i

map_word_load_partial.exit.i:                     ; preds = %if.end.loopexit.i.i, %if.then.i200.i
  %add38.pre-phi.i = phi i32 [ %.pre.i, %if.then.i200.i ], [ %add.i199.i, %if.end.loopexit.i.i ]
  %70 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %tmp36.sroa.0.0.copyload.i = load i32, ptr %orig.i.i, align 4
  %71 = ptrtoint ptr %orig.coerce.fca.1.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %tmp36.sroa.4.0.copyload.i = load i32, ptr %orig.coerce.fca.1.gep.i.i, align 4
  %72 = ptrtoint ptr %orig.coerce.fca.2.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %tmp36.sroa.5.0.copyload.i = load i32, ptr %orig.coerce.fca.2.gep.i.i, align 4
  %73 = ptrtoint ptr %orig.coerce.fca.3.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %tmp36.sroa.6.0.copyload.i = load i32, ptr %orig.coerce.fca.3.gep.i.i, align 4
  %74 = ptrtoint ptr %orig.coerce.fca.4.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %tmp36.sroa.7.0.copyload.i = load i32, ptr %orig.coerce.fca.4.gep.i.i, align 4
  %75 = ptrtoint ptr %orig.coerce.fca.5.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %tmp36.sroa.8.0.copyload.i = load i32, ptr %orig.coerce.fca.5.gep.i.i, align 4
  %76 = ptrtoint ptr %orig.coerce.fca.6.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %tmp36.sroa.9.0.copyload.i = load i32, ptr %orig.coerce.fca.6.gep.i.i, align 4
  %77 = ptrtoint ptr %orig.coerce.fca.7.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %tmp36.sroa.10.0.copyload.i = load i32, ptr %orig.coerce.fca.7.gep.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %orig.i.i) #9
  %sub37.i = sub i32 %len.addr.0.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub37.i)
  %tobool39.not.i = icmp eq i32 %sub37.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.pre-phi.i, i32 %39)
  %cmp41.i = icmp eq i32 %add38.pre-phi.i, %39
  %or.cond216.i = select i1 %tobool39.not.i, i1 true, i1 %cmp41.i
  br i1 %or.cond216.i, label %if.then43.i, label %map_word_load_partial.exit.i.if.end47.i_crit_edge

map_word_load_partial.exit.i.if.end47.i_crit_edge: ; preds = %map_word_load_partial.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then43.i:                                      ; preds = %map_word_load_partial.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write.i, align 4
  %.fca.0.insert106.i = insertvalue [8 x i32] poison, i32 %tmp36.sroa.0.0.copyload.i, 0
  %.fca.1.insert109.i = insertvalue [8 x i32] %.fca.0.insert106.i, i32 %tmp36.sroa.4.0.copyload.i, 1
  %.fca.2.insert112.i = insertvalue [8 x i32] %.fca.1.insert109.i, i32 %tmp36.sroa.5.0.copyload.i, 2
  %.fca.3.insert115.i = insertvalue [8 x i32] %.fca.2.insert112.i, i32 %tmp36.sroa.6.0.copyload.i, 3
  %.fca.4.insert118.i = insertvalue [8 x i32] %.fca.3.insert115.i, i32 %tmp36.sroa.7.0.copyload.i, 4
  %.fca.5.insert121.i = insertvalue [8 x i32] %.fca.4.insert118.i, i32 %tmp36.sroa.8.0.copyload.i, 5
  %.fca.6.insert124.i = insertvalue [8 x i32] %.fca.5.insert121.i, i32 %tmp36.sroa.9.0.copyload.i, 6
  %.fca.7.insert127.i = insertvalue [8 x i32] %.fca.6.insert124.i, i32 %tmp36.sroa.10.0.copyload.i, 7
  call void %79(ptr noundef %1, [8 x i32] %.fca.7.insert127.i, i32 noundef %prog_buf_ofs.0.i) #9
  %80 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bankwidth.i, align 4
  %add46.i = add i32 %81, %prog_buf_ofs.0.i
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then43.i, %map_word_load_partial.exit.i.if.end47.i_crit_edge
  %word_gap.2.i = phi i32 [ 0, %if.then43.i ], [ %add38.pre-phi.i, %map_word_load_partial.exit.i.if.end47.i_crit_edge ]
  %prog_buf_ofs.1.i = phi i32 [ %add46.i, %if.then43.i ], [ %prog_buf_ofs.0.i, %map_word_load_partial.exit.i.if.end47.i_crit_edge ]
  %add48.i = add i32 %43, %vec_seek.0.i
  %82 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add48.i, i32 %83)
  %cmp50.i = icmp eq i32 %add48.i, %83
  %spec.select185.idx.i = zext i1 %cmp50.i to i32
  %spec.select185.i = getelementptr %struct.kvec, ptr %vec.0.i, i32 %spec.select185.idx.i
  %spec.select186.i = select i1 %cmp50.i, i32 0, i32 %add48.i
  br i1 %tobool39.not.i, label %do.end.i, label %if.end47.i.do.body.i_crit_edge

if.end47.i.do.body.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %if.end47.i
  call fastcc void @send_pfow_command(ptr noundef %1, i32 noundef 233, i32 noundef %adr.addr.0.i, i32 noundef %shl.i) #9
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 7, ptr %state.i, align 4
  %85 = ptrtoint ptr %qinfo.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %qinfo.i, align 4
  %ProgBufferTime.i = getelementptr inbounds %struct.qinfo_chip, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %ProgBufferTime.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %ProgBufferTime.i, align 2
  %conv56.i = zext i16 %88 to i32
  %shl57.i = shl nuw i32 1, %conv56.i
  %call58.i = call fastcc i32 @wait_for_ready(ptr noundef %1, ptr noundef %arrayidx9, i32 noundef %shl57.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %do.cond.critedge, label %do.end63.i

do.end63.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %90, i32 noundef %call58.i, i32 noundef %adr.addr.0.i) #14
  call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx9) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp15.i)
  br label %cleanup18

cleanup:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp15.i)
  br label %cleanup18

do.cond.critedge:                                 ; preds = %do.end.i
  call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx9) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp15.i)
  %add13 = add i32 %12, %ofs.0
  %91 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %retlen, align 4
  %add14 = add i32 %92, %12
  store i32 %add14, ptr %retlen, align 4
  %sub15 = sub i32 %len.1, %12
  call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 685, i32 noundef 0) #9
  %call.i46 = call i32 @__cond_resched() #9
  %tobool17.not = icmp eq i32 %sub15, 0
  br i1 %tobool17.not, label %do.cond.critedge.cleanup18_crit_edge, label %do.cond.critedge.do.body_crit_edge

do.cond.critedge.do.body_crit_edge:               ; preds = %do.cond.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond.critedge.cleanup18_crit_edge:             ; preds = %do.cond.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

cleanup18:                                        ; preds = %do.cond.critedge.cleanup18_crit_edge, %cleanup, %do.end63.i, %for.end.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.2 = phi i32 [ %call.i, %cleanup ], [ 0, %for.end.cleanup18_crit_edge ], [ 0, %entry.cleanup18_crit_edge ], [ %call58.i, %do.end63.i ], [ 0, %do.cond.critedge.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr_lock(ptr nocapture noundef readonly %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %call = tail call fastcc i32 @do_xxlock(ptr noundef %mtd, i64 noundef %ofs, i32 noundef %conv, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr_unlock(ptr nocapture noundef readonly %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %len to i32
  %call = tail call fastcc i32 @do_xxlock(ptr noundef %mtd, i64 noundef %ofs, i32 noundef %conv, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr_point(ptr nocapture noundef readonly %mtd, i64 noundef %adr, i32 noundef %len, ptr nocapture noundef %retlen, ptr nocapture noundef writeonly %mtdbuf, ptr nocapture noundef readnone %phys) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %chipshift = getelementptr inbounds %struct.lpddr_private, ptr %3, i32 0, i32 4
  %virt = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup41_crit_edge, label %if.end

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %7 to i64
  %shr = ashr i64 %adr, %sh_prom
  %conv = trunc i64 %shr to i32
  %arrayidx = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %conv
  %shl = shl i32 %conv, %7
  %8 = trunc i64 %adr to i32
  %conv3 = sub i32 %8, %shl
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %10
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %conv3
  %11 = ptrtoint ptr %mtdbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr5, ptr %mtdbuf, align 4
  %numchips = getelementptr inbounds %struct.lpddr_private, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool6.not86 = icmp eq i32 %len, 0
  br i1 %tobool6.not86, label %if.end.cleanup41_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %chip.091 = phi ptr [ %arrayidx40, %cleanup.while.body_crit_edge ], [ %arrayidx, %if.end.while.body_crit_edge ]
  %last_end.090 = phi i32 [ %add37, %cleanup.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %ofs.089 = phi i32 [ 0, %cleanup.while.body_crit_edge ], [ %conv3, %if.end.while.body_crit_edge ]
  %chipnum.088 = phi i32 [ %inc38, %cleanup.while.body_crit_edge ], [ %conv, %if.end.while.body_crit_edge ]
  %len.addr.087 = phi i32 [ %sub34, %cleanup.while.body_crit_edge ], [ %len, %if.end.while.body_crit_edge ]
  %12 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chipnum.088, i32 %13)
  %cmp.not = icmp slt i32 %chipnum.088, %13
  br i1 %cmp.not, label %if.end9, label %while.body.cleanup41_crit_edge

while.body.cleanup41_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end9:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_end.090)
  %tobool10.not = icmp eq i32 %last_end.090, 0
  %14 = ptrtoint ptr %chip.091 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip.091, align 4
  br i1 %tobool10.not, label %if.end9.if.end18_crit_edge, label %if.else

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %last_end.090)
  %cmp14.not = icmp eq i32 %15, %last_end.090
  br i1 %cmp14.not, label %if.else.if.end18_crit_edge, label %if.else.cleanup41_crit_edge

if.else.cleanup41_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %last_end.1 = phi i32 [ %last_end.090, %if.else.if.end18_crit_edge ], [ %15, %if.end9.if.end18_crit_edge ]
  %add = add i32 %len.addr.087, -1
  %sub19 = add i32 %add, %ofs.089
  %16 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chipshift, align 4
  %shr21 = lshr i32 %sub19, %17
  %shl25 = shl nuw i32 1, %17
  %sub26 = sub i32 %shl25, %ofs.089
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip.091, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  br label %retry.i

retry.i:                                          ; preds = %retry.i.retry.i_crit_edge, %if.end18
  %call117.i = tail call fastcc i32 @chip_ready(ptr noundef %1, ptr noundef %chip.091, i32 noundef 17) #9
  %cmp118.i = icmp eq i32 %call117.i, -11
  br i1 %cmp118.i, label %retry.i.retry.i_crit_edge, label %get_chip.exit

retry.i.retry.i_crit_edge:                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.i

get_chip.exit:                                    ; preds = %retry.i
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i)
  %tobool30.not = icmp eq i32 %call117.i, 0
  br i1 %tobool30.not, label %cleanup, label %get_chip.exit.cleanup41_crit_edge

get_chip.exit.cleanup41_crit_edge:                ; preds = %get_chip.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

cleanup:                                          ; preds = %get_chip.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr21)
  %tobool22.not = icmp eq i32 %shr21, 0
  %thislen.0 = select i1 %tobool22.not, i32 %len.addr.087, i32 %sub26
  %state = getelementptr inbounds %struct.flchip, ptr %chip.091, i32 0, i32 2
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 17, ptr %state, align 4
  %ref_point_counter = getelementptr inbounds %struct.flchip, ptr %chip.091, i32 0, i32 1
  %19 = ptrtoint ptr %ref_point_counter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ref_point_counter, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %ref_point_counter, align 4
  %21 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retlen, align 4
  %add33 = add i32 %22, %thislen.0
  store i32 %add33, ptr %retlen, align 4
  %sub34 = sub i32 %len.addr.087, %thislen.0
  %23 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chipshift, align 4
  %shl36 = shl nuw i32 1, %24
  %add37 = add i32 %shl36, %last_end.1
  %inc38 = add i32 %chipnum.088, 1
  %arrayidx40 = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %inc38
  %tobool6.not = icmp eq i32 %sub34, 0
  br i1 %tobool6.not, label %cleanup.cleanup41_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.cleanup41_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

cleanup41:                                        ; preds = %cleanup.cleanup41_crit_edge, %get_chip.exit.cleanup41_crit_edge, %if.else.cleanup41_crit_edge, %while.body.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup41_crit_edge ], [ 0, %if.end.cleanup41_crit_edge ], [ 0, %get_chip.exit.cleanup41_crit_edge ], [ 0, %if.else.cleanup41_crit_edge ], [ 0, %while.body.cleanup41_crit_edge ], [ 0, %cleanup.cleanup41_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr_unpoint(ptr nocapture noundef readonly %mtd, i64 noundef %adr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %chipshift = getelementptr inbounds %struct.lpddr_private, ptr %3, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not61 = icmp eq i32 %len, 0
  br i1 %tobool.not61, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = trunc i64 %adr to i32
  %5 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %6 to i64
  %shr = ashr i64 %adr, %sh_prom
  %conv = trunc i64 %shr to i32
  %shl = shl i32 %conv, %6
  %conv3 = sub i32 %4, %shl
  %numchips = getelementptr inbounds %struct.lpddr_private, ptr %3, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %len.addr.066 = phi i32 [ %len, %while.body.lr.ph ], [ %18, %cleanup.while.body_crit_edge ]
  %ofs.065 = phi i32 [ %conv3, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %err.064 = phi i32 [ 0, %while.body.lr.ph ], [ %err.1, %cleanup.while.body_crit_edge ]
  %chipnum.062 = phi i32 [ %conv, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %chipnum.062
  %7 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chipnum.062, i32 %8)
  %cmp.not = icmp slt i32 %chipnum.062, %8
  br i1 %cmp.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %add = add i32 %len.addr.066, %ofs.065
  %sub5 = add i32 %add, -1
  %9 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chipshift, align 4
  %shr7 = lshr i32 %sub5, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr7)
  %tobool8.not = icmp eq i32 %shr7, 0
  %shl11.neg = shl nsw i32 -1, %10
  %mutex = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %chipnum.062, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %state = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %chipnum.062, i32 2
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %12)
  %cmp14 = icmp eq i32 %12, 17
  br i1 %cmp14, label %if.then16, label %do.end

if.then16:                                        ; preds = %if.end
  %ref_point_counter = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %chipnum.062, i32 1
  %13 = ptrtoint ptr %ref_point_counter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_point_counter, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %ref_point_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp18 = icmp eq i32 %dec, 0
  br i1 %cmp18, label %if.then20, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %17) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then20, %if.then16.cleanup_crit_edge
  %err.1 = phi i32 [ %err.064, %if.then20 ], [ %err.064, %if.then16.cleanup_crit_edge ], [ -22, %do.end ]
  tail call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %18 = add i32 %add, %shl11.neg
  %inc = add nsw i32 %chipnum.062, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not68 = icmp eq i32 %18, 0
  %tobool.not = select i1 %tobool8.not, i1 true, i1 %tobool.not68
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %err.064, %while.body.while.end_crit_edge ], [ %err.1, %cleanup.while.end_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_chip(ptr noundef %map, ptr noundef %chip, i32 noundef %mode) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #9
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
  %mutex14 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp33 = icmp eq i32 %mode, 4
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  br label %retry

retry:                                            ; preds = %retry.backedge, %entry
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %retry.if.end116_crit_edge, label %land.lhs.true

retry.if.end116_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

land.lhs.true:                                    ; preds = %retry
  %15 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %mode, label %land.lhs.true.if.end116_crit_edge [
    i32 7, label %land.lhs.true.land.lhs.true3_crit_edge
    i32 4, label %land.lhs.true.land.lhs.true3_crit_edge174
  ]

land.lhs.true.land.lhs.true3_crit_edge174:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true3

land.lhs.true.land.lhs.true3_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true3

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

land.lhs.true3:                                   ; preds = %land.lhs.true.land.lhs.true3_crit_edge, %land.lhs.true.land.lhs.true3_crit_edge174
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %17)
  %cmp4.not = icmp eq i32 %17, 13
  br i1 %cmp4.not, label %land.lhs.true3.if.end116_crit_edge, label %if.then

land.lhs.true3.if.end116_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then:                                          ; preds = %land.lhs.true3
  call void @mutex_lock_nested(ptr noundef nonnull %14, i32 noundef 0) #9
  %writing = getelementptr inbounds %struct.flchip_shared, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %writing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %writing, align 4
  %tobool6.not = icmp eq ptr %19, null
  %cmp8.not = icmp eq ptr %19, %chip
  %or.cond = or i1 %tobool6.not, %cmp8.not
  br i1 %or.cond, label %if.then.if.end32_crit_edge, label %if.then9

if.then.if.end32_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then9:                                         ; preds = %if.then
  %mutex = getelementptr inbounds %struct.flchip, ptr %19, i32 0, i32 7
  %call10 = call i32 @mutex_trylock(ptr noundef %mutex) #9
  call void @mutex_unlock(ptr noundef nonnull %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.then9.retry.backedge_crit_edge, label %if.end

if.then9.retry.backedge_crit_edge:                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

if.end:                                           ; preds = %if.then9
  call void @mutex_unlock(ptr noundef %mutex14) #9
  %call15 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef nonnull %19, i32 noundef %mode)
  call void @mutex_lock_nested(ptr noundef %mutex14, i32 noundef 0) #9
  %20 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call15, label %cleanup.thread [
    i32 -11, label %if.then18
    i32 0, label %if.end24
  ]

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end116.retry.backedge_crit_edge, %__here, %if.then28, %if.then18, %if.then9.retry.backedge_crit_edge
  br label %retry

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup121

if.end24:                                         ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull %14, i32 noundef 0) #9
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %22)
  %cmp27 = icmp eq i32 %22, 13
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @put_chip(ptr noundef %map, ptr noundef nonnull %19)
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %retry.backedge

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.then.if.end32_crit_edge
  br i1 %cmp33, label %land.lhs.true34, label %if.end32.cleanup.thread171_crit_edge

if.end32.cleanup.thread171_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread171

land.lhs.true34:                                  ; preds = %if.end32
  %erasing = getelementptr inbounds %struct.flchip_shared, ptr %14, i32 0, i32 2
  %23 = ptrtoint ptr %erasing to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %erasing, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %land.lhs.true34.if.then111_crit_edge, label %land.lhs.true36

land.lhs.true34.if.then111_crit_edge:             ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

land.lhs.true36:                                  ; preds = %land.lhs.true34
  %oldstate = getelementptr inbounds %struct.flchip, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %oldstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp38 = icmp eq i32 %26, 4
  br i1 %cmp38, label %if.then39, label %land.lhs.true36.if.then111_crit_edge

land.lhs.true36.if.then111_crit_edge:             ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

if.then39:                                        ; preds = %land.lhs.true36
  call void @mutex_unlock(ptr noundef nonnull %14) #9
  br label %__here

__here:                                           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 212
  %29 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 ptrtoint (ptr blockaddress(@get_chip, %__here) to i32), ptr %task_state_change, align 4
  %30 = load ptr, ptr %task, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 2, ptr %30, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #9
  call void @mutex_unlock(ptr noundef %mutex14) #9
  call void @schedule() #9
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #9
  call void @mutex_lock_nested(ptr noundef %mutex14, i32 noundef 0) #9
  br label %retry.backedge

if.then111:                                       ; preds = %land.lhs.true36.if.then111_crit_edge, %land.lhs.true34.if.then111_crit_edge
  %32 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %chip, ptr %writing, align 4
  br label %cleanup.thread171

cleanup.thread171:                                ; preds = %if.then111, %if.end32.cleanup.thread171_crit_edge
  %erasing.sink = phi ptr [ %erasing, %if.then111 ], [ %writing, %if.end32.cleanup.thread171_crit_edge ]
  %33 = ptrtoint ptr %erasing.sink to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %chip, ptr %erasing.sink, align 4
  call void @mutex_unlock(ptr noundef nonnull %14) #9
  br label %if.end116

if.end116:                                        ; preds = %cleanup.thread171, %land.lhs.true3.if.end116_crit_edge, %land.lhs.true.if.end116_crit_edge, %retry.if.end116_crit_edge
  %call117 = call fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call117)
  %cmp118 = icmp eq i32 %call117, -11
  br i1 %cmp118, label %if.end116.retry.backedge_crit_edge, label %if.end116.cleanup121_crit_edge

if.end116.cleanup121_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup121

if.end116.retry.backedge_crit_edge:               ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

cleanup121:                                       ; preds = %if.end116.cleanup121_crit_edge, %cleanup.thread
  %retval.3 = phi i32 [ %call15, %cleanup.thread ], [ %call117, %if.end116.cleanup121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_chip(ptr noundef %map, ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull %1, i32 noundef 0) #9
  %writing = getelementptr inbounds %struct.flchip_shared, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %writing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %writing, align 4
  %cmp = icmp eq ptr %3, %chip
  br i1 %cmp, label %land.lhs.true, label %if.else.thread

land.lhs.true:                                    ; preds = %if.then
  %oldstate = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oldstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  %erasing = getelementptr inbounds %struct.flchip_shared, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %erasing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %erasing, align 4
  %8 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %writing, align 4
  %tobool6.not = icmp eq ptr %7, null
  %cmp9.not = icmp eq ptr %7, %chip
  %or.cond = or i1 %tobool6.not, %cmp9.not
  br i1 %or.cond, label %if.end, label %if.then10

common.ret:                                       ; preds = %do.end, %sw.bb, %if.end29.common.ret_crit_edge, %if.then23, %if.then10
  %wq38 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wq38, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.flchip, ptr %7, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef nonnull %1) #9
  %mutex13 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %mutex13) #9
  tail call fastcc void @put_chip(ptr noundef %map, ptr noundef nonnull %7)
  tail call void @mutex_lock_nested(ptr noundef %mutex13, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %common.ret

if.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %erasing to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %erasing, align 4
  %10 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %writing, align 4
  br label %cleanup

if.else.thread:                                   ; preds = %if.then
  %erasing18103 = getelementptr inbounds %struct.flchip_shared, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %erasing18103 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %erasing18103, align 4
  %cmp19104 = icmp eq ptr %12, %chip
  br i1 %cmp19104, label %if.then23, label %if.else.thread.cleanup_crit_edge

if.else.thread.cleanup_crit_edge:                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull %1) #9
  br label %common.ret

cleanup:                                          ; preds = %if.else.thread.cleanup_crit_edge, %if.end, %land.lhs.true.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull %1) #9
  br label %if.end29

if.end29:                                         ; preds = %cleanup, %entry.if.end29_crit_edge
  %oldstate30 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %13 = ptrtoint ptr %oldstate30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oldstate30, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %14, label %do.end [
    i32 4, label %sw.bb
    i32 0, label %if.end29.common.ret_crit_edge
  ]

if.end29.common.ret_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %common.ret

sw.bb:                                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %pfow_base = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 13
  %18 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pfow_base, align 4
  %add = add i32 %19, 128
  tail call void %17(ptr noundef %map, [8 x i32] [i32 208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add) #9
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  %22 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pfow_base, align 4
  %add34 = add i32 %23, 192
  tail call void %21(ptr noundef %map, [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add34) #9
  %24 = ptrtoint ptr %oldstate30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %oldstate30, align 4
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %state, align 4
  br label %common.ret

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %27, i32 noundef %14) #14
  br label %common.ret
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chip_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %mode) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %mode)
  %cmp = icmp eq i32 %mode, 13
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %oldstate = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oldstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2.not = icmp eq i32 %16, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.__here_crit_edge

land.lhs.true.__here_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %18, label %if.end.__here_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 3, label %if.end.cleanup_crit_edge120
    i32 4, label %sw.bb3
    i32 17, label %sw.bb17
  ]

if.end.cleanup_crit_edge120:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.__here_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

sw.bb3:                                           ; preds = %if.end
  %qinfo = getelementptr inbounds %struct.lpddr_private, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %qinfo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qinfo, align 4
  %SuspEraseSupp = getelementptr inbounds %struct.qinfo_chip, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %SuspEraseSupp to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %SuspEraseSupp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not = icmp eq i16 %23, 0
  br i1 %tobool.not, label %sw.bb3.__here_crit_edge, label %lor.lhs.false

sw.bb3.__here_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

lor.lhs.false:                                    ; preds = %sw.bb3
  %24 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %mode, label %lor.lhs.false.__here_crit_edge [
    i32 0, label %lor.lhs.false.if.end8_crit_edge
    i32 17, label %lor.lhs.false.if.end8_crit_edge121
  ]

lor.lhs.false.if.end8_crit_edge121:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

if.end8:                                          ; preds = %lor.lhs.false.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge121
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %25 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write, align 4
  %pfow_base = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 13
  %27 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pfow_base, align 4
  %add = add i32 %28, 200
  tail call void %26(ptr noundef %map, [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add) #9
  %oldstate9 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %29 = ptrtoint ptr %oldstate9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %oldstate9, align 4
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %state, align 4
  %call11 = tail call fastcc i32 @wait_for_ready(ptr noundef %map, ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_chip(ptr noundef %map, ptr noundef %chip)
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %32) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %erase_suspended = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 4
  %33 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %erase_suspended, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %erase_suspended, align 4
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %state, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp18 = icmp eq i32 %mode, 0
  br i1 %cmp18, label %land.lhs.true19, label %sw.bb17.__here_crit_edge

sw.bb17.__here_crit_edge:                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

land.lhs.true19:                                  ; preds = %sw.bb17
  %oldstate20 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %35 = ptrtoint ptr %oldstate20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oldstate20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp21 = icmp eq i32 %36, 0
  br i1 %cmp21, label %land.lhs.true19.cleanup_crit_edge, label %land.lhs.true19.__here_crit_edge

land.lhs.true19.__here_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

__here:                                           ; preds = %land.lhs.true19.__here_crit_edge, %sw.bb17.__here_crit_edge, %lor.lhs.false.__here_crit_edge, %sw.bb3.__here_crit_edge, %if.end.__here_crit_edge, %land.lhs.true.__here_crit_edge
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@chip_ready, %__here) to i32), ptr %task_state_change, align 4
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 2, ptr %40, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #9
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %mutex) #9
  call void @schedule() #9
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #9
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %__here, %land.lhs.true19.cleanup_crit_edge, %if.end15, %if.then13, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge120
  %retval.0 = phi i32 [ -11, %__here ], [ -5, %if.then13 ], [ 0, %if.end15 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge120 ], [ 0, %land.lhs.true19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_ready(ptr noundef %map, ptr noundef %chip, i32 noundef %chip_op_time) #0 align 64 {
entry:
  %tmp = alloca %union.map_word, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %mul = shl i32 %chip_op_time, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  %spec.store.select = select i1 %tobool.not, i32 500000, i32 %mul
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %pfow_base = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 13
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %4 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pfow_base, align 4
  %add158 = add i32 %5, 204
  call void %3(ptr nonnull sret(%union.map_word) align 4 %tmp, ptr noundef %map, i32 noundef %add158) #9
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmp, align 4
  %and159 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool1.not160 = icmp eq i32 %and159, 0
  br i1 %tobool1.not160, label %if.end3.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end3.lr.ph:                                    ; preds = %entry
  %div149 = lshr i32 %chip_op_time, 1
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  %erase_suspended = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 4
  %12 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %if.end7

if.end3:                                          ; preds = %if.end102
  %tobool4.not = icmp eq i32 %timeo.2, 0
  br i1 %tobool4.not, label %do.end, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %14, i32 noundef %1) #14
  br label %for.end

if.end7:                                          ; preds = %if.end3.if.end7_crit_edge, %if.end3.lr.ph
  %sleep_time.0161175 = phi i32 [ %div149, %if.end3.lr.ph ], [ %sleep_time.1, %if.end3.if.end7_crit_edge ]
  %timeo.0162174 = phi i32 [ %spec.store.select, %if.end3.lr.ph ], [ %timeo.2, %if.end3.if.end7_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %sleep_time.0161175)
  %cmp = icmp ugt i32 %sleep_time.0161175, 9999
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %div9 = udiv i32 %sleep_time.0161175, 1000
  call void @msleep(i32 noundef %div9) #9
  %sub = sub i32 %timeo.0162174, %sleep_time.0161175
  br label %if.end12

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748) #9
  call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 164, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  %dec = add i32 %timeo.0162174, -1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %sleep_time.1 = phi i32 [ 10000, %if.then8 ], [ %sleep_time.0161175, %if.else ]
  %timeo.1 = phi i32 [ %sub, %if.then8 ], [ %dec, %if.else ]
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp15.not156 = icmp eq i32 %17, %1
  br i1 %cmp15.not156, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %__here.while.body_crit_edge, %if.end12.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %18 = call ptr @memset(ptr %12, i32 255, i32 16)
  %19 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %wait, align 4
  %20 = call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %8, align 4
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @default_wake_function, ptr %9, align 4
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %10, align 4
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %11, align 4
  br label %__here

__here:                                           ; preds = %while.body
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 212
  %30 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 ptrtoint (ptr blockaddress(@wait_for_ready, %__here) to i32), ptr %task_state_change, align 4
  %31 = load ptr, ptr %task, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 2, ptr %31, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  call void @schedule() #9
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #9
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 4
  %cmp15.not = icmp eq i32 %34, %1
  br i1 %cmp15.not, label %__here.while.end_crit_edge, label %__here.while.body_crit_edge

__here.while.body_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %__here.while.end_crit_edge, %if.end12.while.end_crit_edge
  %35 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %erase_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %36 = icmp ult i8 %bf.load, 64
  br i1 %36, label %while.end.if.end102_crit_edge, label %if.then94

while.end.if.end102_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then94:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear100 = and i8 %bf.load, 63
  %37 = ptrtoint ptr %erase_suspended to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %bf.clear100, ptr %erase_suspended, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then94, %while.end.if.end102_crit_edge
  %timeo.2 = phi i32 [ %spec.store.select, %if.then94 ], [ %timeo.1, %while.end.if.end102_crit_edge ]
  %38 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read, align 4
  %40 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pfow_base, align 4
  %add = add i32 %41, 204
  call void %39(ptr nonnull sret(%union.map_word) align 4 %tmp, ptr noundef %map, i32 noundef %add) #9
  %42 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tmp, align 4
  %and = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end102.for.end_crit_edge

if.end102.for.end_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end102.for.end_crit_edge, %do.end, %entry.for.end_crit_edge
  %44 = phi i32 [ %43, %do.end ], [ %7, %entry.for.end_crit_edge ], [ %43, %if.end102.for.end_crit_edge ]
  %tobool1.not152 = phi i1 [ true, %do.end ], [ false, %entry.for.end_crit_edge ], [ false, %if.end102.for.end_crit_edge ]
  %ret.0 = phi i32 [ -62, %do.end ], [ 0, %entry.for.end_crit_edge ], [ 0, %if.end102.for.end_crit_edge ]
  %and103 = and i32 %44, 4922
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %for.end.if.end114_crit_edge, label %if.then105

for.end.if.end114_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then105:                                       ; preds = %for.end
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %45 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write, align 4
  %47 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pfow_base, align 4
  %add107 = add i32 %48, 204
  call void %46(ptr noundef %map, [8 x i32] [i32 -4923, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add107) #9
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 4
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %50, i32 noundef %44) #14
  %and1.i = and i32 %44, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then105.if.end.i_crit_edge

if.then105.if.end.i_crit_edge:                    ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  %call.i150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then105.if.end.i_crit_edge
  %51 = and i32 %44, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %51)
  %cmp.i = icmp eq i32 %51, 768
  br i1 %cmp.i, label %if.end.i.if.end28.sink.split.i_crit_edge, label %if.else.i

if.end.i.if.end28.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %52 = and i32 %44, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool10.not.i = icmp eq i32 %52, 0
  br i1 %tobool10.not.i, label %if.else17.i, label %if.else.i.if.end28.sink.split.i_crit_edge

if.else.i.if.end28.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.sink.split.i

if.else17.i:                                      ; preds = %if.else.i
  %53 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool19.not.i = icmp eq i32 %53, 0
  br i1 %tobool19.not.i, label %if.else17.i.if.end28.i_crit_edge, label %if.else17.i.if.end28.sink.split.i_crit_edge

if.else17.i.if.end28.sink.split.i_crit_edge:      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.sink.split.i

if.else17.i.if.end28.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.end28.sink.split.i:                            ; preds = %if.else17.i.if.end28.sink.split.i_crit_edge, %if.else.i.if.end28.sink.split.i_crit_edge, %if.end.i.if.end28.sink.split.i_crit_edge
  %.str.19.sink.i = phi ptr [ @.str.16, %if.end.i.if.end28.sink.split.i_crit_edge ], [ @.str.19, %if.else.i.if.end28.sink.split.i_crit_edge ], [ @.str.22, %if.else17.i.if.end28.sink.split.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink.i) #14
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.sink.split.i, %if.else17.i.if.end28.i_crit_edge
  br i1 %tobool1.not152, label %do.end34.i, label %if.end28.i.if.end37.i_crit_edge

if.end28.i.if.end37.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

do.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end34.i, %if.end28.i.if.end37.i_crit_edge
  %and38.i = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end46.i_crit_edge, label %do.end43.i

if.end37.i.if.end46.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

do.end43.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end43.i, %if.end37.i.if.end46.i_crit_edge
  %and47.i = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end55.i_crit_edge, label %do.end52.i

if.end46.i.if.end55.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

do.end52.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #14
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end52.i, %if.end46.i.if.end55.i_crit_edge
  %and56.i = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end55.i.if.end64.i_crit_edge, label %do.end61.i

if.end55.i.if.end64.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

do.end61.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.end61.i, %if.end55.i.if.end64.i_crit_edge
  %and65.i = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end64.i.if.end73.i_crit_edge, label %do.end70.i

if.end64.i.if.end73.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

do.end70.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  br label %if.end73.i

if.end73.i:                                       ; preds = %do.end70.i, %if.end64.i.if.end73.i_crit_edge
  %and74.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end82.i_crit_edge, label %do.end79.i

if.end73.i.if.end82.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

do.end79.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #14
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end79.i, %if.end73.i.if.end82.i_crit_edge
  %and83.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end82.i.if.end114_crit_edge, label %do.end88.i

if.end82.i.if.end114_crit_edge:                   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

do.end88.i:                                       ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #14
  br label %if.end114

if.end114:                                        ; preds = %do.end88.i, %if.end82.i.if.end114_crit_edge, %for.end.if.end114_crit_edge
  %ret.1 = phi i32 [ %ret.0, %for.end.if.end114_crit_edge ], [ -5, %if.end82.i.if.end114_crit_edge ], [ -5, %do.end88.i ]
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %state, align 4
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_pfow_command(ptr noundef %map, i32 noundef %cmd_code, i32 noundef %adr, i32 noundef %len) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %0 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bankwidth, align 4
  %mul = shl i32 %1, 3
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %pfow_base = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 13
  %4 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pfow_base, align 4
  %add = add i32 %5, 128
  %.fca.0.insert135 = insertvalue [8 x i32] poison, i32 %cmd_code, 0
  %.fca.1.insert138 = insertvalue [8 x i32] %.fca.0.insert135, i32 0, 1
  %.fca.2.insert141 = insertvalue [8 x i32] %.fca.1.insert138, i32 0, 2
  %.fca.3.insert144 = insertvalue [8 x i32] %.fca.2.insert141, i32 0, 3
  %.fca.4.insert147 = insertvalue [8 x i32] %.fca.3.insert144, i32 0, 4
  %.fca.5.insert150 = insertvalue [8 x i32] %.fca.4.insert147, i32 0, 5
  %.fca.6.insert153 = insertvalue [8 x i32] %.fca.5.insert150, i32 0, 6
  %.fca.7.insert156 = insertvalue [8 x i32] %.fca.6.insert153, i32 0, 7
  tail call void %3(ptr noundef %map, [8 x i32] %.fca.7.insert156, i32 noundef %add) #9
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %notmask = shl nsw i32 -1, %mul
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %adr
  %8 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pfow_base, align 4
  %add4 = add i32 %9, 136
  %.fca.0.insert111 = insertvalue [8 x i32] poison, i32 %and, 0
  %.fca.1.insert114 = insertvalue [8 x i32] %.fca.0.insert111, i32 0, 1
  %.fca.2.insert117 = insertvalue [8 x i32] %.fca.1.insert114, i32 0, 2
  %.fca.3.insert120 = insertvalue [8 x i32] %.fca.2.insert117, i32 0, 3
  %.fca.4.insert123 = insertvalue [8 x i32] %.fca.3.insert120, i32 0, 4
  %.fca.5.insert126 = insertvalue [8 x i32] %.fca.4.insert123, i32 0, 5
  %.fca.6.insert129 = insertvalue [8 x i32] %.fca.5.insert126, i32 0, 6
  %.fca.7.insert132 = insertvalue [8 x i32] %.fca.6.insert129, i32 0, 7
  tail call void %7(ptr noundef %map, [8 x i32] %.fca.7.insert132, i32 noundef %add4) #9
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %shr = lshr i32 %adr, %mul
  %12 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pfow_base, align 4
  %add9 = add i32 %13, 138
  %.fca.0.insert87 = insertvalue [8 x i32] poison, i32 %shr, 0
  %.fca.1.insert90 = insertvalue [8 x i32] %.fca.0.insert87, i32 0, 1
  %.fca.2.insert93 = insertvalue [8 x i32] %.fca.1.insert90, i32 0, 2
  %.fca.3.insert96 = insertvalue [8 x i32] %.fca.2.insert93, i32 0, 3
  %.fca.4.insert99 = insertvalue [8 x i32] %.fca.3.insert96, i32 0, 4
  %.fca.5.insert102 = insertvalue [8 x i32] %.fca.4.insert99, i32 0, 5
  %.fca.6.insert105 = insertvalue [8 x i32] %.fca.5.insert102, i32 0, 6
  %.fca.7.insert108 = insertvalue [8 x i32] %.fca.6.insert105, i32 0, 7
  tail call void %11(ptr noundef %map, [8 x i32] %.fca.7.insert108, i32 noundef %add9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %and15 = and i32 %sub, %len
  %16 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pfow_base, align 4
  %add17 = add i32 %17, 144
  %.fca.0.insert63 = insertvalue [8 x i32] poison, i32 %and15, 0
  %.fca.1.insert66 = insertvalue [8 x i32] %.fca.0.insert63, i32 0, 1
  %.fca.2.insert69 = insertvalue [8 x i32] %.fca.1.insert66, i32 0, 2
  %.fca.3.insert72 = insertvalue [8 x i32] %.fca.2.insert69, i32 0, 3
  %.fca.4.insert75 = insertvalue [8 x i32] %.fca.3.insert72, i32 0, 4
  %.fca.5.insert78 = insertvalue [8 x i32] %.fca.4.insert75, i32 0, 5
  %.fca.6.insert81 = insertvalue [8 x i32] %.fca.5.insert78, i32 0, 6
  %.fca.7.insert84 = insertvalue [8 x i32] %.fca.6.insert81, i32 0, 7
  tail call void %15(ptr noundef %map, [8 x i32] %.fca.7.insert84, i32 noundef %add17) #9
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  %shr21 = lshr i32 %len, %mul
  %20 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pfow_base, align 4
  %add23 = add i32 %21, 146
  %.fca.0.insert39 = insertvalue [8 x i32] poison, i32 %shr21, 0
  %.fca.1.insert42 = insertvalue [8 x i32] %.fca.0.insert39, i32 0, 1
  %.fca.2.insert45 = insertvalue [8 x i32] %.fca.1.insert42, i32 0, 2
  %.fca.3.insert48 = insertvalue [8 x i32] %.fca.2.insert45, i32 0, 3
  %.fca.4.insert51 = insertvalue [8 x i32] %.fca.3.insert48, i32 0, 4
  %.fca.5.insert54 = insertvalue [8 x i32] %.fca.4.insert51, i32 0, 5
  %.fca.6.insert57 = insertvalue [8 x i32] %.fca.5.insert54, i32 0, 6
  %.fca.7.insert60 = insertvalue [8 x i32] %.fca.6.insert57, i32 0, 7
  tail call void %19(ptr noundef %map, [8 x i32] %.fca.7.insert60, i32 noundef %add23) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then, %entry.if.end31_crit_edge
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  %24 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pfow_base, align 4
  %add35 = add i32 %25, 192
  tail call void %23(ptr noundef %map, [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add35) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_xxlock(ptr nocapture noundef readonly %mtd, i64 noundef %adr, i32 noundef %len, i32 noundef %thunk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %chipshift = getelementptr inbounds %struct.lpddr_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %5 to i64
  %shr = ashr i64 %adr, %sh_prom
  %conv = trunc i64 %shr to i32
  %arrayidx = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %conv
  %mutex = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %conv, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  br label %retry.i

retry.i:                                          ; preds = %retry.i.retry.i_crit_edge, %entry
  %call117.i = tail call fastcc i32 @chip_ready(ptr noundef %1, ptr noundef %arrayidx, i32 noundef 15) #9
  %6 = zext i32 %call117.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call117.i, label %retry.i.cleanup_crit_edge [
    i32 -11, label %retry.i.retry.i_crit_edge
    i32 0, label %if.end
  ]

retry.i.retry.i_crit_edge:                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.i

retry.i.cleanup_crit_edge:                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %retry.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %thunk)
  %cmp = icmp eq i32 %thunk, 1
  %conv4 = trunc i64 %adr to i32
  %conv6 = add i32 %conv4, %len
  %. = select i1 %cmp, i32 97, i32 98
  %.62 = select i1 %cmp, i32 15, i32 16
  tail call fastcc void @send_pfow_command(ptr noundef %1, i32 noundef %., i32 noundef %conv4, i32 noundef %conv6)
  %7 = getelementptr %struct.lpddr_private, ptr %3, i32 0, i32 5, i32 %conv, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.62, ptr %7, align 4
  %call21 = tail call fastcc i32 @wait_for_ready(ptr noundef %1, ptr noundef %arrayidx, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end.out_crit_edge, label %do.end26

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %10, i32 noundef %call21) #14
  br label %out

out:                                              ; preds = %do.end26, %if.end.out_crit_edge
  tail call fastcc void @put_chip(ptr noundef %1, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %out, %retry.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %out ], [ %call117.i, %retry.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @lpddr_cmdset.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 79, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @lpddr_cmdset.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 87, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lpddr_cmdset.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 88, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_lpddr_cmdset, !10, !"__ksymtab_lpddr_cmdset", i1 false, i1 false}
!10 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 95, i32 1}
!11 = !{ptr @__UNIQUE_ID_file188, !12, !"__UNIQUE_ID_file188", i1 false, i1 false}
!12 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 761, i32 1}
!13 = !{ptr @__UNIQUE_ID_license189, !12, !"__UNIQUE_ID_license189", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author190, !15, !"__UNIQUE_ID_author190", i1 false, i1 false}
!15 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 762, i32 1}
!16 = !{ptr @__UNIQUE_ID_description191, !17, !"__UNIQUE_ID_description191", i1 false, i1 false}
!17 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 763, i32 1}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 271, i32 4}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 323, i32 4}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @chip_ready._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @chip_ready._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 338, i32 3}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 145, i32 4}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wait_for_ready._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @wait_for_ready._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 172, i32 4}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 189, i32 3}
!37 = !{ptr @wait_for_ready._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @wait_for_ready._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 102, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @print_drs_error._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @print_drs_error._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 104, i32 3}
!46 = !{ptr @print_drs_error._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @print_drs_error._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 106, i32 3}
!50 = !{ptr @print_drs_error._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @print_drs_error._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 108, i32 3}
!54 = !{ptr @print_drs_error._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @print_drs_error._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 110, i32 3}
!58 = !{ptr @print_drs_error._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @print_drs_error._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 112, i32 3}
!62 = !{ptr @print_drs_error._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @print_drs_error._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 114, i32 3}
!66 = !{ptr @print_drs_error._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @print_drs_error._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 116, i32 3}
!70 = !{ptr @print_drs_error._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @print_drs_error._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 118, i32 3}
!74 = !{ptr @print_drs_error._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @print_drs_error._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 120, i32 3}
!78 = !{ptr @print_drs_error._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @print_drs_error._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 122, i32 3}
!82 = !{ptr @print_drs_error._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @print_drs_error._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 397, i32 3}
!86 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @put_chip._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @put_chip._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 617, i32 4}
!91 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @lpddr_unpoint._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @lpddr_unpoint._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 474, i32 3}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @do_write_buffer._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @do_write_buffer._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 502, i32 3}
!101 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @do_erase_oneblock._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @do_erase_oneblock._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/lpddr/lpddr_cmds.c", i32 742, i32 3}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @do_xxlock._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @do_xxlock._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{!"sp"}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{!121}
!121 = distinct !{!121, !122, !"map_word_ff: %agg.result"}
!122 = distinct !{!122, !"map_word_ff"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"map_word_ff: %agg.result"}
!125 = distinct !{!125, !"map_word_ff"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"map_word_load_partial: %agg.result"}
!128 = distinct !{!128, !"map_word_load_partial"}
!129 = !{i64 2153047118}
!130 = !{i64 2153054011}
!131 = !{i64 2153040271}
