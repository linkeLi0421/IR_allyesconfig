; ModuleID = '/llk/IR_all_yes/fs/jbd2/transaction.c_pt.bc'
source_filename = "../fs/jbd2/transaction.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+jbd2__journal_start\22, \22a\22\09"
module asm "\09.weak\09__crc_jbd2__journal_start\09\09\09\09"
module asm "\09.long\09__crc_jbd2__journal_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2__journal_start:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2__journal_start\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2__journal_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jbd2_journal_start\22, \22a\22\09"
module asm "\09.weak\09__crc_jbd2_journal_start\09\09\09\09"
module asm "\09.long\09__crc_jbd2_journal_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_journal_start:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_journal_start\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_journal_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jbd2_journal_free_reserved\22, \22a\22\09"
module asm "\09.weak\09__crc_jbd2_journal_free_reserved\09\09\09\09"
module asm "\09.long\09__crc_jbd2_journal_free_reserved\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_journal_free_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_journal_free_reserved\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_journal_free_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jbd2_journal_start_reserved\22, \22a\22\09"
module asm "\09.weak\09__crc_jbd2_journal_start_reserved\09\09\09\09"
module asm "\09.long\09__crc_jbd2_journal_start_reserved\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_journal_start_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_journal_start_reserved\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_journal_start_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jbd2__journal_restart\22, \22a\22\09"
module asm "\09.weak\09__crc_jbd2__journal_restart\09\09\09\09"
module asm "\09.long\09__crc_jbd2__journal_restart\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2__journal_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2__journal_restart\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2__journal_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jbd2_journal_restart\22, \22a\22\09"
module asm "\09.weak\09__crc_jbd2_journal_restart\09\09\09\09"
module asm "\09.long\09__crc_jbd2_journal_restart\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_journal_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_journal_restart\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_journal_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.jbd2_journal_handle = type { %union.anon.84, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.84 = type { ptr }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.journal_superblock_s = type { %struct.journal_header_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i8, [3 x i8], i32, [41 x i32], i32, [768 x i8] }
%struct.journal_header_s = type { i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.journal_head = type { ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.jbd2_inode = type { ptr, ptr, %struct.list_head, ptr, i32, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.79 = type { ptr }

@transaction_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jbd2_transaction_s\00", [45 x i8] zeroinitializer }, align 32
@jbd2_journal_init_transaction_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\010JBD2: failed to create transaction cache\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"jbd2_journal_init_transaction_cache\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/jbd2/transaction.c\00", [42 x i8] zeroinitializer }, align 32
@jbd2_journal_init_transaction_cache._entry_ptr = internal global ptr @jbd2_journal_init_transaction_cache._entry, section ".printk_index", align 4
@__kstrtab_jbd2__journal_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2__journal_start = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2__journal_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2__journal_start to i32), ptr @__kstrtab_jbd2__journal_start, ptr @__kstrtabns_jbd2__journal_start }, section "___ksymtab+jbd2__journal_start", align 4
@__kstrtab_jbd2_journal_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_journal_start = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_journal_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_journal_start to i32), ptr @__kstrtab_jbd2_journal_start, ptr @__kstrtabns_jbd2_journal_start }, section "___ksymtab+jbd2_journal_start", align 4
@__kstrtab_jbd2_journal_free_reserved = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_journal_free_reserved = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_journal_free_reserved = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_journal_free_reserved to i32), ptr @__kstrtab_jbd2_journal_free_reserved, ptr @__kstrtabns_jbd2_journal_free_reserved }, section "___ksymtab+jbd2_journal_free_reserved", align 4
@__kstrtab_jbd2_journal_start_reserved = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_journal_start_reserved = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_journal_start_reserved = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_journal_start_reserved to i32), ptr @__kstrtab_jbd2_journal_start_reserved, ptr @__kstrtabns_jbd2_journal_start_reserved }, section "___ksymtab+jbd2_journal_start_reserved", align 4
@__func__.jbd2_journal_extend = private unnamed_addr constant [20 x i8] c"jbd2_journal_extend\00", align 1
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"denied handle %p %d blocks: transaction not running\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"denied handle %p %d blocks: transaction too large\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"extended handle %p by %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.jbd2__journal_restart = private unnamed_addr constant [22 x i8] c"jbd2__journal_restart\00", align 1
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"restarting handle %p\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_jbd2__journal_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2__journal_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2__journal_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2__journal_restart to i32), ptr @__kstrtab_jbd2__journal_restart, ptr @__kstrtabns_jbd2__journal_restart }, section "___ksymtab+jbd2__journal_restart", align 4
@__kstrtab_jbd2_journal_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_journal_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_journal_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_journal_restart to i32), ptr @__kstrtab_jbd2_journal_restart, ptr @__kstrtabns_jbd2_journal_restart }, section "___ksymtab+jbd2_journal_restart", align 4
@__func__.jbd2_journal_get_create_access = private unnamed_addr constant [31 x i8] c"jbd2_journal_get_create_access\00", align 1
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"journal_head %p\0A\00", [47 x i8] zeroinitializer }, align 32
@jbd2_journal_set_triggers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.jbd2_journal_dirty_metadata = private unnamed_addr constant [28 x i8] c"jbd2_journal_dirty_metadata\00", align 1
@jbd2_journal_dirty_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.jbd2_journal_dirty_metadata, ptr @.str.3, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013JBD2: assertion failure: h_type=%u h_line_no=%u block_no=%llu jlist=%u\0A\00", [54 x i8] zeroinitializer }, align 32
@jbd2_journal_dirty_metadata._entry_ptr = internal global ptr @jbd2_journal_dirty_metadata._entry, section ".printk_index", align 4
@jbd2_journal_dirty_metadata.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jbd2_journal_dirty_metadata._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.jbd2_journal_dirty_metadata, ptr @.str.3, i32 1573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013JBD2: %s: jh->b_transaction (%llu, %p, %u) != journal->j_running_transaction (%p, %u)\0A\00", [39 x i8] zeroinitializer }, align 32
@jbd2_journal_dirty_metadata._entry_ptr.12 = internal global ptr @jbd2_journal_dirty_metadata._entry.10, section ".printk_index", align 4
@jbd2_journal_dirty_metadata._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.jbd2_journal_dirty_metadata, ptr @.str.3, i32 1606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"\013jbd2_journal_dirty_metadata: %s: bad jh for block %llu: transaction (%p, %u), jh->b_transaction (%p, %u), jh->b_next_transaction (%p, %u), jlist %u\0A\00", [41 x i8] zeroinitializer }, align 32
@jbd2_journal_dirty_metadata._entry_ptr.15 = internal global ptr @jbd2_journal_dirty_metadata._entry.13, section ".printk_index", align 4
@jbd2_journal_forget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013JBD2 unexpected failure: %s: %s;\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jbd2_journal_forget\00", [44 x i8] zeroinitializer }, align 32
@jbd2_journal_forget._entry_ptr = internal global ptr @jbd2_journal_forget._entry, section ".printk_index", align 4
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!jh->b_committed_data\00", [42 x i8] zeroinitializer }, align 32
@jbd2_journal_forget._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013inconsistent data on disk\0A\00", [35 x i8] zeroinitializer }, align 32
@jbd2_journal_forget._entry_ptr.21 = internal global ptr @jbd2_journal_forget._entry.19, section ".printk_index", align 4
@__func__.jbd2_journal_stop = private unnamed_addr constant [18 x i8] c"jbd2_journal_stop\00", align 1
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"h_ref %d -> %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Handle %p going down\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"transaction too old, requesting commit for handle %p\0A\00", [42 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@jbd2_handle_cache = external dso_local local_unnamed_addr global ptr, align 4
@start_this_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013JBD2: %s wants too many credits credits:%d rsv_credits:%d max:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"start_this_handle\00", [46 x i8] zeroinitializer }, align 32
@start_this_handle._entry_ptr = internal global ptr @start_this_handle._entry, section ".printk_index", align 4
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"New handle %p going live.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Handle %p given %d credits (total %d, free %lu)\0A\00", [47 x i8] zeroinitializer }, align 32
@jbd2_get_transaction.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&transaction->t_handle_lock\00", [36 x i8] zeroinitializer }, align 32
@jbd2_journal_has_csum_v2or3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/jbd2.h\00", [43 x i8] zeroinitializer }, align 32
@add_transaction_credits.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jbd2_journal_enable_debug = external dso_local local_unnamed_addr global i16, align 2
@__tracepoint_jbd2_handle_start = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/jbd2.h\00", [36 x i8] zeroinitializer }, align 32
@trace_jbd2_handle_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_jbd2_handle_extend = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_handle_extend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@stop_this_handle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_jbd2_handle_restart = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_handle_restart.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__func__.do_get_write_access = private unnamed_addr constant [20 x i8] c"do_get_write_access\00", align 1
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"journal_head %p, force_copy %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_jbd2_lock_buffer_stall = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_lock_buffer_stall.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@jbd2_freeze_jh_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.39, ptr @.str.3, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jbd2_freeze_jh_data\00", [44 x i8] zeroinitializer }, align 32
@jbd2_freeze_jh_data._entry_ptr = internal global ptr @jbd2_freeze_jh_data._entry, section ".printk_index", align 4
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"buffer_uptodate(bh)\00", [44 x i8] zeroinitializer }, align 32
@jbd2_freeze_jh_data._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.3, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Possible IO failure.\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@jbd2_freeze_jh_data._entry_ptr.43 = internal global ptr @jbd2_freeze_jh_data._entry.41, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_jbd2_handle_stats = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_handle_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@warn_dirty_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"\014JBD2: Spotted dirty metadata buffer (dev = %pg, blocknr = %llu). There's a risk of filesystem corruption in case of system crash.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"warn_dirty_buffer\00", [46 x i8] zeroinitializer }, align 32
@warn_dirty_buffer._entry_ptr = internal global ptr @warn_dirty_buffer._entry, section ".printk_index", align 4
@__func__.jbd2_journal_file_inode = private unnamed_addr constant [24 x i8] c"jbd2_journal_file_inode\00", align 1
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adding inode %lu, tid:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"transaction_cache\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 36, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 40, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 46, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 682, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 698, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 716, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 806, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1276, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1524, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1564, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1592, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1671, i32 7 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1823, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1843, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1921, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 354, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 381, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 461, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 110, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"../include/linux/jbd2.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1734, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [31 x i8] c"../include/trace/events/jbd2.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 164, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 108, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 695, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 723, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 984, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 98, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 945, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 414, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 452, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 366, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 930, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [25 x i8] c"../fs/jbd2/transaction.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 2668, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__ksymtab_jbd2__journal_restart, ptr @__ksymtab_jbd2__journal_start, ptr @__ksymtab_jbd2_journal_free_reserved, ptr @__ksymtab_jbd2_journal_restart, ptr @__ksymtab_jbd2_journal_start, ptr @__ksymtab_jbd2_journal_start_reserved, ptr @jbd2_freeze_jh_data._entry, ptr @jbd2_freeze_jh_data._entry.41, ptr @jbd2_freeze_jh_data._entry_ptr, ptr @jbd2_freeze_jh_data._entry_ptr.43, ptr @jbd2_journal_dirty_metadata._entry, ptr @jbd2_journal_dirty_metadata._entry.10, ptr @jbd2_journal_dirty_metadata._entry.13, ptr @jbd2_journal_dirty_metadata._entry_ptr, ptr @jbd2_journal_dirty_metadata._entry_ptr.12, ptr @jbd2_journal_dirty_metadata._entry_ptr.15, ptr @jbd2_journal_forget._entry, ptr @jbd2_journal_forget._entry.19, ptr @jbd2_journal_forget._entry_ptr, ptr @jbd2_journal_forget._entry_ptr.21, ptr @jbd2_journal_init_transaction_cache._entry, ptr @jbd2_journal_init_transaction_cache._entry_ptr, ptr @start_this_handle._entry, ptr @start_this_handle._entry_ptr, ptr @warn_dirty_buffer._entry, ptr @warn_dirty_buffer._entry_ptr, ptr @transaction_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @jbd2_get_transaction.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transaction_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_init_transaction_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_dirty_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_dirty_metadata._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_dirty_metadata._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_forget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_forget._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_this_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_get_transaction.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_freeze_jh_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_freeze_jh_data._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_dirty_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_init_transaction_cache() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @transaction_cache, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end8, label %do.body5, !prof !154

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #9, !srcloc !155
  unreachable

do.end8:                                          ; preds = %entry
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 0, i32 noundef 139264, ptr noundef null) #9
  store ptr %call, ptr @transaction_cache, align 4
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %do.end12, label %do.end8.return_crit_edge

do.end8.return_crit_edge:                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %return

return:                                           ; preds = %do.end12, %do.end8.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end12 ], [ 0, %do.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_transaction_cache() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @transaction_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  store ptr null, ptr @transaction_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_free_transaction(ptr noundef %transaction) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp ult ptr %transaction, inttoptr (i32 17 to ptr)
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !156

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @transaction_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %transaction) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jbd2__journal_start(ptr noundef %journal, i32 noundef %nblocks, i32 noundef %rsv_blocks, i32 noundef %revoke_records, i32 noundef %gfp_mask, i32 noundef %type, i32 noundef %line_no) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info.i, align 4
  %tobool.not = icmp eq ptr %journal, null
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %if.end

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %cmp.not = icmp eq ptr %9, %journal
  br i1 %cmp.not, label %do.end14, label %do.body8, !prof !154

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 501, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %h_ref = getelementptr inbounds %struct.jbd2_journal_handle, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %h_ref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_ref, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %h_ref, align 4
  br label %cleanup49

if.end15:                                         ; preds = %if.end
  %j_revoke_records_per_block = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 48
  %12 = ptrtoint ptr %j_revoke_records_per_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %j_revoke_records_per_block, align 4
  %add = add i32 %revoke_records, -1
  %sub = add i32 %add, %13
  %div = sdiv i32 %sub, %13
  %add17 = add i32 %div, %nblocks
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jbd2_handle_cache to i32))
  %14 = load ptr, ptr @jbd2_handle_cache, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3392) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end15.cleanup49_crit_edge, label %if.end22

if.end15.cleanup49_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end22:                                         ; preds = %if.end15
  %h_total_credits.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %h_total_credits.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add17, ptr %h_total_credits.i, align 8
  %h_ref.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %h_ref.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %h_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsv_blocks)
  %tobool23.not = icmp eq i32 %rsv_blocks, 0
  br i1 %tobool23.not, label %if.end22.if.end30_crit_edge, label %if.then24

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then24:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jbd2_handle_cache to i32))
  %17 = load ptr, ptr @jbd2_handle_cache, align 4
  %call.i.i.i82 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 3392) #9
  %tobool.not.i83 = icmp eq ptr %call.i.i.i82, null
  br i1 %tobool.not.i83, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jbd2_handle_cache to i32))
  %18 = load ptr, ptr @jbd2_handle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup49

cleanup:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %h_total_credits.i84 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i.i.i82, i32 0, i32 2
  %19 = ptrtoint ptr %h_total_credits.i84 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %rsv_blocks, ptr %h_total_credits.i84, align 8
  %h_ref.i85 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i.i.i82, i32 0, i32 5
  %20 = ptrtoint ptr %h_ref.i85 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %h_ref.i85, align 4
  %h_reserved = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i.i.i82, i32 0, i32 7
  %21 = ptrtoint ptr %h_reserved to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %h_reserved, align 4
  %bf.set = or i32 %bf.load, 536870912
  store i32 %bf.set, ptr %h_reserved, align 4
  %22 = ptrtoint ptr %call.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %journal, ptr %call.i.i.i82, align 8
  %h_rsv_handle = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %h_rsv_handle to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i.i82, ptr %h_rsv_handle, align 4
  br label %if.end30

if.end30:                                         ; preds = %cleanup, %if.end22.if.end30_crit_edge
  %h_revoke_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %h_revoke_credits to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %revoke_records, ptr %h_revoke_credits, align 4
  %call31 = tail call fastcc i32 @start_this_handle(ptr noundef nonnull %journal, ptr noundef nonnull %call.i.i.i, i32 noundef %gfp_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end30
  %h_rsv_handle34 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %h_rsv_handle34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %h_rsv_handle34, align 4
  %tobool35.not = icmp eq ptr %26, null
  br i1 %tobool35.not, label %if.then33.if.end38_crit_edge, label %if.then36

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jbd2_handle_cache to i32))
  %27 = load ptr, ptr @jbd2_handle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %26) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then33.if.end38_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jbd2_handle_cache to i32))
  %28 = load ptr, ptr @jbd2_handle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef nonnull %call.i.i.i) #9
  %29 = inttoptr i32 %call31 to ptr
  br label %cleanup49

if.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %h_type = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %h_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load41 = load i32, ptr %h_type, align 4
  %bf.value = shl i32 %type, 20
  %bf.shl = and i32 %bf.value, 267386880
  %bf.clear42 = and i32 %bf.load41, -268435441
  %bf.value45 = shl i32 %line_no, 4
  %bf.shl46 = and i32 %bf.value45, 1048560
  %bf.set43 = or i32 %bf.shl46, %bf.shl
  %bf.set48 = or i32 %bf.set43, %bf.clear42
  store i32 %bf.set48, ptr %h_type, align 4
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %31 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %j_fs_dev, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bd_dev, align 4
  %35 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i.i.i, align 8
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %t_tid, align 4
  tail call fastcc void @trace_jbd2_handle_start(i32 noundef %34, i32 noundef %38, i32 noundef %type, i32 noundef %line_no, i32 noundef %add17)
  br label %cleanup49

cleanup49:                                        ; preds = %if.end40, %if.end38, %cleanup.thread, %if.end15.cleanup49_crit_edge, %do.end14, %entry.cleanup49_crit_edge
  %retval.1 = phi ptr [ %5, %do.end14 ], [ %29, %if.end38 ], [ %call.i.i.i, %if.end40 ], [ inttoptr (i32 -30 to ptr), %entry.cleanup49_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end15.cleanup49_crit_edge ], [ inttoptr (i32 -12 to ptr), %cleanup.thread ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_this_handle(ptr noundef %journal, ptr noundef %handle, i32 noundef %gfp_mask) #3 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %h_total_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %0 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_total_credits, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %h_rsv_handle = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 1
  %3 = ptrtoint ptr %h_rsv_handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %h_rsv_handle, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %h_total_credits2 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %h_total_credits2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_total_credits2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rsv_blocks.0 = phi i32 [ %6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %j_max_transaction_buffers = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 47
  %7 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %j_max_transaction_buffers, align 8
  %div = sdiv i32 %8, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %rsv_blocks.0, i32 %div)
  %cmp = icmp sgt i32 %rsv_blocks.0, %div
  %add = add i32 %rsv_blocks.0, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp4 = icmp sgt i32 %add, %8
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %do.end, label %alloc_transaction.preheader

alloc_transaction.preheader:                      ; preds = %if.end
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 10
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  %j_errno = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 2
  %h_reserved = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %j_wait_transaction_locked.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 13
  %j_barrier_count = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 8
  %j_transaction_sequence.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 42
  %j_commit_interval.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 49
  %j_blocksize.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 33
  %j_format_version.i.i.i.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 6
  %j_superblock.i.i.i.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %j_chksum_driver.i.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 70
  %j_reserved_credits.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 38
  %j_commit_timer.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 50
  %expires.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 50, i32 1
  br label %alloc_transaction

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm, i32 noundef %1, i32 noundef %rsv_blocks.0, i32 noundef %8) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 358, i32 noundef 9, ptr noundef null) #9
  br label %cleanup145

alloc_transaction:                                ; preds = %if.then99.alloc_transaction_crit_edge, %alloc_transaction.preheader
  %gfp_mask.addr.0 = phi i32 [ %gfp_mask, %alloc_transaction.preheader ], [ %gfp_mask.addr.2, %if.then99.alloc_transaction_crit_edge ]
  %17 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %j_running_transaction, align 8
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.then33, label %alloc_transaction.if.end41_crit_edge

alloc_transaction.if.end41_crit_edge:             ; preds = %alloc_transaction
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then33:                                        ; preds = %alloc_transaction
  %and = shl i32 %gfp_mask.addr.0, 8
  %19 = and i32 %and, 32768
  %20 = xor i32 %19, 32768
  %21 = or i32 %20, %gfp_mask.addr.0
  %22 = load ptr, ptr @transaction_cache, align 4
  %or.i = or i32 %21, 256
  %call.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %22, i32 noundef %or.i) #9
  %tobool38.not = icmp eq ptr %call.i, null
  br i1 %tobool38.not, label %if.then33.cleanup145_crit_edge, label %if.then33.if.end41_crit_edge

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then33.cleanup145_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup145

if.end41:                                         ; preds = %if.then33.if.end41_crit_edge, %alloc_transaction.if.end41_crit_edge
  %new_transaction.1 = phi ptr [ null, %alloc_transaction.if.end41_crit_edge ], [ %call.i, %if.then33.if.end41_crit_edge ]
  %gfp_mask.addr.2 = phi i32 [ %gfp_mask.addr.0, %alloc_transaction.if.end41_crit_edge ], [ %21, %if.then33.if.end41_crit_edge ]
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26, i32 noundef 381, ptr noundef nonnull @.str.27, ptr noundef %handle) #9
  call void @_raw_read_lock(ptr noundef %j_state_lock) #9
  %23 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %journal, align 8
  %and43265267 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43265267)
  %tobool44.not266268 = icmp eq i32 %and43265267, 0
  br i1 %tobool44.not266268, label %if.end41.do.end60.lr.ph_crit_edge, label %if.end41.do.body52_crit_edge, !prof !154

if.end41.do.body52_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

if.end41.do.end60.lr.ph_crit_edge:                ; preds = %if.end41
  br label %do.end60.lr.ph

do.end60.lr.ph:                                   ; preds = %if.end117.do.end60.lr.ph_crit_edge, %if.end41.do.end60.lr.ph_crit_edge
  %25 = phi i32 [ %99, %if.end117.do.end60.lr.ph_crit_edge ], [ %24, %if.end41.do.end60.lr.ph_crit_edge ]
  %new_transaction.2.ph269 = phi ptr [ %new_transaction.3, %if.end117.do.end60.lr.ph_crit_edge ], [ %new_transaction.1, %if.end41.do.end60.lr.ph_crit_edge ]
  br label %do.end60

do.body52:                                        ; preds = %if.end117.do.body52_crit_edge, %repeat.backedge.do.body52_crit_edge, %if.end41.do.body52_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 389, 0\0A.popsection", ""() #9, !srcloc !158
  unreachable

do.end60:                                         ; preds = %repeat.backedge.do.end60_crit_edge, %do.end60.lr.ph
  %26 = phi i32 [ %25, %do.end60.lr.ph ], [ %42, %repeat.backedge.do.end60_crit_edge ]
  %and.i217 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool62.not = icmp eq i32 %and.i217, 0
  br i1 %tobool62.not, label %lor.lhs.false63, label %do.end60.if.then68_crit_edge

do.end60.if.then68_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

lor.lhs.false63:                                  ; preds = %do.end60
  %27 = ptrtoint ptr %j_errno to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %j_errno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp64.not = icmp ne i32 %28, 0
  %and66 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond247 = select i1 %cmp64.not, i1 %tobool67.not, i1 false
  br i1 %or.cond247, label %lor.lhs.false63.if.then68_crit_edge, label %if.end70

lor.lhs.false63.if.then68_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

if.then68:                                        ; preds = %lor.lhs.false63.if.then68_crit_edge, %do.end60.if.then68_crit_edge
  call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  %cmp.i = icmp ult ptr %new_transaction.2.ph269, inttoptr (i32 17 to ptr)
  br i1 %cmp.i, label %if.then68.cleanup145_crit_edge, label %if.end.i, !prof !156

if.then68.cleanup145_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup145

if.end.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  %29 = load ptr, ptr @transaction_cache, align 4
  call void @kmem_cache_free(ptr noundef %29, ptr noundef %new_transaction.2.ph269) #9
  br label %cleanup145

if.end70:                                         ; preds = %lor.lhs.false63
  %30 = ptrtoint ptr %h_reserved to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %h_reserved, align 4
  %31 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool71.not = icmp eq i32 %31, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %if.end96.thread

land.lhs.true72:                                  ; preds = %if.end70
  %32 = ptrtoint ptr %j_barrier_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %j_barrier_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool73.not = icmp eq i32 %33, 0
  br i1 %tobool73.not, label %if.end96, label %if.then74

if.then74:                                        ; preds = %land.lhs.true72
  call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 405) #9
  %34 = ptrtoint ptr %j_barrier_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %j_barrier_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp84 = icmp eq i32 %35, 0
  br i1 %cmp84, label %if.then74.repeat.backedge_crit_edge, label %if.end86

if.then74.repeat.backedge_crit_edge:              ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %repeat.backedge

if.end86:                                         ; preds = %if.then74
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %36 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call87262 = call i32 @prepare_to_wait_event(ptr noundef %j_wait_transaction_locked.i, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %37 = ptrtoint ptr %j_barrier_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %j_barrier_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp89263 = icmp eq i32 %38, 0
  br i1 %cmp89263, label %if.end86.for.end_crit_edge, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  br label %cleanup

if.end86.for.end_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end86.cleanup_crit_edge
  call void @schedule() #9
  %call87 = call i32 @prepare_to_wait_event(ptr noundef %j_wait_transaction_locked.i, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %39 = ptrtoint ptr %j_barrier_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %j_barrier_count, align 8
  %cmp89 = icmp eq i32 %40, 0
  br i1 %cmp89, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end86.for.end_crit_edge
  call void @finish_wait(ptr noundef %j_wait_transaction_locked.i, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %repeat.backedge

repeat.backedge:                                  ; preds = %wait_transaction_switching.exit, %if.then126.repeat.backedge_crit_edge, %for.end, %if.then74.repeat.backedge_crit_edge
  call void @_raw_read_lock(ptr noundef %j_state_lock) #9
  %41 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %journal, align 8
  %and43 = and i32 %42, 1
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %repeat.backedge.do.end60_crit_edge, label %repeat.backedge.do.body52_crit_edge, !prof !154

repeat.backedge.do.body52_crit_edge:              ; preds = %repeat.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

repeat.backedge.do.end60_crit_edge:               ; preds = %repeat.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.end96:                                         ; preds = %land.lhs.true72
  %43 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %j_running_transaction, align 8
  %tobool98.not = icmp eq ptr %44, null
  br i1 %tobool98.not, label %if.end96.if.then99_crit_edge, label %if.then126

if.end96.if.then99_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99

if.end96.thread:                                  ; preds = %if.end70
  %45 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %j_running_transaction, align 8
  %tobool98.not246 = icmp eq ptr %46, null
  br i1 %tobool98.not246, label %if.end96.thread.if.then99_crit_edge, label %if.else

if.end96.thread.if.then99_crit_edge:              ; preds = %if.end96.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99

if.then99:                                        ; preds = %if.end96.thread.if.then99_crit_edge, %if.end96.if.then99_crit_edge
  call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  %tobool101.not = icmp eq ptr %new_transaction.2.ph269, null
  br i1 %tobool101.not, label %if.then99.alloc_transaction_crit_edge, label %if.end103

if.then99.alloc_transaction_crit_edge:            ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_transaction

if.end103:                                        ; preds = %if.then99
  call void @_raw_write_lock(ptr noundef %j_state_lock) #9
  %47 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %j_running_transaction, align 8
  %tobool106.not = icmp eq ptr %48, null
  br i1 %tobool106.not, label %land.lhs.true107, label %if.end103.if.end117_crit_edge

if.end103.if.end117_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

land.lhs.true107:                                 ; preds = %if.end103
  %49 = ptrtoint ptr %h_reserved to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load109 = load i32, ptr %h_reserved, align 4
  %50 = and i32 %bf.load109, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool112.not = icmp eq i32 %50, 0
  br i1 %tobool112.not, label %lor.lhs.false113, label %land.lhs.true107.if.then116_crit_edge

land.lhs.true107.if.then116_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

lor.lhs.false113:                                 ; preds = %land.lhs.true107
  %51 = ptrtoint ptr %j_barrier_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %j_barrier_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool115.not = icmp eq i32 %52, 0
  br i1 %tobool115.not, label %lor.lhs.false113.if.then116_crit_edge, label %lor.lhs.false113.if.end117_crit_edge

lor.lhs.false113.if.end117_crit_edge:             ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

lor.lhs.false113.if.then116_crit_edge:            ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

if.then116:                                       ; preds = %lor.lhs.false113.if.then116_crit_edge, %land.lhs.true107.if.then116_crit_edge
  %53 = ptrtoint ptr %new_transaction.2.ph269 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %journal, ptr %new_transaction.2.ph269, align 8
  %t_state.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 2
  %54 = ptrtoint ptr %t_state.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %t_state.i, align 8
  %call.i218 = call i64 @ktime_get() #9
  %t_start_time.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 24
  %55 = ptrtoint ptr %t_start_time.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %call.i218, ptr %t_start_time.i, align 8
  %56 = ptrtoint ptr %j_transaction_sequence.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %j_transaction_sequence.i, align 8
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %j_transaction_sequence.i, align 8
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 1
  %58 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %t_tid.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %60 = ptrtoint ptr %j_commit_interval.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %j_commit_interval.i, align 8
  %add.i = add i32 %61, %59
  %t_expires.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 23
  %62 = ptrtoint ptr %t_expires.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i, ptr %t_expires.i, align 4
  %t_handle_lock.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %t_handle_lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @jbd2_get_transaction.__key, i16 noundef signext 3) #9
  %t_updates.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %t_updates.i, i32 noundef 4) #9
  %63 = ptrtoint ptr %t_updates.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %t_updates.i, align 4
  %t_outstanding_credits.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 18
  %64 = ptrtoint ptr %j_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %j_blocksize.i.i, align 8
  %66 = ptrtoint ptr %j_format_version.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %j_format_version.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i.i.i.i.i = icmp sgt i32 %67, 1
  br i1 %cmp.i.i.i.i.i, label %jbd2_has_feature_csum2.exit.i.i.i.i, label %if.then116.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge

if.then116.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge: ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_descriptor_blocks_per_trans.exit.i

jbd2_has_feature_csum2.exit.i.i.i.i:              ; preds = %if.then116
  %68 = ptrtoint ptr %j_superblock.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %j_superblock.i.i.i.i.i, align 4
  %s_feature_incompat.i.i.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %s_feature_incompat.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_feature_incompat.i.i.i.i.i, align 4
  %72 = and i32 %71, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %.not.i.i.i = icmp eq i32 %72, 0
  br i1 %.not.i.i.i, label %jbd2_has_feature_csum2.exit.i.i.i.i.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge, label %land.rhs.i.i.i

jbd2_has_feature_csum2.exit.i.i.i.i.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_descriptor_blocks_per_trans.exit.i

land.rhs.i.i.i:                                   ; preds = %jbd2_has_feature_csum2.exit.i.i.i.i
  %73 = ptrtoint ptr %j_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %j_chksum_driver.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %74, null
  br i1 %cmp.i.i.i, label %land.rhs2.i.i.i, label %land.rhs.i.i.i.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge

land.rhs.i.i.i.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_descriptor_blocks_per_trans.exit.i

land.rhs2.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b43.i.i.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i.i.i, label %land.rhs2.i.i.i.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge, label %if.then.i.i.i, !prof !154

land.rhs2.i.i.i.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge: ; preds = %land.rhs2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_descriptor_blocks_per_trans.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1735, i32 noundef 9, ptr noundef null) #9
  br label %jbd2_descriptor_blocks_per_trans.exit.i

jbd2_descriptor_blocks_per_trans.exit.i:          ; preds = %if.then.i.i.i, %land.rhs2.i.i.i.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge, %land.rhs.i.i.i.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge, %jbd2_has_feature_csum2.exit.i.i.i.i.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge, %if.then116.jbd2_descriptor_blocks_per_trans.exit.i_crit_edge
  %75 = ptrtoint ptr %j_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %j_chksum_driver.i.i.i, align 8
  %cmp38.i.not.i.i = icmp eq ptr %76, null
  %spec.select.v.i.i = select i1 %cmp38.i.not.i.i, i32 -28, i32 -32
  %spec.select.i.i = add i32 %65, -16
  %sub3.i.i = add i32 %spec.select.i.i, %spec.select.v.i.i
  %call4.i.i = call i32 @journal_tag_bytes(ptr noundef %journal) #9
  %div.i.i = udiv i32 %sub3.i.i, %call4.i.i
  %77 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %j_max_transaction_buffers, align 8
  %add.i.i = add i32 %div.i.i, -1
  %sub5.i.i = add i32 %add.i.i, %78
  %div6.i.i = sdiv i32 %sub5.i.i, %div.i.i
  %add7.i.i = add i32 %div6.i.i, 1
  %call.i.i41.i = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits.i, i32 noundef 4) #9
  %79 = ptrtoint ptr %j_reserved_credits.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %j_reserved_credits.i, align 4
  %add4.i = add i32 %add7.i.i, %80
  %call.i.i42.i = call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits.i, i32 noundef 4) #9
  %81 = ptrtoint ptr %t_outstanding_credits.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %add4.i, ptr %t_outstanding_credits.i, align 4
  %t_outstanding_revokes.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 19
  %call.i.i43.i = call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_revokes.i, i32 noundef 4) #9
  %82 = ptrtoint ptr %t_outstanding_revokes.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %t_outstanding_revokes.i, align 4
  %t_handle_count.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 20
  %call.i.i44.i = call zeroext i1 @__kasan_check_write(ptr noundef %t_handle_count.i, i32 noundef 4) #9
  %83 = ptrtoint ptr %t_handle_count.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 0, ptr %t_handle_count.i, align 4
  %t_inode_list.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 11
  %84 = ptrtoint ptr %t_inode_list.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %t_inode_list.i, ptr %t_inode_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 11, i32 1
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %t_inode_list.i, ptr %prev.i.i, align 4
  %t_private_list.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 27
  %86 = ptrtoint ptr %t_private_list.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %t_private_list.i, ptr %t_private_list.i, align 4
  %prev.i45.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 27, i32 1
  %87 = ptrtoint ptr %prev.i45.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %t_private_list.i, ptr %prev.i45.i, align 4
  %88 = ptrtoint ptr %t_expires.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %t_expires.i, align 4
  %call6.i = call i32 @round_jiffies_up(i32 noundef %89) #9
  %90 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call6.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %j_commit_timer.i) #9
  %91 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %j_running_transaction, align 8
  %cmp.not.i = icmp eq ptr %92, null
  br i1 %cmp.not.i, label %jbd2_get_transaction.exit, label %do.body11.i, !prof !154

do.body11.i:                                      ; preds = %jbd2_descriptor_blocks_per_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #9, !srcloc !159
  unreachable

jbd2_get_transaction.exit:                        ; preds = %jbd2_descriptor_blocks_per_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %new_transaction.2.ph269, ptr %j_running_transaction, align 8
  %t_max_wait.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 13
  %94 = ptrtoint ptr %t_max_wait.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %t_max_wait.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %t_start.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 14
  %96 = ptrtoint ptr %t_start.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %t_start.i, align 4
  %t_requested.i = getelementptr inbounds %struct.transaction_s, ptr %new_transaction.2.ph269, i32 0, i32 15
  %97 = ptrtoint ptr %t_requested.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %t_requested.i, align 8
  br label %if.end117

if.end117:                                        ; preds = %jbd2_get_transaction.exit, %lor.lhs.false113.if.end117_crit_edge, %if.end103.if.end117_crit_edge
  %new_transaction.3 = phi ptr [ %new_transaction.2.ph269, %if.end103.if.end117_crit_edge ], [ null, %jbd2_get_transaction.exit ], [ %new_transaction.2.ph269, %lor.lhs.false113.if.end117_crit_edge ]
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #9
  call void @_raw_read_lock(ptr noundef %j_state_lock) #9
  %98 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %journal, align 8
  %and43265 = and i32 %99, 1
  %tobool44.not266 = icmp eq i32 %and43265, 0
  br i1 %tobool44.not266, label %if.end117.do.end60.lr.ph_crit_edge, label %if.end117.do.body52_crit_edge, !prof !154

if.end117.do.body52_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

if.end117.do.end60.lr.ph_crit_edge:               ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60.lr.ph

if.then126:                                       ; preds = %if.end96
  %call127 = call fastcc i32 @add_transaction_credits(ptr noundef %journal, i32 noundef %1, i32 noundef %rsv_blocks.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then126.if.end137_crit_edge, label %if.then126.repeat.backedge_crit_edge

if.then126.repeat.backedge_crit_edge:             ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %repeat.backedge

if.then126.if.end137_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.else:                                          ; preds = %if.end96.thread
  %t_state = getelementptr inbounds %struct.transaction_s, ptr %46, i32 0, i32 2
  %100 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp131 = icmp eq i32 %101, 2
  br i1 %cmp131, label %lor.rhs.i, label %if.end133

lor.rhs.i:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #9
  %102 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %wait.i, align 4
  %103 = call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task.i, align 8
  %107 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %9, align 4
  %108 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @autoremove_wake_function, ptr %10, align 4
  %109 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %11, ptr %11, align 4
  %110 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %11, ptr %12, align 4
  %111 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp.not.i221 = icmp eq i32 %112, 2
  br i1 %cmp.not.i221, label %if.end26.i, label %do.end.i, !prof !154

do.end.i:                                         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 198, i32 noundef 9, ptr noundef null) #9
  call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  br label %wait_transaction_switching.exit

if.end26.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @prepare_to_wait(ptr noundef %j_wait_transaction_locked.i, ptr noundef nonnull %wait.i, i32 noundef 2) #9
  call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  call void @schedule() #9
  call void @finish_wait(ptr noundef %j_wait_transaction_locked.i, ptr noundef nonnull %wait.i) #9
  br label %wait_transaction_switching.exit

wait_transaction_switching.exit:                  ; preds = %if.end26.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #9
  br label %repeat.backedge

if.end133:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i223 = call zeroext i1 @__kasan_check_write(ptr noundef %j_reserved_credits.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %j_reserved_credits.i, i32 1, i32 3, i32 1) #9
  %113 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_reserved_credits.i, ptr %j_reserved_credits.i, i32 %1, ptr elementtype(i32) %j_reserved_credits.i) #9, !srcloc !160
  %j_wait_reserved.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 17
  call void @__wake_up(ptr noundef %j_wait_reserved.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %114 = ptrtoint ptr %h_reserved to i32
  call void @__asan_load4_noabort(i32 %114)
  %bf.load135 = load i32, ptr %h_reserved, align 4
  %bf.clear136 = and i32 %bf.load135, -536870913
  store i32 %bf.clear136, ptr %h_reserved, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.end133, %if.then126.if.end137_crit_edge
  %115 = phi ptr [ %46, %if.end133 ], [ %44, %if.then126.if.end137_crit_edge ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @jbd2_journal_enable_debug to i32))
  %116 = load i16, ptr @jbd2_journal_enable_debug, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool.not.i224 = icmp eq i16 %116, 0
  br i1 %tobool.not.i224, label %if.end137.update_t_max_wait.exit_crit_edge, label %land.lhs.true.i

if.end137.update_t_max_wait.exit_crit_edge:       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_t_max_wait.exit

land.lhs.true.i:                                  ; preds = %if.end137
  %t_start.i225 = getelementptr inbounds %struct.transaction_s, ptr %115, i32 0, i32 14
  %117 = ptrtoint ptr %t_start.i225 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %t_start.i225, align 4
  %sub.i = sub i32 %2, %118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i226 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i226, label %if.then.i, label %land.lhs.true.i.update_t_max_wait.exit_crit_edge

land.lhs.true.i.update_t_max_wait.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_t_max_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %2)
  %cmp.not.i.i = icmp ult i32 %118, %2
  %retval.0.p.v.i.i = select i1 %cmp.not.i.i, i32 1073741822, i32 0
  %retval.0.p.i.i = sub i32 %118, %2
  %retval.0.i.i = add i32 %retval.0.p.v.i.i, %retval.0.p.i.i
  %t_handle_lock.i227 = getelementptr inbounds %struct.transaction_s, ptr %115, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %t_handle_lock.i227) #9
  %t_max_wait.i228 = getelementptr inbounds %struct.transaction_s, ptr %115, i32 0, i32 13
  %119 = ptrtoint ptr %t_max_wait.i228 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %t_max_wait.i228, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %120)
  %cmp3.i = icmp ugt i32 %retval.0.i.i, %120
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i.if.end.i229_crit_edge

if.then.i.if.end.i229_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i229

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %t_max_wait.i228 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %retval.0.i.i, ptr %t_max_wait.i228, align 8
  br label %if.end.i229

if.end.i229:                                      ; preds = %if.then5.i, %if.then.i.if.end.i229_crit_edge
  call void @_raw_spin_unlock(ptr noundef %t_handle_lock.i227) #9
  br label %update_t_max_wait.exit

update_t_max_wait.exit:                           ; preds = %if.end.i229, %land.lhs.true.i.update_t_max_wait.exit_crit_edge, %if.end137.update_t_max_wait.exit_crit_edge
  %122 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %115, ptr %handle, align 4
  %h_requested_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 9
  %123 = ptrtoint ptr %h_requested_credits to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %1, ptr %h_requested_credits, align 4
  %h_revoke_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 3
  %124 = ptrtoint ptr %h_revoke_credits to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %h_revoke_credits, align 4
  %h_revoke_credits_requested = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %126 = ptrtoint ptr %h_revoke_credits_requested to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %h_revoke_credits_requested, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %h_start_jiffies = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 8
  %128 = ptrtoint ptr %h_start_jiffies to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %h_start_jiffies, align 4
  %t_updates = getelementptr inbounds %struct.transaction_s, ptr %115, i32 0, i32 17
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %t_updates, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %t_updates, i32 1, i32 3, i32 1) #9
  %129 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_updates, ptr %t_updates, i32 1, ptr elementtype(i32) %t_updates) #9, !srcloc !161
  %t_handle_count = getelementptr inbounds %struct.transaction_s, ptr %115, i32 0, i32 20
  %call.i.i215 = call zeroext i1 @__kasan_check_write(ptr noundef %t_handle_count, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %t_handle_count, i32 1, i32 3, i32 1) #9
  %130 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_handle_count, ptr %t_handle_count, i32 1, ptr elementtype(i32) %t_handle_count) #9, !srcloc !161
  %t_outstanding_credits = getelementptr inbounds %struct.transaction_s, ptr %115, i32 0, i32 18
  %call.i.i216 = call zeroext i1 @__kasan_check_read(ptr noundef %t_outstanding_credits, i32 noundef 4) #9
  %131 = ptrtoint ptr %t_outstanding_credits to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %t_outstanding_credits, align 4
  %j_free.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 26
  %133 = ptrtoint ptr %j_free.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %j_free.i, align 4
  %sub.i230 = add i32 %134, -32
  %j_committing_transaction.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 11
  %135 = ptrtoint ptr %j_committing_transaction.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %j_committing_transaction.i, align 4
  %tobool.not.i231 = icmp eq ptr %136, null
  br i1 %tobool.not.i231, label %update_t_max_wait.exit.jbd2_log_space_left.exit_crit_edge, label %if.then.i234

update_t_max_wait.exit.jbd2_log_space_left.exit_crit_edge: ; preds = %update_t_max_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_log_space_left.exit

if.then.i234:                                     ; preds = %update_t_max_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %t_outstanding_credits.i232 = getelementptr inbounds %struct.transaction_s, ptr %136, i32 0, i32 18
  %call.i.i.i233 = call zeroext i1 @__kasan_check_read(ptr noundef %t_outstanding_credits.i232, i32 noundef 4) #9
  %137 = ptrtoint ptr %t_outstanding_credits.i232 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %t_outstanding_credits.i232, align 4
  %sub2.i = sub i32 %sub.i230, %138
  br label %jbd2_log_space_left.exit

jbd2_log_space_left.exit:                         ; preds = %if.then.i234, %update_t_max_wait.exit.jbd2_log_space_left.exit_crit_edge
  %free.0.i = phi i32 [ %sub2.i, %if.then.i234 ], [ %sub.i230, %update_t_max_wait.exit.jbd2_log_space_left.exit_crit_edge ]
  %139 = call i32 @llvm.smax.i32(i32 %free.0.i, i32 0) #9
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26, i32 noundef 464, ptr noundef nonnull @.str.28, ptr noundef %handle, i32 noundef %1, i32 noundef %132, i32 noundef %139) #9
  call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  %140 = call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i236 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i236 to ptr
  %task142 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %task142 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task142, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 146
  %144 = ptrtoint ptr %journal_info to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %handle, ptr %journal_info, align 4
  br label %__here

__here:                                           ; preds = %jbd2_log_space_left.exit
  %j_trans_commit_map = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 72
  call void @lock_acquire(ptr noundef %j_trans_commit_map, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@start_this_handle, %__here) to i32)) #9
  %cmp.i237 = icmp ult ptr %new_transaction.2.ph269, inttoptr (i32 17 to ptr)
  br i1 %cmp.i237, label %__here.jbd2_journal_free_transaction.exit239_crit_edge, label %if.end.i238, !prof !156

__here.jbd2_journal_free_transaction.exit239_crit_edge: ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_journal_free_transaction.exit239

if.end.i238:                                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %145 = load ptr, ptr @transaction_cache, align 4
  call void @kmem_cache_free(ptr noundef %145, ptr noundef %new_transaction.2.ph269) #9
  br label %jbd2_journal_free_transaction.exit239

jbd2_journal_free_transaction.exit239:            ; preds = %if.end.i238, %__here.jbd2_journal_free_transaction.exit239_crit_edge
  %146 = call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i240 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i.i240 to ptr
  %task.i241 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task.i241 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task.i241, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags1.i, align 4
  %and.i242 = and i32 %151, 262144
  %or.i243 = or i32 %151, 262144
  store i32 %or.i243, ptr %flags1.i, align 4
  %saved_alloc_context = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 10
  %152 = ptrtoint ptr %saved_alloc_context to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %and.i242, ptr %saved_alloc_context, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %jbd2_journal_free_transaction.exit239, %if.end.i, %if.then68.cleanup145_crit_edge, %if.then33.cleanup145_crit_edge, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ 0, %jbd2_journal_free_transaction.exit239 ], [ -30, %if.then68.cleanup145_crit_edge ], [ -30, %if.end.i ], [ -12, %if.then33.cleanup145_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_handle_start(i32 noundef %dev, i32 noundef %tid, i32 noundef %type, i32 noundef %line_no, i32 noundef %requested_blocks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_start, i32 0, i32 1), ptr blockaddress(@trace_jbd2_handle_start, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !163
  %call42 = tail call i32 @__traceiter_jbd2_handle_start(ptr noundef null, i32 noundef %dev, i32 noundef %tid, i32 noundef %type, i32 noundef %line_no, i32 noundef %requested_blocks) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !164
  %13 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_handle_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_jbd2_handle_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 169, ptr noundef nonnull @.str.32) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !166
  %31 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jbd2_journal_start(ptr noundef %journal, i32 noundef %nblocks) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @jbd2__journal_start(ptr noundef %journal, i32 noundef %nblocks, i32 noundef 0, i32 noundef 0, i32 noundef 3136, i32 noundef 0, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_free_reserved(ptr noundef %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %j_state_lock) #9
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_running_transaction, align 8
  tail call fastcc void @__jbd2_journal_unreserve_handle(ptr noundef %handle, ptr noundef %3)
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jbd2_handle_cache to i32))
  %4 = load ptr, ptr @jbd2_handle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %handle) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__jbd2_journal_unreserve_handle(ptr nocapture noundef readonly %handle, ptr noundef %t) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %h_reserved = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %2 = ptrtoint ptr %h_reserved to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %h_reserved, align 4
  %3 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !156

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 572, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %h_total_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %4 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %h_total_credits, align 4
  %j_reserved_credits.i = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_reserved_credits.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %j_reserved_credits.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_reserved_credits.i, ptr %j_reserved_credits.i, i32 %5, ptr elementtype(i32) %j_reserved_credits.i) #9, !srcloc !160
  %j_wait_reserved.i = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %j_wait_reserved.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %tobool21.not = icmp eq ptr %t, null
  br i1 %tobool21.not, label %if.end.if.end24_crit_edge, label %if.then22

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h_total_credits, align 4
  %t_outstanding_credits = getelementptr inbounds %struct.transaction_s, ptr %t, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 %8, ptr elementtype(i32) %t_outstanding_credits) #9, !srcloc !160
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_start_reserved(ptr noundef %handle, i32 noundef %type, i32 noundef %line_no) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %h_reserved = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %2 = ptrtoint ptr %h_reserved to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %h_reserved, align 4
  %3 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !156

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 610, i32 noundef 9, ptr noundef null) #9
  %call = tail call i32 @jbd2_journal_stop(ptr noundef %handle)
  br label %cleanup

if.end23:                                         ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 146
  %8 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %journal_info, align 4
  %tobool26.not = icmp eq ptr %9, null
  br i1 %tobool26.not, label %if.end58, label %do.end42, !prof !154

do.end42:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 619, i32 noundef 9, ptr noundef null) #9
  tail call void @jbd2_journal_free_reserved(ptr noundef %handle)
  br label %cleanup

if.end58:                                         ; preds = %if.end23
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %handle, align 4
  %call59 = tail call fastcc i32 @start_this_handle(ptr noundef %1, ptr noundef %handle, i32 noundef 3136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp = icmp slt i32 %call59, 0
  br i1 %cmp, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %handle, align 4
  %j_state_lock.i = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %j_state_lock.i) #9
  %j_running_transaction.i = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %j_running_transaction.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %j_running_transaction.i, align 8
  tail call fastcc void @__jbd2_journal_unreserve_handle(ptr noundef %handle, ptr noundef %13) #9
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jbd2_handle_cache to i32))
  %14 = load ptr, ptr @jbd2_handle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %handle) #9
  br label %cleanup

if.end61:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %h_reserved to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load62 = load i32, ptr %h_reserved, align 4
  %bf.value = shl i32 %type, 20
  %bf.shl = and i32 %bf.value, 267386880
  %bf.clear63 = and i32 %bf.load62, -268435441
  %bf.value65 = shl i32 %line_no, 4
  %bf.shl66 = and i32 %bf.value65, 1048560
  %bf.set = or i32 %bf.shl66, %bf.shl
  %bf.set68 = or i32 %bf.set, %bf.clear63
  store i32 %bf.set68, ptr %h_reserved, align 4
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 36
  %16 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %j_fs_dev, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bd_dev, align 4
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle, align 4
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t_tid, align 4
  %h_total_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %24 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %h_total_credits, align 4
  tail call fastcc void @trace_jbd2_handle_start(i32 noundef %19, i32 noundef %23, i32 noundef %type, i32 noundef %line_no, i32 noundef %25)
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then60, %do.end42, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end42 ], [ %call59, %if.then60 ], [ 0, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_stop(ptr noundef %handle) #3 align 64 {
entry:
  %expires = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %h_ref = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 5
  %2 = ptrtoint ptr %h_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_ref, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %h_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_stop, i32 noundef 1824, ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %dec) #9
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %4 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %5 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_handle_aborted.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_handle_aborted.exit:                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and.i.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -5
  br label %cleanup

if.end4:                                          ; preds = %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %saved_alloc_context = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 10
  %12 = ptrtoint ptr %saved_alloc_context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %saved_alloc_context, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i216 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i216 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %19, -262145
  %or.i = or i32 %and.i, %13
  store i32 %or.i, ptr %flags1.i, align 4
  br label %free_and_exit

if.end7:                                          ; preds = %if.end4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t_tid, align 4
  %h_aborted.i217 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %24 = ptrtoint ptr %h_aborted.i217 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i218 = load i32, ptr %h_aborted.i217, align 4
  %25 = and i32 %bf.load.i218, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i219 = icmp eq i32 %25, 0
  br i1 %tobool.not.i219, label %is_handle_aborted.exit225, label %if.end7.is_handle_aborted.exit225.thread_crit_edge

if.end7.is_handle_aborted.exit225.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_handle_aborted.exit225.thread

is_handle_aborted.exit225:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 8
  %and.i.i222 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i222)
  %tobool9.not = icmp eq i32 %and.i.i222, 0
  %spec.select235 = select i1 %tobool9.not, i32 0, i32 -5
  br label %is_handle_aborted.exit225.thread

is_handle_aborted.exit225.thread:                 ; preds = %is_handle_aborted.exit225, %if.end7.is_handle_aborted.exit225.thread_crit_edge
  %28 = phi i32 [ -5, %if.end7.is_handle_aborted.exit225.thread_crit_edge ], [ %spec.select235, %is_handle_aborted.exit225 ]
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_stop, i32 noundef 1843, ptr noundef nonnull @.str.23, ptr noundef %handle) #9
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %21, i32 0, i32 36
  %29 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %j_fs_dev, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bd_dev, align 4
  %33 = ptrtoint ptr %h_aborted.i217 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load = load i32, ptr %h_aborted.i217, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 255
  %bf.lshr13 = lshr i32 %bf.load, 4
  %bf.clear14 = and i32 %bf.lshr13, 65535
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %h_start_jiffies = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 8
  %35 = ptrtoint ptr %h_start_jiffies to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %h_start_jiffies, align 4
  %sub = sub i32 %34, %36
  %bf.lshr16 = lshr i32 %bf.load, 31
  %h_requested_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 9
  %37 = ptrtoint ptr %h_requested_credits to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %h_requested_credits, align 4
  %h_total_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %39 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %h_total_credits, align 4
  %sub18 = sub i32 %38, %40
  tail call fastcc void @trace_jbd2_handle_stats(i32 noundef %32, i32 noundef %23, i32 noundef %bf.clear, i32 noundef %bf.clear14, i32 noundef %sub, i32 noundef %bf.lshr16, i32 noundef %38, i32 noundef %sub18)
  %41 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i226 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i226 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %pid20 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid20, align 8
  %47 = ptrtoint ptr %h_aborted.i217 to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load22 = load i32, ptr %h_aborted.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load22)
  %tobool24.not = icmp sgt i32 %bf.load22, -1
  br i1 %tobool24.not, label %is_handle_aborted.exit225.thread.lor.lhs.false_crit_edge, label %land.lhs.true

is_handle_aborted.exit225.thread.lor.lhs.false_crit_edge: ; preds = %is_handle_aborted.exit225.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %is_handle_aborted.exit225.thread
  %j_last_sync_writer = getelementptr inbounds %struct.journal_s, ptr %21, i32 0, i32 58
  %48 = ptrtoint ptr %j_last_sync_writer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %j_last_sync_writer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %46)
  %cmp25.not = icmp eq i32 %49, %46
  br i1 %cmp25.not, label %land.lhs.true.if.end119_crit_edge, label %land.lhs.true26

land.lhs.true.if.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

land.lhs.true26:                                  ; preds = %land.lhs.true
  %j_max_batch_time = getelementptr inbounds %struct.journal_s, ptr %21, i32 0, i32 61
  %50 = ptrtoint ptr %j_max_batch_time to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %j_max_batch_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool27.not = icmp eq i32 %51, 0
  br i1 %tobool27.not, label %land.lhs.true26.if.end119_crit_edge, label %if.then28

land.lhs.true26.if.end119_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then28:                                        ; preds = %land.lhs.true26
  %52 = ptrtoint ptr %j_last_sync_writer to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %46, ptr %j_last_sync_writer, align 4
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %21, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %j_state_lock) #9
  %j_average_commit_time = getelementptr inbounds %struct.journal_s, ptr %21, i32 0, i32 59
  %53 = ptrtoint ptr %j_average_commit_time to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %j_average_commit_time, align 8
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  %call31 = tail call i64 @ktime_get() #9
  %t_start_time = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 24
  %55 = ptrtoint ptr %t_start_time to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %t_start_time, align 8
  %sub32 = sub i64 %call31, %56
  %j_min_batch_time = getelementptr inbounds %struct.journal_s, ptr %21, i32 0, i32 60
  %57 = ptrtoint ptr %j_min_batch_time to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %j_min_batch_time, align 8
  %mul = mul i32 %58, 1000
  %conv = zext i32 %mul to i64
  %59 = tail call i64 @llvm.umax.i64(i64 %54, i64 %conv)
  %60 = ptrtoint ptr %j_max_batch_time to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %j_max_batch_time, align 4
  %mul37 = mul i32 %61, 1000
  %conv38 = zext i32 %mul37 to i64
  %62 = tail call i64 @llvm.umin.i64(i64 %59, i64 %conv38)
  call void @__sanitizer_cov_trace_cmp8(i64 %sub32, i64 %62)
  %cmp46 = icmp ult i64 %sub32, %62
  br i1 %cmp46, label %if.then48, label %if.then28.if.end119_crit_edge

if.then28.if.end119_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then48:                                        ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expires) #9
  %call49 = tail call i64 @ktime_get() #9
  %add50 = add i64 %call49, %62
  %63 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %add50, ptr %expires, align 8
  br label %__here

__here:                                           ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 212
  %66 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 ptrtoint (ptr blockaddress(@jbd2_journal_stop, %__here) to i32), ptr %task_state_change, align 4
  %67 = load ptr, ptr %task, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 2, ptr %67, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !167
  %call117 = call i32 @schedule_hrtimeout(ptr noundef nonnull %expires, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expires) #9
  br label %if.end119

if.end119:                                        ; preds = %__here, %if.then28.if.end119_crit_edge, %land.lhs.true26.if.end119_crit_edge, %land.lhs.true.if.end119_crit_edge
  %69 = ptrtoint ptr %h_aborted.i217 to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load121.pr = load i32, ptr %h_aborted.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load121.pr)
  %tobool123.not = icmp sgt i32 %bf.load121.pr, -1
  br i1 %tobool123.not, label %if.end119.lor.lhs.false_crit_edge, label %if.end127

if.end119.lor.lhs.false_crit_edge:                ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end127:                                        ; preds = %if.end119
  %t_synchronous_commit = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 25
  %70 = ptrtoint ptr %t_synchronous_commit to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load125 = load i8, ptr %t_synchronous_commit, align 8
  %bf.set = or i8 %bf.load125, -128
  store i8 %bf.set, ptr %t_synchronous_commit, align 8
  %71 = ptrtoint ptr %h_aborted.i217 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load129.pr = load i32, ptr %h_aborted.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load129.pr)
  %tobool131.not = icmp sgt i32 %bf.load129.pr, -1
  br i1 %tobool131.not, label %if.end127.lor.lhs.false_crit_edge, label %if.end127.if.then135_crit_edge

if.end127.if.then135_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then135

if.end127.lor.lhs.false_crit_edge:                ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end127.lor.lhs.false_crit_edge, %if.end119.lor.lhs.false_crit_edge, %is_handle_aborted.exit225.thread.lor.lhs.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %t_expires = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 23
  %73 = ptrtoint ptr %t_expires to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %t_expires, align 4
  %sub132 = sub i32 %72, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub132)
  %cmp133 = icmp sgt i32 %sub132, -1
  br i1 %cmp133, label %lor.lhs.false.if.then135_crit_edge, label %free_and_exit.critedge215

lor.lhs.false.if.then135_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then135

if.then135:                                       ; preds = %lor.lhs.false.if.then135_crit_edge, %if.end127.if.then135_crit_edge
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_stop, i32 noundef 1922, ptr noundef nonnull @.str.24, ptr noundef %handle) #9
  %call136 = call i32 @jbd2_log_start_commit(ptr noundef %21, i32 noundef %23) #9
  %75 = ptrtoint ptr %h_aborted.i217 to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load138 = load i32, ptr %h_aborted.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load138)
  %tobool140.not = icmp sgt i32 %bf.load138, -1
  br i1 %tobool140.not, label %free_and_exit.critedge, label %land.lhs.true141

land.lhs.true141:                                 ; preds = %if.then135
  %76 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 4
  %and = and i32 %79, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool144.not.not = icmp eq i32 %and, 0
  call fastcc void @stop_this_handle(ptr noundef %handle)
  br i1 %tobool144.not.not, label %if.then149, label %land.lhs.true141.free_and_exit_crit_edge

land.lhs.true141.free_and_exit_crit_edge:         ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_and_exit

if.then149:                                       ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #11
  %call150 = call i32 @jbd2_log_wait_commit(ptr noundef %21, i32 noundef %23) #9
  br label %free_and_exit

free_and_exit.critedge:                           ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @stop_this_handle(ptr noundef %handle)
  br label %free_and_exit

free_and_exit.critedge215:                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @stop_this_handle(ptr noundef %handle)
  br label %free_and_exit

free_and_exit:                                    ; preds = %free_and_exit.critedge215, %free_and_exit.critedge, %if.then149, %land.lhs.true141.free_and_exit_crit_edge, %if.then6
  %err.1 = phi i32 [ %call150, %if.then149 ], [ %28, %land.lhs.true141.free_and_exit_crit_edge ], [ 0, %if.then6 ], [ %28, %free_and_exit.critedge ], [ %28, %free_and_exit.critedge215 ]
  %h_rsv_handle = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 1
  %80 = ptrtoint ptr %h_rsv_handle to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %h_rsv_handle, align 4
  %tobool152.not = icmp eq ptr %81, null
  br i1 %tobool152.not, label %free_and_exit.if.end155_crit_edge, label %if.then153

free_and_exit.if.end155_crit_edge:                ; preds = %free_and_exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then153:                                       ; preds = %free_and_exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jbd2_handle_cache to i32))
  %82 = load ptr, ptr @jbd2_handle_cache, align 4
  call void @kmem_cache_free(ptr noundef %82, ptr noundef nonnull %81) #9
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %free_and_exit.if.end155_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jbd2_handle_cache to i32))
  %83 = load ptr, ptr @jbd2_handle_cache, align 4
  call void @kmem_cache_free(ptr noundef %83, ptr noundef %handle) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end155, %is_handle_aborted.exit, %lor.lhs.false.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %if.end155 ], [ -5, %lor.lhs.false.i.cleanup_crit_edge ], [ -5, %if.then.cleanup_crit_edge ], [ %spec.select, %is_handle_aborted.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_extend(ptr noundef %handle, i32 noundef %nblocks, i32 noundef %revoke_records) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %2 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %3 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp ne i32 %3, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %is_handle_aborted.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_handle_aborted.exit:                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_handle_aborted.exit.cleanup_crit_edge

is_handle_aborted.exit.cleanup_crit_edge:         ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_handle_aborted.exit
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %j_state_lock) #9
  %t_state = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_extend, i32 noundef 683, ptr noundef nonnull @.str.4, ptr noundef %handle, i32 noundef %nblocks) #9
  br label %error_out

if.end2:                                          ; preds = %if.end
  %h_revoke_credits_requested = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %12 = ptrtoint ptr %h_revoke_credits_requested to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_revoke_credits_requested, align 4
  %j_revoke_records_per_block = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 48
  %14 = ptrtoint ptr %j_revoke_records_per_block to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %j_revoke_records_per_block, align 4
  %add = add i32 %13, -1
  %add3 = add i32 %add, %revoke_records
  %sub = add i32 %add3, %15
  %div = sdiv i32 %sub, %15
  %sub8 = add i32 %add, %15
  %div10 = sdiv i32 %sub8, %15
  %sub11 = sub i32 %div, %div10
  %add12 = add i32 %sub11, %nblocks
  %t_handle_lock = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %t_handle_lock) #9
  %t_outstanding_credits = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 %add12, ptr elementtype(i32) %t_outstanding_credits) #9, !srcloc !169
  %asmresult.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !170
  %j_max_transaction_buffers = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 47
  %17 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %j_max_transaction_buffers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %18)
  %cmp14 = icmp sgt i32 %asmresult.i.i.i, %18
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_extend, i32 noundef 699, ptr noundef nonnull @.str.5, ptr noundef %handle, i32 noundef %add12) #9
  %call.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 %add12, ptr elementtype(i32) %t_outstanding_credits) #9, !srcloc !160
  br label %unlock

if.end17:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 36
  %20 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %j_fs_dev, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bd_dev, align 4
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_tid, align 4
  %26 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load = load i32, ptr %h_aborted.i, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 255
  %bf.lshr19 = lshr i32 %bf.load, 4
  %bf.clear20 = and i32 %bf.lshr19, 65535
  %h_total_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %27 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %h_total_credits, align 4
  tail call fastcc void @trace_jbd2_handle_extend(i32 noundef %23, i32 noundef %25, i32 noundef %bf.clear, i32 noundef %bf.clear20, i32 noundef %28, i32 noundef %add12)
  %29 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %h_total_credits, align 4
  %add22 = add i32 %30, %add12
  store i32 %add22, ptr %h_total_credits, align 4
  %h_requested_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 9
  %31 = ptrtoint ptr %h_requested_credits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %h_requested_credits, align 4
  %add23 = add i32 %32, %add12
  store i32 %add23, ptr %h_requested_credits, align 4
  %h_revoke_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 3
  %33 = ptrtoint ptr %h_revoke_credits to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %h_revoke_credits, align 4
  %add24 = add i32 %34, %revoke_records
  store i32 %add24, ptr %h_revoke_credits, align 4
  %35 = ptrtoint ptr %h_revoke_credits_requested to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %h_revoke_credits_requested, align 4
  %add26 = add i32 %36, %revoke_records
  store i32 %add26, ptr %h_revoke_credits_requested, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_extend, i32 noundef 716, ptr noundef nonnull @.str.6, ptr noundef %handle, i32 noundef %add12) #9
  br label %unlock

unlock:                                           ; preds = %if.end17, %if.then15
  %result.0 = phi i32 [ 1, %if.then15 ], [ 0, %if.end17 ]
  tail call void @_raw_spin_unlock(ptr noundef %t_handle_lock) #9
  br label %error_out

error_out:                                        ; preds = %unlock, %if.then1
  %result.1 = phi i32 [ 1, %if.then1 ], [ %result.0, %unlock ]
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %error_out, %is_handle_aborted.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1, %error_out ], [ -30, %is_handle_aborted.exit.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_handle_extend(i32 noundef %dev, i32 noundef %tid, i32 noundef %type, i32 noundef %line_no, i32 noundef %buffer_credits, i32 noundef %requested_blocks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_extend, i32 0, i32 1), ptr blockaddress(@trace_jbd2_handle_extend, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !171
  %call42 = tail call i32 @__traceiter_jbd2_handle_extend(ptr noundef null, i32 noundef %dev, i32 noundef %tid, i32 noundef %type, i32 noundef %line_no, i32 noundef %buffer_credits, i32 noundef %requested_blocks) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_extend, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_extend, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_handle_extend.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_jbd2_handle_extend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 208, ptr noundef nonnull @.str.32) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !166
  %31 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef %nblocks, i32 noundef %revoke_records, i32 noundef %gfp_mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %2 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %3 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp ne i32 %3, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %is_handle_aborted.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_handle_aborted.exit:                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_handle_aborted.exit.cleanup_crit_edge

is_handle_aborted.exit.cleanup_crit_edge:         ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_handle_aborted.exit
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_tid, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2__journal_restart, i32 noundef 806, ptr noundef nonnull @.str.7, ptr noundef %handle) #9
  tail call fastcc void @stop_this_handle(ptr noundef %handle)
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %handle, align 4
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %j_state_lock) #9
  %j_commit_request = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 44
  %13 = ptrtoint ptr %j_commit_request to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %j_commit_request, align 8
  %15 = xor i32 %14, -1
  %16 = add i32 %11, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool2.not = icmp sgt i32 %16, -1
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  br i1 %tobool2.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @jbd2_log_start_commit(ptr noundef %9, i32 noundef %11) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %j_revoke_records_per_block = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 48
  %17 = ptrtoint ptr %j_revoke_records_per_block to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %j_revoke_records_per_block, align 4
  %add = add i32 %revoke_records, -1
  %sub = add i32 %add, %18
  %div = sdiv i32 %sub, %18
  %add9 = add i32 %div, %nblocks
  %h_total_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %19 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add9, ptr %h_total_credits, align 4
  %h_revoke_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 3
  %20 = ptrtoint ptr %h_revoke_credits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %revoke_records, ptr %h_revoke_credits, align 4
  %call10 = tail call fastcc i32 @start_this_handle(ptr noundef %9, ptr noundef %handle, i32 noundef %gfp_mask)
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 36
  %21 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %j_fs_dev, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bd_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cond.false, label %if.end7.cond.end_crit_edge

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle, align 4
  %t_tid12 = getelementptr inbounds %struct.transaction_s, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %t_tid12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %t_tid12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end7.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.false ], [ 0, %if.end7.cond.end_crit_edge ]
  %29 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %h_aborted.i, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 255
  %bf.lshr14 = lshr i32 %bf.load, 4
  %bf.clear15 = and i32 %bf.lshr14, 65535
  %30 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h_total_credits, align 4
  tail call fastcc void @trace_jbd2_handle_restart(i32 noundef %24, i32 noundef %cond, i32 noundef %bf.clear, i32 noundef %bf.clear15, i32 noundef %31)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %is_handle_aborted.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %cond.end ], [ 0, %is_handle_aborted.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_this_handle(ptr noundef %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 146
  %8 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %journal_info.i, align 4
  %cmp.not = icmp eq ptr %9, %handle
  br i1 %cmp.not, label %do.body9, label %do.body3, !prof !154

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 730, 0\0A.popsection", ""() #9, !srcloc !173
  unreachable

do.body9:                                         ; preds = %entry
  %t_updates = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %t_updates, i32 noundef 4) #9
  %10 = ptrtoint ptr %t_updates to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %t_updates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp11 = icmp slt i32 %11, 1
  br i1 %cmp11, label %do.body21, label %do.end29, !prof !156

do.body21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 731, 0\0A.popsection", ""() #9, !srcloc !174
  unreachable

do.end29:                                         ; preds = %do.body9
  %12 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %journal_info, align 4
  %h_revoke_credits_requested = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %17 = ptrtoint ptr %h_revoke_credits_requested to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_revoke_credits_requested, align 4
  %h_revoke_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 3
  %19 = ptrtoint ptr %h_revoke_credits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %h_revoke_credits, align 4
  %sub = sub i32 %18, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %tobool31.not = icmp eq i32 %18, %20
  br i1 %tobool31.not, label %do.end29.if.end93_crit_edge, label %if.then32

do.end29.if.end93_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then32:                                        ; preds = %do.end29
  %j_revoke_records_per_block = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 48
  %21 = ptrtoint ptr %j_revoke_records_per_block to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %j_revoke_records_per_block, align 4
  %add = add i32 %22, -1
  %sub33 = add i32 %add, %sub
  %div = sdiv i32 %sub33, %22
  %h_total_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %23 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %h_total_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %24)
  %cmp34 = icmp sgt i32 %div, %24
  br i1 %cmp34, label %land.rhs, label %if.then32.if.end74_crit_edge

if.then32.if.end74_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

land.rhs:                                         ; preds = %if.then32
  %.b131 = load i1, ptr @stop_this_handle.__already_done, align 1
  br i1 %.b131, label %land.rhs.if.end74_crit_edge, label %if.then49, !prof !154

land.rhs.if.end74_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then49:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @stop_this_handle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 745, i32 noundef 9, ptr noundef null) #9
  br label %if.end74

if.end74:                                         ; preds = %if.then49, %land.rhs.if.end74_crit_edge, %if.then32.if.end74_crit_edge
  %t_outstanding_revokes = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 19
  %call.i.i132 = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_revokes, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %t_outstanding_revokes, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_revokes, ptr %t_outstanding_revokes, i32 %sub, ptr elementtype(i32) %t_outstanding_revokes) #9, !srcloc !169
  %asmresult.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !170
  %sub84 = add i32 %add, %asmresult.i.i.i
  %div85 = sdiv i32 %sub84, %22
  %26 = xor i32 %sub, -1
  %add87 = add i32 %22, %26
  %sub88 = add i32 %add87, %asmresult.i.i.i
  %div89 = sdiv i32 %sub88, %22
  %sub90.neg = sub i32 %div89, %div85
  %27 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %h_total_credits, align 4
  %sub92 = add i32 %sub90.neg, %28
  store i32 %sub92, ptr %h_total_credits, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end74, %do.end29.if.end93_crit_edge
  %h_total_credits94 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %29 = ptrtoint ptr %h_total_credits94 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %h_total_credits94, align 4
  %t_outstanding_credits = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 18
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 %30, ptr elementtype(i32) %t_outstanding_credits) #9, !srcloc !160
  %h_rsv_handle = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 1
  %32 = ptrtoint ptr %h_rsv_handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %h_rsv_handle, align 4
  %tobool95.not = icmp eq ptr %33, null
  br i1 %tobool95.not, label %if.end93.if.end98_crit_edge, label %if.then96

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__jbd2_journal_unreserve_handle(ptr noundef nonnull %33, ptr noundef %1)
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end93.if.end98_crit_edge
  %call.i.i134 = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_updates, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %t_updates, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_updates, ptr %t_updates, i32 1, ptr elementtype(i32) %t_updates) #9, !srcloc !176
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then101, label %if.end98.__here_crit_edge

if.end98.__here_crit_edge:                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %j_wait_updates = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %j_wait_updates, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %__here

__here:                                           ; preds = %if.then101, %if.end98.__here_crit_edge
  %j_trans_commit_map = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 72
  tail call void @lock_release(ptr noundef %j_trans_commit_map, i32 noundef ptrtoint (ptr blockaddress(@stop_this_handle, %__here) to i32)) #9
  %saved_alloc_context = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 10
  %35 = ptrtoint ptr %saved_alloc_context to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %saved_alloc_context, align 4
  %37 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i135 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i135 to ptr
  %task.i136 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i136 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i136, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags1.i, align 4
  %and.i137 = and i32 %42, -262145
  %or.i = or i32 %and.i137, %36
  store i32 %or.i, ptr %flags1.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_log_start_commit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_handle_restart(i32 noundef %dev, i32 noundef %tid, i32 noundef %type, i32 noundef %line_no, i32 noundef %requested_blocks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_restart, i32 0, i32 1), ptr blockaddress(@trace_jbd2_handle_restart, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %call42 = tail call i32 @__traceiter_jbd2_handle_restart(ptr noundef null, i32 noundef %dev, i32 noundef %tid, i32 noundef %type, i32 noundef %line_no, i32 noundef %requested_blocks) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %13 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_restart, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_restart, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_handle_restart.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_jbd2_handle_restart.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 176, ptr noundef nonnull @.str.32) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !166
  %31 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_restart(ptr noundef %handle, i32 noundef %nblocks) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef %nblocks, i32 noundef 0, i32 noundef 3136)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_wait_updates(ptr noundef %journal) local_unnamed_addr #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 10
  %0 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_running_transaction, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %t_handle_lock = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %t_handle_lock) #9
  %t_updates = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 17
  %call.i.i27 = call zeroext i1 @__kasan_check_read(ptr noundef %t_updates, i32 noundef 4) #9
  %2 = ptrtoint ptr %t_updates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %t_updates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not28 = icmp eq i32 %3, 0
  br i1 %tobool1.not28, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %j_wait_updates = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 16
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  %8 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait, align 4
  %11 = call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %4, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @autoremove_wake_function, ptr %5, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %6, ptr %6, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %6, ptr %7, align 4
  call void @prepare_to_wait(ptr noundef %j_wait_updates, ptr noundef nonnull %wait, i32 noundef 2) #9
  %call.i.i26 = call zeroext i1 @__kasan_check_read(ptr noundef %t_updates, i32 noundef 4) #9
  %19 = ptrtoint ptr %t_updates to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %t_updates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %while.body.if.end13_crit_edge, label %if.then9

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %t_handle_lock) #9
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #9
  call void @schedule() #9
  call void @_raw_write_lock(ptr noundef %j_state_lock) #9
  call void @_raw_spin_lock(ptr noundef %t_handle_lock) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %while.body.if.end13_crit_edge
  call void @finish_wait(ptr noundef %j_wait_updates, ptr noundef nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %t_updates, i32 noundef 4) #9
  %21 = ptrtoint ptr %t_updates to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %t_updates, align 4
  %tobool1.not = icmp eq i32 %22, 0
  br i1 %tobool1.not, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %t_handle_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_lock_updates(ptr noundef %journal) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !144) #9
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %j_trans_commit_map = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 72
  br label %__here

__here:                                           ; preds = %entry
  call void @lock_acquire(ptr noundef %j_trans_commit_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@jbd2_journal_lock_updates, %__here) to i32)) #9
  br label %__here5

__here5:                                          ; preds = %__here
  call void @lock_release(ptr noundef %j_trans_commit_map, i32 noundef ptrtoint (ptr blockaddress(@jbd2_journal_lock_updates, %__here5) to i32)) #9
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  call void @_raw_write_lock(ptr noundef %j_state_lock) #9
  %j_barrier_count = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 8
  %13 = ptrtoint ptr %j_barrier_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %j_barrier_count, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %j_barrier_count, align 8
  %j_reserved_credits = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 38
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits, i32 noundef 4) #9
  %15 = ptrtoint ptr %j_reserved_credits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %j_reserved_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %__here5.if.end30_crit_edge, label %if.then

__here5.if.end30_crit_edge:                       ; preds = %__here5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then:                                          ; preds = %__here5
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #9
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 891) #9
  %call.i.i45 = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits, i32 noundef 4) #9
  %17 = ptrtoint ptr %j_reserved_credits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %j_reserved_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then.do.end28_crit_edge, label %if.end

if.then.do.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %j_wait_reserved = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 17
  %call1949 = call i32 @prepare_to_wait_event(ptr noundef %j_wait_reserved, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i4650 = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits, i32 noundef 4) #9
  %20 = ptrtoint ptr %j_reserved_credits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %j_reserved_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2251 = icmp eq i32 %21, 0
  br i1 %cmp2251, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #9
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %j_wait_reserved, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i46 = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits, i32 noundef 4) #9
  %22 = ptrtoint ptr %j_reserved_credits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %j_reserved_credits, align 4
  %cmp22 = icmp eq i32 %23, 0
  br i1 %cmp22, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %j_wait_reserved, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.end28

do.end28:                                         ; preds = %for.end, %if.then.do.end28_crit_edge
  call void @_raw_write_lock(ptr noundef %j_state_lock) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %__here5.if.end30_crit_edge
  call void @jbd2_journal_wait_updates(ptr noundef %journal)
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #9
  %j_barrier = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %j_barrier, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_unlock_updates(ptr noundef %journal) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %j_barrier_count = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 8
  %0 = ptrtoint ptr %j_barrier_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %j_barrier_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body3, label %do.end6, !prof !156

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 919, 0\0A.popsection", ""() #9, !srcloc !180
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %j_barrier = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %j_barrier) #9
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  tail call void @_raw_write_lock(ptr noundef %j_state_lock) #9
  %2 = ptrtoint ptr %j_barrier_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %j_barrier_count, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %j_barrier_count, align 8
  tail call void @_raw_write_unlock(ptr noundef %j_state_lock) #9
  %j_wait_transaction_locked = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %j_wait_transaction_locked, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_get_write_access(ptr noundef %handle, ptr noundef %bh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %1 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_handle_aborted.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_handle_aborted.exit:                           ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_handle_aborted.exit.cleanup_crit_edge

is_handle_aborted.exit.cleanup_crit_edge:         ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_handle_aborted.exit
  %call1 = tail call fastcc zeroext i1 @jbd2_write_access_granted(ptr noundef %handle, ptr noundef %bh, i1 noundef zeroext false)
  br i1 %call1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call ptr @jbd2_journal_add_journal_head(ptr noundef %bh) #9
  %call5 = tail call fastcc i32 @do_get_write_access(ptr noundef %handle, ptr noundef %call4, i32 noundef 0)
  tail call void @jbd2_journal_put_journal_head(ptr noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %is_handle_aborted.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -30, %is_handle_aborted.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -30, %lor.lhs.false.i.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @jbd2_write_access_granted(ptr nocapture noundef readonly %handle, ptr noundef %bh, i1 noundef zeroext %undo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %bh, align 4
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %rcu_read_lock.exit.out_crit_edge, label %do.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %rcu_read_lock.exit
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %10 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %b_private, align 8
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %do.end.out_crit_edge, label %if.end7

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %do.end
  br i1 %undo, label %land.lhs.true, label %if.end7.do.end14_crit_edge

if.end7.do.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

land.lhs.true:                                    ; preds = %if.end7
  %b_committed_data = getelementptr inbounds %struct.journal_head, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %b_committed_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_committed_data, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.do.end14_crit_edge

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end14:                                         ; preds = %land.lhs.true.do.end14_crit_edge, %if.end7.do.end14_crit_edge
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %11, i32 0, i32 7
  %14 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %b_transaction, align 4
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 4
  %cmp.not = icmp eq ptr %15, %17
  br i1 %cmp.not, label %do.end14.do.end27_crit_edge, label %do.end19

do.end14.do.end27_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.end19:                                         ; preds = %do.end14
  %b_next_transaction = getelementptr inbounds %struct.journal_head, ptr %11, i32 0, i32 8
  %18 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %b_next_transaction, align 4
  %cmp21.not = icmp eq ptr %19, %17
  br i1 %cmp21.not, label %do.end19.do.end27_crit_edge, label %do.end19.out_crit_edge

do.end19.out_crit_edge:                           ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end19.do.end27_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.end27:                                         ; preds = %do.end19.do.end27_crit_edge, %do.end14.do.end27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !182
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 4
  %cmp30.not = icmp eq ptr %21, %bh
  br label %out

out:                                              ; preds = %do.end27, %do.end19.out_crit_edge, %land.lhs.true.out_crit_edge, %do.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %do.end19.out_crit_edge ], [ false, %land.lhs.true.out_crit_edge ], [ false, %do.end.out_crit_edge ], [ false, %rcu_read_lock.exit.out_crit_edge ], [ %cmp30.not, %do.end27 ]
  %call.i47 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i47, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %out
  %call1.i48 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !183
  %22 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i.i54 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_add_journal_head(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_get_write_access(ptr noundef %handle, ptr noundef %jh, i32 noundef %force_copy) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 5, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.do_get_write_access, i32 noundef 984, ptr noundef nonnull @.str.37, ptr noundef %jh, i32 noundef %force_copy) #9
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 1
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 7
  %j_committing_transaction = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 11
  %b_next_transaction = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 8
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %b_modified = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 4
  %b_frozen_data = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 5
  %b_jlist = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_copy)
  %tobool189.not = icmp eq i32 %force_copy, 0
  br label %repeat.outer

repeat.outer:                                     ; preds = %do.end198, %entry
  %frozen_buffer.0.ph = phi ptr [ %call201, %do.end198 ], [ null, %entry ]
  br label %repeat

repeat:                                           ; preds = %repeat.backedge, %repeat.outer
  %4 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 366) #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #9
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %repeat.if.then.i285_crit_edge

repeat.if.then.i285_crit_edge:                    ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i285

trylock_buffer.exit.i:                            ; preds = %repeat
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 4, ptr elementtype(i32) %5) #9, !srcloc !184
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  %10 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i285_crit_edge

trylock_buffer.exit.i.if.then.i285_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i285

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_buffer.exit

if.then.i285:                                     ; preds = %trylock_buffer.exit.i.if.then.i285_crit_edge, %repeat.if.then.i285_crit_edge
  tail call void @__lock_buffer(ptr noundef %5) #9
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i285, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %6)
  %cmp.not.i = icmp ult i32 %11, %6
  %retval.0.p.v.i = select i1 %cmp.not.i, i32 1073741822, i32 0
  %retval.0.p.i = sub i32 %11, %6
  %retval.0.i = add i32 %retval.0.p.v.i, %retval.0.p.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retval.0.i)
  %cmp = icmp ugt i32 %retval.0.i, 10
  br i1 %cmp, label %if.then, label %lock_buffer.exit.if.end_crit_edge

lock_buffer.exit.if.end_crit_edge:                ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_bdev, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bd_dev, align 4
  %call2 = tail call i32 @jiffies_to_msecs(i32 noundef %retval.0.i) #9
  tail call fastcc void @trace_jbd2_lock_buffer_stall(i32 noundef %15, i32 noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %lock_buffer.exit.if.end_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %5, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.if.end53_crit_edge, label %if.then4

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then4:                                         ; preds = %if.end
  %19 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_transaction, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %if.then4.do.end52_crit_edge, label %do.body7

if.then4.do.end52_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

do.body7:                                         ; preds = %if.then4
  %cmp9 = icmp eq ptr %20, %1
  br i1 %cmp9, label %do.body7.do.end24_crit_edge, label %lor.rhs

do.body7.do.end24_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

lor.rhs:                                          ; preds = %do.body7
  %21 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %j_committing_transaction, align 4
  %cmp11 = icmp eq ptr %20, %22
  br i1 %cmp11, label %lor.rhs.do.end24_crit_edge, label %do.body16, !prof !154

lor.rhs.do.end24_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

do.body16:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1024, 0\0A.popsection", ""() #9, !srcloc !186
  unreachable

do.end24:                                         ; preds = %lor.rhs.do.end24_crit_edge, %do.body7.do.end24_crit_edge
  %23 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_next_transaction, align 4
  %tobool25.not = icmp eq ptr %24, null
  %cmp29.not = icmp eq ptr %24, %1
  %or.cond = or i1 %tobool25.not, %cmp29.not
  br i1 %or.cond, label %if.end48, label %do.body39, !prof !187

do.body39:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1027, 0\0A.popsection", ""() #9, !srcloc !188
  unreachable

if.end48:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 6
  %25 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %b_blocknr.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %26, i64 noundef %28) #12
  br label %do.end52

do.end52:                                         ; preds = %if.end48, %if.then4.do.end52_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %5) #9
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %5, align 4
  %31 = and i32 %30, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end52.if.end53_crit_edge

do.end52.if.end53_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then.i:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 21, ptr noundef %5) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then.i, %do.end52.if.end53_crit_edge, %if.end.if.end53_crit_edge
  tail call void @unlock_buffer(ptr noundef %5) #9
  %32 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %33 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i286 = icmp eq i32 %33, 0
  br i1 %tobool.not.i286, label %lor.lhs.false.i, label %if.end53.if.then56_crit_edge

if.end53.if.then56_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

lor.lhs.false.i:                                  ; preds = %if.end53
  %34 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handle, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then56_crit_edge, label %is_handle_aborted.exit

lor.lhs.false.i.if.then56_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

is_handle_aborted.exit:                           ; preds = %lor.lhs.false.i
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %and.i.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool55.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool55.not, label %if.end58, label %is_handle_aborted.exit.if.then56_crit_edge

is_handle_aborted.exit.if.then56_crit_edge:       ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.then56:                                        ; preds = %is_handle_aborted.exit.if.then56_crit_edge, %lor.lhs.false.i.if.then56_crit_edge, %if.end53.if.then56_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  br label %out

if.end58:                                         ; preds = %is_handle_aborted.exit
  %40 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_transaction, align 4
  %cmp60 = icmp eq ptr %41, %1
  br i1 %cmp60, label %if.end58.done_crit_edge, label %lor.lhs.false

if.end58.done_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

lor.lhs.false:                                    ; preds = %if.end58
  %42 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_next_transaction, align 4
  %cmp62 = icmp eq ptr %43, %1
  br i1 %cmp62, label %lor.lhs.false.done_crit_edge, label %if.end64

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end64:                                         ; preds = %lor.lhs.false
  %44 = ptrtoint ptr %b_modified to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %b_modified, align 4
  %tobool66.not = icmp eq ptr %41, null
  br i1 %tobool66.not, label %do.body71, label %if.end104

do.body71:                                        ; preds = %if.end64
  %tobool73.not = icmp eq ptr %43, null
  br i1 %tobool73.not, label %do.end100, label %do.body85, !prof !154

do.body85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

do.end100:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !190
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef %jh, ptr noundef %1, i32 noundef 4)
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #9
  br label %done

if.end104:                                        ; preds = %if.end64
  %45 = ptrtoint ptr %b_frozen_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_frozen_data, align 4
  %tobool105.not = icmp eq ptr %46, null
  %cmp137.not = icmp eq ptr %43, null
  br i1 %tobool105.not, label %do.body135, label %do.body110

do.body110:                                       ; preds = %if.end104
  br i1 %cmp137.not, label %do.body110.do.end208_crit_edge, label %do.body122, !prof !154

do.body110.do.end208_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end208

do.body122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1089, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.body135:                                       ; preds = %if.end104
  br i1 %cmp137.not, label %do.body156, label %do.body147, !prof !154

do.body147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1094, 0\0A.popsection", ""() #9, !srcloc !192
  unreachable

do.body156:                                       ; preds = %do.body135
  %47 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %j_committing_transaction, align 4
  %cmp159.not = icmp eq ptr %41, %48
  br i1 %cmp159.not, label %do.end177, label %do.body169, !prof !154

do.body169:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1095, 0\0A.popsection", ""() #9, !srcloc !193
  unreachable

do.end177:                                        ; preds = %do.body156
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %5, align 4
  %51 = and i32 %50, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool179.not = icmp eq i32 %51, 0
  br i1 %tobool179.not, label %if.end186, label %do.end183

do.end183:                                        ; preds = %do.end177
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 98) #9
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %5, align 4
  %54 = and i32 %53, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i288 = icmp eq i32 %54, 0
  br i1 %tobool.not.i288, label %do.end183.repeat.backedge_crit_edge, label %if.end.i289

do.end183.repeat.backedge_crit_edge:              ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %repeat.backedge

repeat.backedge:                                  ; preds = %if.end.i289, %do.end183.repeat.backedge_crit_edge
  br label %repeat

if.end.i289:                                      ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %5, i32 noundef 23, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #9
  br label %repeat.backedge

if.end186:                                        ; preds = %do.end177
  %55 = ptrtoint ptr %b_jlist to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %b_jlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp187 = icmp ne i32 %56, 1
  %or.cond282 = and i1 %tobool189.not, %cmp187
  br i1 %or.cond282, label %if.end186.do.end208_crit_edge, label %do.end193

if.end186.do.end208_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end208

do.end193:                                        ; preds = %if.end186
  %tobool194.not = icmp eq ptr %frozen_buffer.0.ph, null
  br i1 %tobool194.not, label %do.end198, label %if.end202

do.end198:                                        ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  %57 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %jh, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %b_size, align 8
  %call201 = tail call ptr @jbd2_alloc(i32 noundef %60, i32 noundef 35904) #9
  br label %repeat.outer

if.end202:                                        ; preds = %do.end193
  %61 = ptrtoint ptr %b_frozen_data to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %frozen_buffer.0.ph, ptr %b_frozen_data, align 4
  %62 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %jh, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %and1.i.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i290 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i290, label %do.end.i, label %if.end202.if.end.i291_crit_edge

if.end202.if.end.i291_crit_edge:                  ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i291

do.end.i:                                         ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #12
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #12
  br label %if.end.i291

if.end.i291:                                      ; preds = %do.end.i, %if.end202.if.end.i291_crit_edge
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_page.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %63, i32 0, i32 5
  %68 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data.i, align 4
  %70 = ptrtoint ptr %69 to i32
  %and.i = and i32 %70, 4095
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %71 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %71, 512
  %72 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %75, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !194
  %76 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i1.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 213
  %80 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %81, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !195
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %67, i32 noundef %or.i.i) #9
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i
  %b_triggers.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 14
  %82 = ptrtoint ptr %b_triggers.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_triggers.i, align 4
  %84 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %jh, align 4
  %tobool.not.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i, label %if.end.i291.jbd2_freeze_jh_data.exit_crit_edge, label %lor.lhs.false.i.i

if.end.i291.jbd2_freeze_jh_data.exit_crit_edge:   ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_freeze_jh_data.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i291
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %83, align 4
  %tobool1.not.i.i = icmp eq ptr %87, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.jbd2_freeze_jh_data.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.jbd2_freeze_jh_data.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_freeze_jh_data.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %85, i32 0, i32 4
  %88 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %b_size.i.i, align 8
  tail call void %87(ptr noundef nonnull %83, ptr noundef %85, ptr noundef %add.ptr.i, i32 noundef %89) #9
  br label %jbd2_freeze_jh_data.exit

jbd2_freeze_jh_data.exit:                         ; preds = %if.end.i.i, %lor.lhs.false.i.i.jbd2_freeze_jh_data.exit_crit_edge, %if.end.i291.jbd2_freeze_jh_data.exit_crit_edge
  %90 = ptrtoint ptr %b_frozen_data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %b_frozen_data, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %63, i32 0, i32 4
  %92 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %b_size.i, align 8
  %94 = call ptr @memcpy(ptr %91, ptr %add.ptr.i, i32 %93)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !196
  %95 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i1.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 213
  %99 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %100, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !197
  %101 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %104, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %105 = ptrtoint ptr %b_triggers.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %b_triggers.i, align 4
  %b_frozen_triggers.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 15
  %107 = ptrtoint ptr %b_frozen_triggers.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %b_frozen_triggers.i, align 4
  br label %do.end208

do.end208:                                        ; preds = %jbd2_freeze_jh_data.exit, %if.end186.do.end208_crit_edge, %do.body110.do.end208_crit_edge
  %frozen_buffer.1 = phi ptr [ %frozen_buffer.0.ph, %do.body110.do.end208_crit_edge ], [ null, %jbd2_freeze_jh_data.exit ], [ %frozen_buffer.0.ph, %if.end186.do.end208_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !198
  %108 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %1, ptr %b_next_transaction, align 4
  br label %done

done:                                             ; preds = %do.end208, %do.end100, %lor.lhs.false.done_crit_edge, %if.end58.done_crit_edge
  %frozen_buffer.2 = phi ptr [ %frozen_buffer.1, %do.end208 ], [ %frozen_buffer.0.ph, %do.end100 ], [ %frozen_buffer.0.ph, %lor.lhs.false.done_crit_edge ], [ %frozen_buffer.0.ph, %if.end58.done_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  %call213 = tail call i32 @jbd2_journal_cancel_revoke(ptr noundef %handle, ptr noundef %jh) #9
  br label %out

out:                                              ; preds = %done, %if.then56
  %error.0 = phi i32 [ -30, %if.then56 ], [ 0, %done ]
  %frozen_buffer.3 = phi ptr [ %frozen_buffer.0.ph, %if.then56 ], [ %frozen_buffer.2, %done ]
  %tobool214.not = icmp eq ptr %frozen_buffer.3, null
  br i1 %tobool214.not, label %out.do.end226_crit_edge, label %if.then221, !prof !154

out.do.end226_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end226

if.then221:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %b_size222 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 4
  %109 = ptrtoint ptr %b_size222 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %b_size222, align 8
  tail call void @jbd2_free(ptr noundef nonnull %frozen_buffer.3, i32 noundef %110) #9
  br label %do.end226

do.end226:                                        ; preds = %if.then221, %out.do.end226_crit_edge
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_put_journal_head(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_get_create_access(ptr noundef %handle, ptr noundef %bh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %call = tail call ptr @jbd2_journal_add_journal_head(ptr noundef %bh) #9
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 5, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_get_create_access, i32 noundef 1276, ptr noundef nonnull @.str.8, ptr noundef %call) #9
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %2 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %3 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.out_crit_edge, label %is_handle_aborted.exit

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

is_handle_aborted.exit:                           ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_handle_aborted.exit.out_crit_edge

is_handle_aborted.exit.out_crit_edge:             ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %is_handle_aborted.exit
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %call, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock) #9
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_transaction, align 4
  %cmp = icmp eq ptr %13, %1
  %cmp4 = icmp eq ptr %13, null
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.end.do.body21_crit_edge, label %lor.rhs

if.end.do.body21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

lor.rhs:                                          ; preds = %if.end
  %j_committing_transaction = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %j_committing_transaction, align 4
  %cmp6 = icmp eq ptr %13, %15
  br i1 %cmp6, label %land.rhs, label %lor.rhs.do.body12_crit_edge

lor.rhs.do.body12_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

land.rhs:                                         ; preds = %lor.rhs
  %b_jlist = getelementptr inbounds %struct.journal_head, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %b_jlist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b_jlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp7.not = icmp eq i32 %17, 2
  br i1 %cmp7.not, label %land.rhs.do.body21_crit_edge, label %land.rhs.do.body12_crit_edge, !prof !154

land.rhs.do.body12_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

land.rhs.do.body21_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

do.body12:                                        ; preds = %land.rhs.do.body12_crit_edge, %lor.rhs.do.body12_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1295, 0\0A.popsection", ""() #9, !srcloc !199
  unreachable

do.body21:                                        ; preds = %land.rhs.do.body21_crit_edge, %if.end.do.body21_crit_edge
  %b_next_transaction = getelementptr inbounds %struct.journal_head, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_next_transaction, align 4
  %cmp22.not = icmp eq ptr %19, null
  br i1 %cmp22.not, label %do.body41, label %do.body32, !prof !154

do.body32:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1297, 0\0A.popsection", ""() #9, !srcloc !200
  unreachable

do.body41:                                        ; preds = %do.body21
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  br i1 %tobool44.not, label %do.body54, label %do.end62, !prof !156

do.body54:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1298, 0\0A.popsection", ""() #9, !srcloc !201
  unreachable

do.end62:                                         ; preds = %do.body41
  br i1 %cmp4, label %if.then65, label %if.else

if.then65:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %21) #9
  %b_modified = getelementptr inbounds %struct.journal_head, ptr %call, i32 0, i32 4
  %25 = ptrtoint ptr %b_modified to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %b_modified, align 4
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef %call, ptr noundef %1, i32 noundef 4)
  br label %if.end83.sink.split

if.else:                                          ; preds = %do.end62
  %j_committing_transaction72 = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 11
  %26 = ptrtoint ptr %j_committing_transaction72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %j_committing_transaction72, align 4
  %cmp73 = icmp eq ptr %13, %27
  br i1 %cmp73, label %if.then74, label %if.else.if.end83_crit_edge

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then74:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %b_modified75 = getelementptr inbounds %struct.journal_head, ptr %call, i32 0, i32 4
  %28 = ptrtoint ptr %b_modified75 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %b_modified75, align 4
  %j_list_lock79 = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock79) #9
  %29 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %b_next_transaction, align 4
  br label %if.end83.sink.split

if.end83.sink.split:                              ; preds = %if.then74, %if.then65
  %j_list_lock79.sink = phi ptr [ %j_list_lock79, %if.then74 ], [ %j_list_lock, %if.then65 ]
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock79.sink) #9
  br label %if.end83

if.end83:                                         ; preds = %if.end83.sink.split, %if.else.if.end83_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  %call88 = tail call i32 @jbd2_journal_cancel_revoke(ptr noundef %handle, ptr noundef %call) #9
  br label %out

out:                                              ; preds = %if.end83, %is_handle_aborted.exit.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -30, %is_handle_aborted.exit.out_crit_edge ], [ 0, %if.end83 ], [ -30, %lor.lhs.false.i.out_crit_edge ], [ -30, %entry.out_crit_edge ]
  tail call void @jbd2_journal_put_journal_head(ptr noundef %call) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__jbd2_journal_file_buffer(ptr noundef %jh, ptr noundef %transaction, i32 noundef %jlist) local_unnamed_addr #3 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i206 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %cmp.not = icmp eq i32 %call.i206, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !156

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2504, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transaction, align 8
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %4, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %5 = ptrtoint ptr %j_list_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %j_list_lock, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body37, label %do.body46, !prof !156

do.body37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2505, 0\0A.popsection", ""() #9, !srcloc !202
  unreachable

do.body46:                                        ; preds = %if.end
  %b_jlist = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 3
  %7 = ptrtoint ptr %b_jlist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_jlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp47 = icmp ugt i32 %8, 4
  br i1 %cmp47, label %do.body57, label %do.body66, !prof !156

do.body57:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2507, 0\0A.popsection", ""() #9, !srcloc !203
  unreachable

do.body66:                                        ; preds = %do.body46
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 7
  %9 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_transaction, align 4
  %cmp67 = icmp ne ptr %10, %transaction
  %cmp69 = icmp ne ptr %10, null
  %spec.select = and i1 %cmp67, %cmp69
  br i1 %spec.select, label %do.body79, label %do.end87, !prof !156

do.body79:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2509, 0\0A.popsection", ""() #9, !srcloc !204
  unreachable

do.end87:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %jlist)
  %cmp91 = icmp eq i32 %8, %jlist
  %or.cond = select i1 %cmp69, i1 %cmp91, i1 false
  br i1 %or.cond, label %do.end87.cleanup_crit_edge, label %if.end93

do.end87.cleanup_crit_edge:                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end93:                                         ; preds = %do.end87
  %jlist.off = add i32 %jlist, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %jlist.off)
  %switch = icmp ult i32 %jlist.off, 4
  br i1 %switch, label %if.then100, label %if.end93.if.end112_crit_edge

if.end93.if.end112_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then100:                                       ; preds = %if.end93
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %1, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool102.not = icmp eq i32 %13, 0
  br i1 %tobool102.not, label %if.then100.if.end104_crit_edge, label %if.then103

if.then100.if.end104_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then103:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b_blocknr.i, align 8
  %call.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %15, i64 noundef %17) #12
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.then100.if.end104_crit_edge
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool106.not = icmp eq i32 %call.i, 0
  br i1 %tobool106.not, label %lor.lhs.false107, label %if.end104.if.then110_crit_edge

if.end104.if.then110_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then110

lor.lhs.false107:                                 ; preds = %if.end104
  %call.i205 = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool109.not = icmp eq i32 %call.i205, 0
  br i1 %tobool109.not, label %lor.lhs.false107.if.end112_crit_edge, label %lor.lhs.false107.if.then110_crit_edge

lor.lhs.false107.if.then110_crit_edge:            ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then110

lor.lhs.false107.if.end112_crit_edge:             ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then110:                                       ; preds = %lor.lhs.false107.if.then110_crit_edge, %if.end104.if.then110_crit_edge
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %lor.lhs.false107.if.end112_crit_edge, %if.end93.if.end112_crit_edge
  %tobool168.not = phi i1 [ true, %lor.lhs.false107.if.end112_crit_edge ], [ false, %if.then110 ], [ true, %if.end93.if.end112_crit_edge ]
  %18 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_transaction, align 4
  %tobool114.not = icmp eq ptr %19, null
  br i1 %tobool114.not, label %if.else, label %if.then115

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %jh)
  br label %if.end117

if.else:                                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %call116 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %1) #9
  br label %if.end117

if.end117:                                        ; preds = %if.else, %if.then115
  %20 = ptrtoint ptr %b_transaction to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transaction, ptr %b_transaction, align 4
  %21 = zext i32 %jlist to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %jlist, label %if.end117.sw.epilog_crit_edge [
    i32 0, label %do.body119
    i32 1, label %sw.bb163
    i32 2, label %sw.bb164
    i32 3, label %sw.bb165
    i32 4, label %sw.bb166
  ]

if.end117.sw.epilog_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body119:                                       ; preds = %if.end117
  %b_committed_data = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 6
  %22 = ptrtoint ptr %b_committed_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_committed_data, align 4
  %tobool120.not = icmp eq ptr %23, null
  br i1 %tobool120.not, label %do.body141, label %do.body132, !prof !154

do.body132:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2538, 0\0A.popsection", ""() #9, !srcloc !205
  unreachable

do.body141:                                       ; preds = %do.body119
  %b_frozen_data = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 5
  %24 = ptrtoint ptr %b_frozen_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_frozen_data, align 4
  %tobool142.not = icmp eq ptr %25, null
  br i1 %tobool142.not, label %do.body141.cleanup_crit_edge, label %do.body154, !prof !154

do.body141.cleanup_crit_edge:                     ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body154:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2539, 0\0A.popsection", ""() #9, !srcloc !206
  unreachable

sw.bb163:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %t_nr_buffers = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 4
  %26 = ptrtoint ptr %t_nr_buffers to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t_nr_buffers, align 8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %t_nr_buffers, align 8
  %t_buffers = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 6
  br label %sw.epilog

sw.bb164:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %t_forget = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 7
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %t_shadow_list = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 10
  br label %sw.epilog

sw.bb166:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %t_reserved_list = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb166, %sw.bb165, %sw.bb164, %sw.bb163, %if.end117.sw.epilog_crit_edge
  %list.0 = phi ptr [ null, %if.end117.sw.epilog_crit_edge ], [ %t_reserved_list, %sw.bb166 ], [ %t_shadow_list, %sw.bb165 ], [ %t_forget, %sw.bb164 ], [ %t_buffers, %sw.bb163 ]
  %28 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list.0, align 4
  %tobool.not.i208 = icmp eq ptr %29, null
  br i1 %tobool.not.i208, label %if.then.i209, label %if.else.i

if.then.i209:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %b_tprev.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 10
  %30 = ptrtoint ptr %b_tprev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %jh, ptr %b_tprev.i, align 4
  %b_tnext.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 9
  %31 = ptrtoint ptr %b_tnext.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %jh, ptr %b_tnext.i, align 4
  br label %__blist_add_buffer.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %b_tprev1.i = getelementptr inbounds %struct.journal_head, ptr %29, i32 0, i32 10
  %32 = ptrtoint ptr %b_tprev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_tprev1.i, align 4
  %b_tprev2.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 10
  %34 = ptrtoint ptr %b_tprev2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %b_tprev2.i, align 4
  %b_tnext3.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 9
  %35 = ptrtoint ptr %b_tnext3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %29, ptr %b_tnext3.i, align 4
  store ptr %jh, ptr %b_tprev1.i, align 4
  %b_tnext5.i = getelementptr inbounds %struct.journal_head, ptr %33, i32 0, i32 9
  br label %__blist_add_buffer.exit

__blist_add_buffer.exit:                          ; preds = %if.else.i, %if.then.i209
  %b_tnext5.sink.i = phi ptr [ %b_tnext5.i, %if.else.i ], [ %list.0, %if.then.i209 ]
  %36 = ptrtoint ptr %b_tnext5.sink.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %jh, ptr %b_tnext5.sink.i, align 4
  %37 = ptrtoint ptr %b_jlist to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %jlist, ptr %b_jlist, align 4
  br i1 %tobool168.not, label %__blist_add_buffer.exit.cleanup_crit_edge, label %if.then169

__blist_add_buffer.exit.cleanup_crit_edge:        ; preds = %__blist_add_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then169:                                       ; preds = %__blist_add_buffer.exit
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %1, align 4
  %40 = and i32 %39, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then169.cleanup_crit_edge

if.then169.cleanup_crit_edge:                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 21, ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then169.cleanup_crit_edge, %__blist_add_buffer.exit.cleanup_crit_edge, %do.body141.cleanup_crit_edge, %do.end87.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_cancel_revoke(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_get_undo_access(ptr noundef %handle, ptr noundef %bh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %1 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_handle_aborted.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_handle_aborted.exit:                           ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_handle_aborted.exit.cleanup_crit_edge

is_handle_aborted.exit.cleanup_crit_edge:         ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_handle_aborted.exit
  %call1 = tail call fastcc zeroext i1 @jbd2_write_access_granted(ptr noundef %handle, ptr noundef %bh, i1 noundef zeroext true)
  br i1 %call1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @jbd2_journal_add_journal_head(ptr noundef %bh) #9
  %call5 = tail call fastcc i32 @do_get_write_access(ptr noundef %handle, ptr noundef %call4, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %repeat.preheader, label %out.thread

repeat.preheader:                                 ; preds = %if.end3
  %b_committed_data = getelementptr inbounds %struct.journal_head, ptr %call4, i32 0, i32 6
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %call4, i32 0, i32 1
  br label %repeat

out.thread:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @jbd2_journal_put_journal_head(ptr noundef %call4) #9
  br label %cleanup

repeat:                                           ; preds = %if.then21, %repeat.preheader
  %8 = ptrtoint ptr %b_committed_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_committed_data, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.then10, label %repeat.if.end13_crit_edge

repeat.if.end13_crit_edge:                        ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call4, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_size, align 8
  %call12 = tail call ptr @jbd2_alloc(i32 noundef %13, i32 noundef 35904) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %repeat.if.end13_crit_edge
  %committed_data.1 = phi ptr [ null, %repeat.if.end13_crit_edge ], [ %call12, %if.then10 ]
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock) #9
  %14 = ptrtoint ptr %b_committed_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_committed_data, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %do.end19, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end19:                                         ; preds = %if.end13
  %tobool20.not = icmp eq ptr %committed_data.1, null
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  br label %repeat

if.end23:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %b_committed_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %committed_data.1, ptr %b_committed_data, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %b_size26 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %19 = ptrtoint ptr %b_size26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %b_size26, align 8
  %21 = call ptr @memcpy(ptr %committed_data.1, ptr %18, i32 %20)
  br label %out

out:                                              ; preds = %if.end23, %if.end13.out_crit_edge
  %committed_data.2 = phi ptr [ null, %if.end23 ], [ %committed_data.1, %if.end13.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  tail call void @jbd2_journal_put_journal_head(ptr noundef %call4) #9
  %tobool29.not = icmp eq ptr %committed_data.2, null
  br i1 %tobool29.not, label %out.cleanup_crit_edge, label %if.then32, !prof !154

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %b_size33 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %22 = ptrtoint ptr %b_size33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_size33, align 8
  tail call void @jbd2_free(ptr noundef nonnull %committed_data.2, i32 noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %out.cleanup_crit_edge, %out.thread, %if.end.cleanup_crit_edge, %is_handle_aborted.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %is_handle_aborted.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %out.cleanup_crit_edge ], [ %call5, %out.thread ], [ -30, %lor.lhs.false.i.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_set_triggers(ptr noundef %bh, ptr noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %bh) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @jbd2_journal_set_triggers.__already_done, align 1
  br i1 %.b44, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !154

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @jbd2_journal_set_triggers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1435, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %b_triggers = getelementptr inbounds %struct.journal_head, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %b_triggers to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %type, ptr %b_triggers, align 4
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_grab_journal_head(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_buffer_frozen_trigger(ptr nocapture noundef readonly %jh, ptr noundef %mapped_data, ptr noundef %triggers) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jh, align 4
  %tobool.not = icmp eq ptr %triggers, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %triggers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %triggers, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_size, align 8
  tail call void %3(ptr noundef nonnull %triggers, ptr noundef %1, ptr noundef %mapped_data, i32 noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_buffer_abort_trigger(ptr nocapture noundef readonly %jh, ptr noundef %triggers) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %triggers, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %t_abort = getelementptr inbounds %struct.jbd2_buffer_trigger_type, ptr %triggers, i32 0, i32 1
  %0 = ptrtoint ptr %t_abort to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_abort, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jh, align 4
  tail call void %1(ptr noundef nonnull %triggers, ptr noundef %3) #9
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_dirty_metadata(ptr nocapture noundef %handle, ptr noundef %bh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %2 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %3 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i374 = icmp ne i32 %3, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not.i374, i1 true, i1 %tobool1.not.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %is_handle_aborted.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_handle_aborted.exit:                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_handle_aborted.exit.cleanup_crit_edge

is_handle_aborted.exit.cleanup_crit_edge:         ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_handle_aborted.exit
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %bh, align 4
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %b_private.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %11 = ptrtoint ptr %b_private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_private.i, align 8
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 5, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_dirty_metadata, i32 noundef 1501, ptr noundef nonnull @.str.8, ptr noundef %12) #9
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_transaction, align 4
  %cmp.not = icmp eq ptr %14, %1
  br i1 %cmp.not, label %if.end4.if.end29_crit_edge, label %land.rhs

if.end4.if.end29_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.rhs:                                         ; preds = %if.end4
  %b_next_transaction = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_next_transaction, align 4
  %cmp6.not = icmp eq ptr %16, %1
  br i1 %cmp6.not, label %land.rhs.if.end29_crit_edge, label %if.then9

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then9:                                         ; preds = %land.rhs
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock) #9
  %17 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_transaction, align 4
  %cmp12 = icmp eq ptr %18, %1
  br i1 %cmp12, label %if.then9.do.end27_crit_edge, label %lor.rhs

if.then9.do.end27_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

lor.rhs:                                          ; preds = %if.then9
  %19 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_next_transaction, align 4
  %cmp14 = icmp eq ptr %20, %1
  br i1 %cmp14, label %lor.rhs.do.end27_crit_edge, label %do.body19, !prof !154

lor.rhs.do.end27_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.body19:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1514, 0\0A.popsection", ""() #9, !srcloc !207
  unreachable

do.end27:                                         ; preds = %lor.rhs.do.end27_crit_edge, %if.then9.do.end27_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %land.rhs.if.end29_crit_edge, %if.end4.if.end29_crit_edge
  %b_modified = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 4
  %21 = ptrtoint ptr %b_modified to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_modified, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp30 = icmp eq i32 %22, 1
  br i1 %cmp30, label %if.then31, label %if.end86

if.then31:                                        ; preds = %if.end29
  %23 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_transaction, align 4
  %cmp35 = icmp eq ptr %24, %1
  br i1 %cmp35, label %land.rhs36, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs36:                                       ; preds = %if.then31
  %b_jlist = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 3
  %25 = ptrtoint ptr %b_jlist to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %b_jlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp37.not = icmp eq i32 %26, 1
  br i1 %cmp37.not, label %land.rhs36.cleanup_crit_edge, label %if.then42

land.rhs36.cleanup_crit_edge:                     ; preds = %land.rhs36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %land.rhs36
  %b_state_lock43 = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock43) #9
  %27 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_transaction, align 4
  %cmp45 = icmp eq ptr %28, %1
  br i1 %cmp45, label %land.lhs.true, label %if.then42.do.body59_crit_edge

if.then42.do.body59_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

land.lhs.true:                                    ; preds = %if.then42
  %29 = ptrtoint ptr %b_jlist to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b_jlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp47.not = icmp eq i32 %30, 1
  br i1 %cmp47.not, label %land.lhs.true.do.body59_crit_edge, label %do.end51

land.lhs.true.do.body59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

do.end51:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %h_aborted.i, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 255
  %bf.lshr54 = lshr i32 %bf.load, 4
  %bf.clear55 = and i32 %bf.lshr54, 65535
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %32 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %b_blocknr, align 8
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %bf.clear, i32 noundef %bf.clear55, i64 noundef %33, i32 noundef %30) #12
  br label %do.body59

do.body59:                                        ; preds = %do.end51, %land.lhs.true.do.body59_crit_edge, %if.then42.do.body59_crit_edge
  %34 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_transaction, align 4
  %cmp61.not = icmp eq ptr %35, %1
  br i1 %cmp61.not, label %lor.rhs62, label %do.body59.cleanup.sink.split_crit_edge

do.body59.cleanup.sink.split_crit_edge:           ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.rhs62:                                        ; preds = %do.body59
  %36 = ptrtoint ptr %b_jlist to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %b_jlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp64.not = icmp eq i32 %37, 1
  br i1 %cmp64.not, label %lor.rhs62.cleanup.sink.split_crit_edge, label %do.body75, !prof !154

lor.rhs62.cleanup.sink.split_crit_edge:           ; preds = %lor.rhs62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body75:                                        ; preds = %lor.rhs62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1530, 0\0A.popsection", ""() #9, !srcloc !208
  unreachable

if.end86:                                         ; preds = %if.end29
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %b_state_lock87 = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock87) #9
  %40 = ptrtoint ptr %b_modified to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_modified, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp89 = icmp eq i32 %41, 0
  br i1 %cmp89, label %if.then90, label %if.end86.if.end148_crit_edge

if.end86.if.end148_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then90:                                        ; preds = %if.end86
  %42 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i375 = load i32, ptr %h_aborted.i, align 4
  %43 = and i32 %bf.load.i375, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i376 = icmp eq i32 %43, 0
  br i1 %tobool.not.i376, label %if.then.i377, label %if.then90.jbd2_handle_buffer_credits.exit_crit_edge

if.then90.jbd2_handle_buffer_credits.exit_crit_edge: ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_handle_buffer_credits.exit

if.then.i377:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handle, align 4
  br label %jbd2_handle_buffer_credits.exit

jbd2_handle_buffer_credits.exit:                  ; preds = %if.then.i377, %if.then90.jbd2_handle_buffer_credits.exit_crit_edge
  %journal.0.in.i = phi ptr [ %45, %if.then.i377 ], [ %handle, %if.then90.jbd2_handle_buffer_credits.exit_crit_edge ]
  %46 = ptrtoint ptr %journal.0.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %journal.0.i = load ptr, ptr %journal.0.in.i, align 4
  %h_total_credits.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %47 = ptrtoint ptr %h_total_credits.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %h_total_credits.i, align 4
  %h_revoke_credits_requested.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %49 = ptrtoint ptr %h_revoke_credits_requested.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %h_revoke_credits_requested.i, align 4
  %j_revoke_records_per_block.i = getelementptr inbounds %struct.journal_s, ptr %journal.0.i, i32 0, i32 48
  %51 = ptrtoint ptr %j_revoke_records_per_block.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %j_revoke_records_per_block.i, align 4
  %add.i = add i32 %50, -1
  %sub.i = add i32 %add.i, %52
  %div.i = sdiv i32 %sub.i, %52
  %sub2.i = sub i32 %48, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub2.i)
  %cmp92 = icmp slt i32 %sub2.i, 1
  br i1 %cmp92, label %land.rhs98, label %if.end146

land.rhs98:                                       ; preds = %jbd2_handle_buffer_credits.exit
  %.b372 = load i1, ptr @jbd2_journal_dirty_metadata.__already_done, align 1
  br i1 %.b372, label %land.rhs98.cleanup.sink.split_crit_edge, label %if.then110, !prof !154

land.rhs98.cleanup.sink.split_crit_edge:          ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then110:                                       ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @jbd2_journal_dirty_metadata.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1545, i32 noundef 9, ptr noundef null) #9
  br label %cleanup.sink.split

if.end146:                                        ; preds = %jbd2_handle_buffer_credits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %b_modified to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %b_modified, align 4
  %54 = ptrtoint ptr %h_total_credits.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %h_total_credits.i, align 4
  %dec = add i32 %55, -1
  store i32 %dec, ptr %h_total_credits.i, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.end146, %if.end86.if.end148_crit_edge
  %56 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_transaction, align 4
  %cmp150 = icmp eq ptr %57, %1
  br i1 %cmp150, label %land.lhs.true151, label %if.end148.if.end187_crit_edge

if.end148.if.end187_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

land.lhs.true151:                                 ; preds = %if.end148
  %b_jlist152 = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 3
  %58 = ptrtoint ptr %b_jlist152 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %b_jlist152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp153 = icmp eq i32 %59, 1
  br i1 %cmp153, label %do.end157, label %land.lhs.true151.if.end187_crit_edge

land.lhs.true151.if.end187_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

do.end157:                                        ; preds = %land.lhs.true151
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %39, i32 0, i32 10
  %60 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %j_running_transaction, align 8
  %cmp159.not = icmp eq ptr %1, %61
  br i1 %cmp159.not, label %do.end157.cleanup.sink.split_crit_edge, label %cond.end, !prof !154

do.end157.cleanup.sink.split_crit_edge:           ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cond.end:                                         ; preds = %do.end157
  %j_devname = getelementptr inbounds %struct.journal_s, ptr %39, i32 0, i32 35
  %b_blocknr171 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %62 = ptrtoint ptr %b_blocknr171 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %b_blocknr171, align 8
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %t_tid, align 4
  %tobool178.not = icmp eq ptr %61, null
  br i1 %tobool178.not, label %cond.end.cond.end183_crit_edge, label %cond.true179

cond.end.cond.end183_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end183

cond.true179:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %t_tid181 = getelementptr inbounds %struct.transaction_s, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %t_tid181 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %t_tid181, align 4
  br label %cond.end183

cond.end183:                                      ; preds = %cond.true179, %cond.end.cond.end183_crit_edge
  %cond184 = phi i32 [ %67, %cond.true179 ], [ 0, %cond.end.cond.end183_crit_edge ]
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %j_devname, i64 noundef %63, ptr noundef nonnull %1, i32 noundef %65, ptr noundef %61, i32 noundef %cond184) #12
  br label %cleanup.sink.split

if.end187:                                        ; preds = %land.lhs.true151.if.end187_crit_edge, %if.end148.if.end187_crit_edge
  %68 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %bh, align 4
  %70 = and i32 %69, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end187.set_buffer_jbddirty.exit_crit_edge

if.end187.set_buffer_jbddirty.exit_crit_edge:     ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_jbddirty.exit

if.then.i:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 21, ptr noundef %bh) #9
  br label %set_buffer_jbddirty.exit

set_buffer_jbddirty.exit:                         ; preds = %if.then.i, %if.end187.set_buffer_jbddirty.exit_crit_edge
  %71 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %b_transaction, align 4
  %cmp189.not = icmp eq ptr %72, %1
  br i1 %cmp189.not, label %do.body263, label %do.end193

do.end193:                                        ; preds = %set_buffer_jbddirty.exit
  %j_committing_transaction = getelementptr inbounds %struct.journal_s, ptr %39, i32 0, i32 11
  %73 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %j_committing_transaction, align 4
  %cmp195.not = icmp eq ptr %72, %74
  br i1 %cmp195.not, label %lor.rhs196, label %do.end193.do.end209_crit_edge, !prof !154

do.end193.do.end209_crit_edge:                    ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end209

lor.rhs196:                                       ; preds = %do.end193
  %b_next_transaction197 = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 8
  %75 = ptrtoint ptr %b_next_transaction197 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_next_transaction197, align 4
  %cmp198.not = icmp eq ptr %76, %1
  br i1 %cmp198.not, label %lor.rhs196.cleanup.sink.split_crit_edge, label %lor.rhs196.do.end209_crit_edge, !prof !154

lor.rhs196.do.end209_crit_edge:                   ; preds = %lor.rhs196
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end209

lor.rhs196.cleanup.sink.split_crit_edge:          ; preds = %lor.rhs196
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end209:                                        ; preds = %lor.rhs196.do.end209_crit_edge, %do.end193.do.end209_crit_edge
  %j_devname211 = getelementptr inbounds %struct.journal_s, ptr %39, i32 0, i32 35
  %b_blocknr213 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %77 = ptrtoint ptr %b_blocknr213 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %b_blocknr213, align 8
  %t_tid214 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %t_tid214 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %t_tid214, align 4
  %tobool217.not = icmp eq ptr %72, null
  br i1 %tobool217.not, label %do.end209.cond.end222_crit_edge, label %cond.true218

do.end209.cond.end222_crit_edge:                  ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end222

cond.true218:                                     ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #11
  %t_tid220 = getelementptr inbounds %struct.transaction_s, ptr %72, i32 0, i32 1
  %81 = ptrtoint ptr %t_tid220 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %t_tid220, align 4
  br label %cond.end222

cond.end222:                                      ; preds = %cond.true218, %do.end209.cond.end222_crit_edge
  %cond223 = phi i32 [ %82, %cond.true218 ], [ 0, %do.end209.cond.end222_crit_edge ]
  %b_next_transaction224 = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 8
  %83 = ptrtoint ptr %b_next_transaction224 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %b_next_transaction224, align 4
  %tobool226.not = icmp eq ptr %84, null
  br i1 %tobool226.not, label %cond.end222.cond.end231_crit_edge, label %cond.true227

cond.end222.cond.end231_crit_edge:                ; preds = %cond.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end231

cond.true227:                                     ; preds = %cond.end222
  call void @__sanitizer_cov_trace_pc() #11
  %t_tid229 = getelementptr inbounds %struct.transaction_s, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %t_tid229 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %t_tid229, align 4
  br label %cond.end231

cond.end231:                                      ; preds = %cond.true227, %cond.end222.cond.end231_crit_edge
  %cond232 = phi i32 [ %86, %cond.true227 ], [ 0, %cond.end222.cond.end231_crit_edge ]
  %b_jlist233 = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 3
  %87 = ptrtoint ptr %b_jlist233 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %b_jlist233, align 4
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %j_devname211, i64 noundef %78, ptr noundef nonnull %1, i32 noundef %80, ptr noundef %72, i32 noundef %cond223, ptr noundef %84, i32 noundef %cond232, i32 noundef %88) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1607, i32 noundef 9, ptr noundef null) #9
  br label %cleanup.sink.split

do.body263:                                       ; preds = %set_buffer_jbddirty.exit
  %b_frozen_data = getelementptr inbounds %struct.journal_head, ptr %12, i32 0, i32 5
  %89 = ptrtoint ptr %b_frozen_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %b_frozen_data, align 4
  %cmp264.not = icmp eq ptr %90, null
  br i1 %cmp264.not, label %do.end285, label %do.body274, !prof !154

do.body274:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1616, 0\0A.popsection", ""() #9, !srcloc !209
  unreachable

do.end285:                                        ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #11
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %39, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef %12, ptr noundef nonnull %1, i32 noundef 1)
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end285, %cond.end231, %lor.rhs196.cleanup.sink.split_crit_edge, %cond.end183, %do.end157.cleanup.sink.split_crit_edge, %if.then110, %land.rhs98.cleanup.sink.split_crit_edge, %lor.rhs62.cleanup.sink.split_crit_edge, %do.body59.cleanup.sink.split_crit_edge
  %b_state_lock43.sink = phi ptr [ %b_state_lock43, %do.body59.cleanup.sink.split_crit_edge ], [ %b_state_lock43, %lor.rhs62.cleanup.sink.split_crit_edge ], [ %b_state_lock87, %land.rhs98.cleanup.sink.split_crit_edge ], [ %b_state_lock87, %if.then110 ], [ %b_state_lock87, %lor.rhs196.cleanup.sink.split_crit_edge ], [ %b_state_lock87, %cond.end231 ], [ %b_state_lock87, %do.end157.cleanup.sink.split_crit_edge ], [ %b_state_lock87, %cond.end183 ], [ %b_state_lock87, %do.end285 ]
  %retval.0.ph = phi i32 [ 0, %do.body59.cleanup.sink.split_crit_edge ], [ 0, %lor.rhs62.cleanup.sink.split_crit_edge ], [ -28, %land.rhs98.cleanup.sink.split_crit_edge ], [ -28, %if.then110 ], [ 0, %lor.rhs196.cleanup.sink.split_crit_edge ], [ -22, %cond.end231 ], [ 0, %do.end157.cleanup.sink.split_crit_edge ], [ -22, %cond.end183 ], [ 0, %do.end285 ]
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock43.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs36.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %is_handle_aborted.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %is_handle_aborted.exit.cleanup_crit_edge ], [ -117, %if.end.cleanup_crit_edge ], [ 0, %land.rhs36.cleanup_crit_edge ], [ 0, %if.then31.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_forget(ptr nocapture noundef %handle, ptr noundef %bh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %2 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %3 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i190 = icmp ne i32 %3, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not.i190, i1 true, i1 %tobool1.not.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %is_handle_aborted.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_handle_aborted.exit:                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_handle_aborted.exit.cleanup_crit_edge

is_handle_aborted.exit.cleanup_crit_edge:         ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_handle_aborted.exit
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call1 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %bh) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__bforget(ptr noundef %bh) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %call1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock) #9
  %b_committed_data = getelementptr inbounds %struct.journal_head, ptr %call1, i32 0, i32 6
  %10 = ptrtoint ptr %b_committed_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_committed_data, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end21, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %drop

if.end21:                                         ; preds = %if.end4
  %b_modified = getelementptr inbounds %struct.journal_head, ptr %call1, i32 0, i32 4
  %12 = ptrtoint ptr %b_modified to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_modified, align 4
  store i32 0, ptr %b_modified, align 4
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %call1, i32 0, i32 7
  %14 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_transaction, align 4
  %cmp = icmp eq ptr %15, %1
  br i1 %cmp, label %do.body24, label %if.else55

do.body24:                                        ; preds = %if.end21
  %b_frozen_data = getelementptr inbounds %struct.journal_head, ptr %call1, i32 0, i32 5
  %16 = ptrtoint ptr %b_frozen_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_frozen_data, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %do.end44, label %do.body36, !prof !154

do.body36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1687, 0\0A.popsection", ""() #9, !srcloc !210
  unreachable

do.end44:                                         ; preds = %do.body24
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh) #9
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool48.not = icmp ne i32 %13, 0
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #9
  %b_cp_transaction = getelementptr inbounds %struct.journal_head, ptr %call1, i32 0, i32 11
  %18 = ptrtoint ptr %b_cp_transaction to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_cp_transaction, align 4
  %tobool51.not = icmp eq ptr %19, null
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %call1)
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %call1, ptr noundef nonnull %1, i32 noundef 2)
  br label %if.end53

if.else:                                          ; preds = %do.end44
  %20 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_transaction, align 4
  %cmp.not.i = icmp eq ptr %21, null
  br i1 %cmp.not.i, label %do.body3.i, label %do.body7.i, !prof !156

do.body3.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2065, 0\0A.popsection", ""() #9, !srcloc !211
  unreachable

do.body7.i:                                       ; preds = %if.else
  %b_next_transaction.i = getelementptr inbounds %struct.journal_head, ptr %call1, i32 0, i32 8
  %22 = ptrtoint ptr %b_next_transaction.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_next_transaction.i, align 4
  %cmp8.not.i = icmp eq ptr %23, null
  br i1 %cmp8.not.i, label %__jbd2_journal_unfile_buffer.exit, label %do.body18.i, !prof !154

do.body18.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2066, 0\0A.popsection", ""() #9, !srcloc !212
  unreachable

__jbd2_journal_unfile_buffer.exit:                ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %call1) #9
  %24 = ptrtoint ptr %b_transaction to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %b_transaction, align 4
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %call1) #9
  br label %if.end53

if.end53:                                         ; preds = %__jbd2_journal_unfile_buffer.exit, %if.then52
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #9
  br label %drop

if.else55:                                        ; preds = %if.end21
  %tobool57.not = icmp eq ptr %15, null
  br i1 %tobool57.not, label %if.else114, label %do.body59

do.body59:                                        ; preds = %if.else55
  %j_committing_transaction = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 11
  %25 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %j_committing_transaction, align 4
  %cmp61.not = icmp eq ptr %15, %26
  br i1 %cmp61.not, label %do.end82, label %do.body71, !prof !154

do.body71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1727, 0\0A.popsection", ""() #9, !srcloc !213
  unreachable

do.end82:                                         ; preds = %do.body59
  %27 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %bh, align 4
  %29 = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end82.set_buffer_freed.exit_crit_edge

do.end82.set_buffer_freed.exit_crit_edge:         ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_freed.exit

if.then.i:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 18, ptr noundef %bh) #9
  br label %set_buffer_freed.exit

set_buffer_freed.exit:                            ; preds = %if.then.i, %do.end82.set_buffer_freed.exit_crit_edge
  %b_next_transaction = getelementptr inbounds %struct.journal_head, ptr %call1, i32 0, i32 8
  %30 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_next_transaction, align 4
  %tobool83.not = icmp eq ptr %31, null
  br i1 %tobool83.not, label %if.then84, label %do.body89

if.then84:                                        ; preds = %set_buffer_freed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %j_list_lock85 = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock85) #9
  %32 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %b_next_transaction, align 4
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock85) #9
  br label %drop

do.body89:                                        ; preds = %set_buffer_freed.exit
  %cmp91.not = icmp eq ptr %31, %1
  br i1 %cmp91.not, label %do.end109, label %do.body101, !prof !154

do.body101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1745, 0\0A.popsection", ""() #9, !srcloc !214
  unreachable

do.end109:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool110.not = icmp ne i32 %13, 0
  br label %drop

if.else114:                                       ; preds = %if.else55
  %j_list_lock115 = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock115) #9
  %b_cp_transaction116 = getelementptr inbounds %struct.journal_head, ptr %call1, i32 0, i32 11
  %33 = ptrtoint ptr %b_cp_transaction116 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_cp_transaction116, align 4
  %tobool117.not = icmp eq ptr %34, null
  br i1 %tobool117.not, label %do.end121, label %if.end123

do.end121:                                        ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock115) #9
  br label %drop

if.end123:                                        ; preds = %if.else114
  %35 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %bh, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool125.not = icmp eq i32 %37, 0
  br i1 %tobool125.not, label %if.then126, label %if.end129

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %call127 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %call1) #9
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock115) #9
  br label %drop

if.end129:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %call1, ptr noundef nonnull %1, i32 noundef 2)
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock115) #9
  br label %drop

drop:                                             ; preds = %if.end129, %if.then126, %do.end121, %do.end109, %if.then84, %if.end53, %do.end10
  %drop_reserve.1.shrunk = phi i1 [ %tobool48.not, %if.end53 ], [ false, %if.then84 ], [ false, %if.end129 ], [ false, %if.then126 ], [ false, %do.end121 ], [ false, %do.end10 ], [ %tobool110.not, %do.end109 ]
  %err.0 = phi i32 [ 0, %if.end53 ], [ 0, %if.then84 ], [ 0, %if.end129 ], [ 0, %if.then126 ], [ 0, %do.end121 ], [ -5, %do.end10 ], [ 0, %do.end109 ]
  tail call void @__brelse(ptr noundef %bh) #9
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %call1) #9
  br i1 %drop_reserve.1.shrunk, label %if.then135, label %drop.cleanup_crit_edge

drop.cleanup_crit_edge:                           ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then135:                                       ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #11
  %h_total_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %38 = ptrtoint ptr %h_total_credits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %h_total_credits, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %h_total_credits, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %drop.cleanup_crit_edge, %if.then3, %is_handle_aborted.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -30, %is_handle_aborted.exit.cleanup_crit_edge ], [ %err.0, %if.then135 ], [ %err.0, %drop.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %jh) unnamed_addr #3 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i152 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp.not = icmp eq i32 %call.i152, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !156

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2021, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 7
  %3 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_transaction, align 4
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %if.end.do.body49_crit_edge, label %do.body27

if.end.do.body49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

do.body27:                                        ; preds = %if.end
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %6, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %7 = ptrtoint ptr %j_list_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %j_list_lock, align 4
  %8 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body39, label %do.body27.do.body49_crit_edge, !prof !156

do.body27.do.body49_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

do.body39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2024, 0\0A.popsection", ""() #9, !srcloc !215
  unreachable

do.body49:                                        ; preds = %do.body27.do.body49_crit_edge, %if.end.do.body49_crit_edge
  %b_jlist = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 3
  %9 = ptrtoint ptr %b_jlist to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %b_jlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp50 = icmp ugt i32 %10, 4
  br i1 %cmp50, label %do.body60, label %do.end68, !prof !156

do.body60:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2026, 0\0A.popsection", ""() #9, !srcloc !216
  unreachable

do.end68:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp70.not = icmp eq i32 %10, 0
  %tobool25.not.not = xor i1 %tobool25.not, true
  %brmerge = select i1 %cmp70.not, i1 true, i1 %tobool25.not.not
  br i1 %brmerge, label %if.end92, label %do.body83, !prof !187

do.body83:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2028, 0\0A.popsection", ""() #9, !srcloc !217
  unreachable

if.end92:                                         ; preds = %do.end68
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %10, label %if.end92.sw.epilog_crit_edge [
    i32 0, label %if.end92.cleanup_crit_edge
    i32 1, label %sw.bb94
    i32 2, label %sw.bb116
    i32 3, label %sw.bb117
    i32 4, label %sw.bb118
  ]

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end92.sw.epilog_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end92
  %t_nr_buffers = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %t_nr_buffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t_nr_buffers, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %t_nr_buffers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp97 = icmp slt i32 %dec, 0
  br i1 %cmp97, label %do.body107, label %do.end115, !prof !156

do.body107:                                       ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2035, 0\0A.popsection", ""() #9, !srcloc !218
  unreachable

do.end115:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #11
  %t_buffers = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 6
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %t_forget = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 7
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %t_shadow_list = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 10
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %t_reserved_list = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb118, %sw.bb117, %sw.bb116, %do.end115, %if.end92.sw.epilog_crit_edge
  %list.0 = phi ptr [ null, %if.end92.sw.epilog_crit_edge ], [ %t_reserved_list, %sw.bb118 ], [ %t_shadow_list, %sw.bb117 ], [ %t_forget, %sw.bb116 ], [ %t_buffers, %do.end115 ]
  %14 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.0, align 4
  %cmp.i = icmp eq ptr %15, %jh
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.__blist_del_buffer.exit_crit_edge

sw.epilog.__blist_del_buffer.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %__blist_del_buffer.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %b_tnext.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 9
  %16 = ptrtoint ptr %b_tnext.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_tnext.i, align 4
  %cmp1.i = icmp eq ptr %17, %jh
  %spec.store.select.i = select i1 %cmp1.i, ptr null, ptr %17
  %18 = ptrtoint ptr %list.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.store.select.i, ptr %list.0, align 4
  br label %__blist_del_buffer.exit

__blist_del_buffer.exit:                          ; preds = %if.then.i, %sw.epilog.__blist_del_buffer.exit_crit_edge
  %b_tnext4.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 9
  %19 = ptrtoint ptr %b_tnext4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_tnext4.i, align 4
  %b_tprev.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 10
  %21 = ptrtoint ptr %b_tprev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_tprev.i, align 4
  %b_tnext5.i = getelementptr inbounds %struct.journal_head, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %b_tnext5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %b_tnext5.i, align 4
  %24 = load ptr, ptr %b_tprev.i, align 4
  %25 = load ptr, ptr %b_tnext4.i, align 4
  %b_tprev8.i = getelementptr inbounds %struct.journal_head, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %b_tprev8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %b_tprev8.i, align 4
  %27 = ptrtoint ptr %b_jlist to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %b_jlist, align 4
  br i1 %tobool25.not, label %__blist_del_buffer.exit.if.else_crit_edge, label %land.lhs.true

__blist_del_buffer.exit.if.else_crit_edge:        ; preds = %__blist_del_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %__blist_del_buffer.exit
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %4, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %and.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool123.not = icmp eq i32 %and.i, 0
  br i1 %tobool123.not, label %land.lhs.true.if.else_crit_edge, label %if.then124

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then124:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %1) #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %__blist_del_buffer.exit.if.else_crit_edge
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool126.not = icmp eq i32 %call.i, 0
  br i1 %tobool126.not, label %if.else.cleanup_crit_edge, label %if.then127

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then127:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mark_buffer_dirty(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %if.else.cleanup_crit_edge, %if.then124, %if.end92.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jbd2_journal_remove_checkpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_handle_stats(i32 noundef %dev, i32 noundef %tid, i32 noundef %type, i32 noundef %line_no, i32 noundef %interval, i32 noundef %sync, i32 noundef %requested_blocks, i32 noundef %dirtied_blocks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_stats, i32 0, i32 1), ptr blockaddress(@trace_jbd2_handle_stats, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !219
  %call42 = tail call i32 @__traceiter_jbd2_handle_stats(ptr noundef null, i32 noundef %dev, i32 noundef %tid, i32 noundef %type, i32 noundef %line_no, i32 noundef %interval, i32 noundef %sync, i32 noundef %requested_blocks, i32 noundef %dirtied_blocks) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !220
  %13 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_stats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_stats, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_handle_stats.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_jbd2_handle_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 246, ptr noundef nonnull @.str.32) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !166
  %31 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_log_wait_commit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_unfile_buffer(ptr noundef %journal, ptr noundef %jh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jh, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !161
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock) #9
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #9
  %b_transaction.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 7
  %3 = ptrtoint ptr %b_transaction.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_transaction.i, align 4
  %cmp.not.i = icmp eq ptr %4, null
  br i1 %cmp.not.i, label %do.body3.i, label %do.body7.i, !prof !156

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2065, 0\0A.popsection", ""() #9, !srcloc !211
  unreachable

do.body7.i:                                       ; preds = %entry
  %b_next_transaction.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 8
  %5 = ptrtoint ptr %b_next_transaction.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_next_transaction.i, align 4
  %cmp8.not.i = icmp eq ptr %6, null
  br i1 %cmp8.not.i, label %__jbd2_journal_unfile_buffer.exit, label %do.body18.i, !prof !154

do.body18.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2066, 0\0A.popsection", ""() #9, !srcloc !212
  unreachable

__jbd2_journal_unfile_buffer.exit:                ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %jh) #9
  %7 = ptrtoint ptr %b_transaction.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %b_transaction.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #9
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  tail call void @jbd2_journal_put_journal_head(ptr noundef %jh) #9
  tail call void @__brelse(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_try_to_free_buffers(ptr noundef %journal, ptr noundef %page) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !154

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !156

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !154

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.44) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !221
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !154

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !156

do.body4:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2156, 0\0A.popsection", ""() #9, !srcloc !222
  unreachable

do.body10:                                        ; preds = %PageLocked.exit
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i57 = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i57, label %if.then.i58, label %PagePrivate.exit, !prof !156

if.then.i58:                                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.45) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !223
  unreachable

PagePrivate.exit:                                 ; preds = %do.body10
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %do.body22, label %do.end30, !prof !156

do.body22:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2158, 0\0A.popsection", ""() #9, !srcloc !224
  unreachable

do.end30:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private, align 4
  %22 = inttoptr i32 %21 to ptr
  %j_list_lock.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  br label %do.body31

do.body31:                                        ; preds = %do.cond41.do.body31_crit_edge, %do.end30
  %bh.0 = phi ptr [ %22, %do.end30 ], [ %41, %do.cond41.do.body31_crit_edge ]
  %call32 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %bh.0) #9
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.body31.do.cond41_crit_edge, label %if.end35

do.body31.do.cond41_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond41

if.end35:                                         ; preds = %do.body31
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %call32, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock) #9
  %b_private.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 8
  %23 = ptrtoint ptr %b_private.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_private.i.i, align 8
  %25 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %bh.0, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end35.__journal_try_to_free_buffer.exit_crit_edge

if.end35.__journal_try_to_free_buffer.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %__journal_try_to_free_buffer.exit

lor.lhs.false.i:                                  ; preds = %if.end35
  %28 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %bh.0, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not.i = icmp eq i32 %30, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false.i.__journal_try_to_free_buffer.exit_crit_edge

lor.lhs.false.i.__journal_try_to_free_buffer.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__journal_try_to_free_buffer.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %b_next_transaction.i = getelementptr inbounds %struct.journal_head, ptr %24, i32 0, i32 8
  %31 = ptrtoint ptr %b_next_transaction.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_next_transaction.i, align 4
  %cmp.not.i = icmp eq ptr %32, null
  br i1 %cmp.not.i, label %lor.lhs.false4.i, label %if.end.i.__journal_try_to_free_buffer.exit_crit_edge

if.end.i.__journal_try_to_free_buffer.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__journal_try_to_free_buffer.exit

lor.lhs.false4.i:                                 ; preds = %if.end.i
  %b_transaction.i = getelementptr inbounds %struct.journal_head, ptr %24, i32 0, i32 7
  %33 = ptrtoint ptr %b_transaction.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_transaction.i, align 4
  %cmp5.not.i = icmp eq ptr %34, null
  br i1 %cmp5.not.i, label %if.end7.i, label %lor.lhs.false4.i.__journal_try_to_free_buffer.exit_crit_edge

lor.lhs.false4.i.__journal_try_to_free_buffer.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__journal_try_to_free_buffer.exit

if.end7.i:                                        ; preds = %lor.lhs.false4.i
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock.i) #9
  %b_cp_transaction.i = getelementptr inbounds %struct.journal_head, ptr %24, i32 0, i32 11
  %35 = ptrtoint ptr %b_cp_transaction.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_cp_transaction.i, align 4
  %cmp8.not.i = icmp eq ptr %36, null
  br i1 %cmp8.not.i, label %if.end7.i.if.end11.i_crit_edge, label %do.end.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %24) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.end7.i.if.end11.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock.i) #9
  br label %__journal_try_to_free_buffer.exit

__journal_try_to_free_buffer.exit:                ; preds = %if.end11.i, %lor.lhs.false4.i.__journal_try_to_free_buffer.exit_crit_edge, %if.end.i.__journal_try_to_free_buffer.exit_crit_edge, %lor.lhs.false.i.__journal_try_to_free_buffer.exit_crit_edge, %if.end35.__journal_try_to_free_buffer.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %call32) #9
  %37 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %bh.0, align 4
  %39 = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool38.not = icmp eq i32 %39, 0
  br i1 %tobool38.not, label %__journal_try_to_free_buffer.exit.do.cond41_crit_edge, label %__journal_try_to_free_buffer.exit.cleanup44_crit_edge

__journal_try_to_free_buffer.exit.cleanup44_crit_edge: ; preds = %__journal_try_to_free_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

__journal_try_to_free_buffer.exit.do.cond41_crit_edge: ; preds = %__journal_try_to_free_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond41

do.cond41:                                        ; preds = %__journal_try_to_free_buffer.exit.do.cond41_crit_edge, %do.body31.do.cond41_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %40 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp eq ptr %41, %22
  br i1 %cmp.not, label %do.end42, label %do.cond41.do.body31_crit_edge

do.cond41.do.body31_crit_edge:                    ; preds = %do.cond41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

do.end42:                                         ; preds = %do.cond41
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 @try_to_free_buffers(ptr noundef %page) #9
  br label %cleanup44

cleanup44:                                        ; preds = %do.end42, %__journal_try_to_free_buffer.exit.cleanup44_crit_edge
  %retval.0 = phi i32 [ %call43, %do.end42 ], [ 0, %__journal_try_to_free_buffer.exit.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_invalidatepage(ptr noundef %journal, ptr noundef %page, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %length, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not = icmp ne i32 %offset, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp = icmp ult i32 %length, 4096
  %spec.select = or i1 %tobool.not, %cmp
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !154

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !156

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !154

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.44) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !221
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !154

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool1.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool1.not, label %do.body, label %if.end

do.body:                                          ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2455, 0\0A.popsection", ""() #9, !srcloc !225
  unreachable

if.end:                                           ; preds = %PageLocked.exit
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i125 = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i125, label %if.then.i126, label %PagePrivate.exit, !prof !156

if.then.i126:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.45) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !223
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not = icmp eq i32 %19, 0
  br i1 %tobool6.not, label %PagePrivate.exit.cleanup94_crit_edge, label %do.body9

PagePrivate.exit.cleanup94_crit_edge:             ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

do.body9:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp10 = icmp ugt i32 %add, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %length)
  %cmp12 = icmp ult i32 %add, %length
  %spec.select124 = or i1 %cmp10, %cmp12
  br i1 %spec.select124, label %do.body18, label %do.body27, !prof !156

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2459, 0\0A.popsection", ""() #9, !srcloc !226
  unreachable

do.body27:                                        ; preds = %do.body9
  %20 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i128 = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i128, label %if.then.i129, label %PagePrivate.exit132, !prof !156

if.then.i129:                                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.45) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !223
  unreachable

PagePrivate.exit132:                              ; preds = %do.body27
  %22 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %page, align 4
  %24 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29.not = icmp eq i32 %24, 0
  br i1 %tobool29.not, label %do.body39, label %do.end47, !prof !156

do.body39:                                        ; preds = %PagePrivate.exit132
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2465, 0\0A.popsection", ""() #9, !srcloc !227
  unreachable

do.end47:                                         ; preds = %PagePrivate.exit132
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %private, align 4
  %27 = inttoptr i32 %26 to ptr
  %j_state_lock.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  %j_list_lock.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  %j_committing_transaction30.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 11
  %j_running_transaction54.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 10
  br label %do.body48

do.body48:                                        ; preds = %do.cond60.do.body48_crit_edge, %do.end47
  %bh.0 = phi ptr [ %27, %do.end47 ], [ %31, %do.cond60.do.body48_crit_edge ]
  %curr_off.0 = phi i32 [ 0, %do.end47 ], [ %add49, %do.cond60.do.body48_crit_edge ]
  %may_free.0 = phi i32 [ 1, %do.end47 ], [ %may_free.2.ph, %do.cond60.do.body48_crit_edge ]
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 4
  %28 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b_size, align 8
  %add49 = add i32 %29, %curr_off.0
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %30 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_this_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add49, i32 %add)
  %cmp50 = icmp ugt i32 %add49, %add
  br i1 %cmp50, label %do.body48.cleanup94_crit_edge, label %if.end52

do.body48.cleanup94_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

if.end52:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_off.0, i32 %offset)
  %cmp53.not = icmp ult i32 %curr_off.0, %offset
  br i1 %cmp53.not, label %if.end52.do.cond60_crit_edge, label %if.then54

if.end52.do.cond60_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond60

if.then54:                                        ; preds = %if.end52
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 366) #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.0, i32 noundef 4) #9
  %32 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.then54.if.then.i138_crit_edge

if.then54.if.then.i138_crit_edge:                 ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i138

trylock_buffer.exit.i:                            ; preds = %if.then54
  tail call void @llvm.prefetch.p0(ptr %bh.0, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0, ptr %bh.0, i32 4, ptr elementtype(i32) %bh.0) #9, !srcloc !184
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  %35 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i138_crit_edge

trylock_buffer.exit.i.if.then.i138_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i138

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_buffer.exit

if.then.i138:                                     ; preds = %trylock_buffer.exit.i.if.then.i138_crit_edge, %if.then54.if.then.i138_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh.0) #9
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i138, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %call.i = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %bh.0) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %lock_buffer.exit.zap_buffer_unlocked.i_crit_edge, label %if.end.i

lock_buffer.exit.zap_buffer_unlocked.i_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %zap_buffer_unlocked.i

if.end.i:                                         ; preds = %lock_buffer.exit
  tail call void @_raw_write_lock(ptr noundef %j_state_lock.i) #9
  %b_state_lock.i = getelementptr inbounds %struct.journal_head, ptr %call.i, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock.i) #9
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock.i) #9
  %b_transaction.i = getelementptr inbounds %struct.journal_head, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %b_transaction.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_transaction.i, align 4
  %cmp.i = icmp eq ptr %37, null
  br i1 %cmp.i, label %if.then1.i, label %if.else29.i

if.then1.i:                                       ; preds = %if.end.i
  %b_cp_transaction.i = getelementptr inbounds %struct.journal_head, ptr %call.i, i32 0, i32 11
  %38 = ptrtoint ptr %b_cp_transaction.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_cp_transaction.i, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %if.then1.i.zap_buffer.i_crit_edge, label %if.end7.i

if.then1.i.zap_buffer.i_crit_edge:                ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zap_buffer.i

if.end7.i:                                        ; preds = %if.then1.i
  %40 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %bh.0, align 4
  %42 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool9.not.i = icmp eq i32 %42, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %call.i) #9
  br label %zap_buffer.i

if.end12.i:                                       ; preds = %if.end7.i
  %43 = ptrtoint ptr %j_running_transaction54.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %j_running_transaction54.i, align 8
  %tobool13.not.i = icmp eq ptr %44, null
  br i1 %tobool13.not.i, label %if.else.i, label %__dispose_buffer.exit.i

__dispose_buffer.exit.i:                          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %call.i) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %46) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %call.i, ptr noundef nonnull %44, i32 noundef 2) #9
  br label %zap_buffer.i

if.else.i:                                        ; preds = %if.end12.i
  %47 = ptrtoint ptr %j_committing_transaction30.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %j_committing_transaction30.i, align 4
  %tobool20.not.i = icmp eq ptr %48, null
  br i1 %tobool20.not.i, label %if.else27.i, label %__dispose_buffer.exit

__dispose_buffer.exit:                            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %call.i) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %50) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %call.i, ptr noundef nonnull %48, i32 noundef 2) #9
  br label %zap_buffer.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %bh.0) #9
  %call28.i = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %call.i) #9
  br label %zap_buffer.i

if.else29.i:                                      ; preds = %if.end.i
  %51 = ptrtoint ptr %j_committing_transaction30.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %j_committing_transaction30.i, align 4
  %cmp31.i = icmp eq ptr %37, %52
  br i1 %cmp31.i, label %do.end35.i, label %do.body53.i

do.end35.i:                                       ; preds = %if.else29.i
  br i1 %spec.select, label %journal_unmap_buffer.exit, label %if.end41.i

if.end41.i:                                       ; preds = %do.end35.i
  %53 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bh.0, align 4
  %55 = and i32 %54, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i139 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i139, label %if.then.i.i140, label %if.end41.i.set_buffer_freed.exit.i_crit_edge

if.end41.i.set_buffer_freed.exit.i_crit_edge:     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_freed.exit.i

if.then.i.i140:                                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 18, ptr noundef %bh.0) #9
  br label %set_buffer_freed.exit.i

set_buffer_freed.exit.i:                          ; preds = %if.then.i.i140, %if.end41.i.set_buffer_freed.exit.i_crit_edge
  %56 = ptrtoint ptr %j_running_transaction54.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %j_running_transaction54.i, align 8
  %tobool43.not.i = icmp eq ptr %57, null
  br i1 %tobool43.not.i, label %set_buffer_freed.exit.i.if.end48.i_crit_edge, label %land.lhs.true.i

set_buffer_freed.exit.i.if.end48.i_crit_edge:     ; preds = %set_buffer_freed.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

land.lhs.true.i:                                  ; preds = %set_buffer_freed.exit.i
  %58 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %bh.0, align 4
  %60 = and i32 %59, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool45.not.i = icmp eq i32 %60, 0
  br i1 %tobool45.not.i, label %land.lhs.true.i.if.end48.i_crit_edge, label %if.then46.i

land.lhs.true.i.if.end48.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then46.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %b_next_transaction.i = getelementptr inbounds %struct.journal_head, ptr %call.i, i32 0, i32 8
  %61 = ptrtoint ptr %b_next_transaction.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %57, ptr %b_next_transaction.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %land.lhs.true.i.if.end48.i_crit_edge, %set_buffer_freed.exit.i.if.end48.i_crit_edge
  %b_modified.i = getelementptr inbounds %struct.journal_head, ptr %call.i, i32 0, i32 4
  %62 = ptrtoint ptr %b_modified.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %b_modified.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock.i) #9
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock.i) #9
  tail call void @_raw_write_unlock(ptr noundef %j_state_lock.i) #9
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %call.i) #9
  br label %if.end58

do.body53.i:                                      ; preds = %if.else29.i
  %63 = ptrtoint ptr %j_running_transaction54.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %j_running_transaction54.i, align 8
  %cmp55.not.i = icmp eq ptr %37, %64
  br i1 %cmp55.not.i, label %do.end71.i, label %do.body60.i, !prof !154

do.body60.i:                                      ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2399, 0\0A.popsection", ""() #9, !srcloc !228
  unreachable

do.end71.i:                                       ; preds = %do.body53.i
  %b_cp_transaction.i158.i = getelementptr inbounds %struct.journal_head, ptr %call.i, i32 0, i32 11
  %65 = ptrtoint ptr %b_cp_transaction.i158.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_cp_transaction.i158.i, align 4
  %tobool.not.i159.i = icmp eq ptr %66, null
  br i1 %tobool.not.i159.i, label %do.body7.i.i167.i, label %do.end.i160.i

do.end.i160.i:                                    ; preds = %do.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %call.i) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %68) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %call.i, ptr noundef nonnull %37, i32 noundef 2) #9
  br label %zap_buffer.i

do.body7.i.i167.i:                                ; preds = %do.end71.i
  %b_next_transaction.i.i165.i = getelementptr inbounds %struct.journal_head, ptr %call.i, i32 0, i32 8
  %69 = ptrtoint ptr %b_next_transaction.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_next_transaction.i.i165.i, align 4
  %cmp8.not.i.i166.i = icmp eq ptr %70, null
  br i1 %cmp8.not.i.i166.i, label %__jbd2_journal_unfile_buffer.exit.i169.i, label %do.body18.i.i168.i, !prof !154

do.body18.i.i168.i:                               ; preds = %do.body7.i.i167.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2066, 0\0A.popsection", ""() #9, !srcloc !212
  unreachable

__jbd2_journal_unfile_buffer.exit.i169.i:         ; preds = %do.body7.i.i167.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %call.i) #9
  %71 = ptrtoint ptr %b_transaction.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %b_transaction.i, align 4
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %call.i) #9
  br label %zap_buffer.i

zap_buffer.i:                                     ; preds = %__jbd2_journal_unfile_buffer.exit.i169.i, %do.end.i160.i, %if.else27.i, %__dispose_buffer.exit, %__dispose_buffer.exit.i, %if.then10.i, %if.then1.i.zap_buffer.i_crit_edge
  %may_free.0.i = phi i32 [ 0, %__dispose_buffer.exit.i ], [ 0, %__dispose_buffer.exit ], [ 1, %if.else27.i ], [ 1, %if.then10.i ], [ 1, %if.then1.i.zap_buffer.i_crit_edge ], [ 0, %do.end.i160.i ], [ 1, %__jbd2_journal_unfile_buffer.exit.i169.i ]
  %b_modified75.i = getelementptr inbounds %struct.journal_head, ptr %call.i, i32 0, i32 4
  %72 = ptrtoint ptr %b_modified75.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %b_modified75.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock.i) #9
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock.i) #9
  tail call void @_raw_write_unlock(ptr noundef %j_state_lock.i) #9
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %call.i) #9
  br label %zap_buffer_unlocked.i

zap_buffer_unlocked.i:                            ; preds = %zap_buffer.i, %lock_buffer.exit.zap_buffer_unlocked.i_crit_edge
  %may_free.1.i = phi i32 [ %may_free.0.i, %zap_buffer.i ], [ 1, %lock_buffer.exit.zap_buffer_unlocked.i_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #9
  %73 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %bh.0, align 4
  %75 = and i32 %74, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool81.not.i = icmp eq i32 %75, 0
  br i1 %tobool81.not.i, label %do.end101.i, label %do.body93.i, !prof !154

do.body93.i:                                      ; preds = %zap_buffer_unlocked.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2420, 0\0A.popsection", ""() #9, !srcloc !229
  unreachable

do.end101.i:                                      ; preds = %zap_buffer_unlocked.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %bh.0) #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %bh.0) #9
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bh.0) #9
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %bh.0) #9
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %bh.0) #9
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 6
  %76 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %b_bdev.i, align 8
  br label %if.end58

journal_unmap_buffer.exit:                        ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock.i) #9
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock.i) #9
  tail call void @_raw_write_unlock(ptr noundef %j_state_lock.i) #9
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %call.i) #9
  tail call void @unlock_buffer(ptr noundef %bh.0) #9
  br label %cleanup94

if.end58:                                         ; preds = %do.end101.i, %if.end48.i
  %retval.0.i.ph = phi i32 [ 0, %if.end48.i ], [ %may_free.1.i, %do.end101.i ]
  tail call void @unlock_buffer(ptr noundef %bh.0) #9
  %and = and i32 %retval.0.i.ph, %may_free.0
  br label %do.cond60

do.cond60:                                        ; preds = %if.end58, %if.end52.do.cond60_crit_edge
  %may_free.2.ph = phi i32 [ %may_free.0, %if.end52.do.cond60_crit_edge ], [ %and, %if.end58 ]
  %cmp61.not = icmp eq ptr %31, %27
  br i1 %cmp61.not, label %do.end62, label %do.cond60.do.body48_crit_edge

do.cond60.do.body48_crit_edge:                    ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

do.end62:                                         ; preds = %do.cond60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %may_free.2.ph)
  %tobool65.not = icmp eq i32 %may_free.2.ph, 0
  %or.cond = select i1 %spec.select, i1 true, i1 %tobool65.not
  br i1 %or.cond, label %do.end62.cleanup94_crit_edge, label %land.lhs.true

do.end62.cleanup94_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

land.lhs.true:                                    ; preds = %do.end62
  %call66 = tail call i32 @try_to_free_buffers(ptr noundef %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true.cleanup94_crit_edge, label %do.body69

land.lhs.true.cleanup94_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

do.body69:                                        ; preds = %land.lhs.true
  %77 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i.not.i133 = icmp eq i32 %78, -1
  br i1 %cmp.i.not.i133, label %if.then.i134, label %PagePrivate.exit137, !prof !156

if.then.i134:                                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.45) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !223
  unreachable

PagePrivate.exit137:                              ; preds = %do.body69
  %79 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %page, align 4
  %81 = and i32 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool71.not = icmp eq i32 %81, 0
  br i1 %tobool71.not, label %PagePrivate.exit137.cleanup94_crit_edge, label %do.body83, !prof !154

PagePrivate.exit137.cleanup94_crit_edge:          ; preds = %PagePrivate.exit137
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

do.body83:                                        ; preds = %PagePrivate.exit137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2489, 0\0A.popsection", ""() #9, !srcloc !230
  unreachable

cleanup94:                                        ; preds = %PagePrivate.exit137.cleanup94_crit_edge, %land.lhs.true.cleanup94_crit_edge, %do.end62.cleanup94_crit_edge, %journal_unmap_buffer.exit, %do.body48.cleanup94_crit_edge, %PagePrivate.exit.cleanup94_crit_edge
  %retval.2 = phi i32 [ 0, %PagePrivate.exit.cleanup94_crit_edge ], [ 0, %land.lhs.true.cleanup94_crit_edge ], [ 0, %PagePrivate.exit137.cleanup94_crit_edge ], [ 0, %do.end62.cleanup94_crit_edge ], [ -16, %journal_unmap_buffer.exit ], [ 0, %do.body48.cleanup94_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_file_buffer(ptr noundef %jh, ptr noundef %transaction, i32 noundef %jlist) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock) #9
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 8
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef %jh, ptr noundef %transaction, i32 noundef %jlist)
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 8
  %j_list_lock2 = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 39
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock2) #9
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__jbd2_journal_refile_buffer(ptr noundef %jh) local_unnamed_addr #3 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i148 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp.not = icmp eq i32 %call.i148, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !156

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2591, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 7
  %3 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_transaction, align 4
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %if.end49, label %do.body27

do.body27:                                        ; preds = %if.end
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %6, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %7 = ptrtoint ptr %j_list_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %j_list_lock, align 4
  %8 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body40, label %if.end49.thread, !prof !156

do.body40:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2593, 0\0A.popsection", ""() #9, !srcloc !231
  unreachable

if.end49:                                         ; preds = %if.end
  %b_next_transaction = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 8
  %9 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_next_transaction, align 4
  %cmp50 = icmp eq ptr %10, null
  br i1 %cmp50, label %do.body3.i, label %if.end49.if.end52_crit_edge

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end49.thread:                                  ; preds = %do.body27
  %b_next_transaction149 = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 8
  %11 = ptrtoint ptr %b_next_transaction149 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_next_transaction149, align 4
  %cmp50150 = icmp eq ptr %12, null
  br i1 %cmp50150, label %__jbd2_journal_unfile_buffer.exit, label %if.end49.thread.if.end52_crit_edge

if.end49.thread.if.end52_crit_edge:               ; preds = %if.end49.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body3.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2065, 0\0A.popsection", ""() #9, !srcloc !211
  unreachable

__jbd2_journal_unfile_buffer.exit:                ; preds = %if.end49.thread
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %jh) #9
  %13 = ptrtoint ptr %b_transaction to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %b_transaction, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end49.thread.if.end52_crit_edge, %if.end49.if.end52_crit_edge
  %b_next_transaction151 = phi ptr [ %b_next_transaction149, %if.end49.thread.if.end52_crit_edge ], [ %b_next_transaction, %if.end49.if.end52_crit_edge ]
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %1) #9
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %jh)
  %14 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_transaction, align 4
  %cmp56.not = icmp eq ptr %15, null
  br i1 %cmp56.not, label %do.body66, label %do.body79, !prof !156

do.body66:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2613, 0\0A.popsection", ""() #9, !srcloc !232
  unreachable

do.body79:                                        ; preds = %if.end52
  %16 = ptrtoint ptr %b_next_transaction151 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_next_transaction151, align 4
  %18 = ptrtoint ptr %b_transaction to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %b_transaction, align 4
  store volatile ptr null, ptr %b_next_transaction151, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %1, align 4
  %21 = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool97.not = icmp eq i32 %21, 0
  br i1 %tobool97.not, label %if.else, label %do.body79.if.end103_crit_edge

do.body79.if.end103_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.else:                                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %b_modified = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 4
  %22 = ptrtoint ptr %b_modified to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_modified, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool99.not = icmp eq i32 %23, 0
  %. = select i1 %tobool99.not, i32 4, i32 1
  br label %if.end103

if.end103:                                        ; preds = %if.else, %do.body79.if.end103_crit_edge
  %jlist.0 = phi i32 [ 2, %do.body79.if.end103_crit_edge ], [ %., %if.else ]
  tail call void @__jbd2_journal_file_buffer(ptr noundef %jh, ptr noundef %17, i32 noundef %jlist.0)
  %24 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_transaction, align 4
  %t_state = getelementptr inbounds %struct.transaction_s, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp107.not = icmp eq i32 %27, 0
  br i1 %cmp107.not, label %do.end125, label %do.body117, !prof !154

do.body117:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2629, 0\0A.popsection", ""() #9, !srcloc !233
  unreachable

do.end125:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool126.not = icmp eq i32 %call.i, 0
  br i1 %tobool126.not, label %do.end125.cleanup_crit_edge, label %if.then127

do.end125.cleanup_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then127:                                       ; preds = %do.end125
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %1, align 4
  %30 = and i32 %29, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then127.cleanup_crit_edge

if.then127.cleanup_crit_edge:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 21, ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then127.cleanup_crit_edge, %do.end125.cleanup_crit_edge, %__jbd2_journal_unfile_buffer.exit
  %cmp50152 = phi i1 [ false, %do.end125.cleanup_crit_edge ], [ true, %__jbd2_journal_unfile_buffer.exit ], [ false, %if.then127.cleanup_crit_edge ], [ false, %if.then.i ]
  ret i1 %cmp50152
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_refile_buffer(ptr noundef %journal, ptr noundef %jh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %b_state_lock) #9
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #9
  %call = tail call zeroext i1 @__jbd2_journal_refile_buffer(ptr noundef %jh)
  tail call void @_raw_spin_unlock(ptr noundef %b_state_lock) #9
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #9
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @jbd2_journal_put_journal_head(ptr noundef %jh) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_inode_ranged_write(ptr nocapture noundef readonly %handle, ptr noundef %jinode, i64 noundef %start_byte, i64 noundef %length) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %start_byte, -1
  %sub = add i64 %add, %length
  %call = tail call fastcc i32 @jbd2_journal_file_inode(ptr noundef %handle, ptr noundef %jinode, i32 noundef 6, i64 noundef %start_byte, i64 noundef %sub)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jbd2_journal_file_inode(ptr nocapture noundef readonly %handle, ptr noundef %jinode, i32 noundef %flags, i64 noundef %start_byte, i64 noundef %end_byte) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %2 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %3 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp ne i32 %3, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %is_handle_aborted.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_handle_aborted.exit:                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_handle_aborted.exit.cleanup_crit_edge

is_handle_aborted.exit.cleanup_crit_edge:         ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_handle_aborted.exit
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %i_vfs_inode = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 3
  %10 = ptrtoint ptr %i_vfs_inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_vfs_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_tid, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_file_inode, i32 noundef 2669, ptr noundef nonnull @.str.49, i32 noundef %13, i32 noundef %15) #9
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #9
  %i_flags = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 4
  %16 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags, align 4
  %or = or i32 %17, %flags
  store i32 %or, ptr %i_flags, align 4
  %i_dirty_end = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 6
  %18 = ptrtoint ptr %i_dirty_end to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_dirty_end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool1.not = icmp eq i64 %19, 0
  %i_dirty_start12 = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 5
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %i_dirty_start12 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_dirty_start12, align 8
  %22 = tail call i64 @llvm.smin.i64(i64 %21, i64 %start_byte)
  %23 = ptrtoint ptr %i_dirty_start12 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %i_dirty_start12, align 8
  %24 = tail call i64 @llvm.smax.i64(i64 %19, i64 %end_byte)
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %i_dirty_start12 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %start_byte, ptr %i_dirty_start12, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then2
  %storemerge = phi i64 [ %end_byte, %if.else ], [ %24, %if.then2 ]
  %26 = ptrtoint ptr %i_dirty_end to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %storemerge, ptr %i_dirty_end, align 8
  %27 = ptrtoint ptr %jinode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jinode, align 8
  %cmp15 = icmp eq ptr %28, %1
  br i1 %cmp15, label %if.end14.done_crit_edge, label %lor.lhs.false

if.end14.done_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

lor.lhs.false:                                    ; preds = %if.end14
  %i_next_transaction = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 1
  %29 = ptrtoint ptr %i_next_transaction to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_next_transaction, align 4
  %cmp16 = icmp eq ptr %30, %1
  br i1 %cmp16, label %lor.lhs.false.done_crit_edge, label %if.end18

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end18:                                         ; preds = %lor.lhs.false
  %t_need_data_flush = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 26
  %31 = ptrtoint ptr %t_need_data_flush to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %t_need_data_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool19.not = icmp eq i32 %32, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %t_need_data_flush to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %t_need_data_flush, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  %34 = ptrtoint ptr %jinode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %jinode, align 8
  %tobool24.not = icmp eq ptr %35, null
  %36 = ptrtoint ptr %i_next_transaction to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_next_transaction, align 4
  %tobool64.not = icmp eq ptr %37, null
  br i1 %tobool24.not, label %do.body62, label %do.body

do.body:                                          ; preds = %if.end22
  br i1 %tobool64.not, label %do.body39, label %do.body32, !prof !154

do.body32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2697, 0\0A.popsection", ""() #9, !srcloc !234
  unreachable

do.body39:                                        ; preds = %do.body
  %j_committing_transaction = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 11
  %38 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %j_committing_transaction, align 4
  %cmp41.not = icmp eq ptr %35, %39
  br i1 %cmp41.not, label %do.end59, label %do.body51, !prof !154

do.body51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2699, 0\0A.popsection", ""() #9, !srcloc !235
  unreachable

do.end59:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %i_next_transaction to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %1, ptr %i_next_transaction, align 4
  br label %done

do.body62:                                        ; preds = %if.end22
  br i1 %tobool64.not, label %do.end84, label %do.body76, !prof !154

do.body76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2704, 0\0A.popsection", ""() #9, !srcloc !236
  unreachable

do.end84:                                         ; preds = %do.body62
  %41 = ptrtoint ptr %jinode to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %1, ptr %jinode, align 8
  %i_list = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 2
  %t_inode_list = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %t_inode_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %t_inode_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_list, ptr noundef %t_inode_list, ptr noundef %43) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end84.done_crit_edge

do.end84.done_crit_edge:                          ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end.i.i:                                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %i_list, ptr %prev1.i.i, align 4
  %45 = ptrtoint ptr %i_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %i_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %t_inode_list, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %t_inode_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %i_list, ptr %t_inode_list, align 4
  br label %done

done:                                             ; preds = %if.end.i.i, %do.end84.done_crit_edge, %do.end59, %lor.lhs.false.done_crit_edge, %if.end14.done_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %is_handle_aborted.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ -30, %is_handle_aborted.exit.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_inode_ranged_wait(ptr nocapture noundef readonly %handle, ptr noundef %jinode, i64 noundef %start_byte, i64 noundef %length) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %start_byte, -1
  %sub = add i64 %add, %length
  %call = tail call fastcc i32 @jbd2_journal_file_inode(ptr noundef %handle, ptr noundef %jinode, i32 noundef 4, i64 noundef %start_byte, i64 noundef %sub)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_begin_ordered_truncate(ptr noundef %journal, ptr nocapture noundef readonly %jinode, i64 noundef %new_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jinode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jinode, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %j_state_lock) #9
  %j_committing_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 11
  %2 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_committing_transaction, align 4
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #9
  %4 = ptrtoint ptr %jinode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jinode, align 8
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #9
  %cmp = icmp eq ptr %5, %3
  br i1 %cmp, label %if.then4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then4:                                         ; preds = %if.end
  %i_vfs_inode = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 3
  %6 = ptrtoint ptr %i_vfs_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_vfs_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %call = tail call i32 @filemap_fdatawrite_range(ptr noundef %9, i64 noundef %new_size, i64 noundef 9223372036854775807) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then4.out_crit_edge, label %if.then6

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef %call) #9
  br label %out

out:                                              ; preds = %if.then6, %if.then4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %if.then6 ], [ 0, %if.then4.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_abort(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_transaction_credits(ptr noundef %journal, i32 noundef %blocks, i32 noundef %rsv_blocks) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry139 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 10
  %0 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_running_transaction, align 8
  %add = add i32 %rsv_blocks, %blocks
  %t_state = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end38, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2 = icmp ugt i32 %3, 2
  br i1 %cmp2, label %land.rhs, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.rhs:                                         ; preds = %if.then
  %.b222 = load i1, ptr @add_transaction_credits.__already_done, align 1
  br i1 %.b222, label %land.rhs.if.end30_crit_edge, label %if.then9, !prof !154

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @add_transaction_credits.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 245, i32 noundef 9, ptr noundef null) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then9, %land.rhs.if.end30_crit_edge, %if.then.if.end30_crit_edge
  tail call fastcc void @wait_transaction_locked(ptr noundef %journal)
  br label %cleanup163

if.end38:                                         ; preds = %entry
  %t_outstanding_credits = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 %add, ptr elementtype(i32) %t_outstanding_credits) #9, !srcloc !169
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !170
  %j_max_transaction_buffers = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 47
  %5 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %j_max_transaction_buffers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %6)
  %cmp39 = icmp sgt i32 %asmresult.i.i.i, %6
  br i1 %cmp39, label %if.then40, label %if.end81

if.then40:                                        ; preds = %if.end38
  %call.i.i224 = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 %add, ptr elementtype(i32) %t_outstanding_credits) #9, !srcloc !160
  %j_reserved_credits = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 38
  %call.i.i225 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits, i32 noundef 4) #9
  %8 = ptrtoint ptr %j_reserved_credits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %j_reserved_credits, align 4
  %add43 = add i32 %9, %add
  %10 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %j_max_transaction_buffers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %11)
  %cmp45 = icmp sgt i32 %add43, %11
  br i1 %cmp45, label %if.then46, label %if.end80

if.then46:                                        ; preds = %if.then40
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  %j_trans_commit_map = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 72
  br label %__here

__here:                                           ; preds = %if.then46
  tail call void @lock_acquire(ptr noundef %j_trans_commit_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@add_transaction_credits, %__here) to i32)) #9
  br label %__here50

__here50:                                         ; preds = %__here
  tail call void @lock_release(ptr noundef %j_trans_commit_map, i32 noundef ptrtoint (ptr blockaddress(@add_transaction_credits, %__here50) to i32)) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 275) #9
  %call.i.i226 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits, i32 noundef 4) #9
  %12 = ptrtoint ptr %j_reserved_credits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %j_reserved_credits, align 4
  %add63 = add i32 %13, %add
  %14 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %j_max_transaction_buffers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add63, i32 %15)
  %cmp65.not = icmp sgt i32 %add63, %15
  br i1 %cmp65.not, label %if.end67, label %__here50.cleanup163_crit_edge

__here50.cleanup163_crit_edge:                    ; preds = %__here50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.end67:                                         ; preds = %__here50
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %j_wait_reserved = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 17
  %call68254 = call i32 @prepare_to_wait_event(ptr noundef %j_wait_reserved, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i227255 = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits, i32 noundef 4) #9
  %17 = ptrtoint ptr %j_reserved_credits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %j_reserved_credits, align 4
  %add71256 = add i32 %18, %add
  %19 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %j_max_transaction_buffers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add71256, i32 %20)
  %cmp73.not257 = icmp sgt i32 %add71256, %20
  br i1 %cmp73.not257, label %if.end67.cleanup_crit_edge, label %if.end67.for.end_crit_edge

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end67.cleanup_crit_edge
  call void @schedule() #9
  %call68 = call i32 @prepare_to_wait_event(ptr noundef %j_wait_reserved, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i227 = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits, i32 noundef 4) #9
  %21 = ptrtoint ptr %j_reserved_credits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %j_reserved_credits, align 4
  %add71 = add i32 %22, %add
  %23 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %j_max_transaction_buffers, align 8
  %cmp73.not = icmp sgt i32 %add71, %24
  br i1 %cmp73.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end67.for.end_crit_edge
  call void @finish_wait(ptr noundef %j_wait_reserved, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup163

if.end80:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wait_transaction_locked(ptr noundef %journal)
  br label %cleanup163

if.end81:                                         ; preds = %if.end38
  %j_free.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 26
  %25 = ptrtoint ptr %j_free.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %j_free.i, align 4
  %sub.i = add i32 %26, -32
  %j_committing_transaction.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 11
  %27 = ptrtoint ptr %j_committing_transaction.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %j_committing_transaction.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end81.jbd2_log_space_left.exit_crit_edge, label %if.then.i

if.end81.jbd2_log_space_left.exit_crit_edge:      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_log_space_left.exit

if.then.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %t_outstanding_credits.i = getelementptr inbounds %struct.transaction_s, ptr %28, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %t_outstanding_credits.i, i32 noundef 4) #9
  %29 = ptrtoint ptr %t_outstanding_credits.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %t_outstanding_credits.i, align 4
  %sub2.i = sub i32 %sub.i, %30
  br label %jbd2_log_space_left.exit

jbd2_log_space_left.exit:                         ; preds = %if.then.i, %if.end81.jbd2_log_space_left.exit_crit_edge
  %free.0.i = phi i32 [ %sub2.i, %if.then.i ], [ %sub.i, %if.end81.jbd2_log_space_left.exit_crit_edge ]
  %31 = tail call i32 @llvm.smax.i32(i32 %free.0.i, i32 0) #9
  %32 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %j_max_transaction_buffers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp84 = icmp ult i32 %31, %33
  br i1 %cmp84, label %if.then85, label %if.end104

if.then85:                                        ; preds = %jbd2_log_space_left.exit
  %call.i.i228 = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 %add, ptr elementtype(i32) %t_outstanding_credits) #9, !srcloc !160
  %j_state_lock87 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock87) #9
  %j_trans_commit_map89 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 72
  br label %__here90

__here90:                                         ; preds = %if.then85
  tail call void @lock_acquire(ptr noundef %j_trans_commit_map89, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@add_transaction_credits, %__here90) to i32)) #9
  br label %__here93

__here93:                                         ; preds = %__here90
  tail call void @lock_release(ptr noundef %j_trans_commit_map89, i32 noundef ptrtoint (ptr blockaddress(@add_transaction_credits, %__here93) to i32)) #9
  tail call void @_raw_write_lock(ptr noundef %j_state_lock87) #9
  %35 = ptrtoint ptr %j_free.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %j_free.i, align 4
  %sub.i235 = add i32 %36, -32
  %37 = ptrtoint ptr %j_committing_transaction.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %j_committing_transaction.i, align 4
  %tobool.not.i237 = icmp eq ptr %38, null
  br i1 %tobool.not.i237, label %__here93.jbd2_log_space_left.exit243_crit_edge, label %if.then.i241

__here93.jbd2_log_space_left.exit243_crit_edge:   ; preds = %__here93
  call void @__sanitizer_cov_trace_pc() #11
  br label %jbd2_log_space_left.exit243

if.then.i241:                                     ; preds = %__here93
  call void @__sanitizer_cov_trace_pc() #11
  %t_outstanding_credits.i238 = getelementptr inbounds %struct.transaction_s, ptr %38, i32 0, i32 18
  %call.i.i.i239 = tail call zeroext i1 @__kasan_check_read(ptr noundef %t_outstanding_credits.i238, i32 noundef 4) #9
  %39 = ptrtoint ptr %t_outstanding_credits.i238 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %t_outstanding_credits.i238, align 4
  %sub2.i240 = sub i32 %sub.i235, %40
  br label %jbd2_log_space_left.exit243

jbd2_log_space_left.exit243:                      ; preds = %if.then.i241, %__here93.jbd2_log_space_left.exit243_crit_edge
  %free.0.i242 = phi i32 [ %sub2.i240, %if.then.i241 ], [ %sub.i235, %__here93.jbd2_log_space_left.exit243_crit_edge ]
  %41 = tail call i32 @llvm.smax.i32(i32 %free.0.i242, i32 0) #9
  %42 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %j_max_transaction_buffers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp100 = icmp ult i32 %41, %43
  br i1 %cmp100, label %if.then101, label %jbd2_log_space_left.exit243.if.end102_crit_edge

jbd2_log_space_left.exit243.if.end102_crit_edge:  ; preds = %jbd2_log_space_left.exit243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then101:                                       ; preds = %jbd2_log_space_left.exit243
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__jbd2_log_wait_for_space(ptr noundef %journal) #9
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %jbd2_log_space_left.exit243.if.end102_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %j_state_lock87) #9
  br label %cleanup163

if.end104:                                        ; preds = %jbd2_log_space_left.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsv_blocks)
  %tobool105.not = icmp eq i32 %rsv_blocks, 0
  br i1 %tobool105.not, label %if.end104.cleanup163_crit_edge, label %if.end107

if.end104.cleanup163_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.end107:                                        ; preds = %if.end104
  %j_reserved_credits108 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 38
  %call.i.i229 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_reserved_credits108, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %j_reserved_credits108, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_reserved_credits108, ptr %j_reserved_credits108, i32 %rsv_blocks, ptr elementtype(i32) %j_reserved_credits108) #9, !srcloc !169
  %asmresult.i.i.i230 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !170
  %45 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %j_max_transaction_buffers, align 8
  %div = sdiv i32 %46, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i230, i32 %div)
  %cmp111 = icmp sgt i32 %asmresult.i.i.i230, %div
  br i1 %cmp111, label %if.then112, label %if.end107.cleanup163_crit_edge

if.end107.cleanup163_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.then112:                                       ; preds = %if.end107
  %call.i.i.i244 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_reserved_credits108, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %j_reserved_credits108, i32 1, i32 3, i32 1) #9
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_reserved_credits108, ptr %j_reserved_credits108, i32 %rsv_blocks, ptr elementtype(i32) %j_reserved_credits108) #9, !srcloc !160
  %j_wait_reserved.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %j_wait_reserved.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %call.i.i231 = tail call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #9
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 %add, ptr elementtype(i32) %t_outstanding_credits) #9, !srcloc !160
  %j_state_lock114 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  tail call void @_raw_read_unlock(ptr noundef %j_state_lock114) #9
  %j_trans_commit_map116 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 72
  br label %__here117

__here117:                                        ; preds = %if.then112
  tail call void @lock_acquire(ptr noundef %j_trans_commit_map116, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@add_transaction_credits, %__here117) to i32)) #9
  br label %__here120

__here120:                                        ; preds = %__here117
  tail call void @lock_release(ptr noundef %j_trans_commit_map116, i32 noundef ptrtoint (ptr blockaddress(@add_transaction_credits, %__here120) to i32)) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 322) #9
  %call.i.i232 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits108, i32 noundef 4) #9
  %49 = ptrtoint ptr %j_reserved_credits108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %j_reserved_credits108, align 4
  %add133 = add i32 %50, %rsv_blocks
  %51 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %j_max_transaction_buffers, align 8
  %div135 = sdiv i32 %52, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add133, i32 %div135)
  %cmp136.not = icmp sgt i32 %add133, %div135
  br i1 %cmp136.not, label %if.end138, label %__here120.cleanup163_crit_edge

__here120.cleanup163_crit_edge:                   ; preds = %__here120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.end138:                                        ; preds = %__here120
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry139) #9
  %53 = call ptr @memset(ptr %__wq_entry139, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry139, i32 noundef 0) #9
  %call144249 = call i32 @prepare_to_wait_event(ptr noundef %j_wait_reserved.i, ptr noundef nonnull %__wq_entry139, i32 noundef 2) #9
  %call.i.i233250 = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits108, i32 noundef 4) #9
  %54 = ptrtoint ptr %j_reserved_credits108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %j_reserved_credits108, align 4
  %add147251 = add i32 %55, %rsv_blocks
  %56 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %j_max_transaction_buffers, align 8
  %div149252 = sdiv i32 %57, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add147251, i32 %div149252)
  %cmp150.not253 = icmp sgt i32 %add147251, %div149252
  br i1 %cmp150.not253, label %if.end138.cleanup153_crit_edge, label %if.end138.for.end156_crit_edge

if.end138.for.end156_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end156

if.end138.cleanup153_crit_edge:                   ; preds = %if.end138
  br label %cleanup153

cleanup153:                                       ; preds = %cleanup153.cleanup153_crit_edge, %if.end138.cleanup153_crit_edge
  call void @schedule() #9
  %call144 = call i32 @prepare_to_wait_event(ptr noundef %j_wait_reserved.i, ptr noundef nonnull %__wq_entry139, i32 noundef 2) #9
  %call.i.i233 = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits108, i32 noundef 4) #9
  %58 = ptrtoint ptr %j_reserved_credits108 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %j_reserved_credits108, align 4
  %add147 = add i32 %59, %rsv_blocks
  %60 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %j_max_transaction_buffers, align 8
  %div149 = sdiv i32 %61, 2
  %cmp150.not = icmp sgt i32 %add147, %div149
  br i1 %cmp150.not, label %cleanup153.cleanup153_crit_edge, label %cleanup153.for.end156_crit_edge

cleanup153.for.end156_crit_edge:                  ; preds = %cleanup153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end156

cleanup153.cleanup153_crit_edge:                  ; preds = %cleanup153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

for.end156:                                       ; preds = %cleanup153.for.end156_crit_edge, %if.end138.for.end156_crit_edge
  call void @finish_wait(ptr noundef %j_wait_reserved.i, ptr noundef nonnull %__wq_entry139) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry139) #9
  br label %cleanup163

cleanup163:                                       ; preds = %for.end156, %__here120.cleanup163_crit_edge, %if.end107.cleanup163_crit_edge, %if.end104.cleanup163_crit_edge, %if.end102, %if.end80, %for.end, %__here50.cleanup163_crit_edge, %if.end30
  %retval.0 = phi i32 [ 1, %if.end30 ], [ 1, %if.end80 ], [ 1, %if.end102 ], [ 1, %__here50.cleanup163_crit_edge ], [ 1, %for.end ], [ 0, %if.end104.cleanup163_crit_edge ], [ 1, %__here120.cleanup163_crit_edge ], [ 1, %for.end156 ], [ 0, %if.end107.cleanup163_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_tag_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_transaction_locked(ptr noundef %journal) #3 align 64 {
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !144) #9
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 10
  %13 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %j_running_transaction, align 8
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t_tid, align 4
  %j_wait_transaction_locked = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 13
  call void @prepare_to_wait(ptr noundef %j_wait_transaction_locked, ptr noundef nonnull %wait, i32 noundef 2) #9
  %j_commit_request = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 44
  %17 = ptrtoint ptr %j_commit_request to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %j_commit_request, align 8
  %19 = xor i32 %18, -1
  %20 = add i32 %16, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool.not = icmp sgt i32 %20, -1
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  call void @_raw_read_unlock(ptr noundef %j_state_lock) #9
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 @jbd2_log_start_commit(ptr noundef %journal, i32 noundef %16) #9
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %j_trans_commit_map = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 72
  br label %__here

__here:                                           ; preds = %do.body
  call void @lock_acquire(ptr noundef %j_trans_commit_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@wait_transaction_locked, %__here) to i32)) #9
  br label %__here8

__here8:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  call void @lock_release(ptr noundef %j_trans_commit_map, i32 noundef ptrtoint (ptr blockaddress(@wait_transaction_locked, %__here8) to i32)) #9
  call void @schedule() #9
  call void @finish_wait(ptr noundef %j_wait_transaction_locked, ptr noundef nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_log_wait_for_space(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_handle_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_handle_extend(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_handle_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_lock_buffer_stall(i32 noundef %dev, i32 noundef %stall_ms) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_lock_buffer_stall, i32 0, i32 1), ptr blockaddress(@trace_jbd2_lock_buffer_stall, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !237
  %call42 = tail call i32 @__traceiter_jbd2_lock_buffer_stall(ptr noundef null, i32 noundef %dev, i32 noundef %stall_ms) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !238
  %13 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_lock_buffer_stall, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_lock_buffer_stall, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_lock_buffer_stall.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_jbd2_lock_buffer_stall.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 395, ptr noundef nonnull @.str.32) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !166
  %31 = tail call i32 @llvm.read_register.i32(metadata !144) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_lock_buffer_stall(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_io(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_handle_stats(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !83, !85, !86, !88, !90, !91, !92, !93, !95, !96, !98, !99, !101, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !119, !121, !122, !123, !124, !125, !126, !127, !129, !130, !132, !134, !136, !138, !139, !140, !141, !143}
!llvm.named.register.sp = !{!144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jbd2/transaction.c", i32 40, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jbd2/transaction.c", i32 46, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jbd2_journal_init_transaction_cache._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @jbd2_journal_init_transaction_cache._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_jbd2__journal_start, !9, !"__ksymtab_jbd2__journal_start", i1 false, i1 false}
!9 = !{!"../fs/jbd2/transaction.c", i32 540, i32 1}
!10 = !{ptr @__ksymtab_jbd2_journal_start, !11, !"__ksymtab_jbd2_journal_start", i1 false, i1 false}
!11 = !{!"../fs/jbd2/transaction.c", i32 566, i32 1}
!12 = !{ptr @__ksymtab_jbd2_journal_free_reserved, !13, !"__ksymtab_jbd2_journal_free_reserved", i1 false, i1 false}
!13 = !{!"../fs/jbd2/transaction.c", i32 588, i32 1}
!14 = !{ptr @__ksymtab_jbd2_journal_start_reserved, !15, !"__ksymtab_jbd2_journal_start_reserved", i1 false, i1 false}
!15 = !{!"../fs/jbd2/transaction.c", i32 642, i32 1}
!16 = !{ptr @__func__.jbd2_journal_extend, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/jbd2/transaction.c", i32 682, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jbd2/transaction.c", i32 698, i32 3}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/jbd2/transaction.c", i32 716, i32 2}
!23 = !{ptr @__func__.jbd2__journal_restart, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/jbd2/transaction.c", i32 806, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__ksymtab_jbd2__journal_restart, !27, !"__ksymtab_jbd2__journal_restart", i1 false, i1 false}
!27 = !{!"../fs/jbd2/transaction.c", i32 830, i32 1}
!28 = !{ptr @__ksymtab_jbd2_journal_restart, !29, !"__ksymtab_jbd2_journal_restart", i1 false, i1 false}
!29 = !{!"../fs/jbd2/transaction.c", i32 837, i32 1}
!30 = !{ptr @__func__.jbd2_journal_get_create_access, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/jbd2/transaction.c", i32 1276, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/jbd2/transaction.c", i32 1435, i32 6}
!35 = !{ptr @__func__.jbd2_journal_dirty_metadata, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/jbd2/transaction.c", i32 1501, i32 2}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/jbd2/transaction.c", i32 1524, i32 5}
!39 = !{ptr @jbd2_journal_dirty_metadata._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @jbd2_journal_dirty_metadata._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/jbd2/transaction.c", i32 1545, i32 7}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/jbd2/transaction.c", i32 1564, i32 4}
!45 = !{ptr @jbd2_journal_dirty_metadata._entry.10, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @jbd2_journal_dirty_metadata._entry_ptr.12, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/jbd2/transaction.c", i32 1592, i32 4}
!49 = !{ptr @jbd2_journal_dirty_metadata._entry.13, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @jbd2_journal_dirty_metadata._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/jbd2/transaction.c", i32 1671, i32 7}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @jbd2_journal_forget._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @jbd2_journal_forget._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @jbd2_journal_forget._entry.19, !52, !"_entry", i1 false, i1 false}
!59 = !{ptr @jbd2_journal_forget._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__func__.jbd2_journal_stop, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/jbd2/transaction.c", i32 1823, i32 3}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/jbd2/transaction.c", i32 1843, i32 2}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/jbd2/transaction.c", i32 1902, i32 4}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/jbd2/transaction.c", i32 1921, i32 3}
!69 = !{ptr @transaction_cache, !70, !"transaction_cache", i1 false, i1 false}
!70 = !{!"../fs/jbd2/transaction.c", i32 36, i32 27}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/jbd2/transaction.c", i32 354, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @start_this_handle._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @start_this_handle._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/jbd2/transaction.c", i32 381, i32 2}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/jbd2/transaction.c", i32 461, i32 2}
!80 = !{ptr @jbd2_get_transaction.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../fs/jbd2/transaction.c", i32 110, i32 2}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/jbd2.h", i32 1734, i32 2}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../fs/jbd2/transaction.c", i32 245, i32 3}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/trace/events/jbd2.h", i32 164, i32 1}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!92 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/trace/events/jbd2.h", i32 178, i32 1}
!98 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../fs/jbd2/transaction.c", i32 744, i32 3}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/trace/events/jbd2.h", i32 171, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!106 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!110 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @__func__.do_get_write_access, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/jbd2/transaction.c", i32 984, i32 2}
!113 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../include/trace/events/jbd2.h", i32 376, i32 1}
!116 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/wait_bit.h", i32 98, i32 2}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/jbd2/transaction.c", i32 945, i32 2}
!121 = !{ptr @jbd2_freeze_jh_data._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @jbd2_freeze_jh_data._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @jbd2_freeze_jh_data._entry.41, !120, !"_entry", i1 false, i1 false}
!126 = !{ptr @jbd2_freeze_jh_data._entry_ptr.43, !120, !"_entry_ptr", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../include/trace/events/jbd2.h", i32 210, i32 1}
!129 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!130 = !{ptr @.str.44, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/jbd2/transaction.c", i32 930, i32 2}
!138 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @warn_dirty_buffer._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @warn_dirty_buffer._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @__func__.jbd2_journal_file_inode, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/jbd2/transaction.c", i32 2668, i32 2}
!143 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!144 = !{!"sp"}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2155651984, i64 2155652469, i64 2155652021, i64 2155652077, i64 2155652111, i64 2155652135, i64 2155652176, i64 2155652197, i64 2155652225, i64 2155652259}
!156 = !{!"branch_weights", i32 1, i32 2000}
!157 = !{i64 2155674830, i64 2155675316, i64 2155674867, i64 2155674923, i64 2155674957, i64 2155674981, i64 2155675022, i64 2155675043, i64 2155675071, i64 2155675105}
!158 = !{i64 2155670618, i64 2155671104, i64 2155670655, i64 2155670711, i64 2155670745, i64 2155670769, i64 2155670810, i64 2155670831, i64 2155670859, i64 2155670893}
!159 = !{i64 2155656014, i64 2155656500, i64 2155656051, i64 2155656107, i64 2155656141, i64 2155656165, i64 2155656206, i64 2155656227, i64 2155656255, i64 2155656289}
!160 = !{i64 2148287989, i64 2148288015, i64 2148288044, i64 2148288078, i64 2148288109, i64 2148288132}
!161 = !{i64 2148285524, i64 2148285550, i64 2148285579, i64 2148285613, i64 2148285644, i64 2148285667}
!162 = !{i64 2149135865, i64 2149135870, i64 2149135883, i64 2149135927, i64 2149135961, i64 2149135982}
!163 = !{i64 2155404518}
!164 = !{i64 2155404797}
!165 = !{i64 2149582430}
!166 = !{i64 2149583466}
!167 = !{i64 2155778583}
!168 = !{i64 2148370935}
!169 = !{i64 2148286244, i64 2148286276, i64 2148286305, i64 2148286339, i64 2148286370, i64 2148286393}
!170 = !{i64 2148371164}
!171 = !{i64 2155445295}
!172 = !{i64 2155445608}
!173 = !{i64 2155689989, i64 2155690475, i64 2155690026, i64 2155690082, i64 2155690116, i64 2155690140, i64 2155690181, i64 2155690202, i64 2155690230, i64 2155690264}
!174 = !{i64 2155691700, i64 2155692186, i64 2155691737, i64 2155691793, i64 2155691827, i64 2155691851, i64 2155691892, i64 2155691913, i64 2155691941, i64 2155691975}
!175 = !{i64 2148373976}
!176 = !{i64 2148288709, i64 2148288741, i64 2148288770, i64 2148288804, i64 2148288835, i64 2148288858}
!177 = !{i64 2148374205}
!178 = !{i64 2155426669}
!179 = !{i64 2155426952}
!180 = !{i64 2155701778, i64 2155702264, i64 2155701815, i64 2155701871, i64 2155701905, i64 2155701929, i64 2155701970, i64 2155701991, i64 2155702019, i64 2155702053}
!181 = !{i64 2149573871}
!182 = !{i64 2155731400}
!183 = !{i64 2149574137}
!184 = !{i64 2148294382, i64 2148294414, i64 2148294443, i64 2148294477, i64 2148294508, i64 2148294531}
!185 = !{i64 2148383463}
!186 = !{i64 2155711550, i64 2155712037, i64 2155711587, i64 2155711643, i64 2155711677, i64 2155711701, i64 2155711742, i64 2155711763, i64 2155711791, i64 2155711825}
!187 = !{!"branch_weights", i32 4001, i32 1}
!188 = !{i64 2155713336, i64 2155713823, i64 2155713373, i64 2155713429, i64 2155713463, i64 2155713487, i64 2155713528, i64 2155713549, i64 2155713577, i64 2155713611}
!189 = !{i64 2155715073, i64 2155715560, i64 2155715110, i64 2155715166, i64 2155715200, i64 2155715224, i64 2155715265, i64 2155715286, i64 2155715314, i64 2155715348}
!190 = !{i64 2155716492}
!191 = !{i64 2155717033, i64 2155717520, i64 2155717070, i64 2155717126, i64 2155717160, i64 2155717184, i64 2155717225, i64 2155717246, i64 2155717274, i64 2155717308}
!192 = !{i64 2155718819, i64 2155719306, i64 2155718856, i64 2155718912, i64 2155718946, i64 2155718970, i64 2155719011, i64 2155719032, i64 2155719060, i64 2155719094}
!193 = !{i64 2155720645, i64 2155721132, i64 2155720682, i64 2155720738, i64 2155720772, i64 2155720796, i64 2155720837, i64 2155720858, i64 2155720886, i64 2155720920}
!194 = !{i64 2153825844}
!195 = !{i64 2152253070}
!196 = !{i64 2152253277}
!197 = !{i64 2153828615}
!198 = !{i64 2155722293}
!199 = !{i64 2155732595, i64 2155733082, i64 2155732632, i64 2155732688, i64 2155732722, i64 2155732746, i64 2155732787, i64 2155732808, i64 2155732836, i64 2155732870}
!200 = !{i64 2155734365, i64 2155734852, i64 2155734402, i64 2155734458, i64 2155734492, i64 2155734516, i64 2155734557, i64 2155734578, i64 2155734606, i64 2155734640}
!201 = !{i64 2155740132, i64 2155740619, i64 2155740169, i64 2155740225, i64 2155740259, i64 2155740283, i64 2155740324, i64 2155740345, i64 2155740373, i64 2155740407}
!202 = !{i64 2155810524, i64 2155811011, i64 2155810561, i64 2155810617, i64 2155810651, i64 2155810675, i64 2155810716, i64 2155810737, i64 2155810765, i64 2155810799}
!203 = !{i64 2155812196, i64 2155812683, i64 2155812233, i64 2155812289, i64 2155812323, i64 2155812347, i64 2155812388, i64 2155812409, i64 2155812437, i64 2155812471}
!204 = !{i64 2155814106, i64 2155814593, i64 2155814143, i64 2155814199, i64 2155814233, i64 2155814257, i64 2155814298, i64 2155814319, i64 2155814347, i64 2155814381}
!205 = !{i64 2155815810, i64 2155816297, i64 2155815847, i64 2155815903, i64 2155815937, i64 2155815961, i64 2155816002, i64 2155816023, i64 2155816051, i64 2155816085}
!206 = !{i64 2155817492, i64 2155817979, i64 2155817529, i64 2155817585, i64 2155817619, i64 2155817643, i64 2155817684, i64 2155817705, i64 2155817733, i64 2155817767}
!207 = !{i64 2155744763, i64 2155745250, i64 2155744800, i64 2155744856, i64 2155744890, i64 2155744914, i64 2155744955, i64 2155744976, i64 2155745004, i64 2155745038}
!208 = !{i64 2155750107, i64 2155750594, i64 2155750144, i64 2155750200, i64 2155750234, i64 2155750258, i64 2155750299, i64 2155750320, i64 2155750348, i64 2155750382}
!209 = !{i64 2155759352, i64 2155759839, i64 2155759389, i64 2155759445, i64 2155759479, i64 2155759503, i64 2155759544, i64 2155759565, i64 2155759593, i64 2155759627}
!210 = !{i64 2155764498, i64 2155764985, i64 2155764535, i64 2155764591, i64 2155764625, i64 2155764649, i64 2155764690, i64 2155764711, i64 2155764739, i64 2155764773}
!211 = !{i64 2155787960, i64 2155788447, i64 2155787997, i64 2155788053, i64 2155788087, i64 2155788111, i64 2155788152, i64 2155788173, i64 2155788201, i64 2155788235}
!212 = !{i64 2155789730, i64 2155790217, i64 2155789767, i64 2155789823, i64 2155789857, i64 2155789881, i64 2155789922, i64 2155789943, i64 2155789971, i64 2155790005}
!213 = !{i64 2155766370, i64 2155766857, i64 2155766407, i64 2155766463, i64 2155766497, i64 2155766521, i64 2155766562, i64 2155766583, i64 2155766611, i64 2155766645}
!214 = !{i64 2155768091, i64 2155768578, i64 2155768128, i64 2155768184, i64 2155768218, i64 2155768242, i64 2155768283, i64 2155768304, i64 2155768332, i64 2155768366}
!215 = !{i64 2155781068, i64 2155781555, i64 2155781105, i64 2155781161, i64 2155781195, i64 2155781219, i64 2155781260, i64 2155781281, i64 2155781309, i64 2155781343}
!216 = !{i64 2155782740, i64 2155783227, i64 2155782777, i64 2155782833, i64 2155782867, i64 2155782891, i64 2155782932, i64 2155782953, i64 2155782981, i64 2155783015}
!217 = !{i64 2155784468, i64 2155784955, i64 2155784505, i64 2155784561, i64 2155784595, i64 2155784619, i64 2155784660, i64 2155784681, i64 2155784709, i64 2155784743}
!218 = !{i64 2155786202, i64 2155786689, i64 2155786239, i64 2155786295, i64 2155786329, i64 2155786353, i64 2155786394, i64 2155786415, i64 2155786443, i64 2155786477}
!219 = !{i64 2155464501}
!220 = !{i64 2155464848}
!221 = !{i64 2150653952, i64 2150654443, i64 2150653989, i64 2150654045, i64 2150654079, i64 2150654103, i64 2150654144, i64 2150654165, i64 2150654193, i64 2150654227}
!222 = !{i64 2155791436, i64 2155791923, i64 2155791473, i64 2155791529, i64 2155791563, i64 2155791587, i64 2155791628, i64 2155791649, i64 2155791677, i64 2155791711}
!223 = !{i64 2151105225, i64 2151105716, i64 2151105262, i64 2151105318, i64 2151105352, i64 2151105376, i64 2151105417, i64 2151105438, i64 2151105466, i64 2151105500}
!224 = !{i64 2155793148, i64 2155793635, i64 2155793185, i64 2155793241, i64 2155793275, i64 2155793299, i64 2155793340, i64 2155793361, i64 2155793389, i64 2155793423}
!225 = !{i64 2155802602, i64 2155803089, i64 2155802639, i64 2155802695, i64 2155802729, i64 2155802753, i64 2155802794, i64 2155802815, i64 2155802843, i64 2155802877}
!226 = !{i64 2155804332, i64 2155804819, i64 2155804369, i64 2155804425, i64 2155804459, i64 2155804483, i64 2155804524, i64 2155804545, i64 2155804573, i64 2155804607}
!227 = !{i64 2155806044, i64 2155806531, i64 2155806081, i64 2155806137, i64 2155806171, i64 2155806195, i64 2155806236, i64 2155806257, i64 2155806285, i64 2155806319}
!228 = !{i64 2155799290, i64 2155799777, i64 2155799327, i64 2155799383, i64 2155799417, i64 2155799441, i64 2155799482, i64 2155799503, i64 2155799531, i64 2155799565}
!229 = !{i64 2155801043, i64 2155801530, i64 2155801080, i64 2155801136, i64 2155801170, i64 2155801194, i64 2155801235, i64 2155801256, i64 2155801284, i64 2155801318}
!230 = !{i64 2155807747, i64 2155808234, i64 2155807784, i64 2155807840, i64 2155807874, i64 2155807898, i64 2155807939, i64 2155807960, i64 2155807988, i64 2155808022}
!231 = !{i64 2155820295, i64 2155820782, i64 2155820332, i64 2155820388, i64 2155820422, i64 2155820446, i64 2155820487, i64 2155820508, i64 2155820536, i64 2155820570}
!232 = !{i64 2155822057, i64 2155822544, i64 2155822094, i64 2155822150, i64 2155822184, i64 2155822208, i64 2155822249, i64 2155822270, i64 2155822298, i64 2155822332}
!233 = !{i64 2155828454, i64 2155828941, i64 2155828491, i64 2155828547, i64 2155828581, i64 2155828605, i64 2155828646, i64 2155828667, i64 2155828695, i64 2155828729}
!234 = !{i64 2155833462, i64 2155833949, i64 2155833499, i64 2155833555, i64 2155833589, i64 2155833613, i64 2155833654, i64 2155833675, i64 2155833703, i64 2155833737}
!235 = !{i64 2155835245, i64 2155835732, i64 2155835282, i64 2155835338, i64 2155835372, i64 2155835396, i64 2155835437, i64 2155835458, i64 2155835486, i64 2155835520}
!236 = !{i64 2155840981, i64 2155841468, i64 2155841018, i64 2155841074, i64 2155841108, i64 2155841132, i64 2155841173, i64 2155841194, i64 2155841222, i64 2155841256}
!237 = !{i64 2155559549}
!238 = !{i64 2155559782}
