; ModuleID = '/llk/IR_all_yes/fs/jbd2/commit.c_pt.bc'
source_filename = "../fs/jbd2/commit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+jbd2_submit_inode_data\22, \22a\22\09"
module asm "\09.weak\09__crc_jbd2_submit_inode_data\09\09\09\09"
module asm "\09.long\09__crc_jbd2_submit_inode_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_submit_inode_data:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_submit_inode_data\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_submit_inode_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jbd2_wait_inode_data\22, \22a\22\09"
module asm "\09.weak\09__crc_jbd2_wait_inode_data\09\09\09\09"
module asm "\09.long\09__crc_jbd2_wait_inode_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_wait_inode_data:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_wait_inode_data\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_wait_inode_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.jbd2_inode = type { ptr, ptr, %struct.list_head, ptr, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.84 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.journal_superblock_s = type { %struct.journal_header_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i8, [3 x i8], i32, [41 x i32], i32, [768 x i8] }
%struct.journal_header_s = type { i32, i32, i32 }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.journal_head = type { ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.journal_block_tag_s = type { i32, i16, i16, i32 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.journal_block_tag3_s = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
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
%struct.commit_header = type { i32, i32, i32, i8, i8, [2 x i8], [8 x i32], i64, i32 }

@__kstrtab_jbd2_submit_inode_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_submit_inode_data = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_submit_inode_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_submit_inode_data to i32), ptr @__kstrtab_jbd2_submit_inode_data, ptr @__kstrtabns_jbd2_submit_inode_data }, section "___ksymtab+jbd2_submit_inode_data", align 4
@__kstrtab_jbd2_wait_inode_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_wait_inode_data = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_wait_inode_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_wait_inode_data to i32), ptr @__kstrtab_jbd2_wait_inode_data, ptr @__kstrtabns_jbd2_wait_inode_data }, section "___ksymtab+jbd2_wait_inode_data", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/jbd2/commit.c\00", [47 x i8] zeroinitializer }, align 32
@__func__.jbd2_journal_commit_transaction = private unnamed_addr constant [32 x i8] c"jbd2_journal_commit_transaction\00", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"super block updated\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"superblock not updated\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"JBD2: starting commit of transaction %d\0A\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"JBD2: commit phase 1\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"JBD2: commit phase 2a\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"JBD2: commit phase 2b\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"JBD2: get descriptor\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"JBD2: got buffer %llu (%p)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"JBD2: Submit %d IOs\0A\00", [43 x i8] zeroinitializer }, align 32
@jbd2_journal_commit_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.jbd2_journal_commit_transaction, ptr @.str, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014JBD2: Detected IO errors while flushing file data on %s\0A\00", [37 x i8] zeroinitializer }, align 32
@jbd2_journal_commit_transaction._entry_ptr = internal global ptr @jbd2_journal_commit_transaction._entry, section ".printk_index", align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"JBD2: commit phase 3\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"JBD2: commit phase 4\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"JBD2: commit phase 5\0A\00", [42 x i8] zeroinitializer }, align 32
@jbd2_journal_commit_transaction.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"JBD2: commit phase 6\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"JBD2: commit phase 7\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"JBD2: commit %d complete, head %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_jbd2_submit_inode_data = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/jbd2.h\00", [36 x i8] zeroinitializer }, align 32
@trace_jbd2_submit_inode_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@jbd2_journal_has_csum_v2or3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/jbd2.h\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_jbd2_start_commit = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_start_commit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_jbd2_commit_locking = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_commit_locking.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_jbd2_commit_flushing = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_commit_flushing.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_jbd2_commit_logging = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_commit_logging.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@blockdev_superblock = external dso_local local_unnamed_addr global ptr, align 4
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__tracepoint_jbd2_run_stats = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_run_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_jbd2_end_commit = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_end_commit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 422, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 436, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 468, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 539, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 572, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 585, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 641, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 651, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 736, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 775, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 838, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 881, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 905, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 944, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1121, i32 2 }
@___asan_gen_.78 = private constant [20 x i8] c"../fs/jbd2/commit.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1163, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [31 x i8] c"../include/trace/events/jbd2.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 116, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 108, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"../include/linux/jbd2.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1734, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 366, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 260, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1160, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 717, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_jbd2_submit_inode_data, ptr @__ksymtab_jbd2_wait_inode_data, ptr @jbd2_journal_commit_transaction._entry, ptr @jbd2_journal_commit_transaction._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_commit_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_submit_inode_data_buffers(ptr nocapture noundef readonly %jinode) local_unnamed_addr #0 align 64 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vfs_inode = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 3
  %0 = ptrtoint ptr %i_vfs_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_vfs_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc) #8
  %4 = getelementptr inbounds i8, ptr %wbc, i32 24
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %4, align 8, !annotation !91
  %nrpages = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nrpages, align 4
  %mul = shl i32 %7, 1
  %8 = ptrtoint ptr %wbc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %wbc, align 8
  %pages_skipped = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 1
  %9 = ptrtoint ptr %pages_skipped to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pages_skipped, align 4
  %range_start = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 2
  %i_dirty_start = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 5
  %10 = ptrtoint ptr %i_dirty_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_dirty_start, align 8
  %12 = ptrtoint ptr %range_start to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %range_start, align 8
  %range_end = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 3
  %i_dirty_end = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 6
  %13 = ptrtoint ptr %i_dirty_end to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_dirty_end, align 8
  %15 = ptrtoint ptr %range_end to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %range_end, align 8
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %16 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %sync_mode, align 8
  %for_kupdate = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %17 = ptrtoint ptr %for_kupdate to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 127, ptr %for_kupdate, align 4
  %wb = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 6
  %18 = call ptr @memset(ptr %wb, i32 0, i32 32)
  %call = call i32 @generic_writepages(ptr noundef %3, ptr noundef nonnull %wbc) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc) #8
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_submit_inode_data(ptr noundef readonly %jinode) #0 align 64 {
entry:
  %wbc.i = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %jinode, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %i_flags = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %i_vfs_inode = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 3
  %2 = ptrtoint ptr %i_vfs_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_vfs_inode, align 8
  tail call fastcc void @trace_jbd2_submit_inode_data(ptr noundef %3)
  %4 = ptrtoint ptr %i_vfs_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_vfs_inode, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc.i) #8
  %8 = getelementptr inbounds i8, ptr %wbc.i, i32 24
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 4303355903, ptr %8, align 8, !annotation !91
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nrpages.i, align 4
  %mul.i = shl i32 %11, 1
  %12 = ptrtoint ptr %wbc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %wbc.i, align 8
  %pages_skipped.i = getelementptr inbounds %struct.writeback_control, ptr %wbc.i, i32 0, i32 1
  %13 = ptrtoint ptr %pages_skipped.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pages_skipped.i, align 4
  %range_start.i = getelementptr inbounds %struct.writeback_control, ptr %wbc.i, i32 0, i32 2
  %i_dirty_start.i = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 5
  %14 = ptrtoint ptr %i_dirty_start.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_dirty_start.i, align 8
  %16 = ptrtoint ptr %range_start.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %range_start.i, align 8
  %range_end.i = getelementptr inbounds %struct.writeback_control, ptr %wbc.i, i32 0, i32 3
  %i_dirty_end.i = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 6
  %17 = ptrtoint ptr %i_dirty_end.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_dirty_end.i, align 8
  %19 = ptrtoint ptr %range_end.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %range_end.i, align 8
  %wb.i = getelementptr inbounds %struct.writeback_control, ptr %wbc.i, i32 0, i32 6
  %20 = call ptr @memset(ptr %wb.i, i32 0, i32 32)
  %call.i = call i32 @generic_writepages(ptr noundef %7, ptr noundef nonnull %wbc.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc.i) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_submit_inode_data(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_submit_inode_data, i32 0, i32 1), ptr blockaddress(@trace_jbd2_submit_inode_data, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %call42 = tail call i32 @__traceiter_jbd2_submit_inode_data(ptr noundef null, ptr noundef %inode) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_submit_inode_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_submit_inode_data, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_submit_inode_data.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_submit_inode_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 134, ptr noundef nonnull @.str.18) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
define dso_local i32 @jbd2_wait_inode_data(ptr nocapture readnone %journal, ptr noundef readonly %jinode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %jinode, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %i_flags = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %i_vfs_inode = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 3
  %2 = ptrtoint ptr %i_vfs_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_vfs_inode, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %lor.lhs.false4

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false4.return_crit_edge, label %if.end

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  %i_dirty_start = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 5
  %6 = ptrtoint ptr %i_dirty_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_dirty_start, align 8
  %i_dirty_end = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 6
  %8 = ptrtoint ptr %i_dirty_end to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_dirty_end, align 8
  %call = tail call i32 @filemap_fdatawait_range_keep_errors(ptr noundef nonnull %5, i64 noundef %7, i64 noundef %9) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false4.return_crit_edge, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false4.return_crit_edge ], [ 0, %lor.lhs.false2.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range_keep_errors(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_finish_inode_data_buffers(ptr nocapture noundef readonly %jinode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vfs_inode = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 3
  %0 = ptrtoint ptr %i_vfs_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_vfs_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %i_dirty_start = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 5
  %4 = ptrtoint ptr %i_dirty_start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_dirty_start, align 8
  %i_dirty_end = getelementptr inbounds %struct.jbd2_inode, ptr %jinode, i32 0, i32 6
  %6 = ptrtoint ptr %i_dirty_end to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_dirty_end, align 8
  %call = tail call i32 @filemap_fdatawait_range_keep_errors(ptr noundef %3, i64 noundef %5, i64 noundef %7) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_commit_transaction(ptr noundef %journal) local_unnamed_addr #0 align 64 {
entry:
  %desc.i27.i = alloca %struct.anon.84, align 8
  %desc.i.i = alloca %struct.anon.84, align 8
  %seq.i = alloca i32, align 4
  %stats = alloca %struct.transaction_stats_s, align 4
  %blocknr = alloca i64, align 8
  %cbh = alloca ptr, align 4
  %plug = alloca %struct.blk_plug, align 4
  %first_block = alloca i32, align 4
  %first_tid = alloca i32, align 4
  %io_bufs = alloca %struct.list_head, align 4
  %log_bufs = alloca %struct.list_head, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %stats) #8
  %0 = call ptr @memset(ptr %stats, i32 255, i32 44)
  %j_wbuf = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 54
  %1 = ptrtoint ptr %j_wbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %j_wbuf, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr) #8
  %3 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %blocknr, align 8, !annotation !91
  %call = tail call i32 @journal_tag_bytes(ptr noundef %journal) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cbh) #8
  %4 = ptrtoint ptr %cbh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cbh, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #8
  %5 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_block) #8
  %6 = ptrtoint ptr %first_block to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %first_block, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_tid) #8
  %7 = ptrtoint ptr %first_tid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %first_tid, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %io_bufs) #8
  %8 = getelementptr inbounds %struct.list_head, ptr %io_bufs, i32 0, i32 1
  %9 = ptrtoint ptr %io_bufs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %io_bufs, ptr %io_bufs, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %io_bufs, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %log_bufs) #8
  %11 = getelementptr inbounds %struct.list_head, ptr %log_bufs, i32 0, i32 1
  %12 = ptrtoint ptr %log_bufs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %log_bufs, ptr %log_bufs, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %log_bufs, ptr %11, align 4
  %j_format_version.i.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 6
  %14 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.i.i = icmp sgt i32 %15, 1
  br i1 %cmp.i.i.i, label %jbd2_has_feature_csum2.exit.i.i, label %entry.jbd2_journal_has_csum_v2or3.exit_crit_edge

entry.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

jbd2_has_feature_csum2.exit.i.i:                  ; preds = %entry
  %j_superblock.i.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %16 = ptrtoint ptr %j_superblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %j_superblock.i.i.i, align 4
  %s_feature_incompat.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %s_feature_incompat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_feature_incompat.i.i.i, align 4
  %20 = and i32 %19, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %.not.i = icmp eq i32 %20, 0
  br i1 %.not.i, label %jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, label %land.rhs.i

jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

land.rhs.i:                                       ; preds = %jbd2_has_feature_csum2.exit.i.i
  %j_chksum_driver.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 70
  %21 = ptrtoint ptr %j_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %j_chksum_driver.i, align 8
  %cmp.i = icmp eq ptr %22, null
  br i1 %cmp.i, label %land.rhs2.i, label %land.rhs.i.jbd2_journal_has_csum_v2or3.exit_crit_edge

land.rhs.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

land.rhs2.i:                                      ; preds = %land.rhs.i
  %.b43.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i, label %land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, label %if.then.i1470, !prof !93

land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %land.rhs2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

if.then.i1470:                                    ; preds = %land.rhs2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit

jbd2_journal_has_csum_v2or3.exit:                 ; preds = %if.then.i1470, %land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %land.rhs.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %entry.jbd2_journal_has_csum_v2or3.exit_crit_edge
  %j_chksum_driver37.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 70
  %23 = ptrtoint ptr %j_chksum_driver37.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %j_chksum_driver37.i, align 8
  %cmp38.i.not = icmp eq ptr %24, null
  %spec.select = select i1 %cmp38.i.not, i32 0, i32 4
  %25 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %journal, align 8
  %and = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %jbd2_journal_has_csum_v2or3.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 422, ptr noundef nonnull @.str.1) #8
  %j_checkpoint_mutex = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 19
  call void @mutex_lock_io_nested(ptr noundef %j_checkpoint_mutex, i32 noundef 0) #8
  %j_tail_sequence = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 41
  %27 = ptrtoint ptr %j_tail_sequence to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %j_tail_sequence, align 4
  %j_tail = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 25
  %29 = ptrtoint ptr %j_tail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %j_tail, align 8
  %call6 = call i32 @jbd2_journal_update_sb_log_tail(ptr noundef %journal, i32 noundef %28, i32 noundef %30, i32 noundef 2048) #8
  call void @mutex_unlock(ptr noundef %j_checkpoint_mutex) #8
  br label %do.body

if.else:                                          ; preds = %jbd2_journal_has_csum_v2or3.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 436, ptr noundef nonnull @.str.2) #8
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then5
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 10
  %31 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %j_running_transaction, align 8
  %cmp.not = icmp eq ptr %32, null
  br i1 %cmp.not, label %do.body13, label %do.body20, !prof !98

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 439, 0\0A.popsection", ""() #8, !srcloc !99
  unreachable

do.body20:                                        ; preds = %do.body
  %j_committing_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 11
  %33 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %j_committing_transaction, align 4
  %cmp21.not = icmp eq ptr %34, null
  br i1 %cmp21.not, label %do.end39, label %do.body31, !prof !93

do.body31:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #8, !srcloc !100
  unreachable

do.end39:                                         ; preds = %do.body20
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  %35 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %journal, align 8
  %or = or i32 %36, 512
  store i32 %or, ptr %journal, align 8
  %and421690 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and421690)
  %tobool43.not1691 = icmp eq i32 %and421690, 0
  br i1 %tobool43.not1691, label %do.end39.while.end_crit_edge, label %while.body.lr.ph

do.end39.while.end_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end39
  %37 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %38 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %39 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %40 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %j_fc_wait = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 18
  %41 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %43 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %wait, align 4
  %44 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %48 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %37, align 4
  %49 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @autoremove_wake_function, ptr %38, align 4
  %50 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %39, ptr %39, align 4
  %51 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %39, ptr %40, align 4
  call void @prepare_to_wait(ptr noundef %j_fc_wait, ptr noundef nonnull %wait, i32 noundef 2) #8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  call void @schedule() #8
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  call void @finish_wait(ptr noundef %j_fc_wait, ptr noundef nonnull %wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  %52 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %journal, align 8
  %and42 = and i32 %53, 256
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end39.while.end_crit_edge
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  %54 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %j_running_transaction, align 8
  call fastcc void @trace_jbd2_start_commit(ptr noundef %journal, ptr noundef %55)
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %t_tid, align 4
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 469, ptr noundef nonnull @.str.3, i32 noundef %57) #8
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  %j_fc_off = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 30
  %58 = ptrtoint ptr %j_fc_off to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %j_fc_off, align 4
  %t_state = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 2
  %59 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp58.not = icmp eq i32 %60, 0
  br i1 %cmp58.not, label %do.end76, label %do.body68, !prof !93

do.body68:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 473, 0\0A.popsection", ""() #8, !srcloc !101
  unreachable

do.end76:                                         ; preds = %while.end
  %61 = ptrtoint ptr %t_state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %t_state, align 8
  call fastcc void @trace_jbd2_commit_locking(ptr noundef %journal, ptr noundef %55)
  %t_max_wait = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 13
  %62 = ptrtoint ptr %t_max_wait to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %t_max_wait, align 8
  %run = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 2
  %64 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %run, align 4
  %rs_request_delay = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %rs_request_delay to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %rs_request_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %rs_locked = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 2, i32 3
  %67 = ptrtoint ptr %rs_locked to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rs_locked, align 4
  %t_requested = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 15
  %68 = ptrtoint ptr %t_requested to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %t_requested, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool80.not = icmp eq i32 %69, 0
  br i1 %tobool80.not, label %do.end76.if.end88_crit_edge, label %if.then81

do.end76.if.end88_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then81:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %69)
  %cmp.not.i = icmp ult i32 %66, %69
  %retval.0.p.v.i = select i1 %cmp.not.i, i32 1073741822, i32 0
  %retval.0.p.i = sub i32 %66, %69
  %retval.0.i = add i32 %retval.0.p.i, %retval.0.p.v.i
  %70 = ptrtoint ptr %rs_request_delay to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i, ptr %rs_request_delay, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %do.end76.if.end88_crit_edge
  %t_start = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 14
  %71 = ptrtoint ptr %t_start to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %t_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %72)
  %cmp.not.i1471 = icmp ult i32 %66, %72
  %retval.0.p.v.i1472 = select i1 %cmp.not.i1471, i32 1073741822, i32 0
  %retval.0.p.i1473 = sub i32 %66, %72
  %retval.0.i1474 = add i32 %retval.0.p.i1473, %retval.0.p.v.i1472
  %rs_running = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 2, i32 2
  %73 = ptrtoint ptr %rs_running to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %retval.0.i1474, ptr %rs_running, align 4
  call void @jbd2_journal_wait_updates(ptr noundef %journal) #8
  %74 = ptrtoint ptr %t_state to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %t_state, align 8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  %t_outstanding_credits = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %t_outstanding_credits, i32 noundef 4) #8
  %75 = ptrtoint ptr %t_outstanding_credits to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %t_outstanding_credits, align 4
  %j_max_transaction_buffers = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 47
  %77 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %j_max_transaction_buffers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp97.not = icmp sgt i32 %76, %78
  br i1 %cmp97.not, label %do.body107, label %while.cond116.preheader, !prof !98

while.cond116.preheader:                          ; preds = %if.end88
  %t_reserved_list = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 5
  %79 = ptrtoint ptr %t_reserved_list to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %t_reserved_list, align 4
  %tobool117.not1692 = icmp eq ptr %80, null
  br i1 %tobool117.not1692, label %while.cond116.preheader.while.end130_crit_edge, label %while.cond116.preheader.while.body118_crit_edge

while.cond116.preheader.while.body118_crit_edge:  ; preds = %while.cond116.preheader
  br label %while.body118

while.cond116.preheader.while.end130_crit_edge:   ; preds = %while.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end130

do.body107:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #8, !srcloc !102
  unreachable

while.body118:                                    ; preds = %if.end129.while.body118_crit_edge, %while.cond116.preheader.while.body118_crit_edge
  %81 = phi ptr [ %92, %if.end129.while.body118_crit_edge ], [ %80, %while.cond116.preheader.while.body118_crit_edge ]
  %b_committed_data = getelementptr inbounds %struct.journal_head, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %b_committed_data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_committed_data, align 4
  %tobool123.not = icmp eq ptr %83, null
  br i1 %tobool123.not, label %while.body118.if.end129_crit_edge, label %if.then124

while.body118.if.end129_crit_edge:                ; preds = %while.body118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then124:                                       ; preds = %while.body118
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %81, align 4
  %b_state_lock = getelementptr inbounds %struct.journal_head, ptr %81, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %b_state_lock) #8
  %86 = ptrtoint ptr %b_committed_data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %b_committed_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %85, i32 0, i32 4
  %88 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %b_size, align 8
  call void @jbd2_free(ptr noundef %87, i32 noundef %89) #8
  %90 = ptrtoint ptr %b_committed_data to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %b_committed_data, align 4
  call void @_raw_spin_unlock(ptr noundef %b_state_lock) #8
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %while.body118.if.end129_crit_edge
  call void @jbd2_journal_refile_buffer(ptr noundef %journal, ptr noundef nonnull %81) #8
  %91 = ptrtoint ptr %t_reserved_list to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %t_reserved_list, align 4
  %tobool117.not = icmp eq ptr %92, null
  br i1 %tobool117.not, label %if.end129.while.end130_crit_edge, label %if.end129.while.body118_crit_edge

if.end129.while.body118_crit_edge:                ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body118

if.end129.while.end130_crit_edge:                 ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end130

while.end130:                                     ; preds = %if.end129.while.end130_crit_edge, %while.cond116.preheader.while.end130_crit_edge
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  call void @__jbd2_journal_clean_checkpoint_list(ptr noundef %journal, i1 noundef zeroext false) #8
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 539, ptr noundef nonnull @.str.4) #8
  call void @jbd2_clear_buffer_revoked_flags(ptr noundef %journal) #8
  call void @jbd2_journal_switch_revoke_table(ptr noundef %journal) #8
  %j_reserved_credits = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 38
  %call.i.i1447 = call zeroext i1 @__kasan_check_read(ptr noundef %j_reserved_credits, i32 noundef 4) #8
  %93 = ptrtoint ptr %j_reserved_credits to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %j_reserved_credits, align 4
  %call.i.i1448 = call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #8
  %95 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 %94, ptr elementtype(i32) %t_outstanding_credits) #8, !srcloc !103
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  call fastcc void @trace_jbd2_commit_flushing(ptr noundef %journal, ptr noundef %55)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %rs_flushing = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 2, i32 4
  %97 = ptrtoint ptr %rs_flushing to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %rs_flushing, align 4
  %98 = ptrtoint ptr %rs_locked to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rs_locked, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %99)
  %cmp.not.i1475 = icmp ult i32 %96, %99
  %retval.0.p.v.i1476 = select i1 %cmp.not.i1475, i32 1073741822, i32 0
  %retval.0.p.i1477 = sub i32 %96, %99
  %retval.0.i1478 = add i32 %retval.0.p.i1477, %retval.0.p.v.i1476
  %100 = ptrtoint ptr %rs_locked to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i1478, ptr %rs_locked, align 4
  %101 = ptrtoint ptr %t_state to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3, ptr %t_state, align 8
  %102 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %55, ptr %j_committing_transaction, align 4
  %103 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %j_running_transaction, align 8
  %call146 = call i64 @ktime_get() #8
  %j_head = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 24
  %104 = ptrtoint ptr %j_head to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %j_head, align 4
  %t_log_start = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 3
  %106 = ptrtoint ptr %t_log_start to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %t_log_start, align 4
  %j_wait_transaction_locked = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 13
  call void @__wake_up(ptr noundef %j_wait_transaction_locked, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 572, ptr noundef nonnull @.str.5) #8
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %t_inode_list.i = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 11
  %107 = ptrtoint ptr %t_inode_list.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn57.i = load ptr, ptr %t_inode_list.i, align 4
  %cmp.not59.i = icmp eq ptr %.pn57.i, %t_inode_list.i
  br i1 %cmp.not59.i, label %journal_submit_data_buffers.exit.thread, label %for.body.lr.ph.i

journal_submit_data_buffers.exit.thread:          ; preds = %while.end130
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  br label %if.end151

for.body.lr.ph.i:                                 ; preds = %while.end130
  %j_submit_inode_data_buffers.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 63
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn61.i = phi ptr [ %.pn57.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.2.i, %for.inc.i.for.body.i_crit_edge ]
  %jinode.062.i = getelementptr i8, ptr %.pn61.i, i32 -8
  %i_flags.i = getelementptr i8, ptr %.pn61.i, i32 12
  %108 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i_flags.i, align 4
  %and.i1479 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1479)
  %tobool.not.i1480 = icmp eq i32 %and.i1479, 0
  br i1 %tobool.not.i1480, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %or.i = or i32 %109, 1
  %110 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i, ptr %i_flags.i, align 4
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  %i_vfs_inode.i = getelementptr i8, ptr %.pn61.i, i32 8
  %111 = ptrtoint ptr %i_vfs_inode.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_vfs_inode.i, align 8
  call fastcc void @trace_jbd2_submit_inode_data(ptr noundef %112) #8
  %113 = ptrtoint ptr %j_submit_inode_data_buffers.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %j_submit_inode_data_buffers.i, align 4
  %tobool4.not.i = icmp eq ptr %114, null
  br i1 %tobool4.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then5.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %114(ptr noundef %jinode.062.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.060.i)
  %tobool7.not.i = icmp eq i32 %ret.060.i, 0
  %spec.select.i = select i1 %tobool7.not.i, i32 %call.i, i32 %ret.060.i
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  %ret.1.i = phi i32 [ %ret.060.i, %if.end.i.if.end10.i_crit_edge ], [ %spec.select.i, %if.then5.i ]
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %115 = ptrtoint ptr %jinode.062.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %jinode.062.i, align 8
  %cmp12.not.i = icmp eq ptr %116, %55
  br i1 %cmp12.not.i, label %do.end24.i, label %do.body18.i, !prof !93

do.body18.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #8, !srcloc !104
  unreachable

do.end24.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %i_flags.i, align 4
  %and26.i = and i32 %118, -2
  store i32 %and26.i, ptr %i_flags.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !105
  call void @wake_up_bit(ptr noundef %i_flags.i, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end24.i, %for.body.i.for.inc.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %do.end24.i ], [ %ret.060.i, %for.body.i.for.inc.i_crit_edge ]
  %119 = ptrtoint ptr %.pn61.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pn.i = load ptr, ptr %.pn61.i, align 4
  %cmp.not.i1481 = icmp eq ptr %.pn.i, %t_inode_list.i
  br i1 %cmp.not.i1481, label %journal_submit_data_buffers.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

journal_submit_data_buffers.exit:                 ; preds = %for.inc.i
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool149.not = icmp eq i32 %ret.2.i, 0
  br i1 %tobool149.not, label %journal_submit_data_buffers.exit.if.end151_crit_edge, label %if.then150

journal_submit_data_buffers.exit.if.end151_crit_edge: ; preds = %journal_submit_data_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.then150:                                       ; preds = %journal_submit_data_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef %ret.2.i) #8
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %journal_submit_data_buffers.exit.if.end151_crit_edge, %journal_submit_data_buffers.exit.thread
  call void @blk_start_plug(ptr noundef nonnull %plug) #8
  call void @jbd2_journal_write_revoke_records(ptr noundef %55, ptr noundef nonnull %log_bufs) #8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 585, ptr noundef nonnull @.str.6) #8
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  %120 = ptrtoint ptr %t_state to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 4, ptr %t_state, align 8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  call fastcc void @trace_jbd2_commit_logging(ptr noundef %journal, ptr noundef %55)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %rs_logging = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 2, i32 5
  %122 = ptrtoint ptr %rs_logging to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %rs_logging, align 4
  %123 = ptrtoint ptr %rs_flushing to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rs_flushing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %124)
  %cmp.not.i1482 = icmp ult i32 %121, %124
  %retval.0.p.v.i1483 = select i1 %cmp.not.i1482, i32 1073741822, i32 0
  %retval.0.p.i1484 = sub i32 %121, %124
  %retval.0.i1485 = add i32 %retval.0.p.i1484, %retval.0.p.v.i1483
  %125 = ptrtoint ptr %rs_flushing to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %retval.0.i1485, ptr %rs_flushing, align 4
  %t_nr_buffers = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 4
  %126 = ptrtoint ptr %t_nr_buffers to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %t_nr_buffers, align 8
  %rs_blocks = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 2, i32 7
  %128 = ptrtoint ptr %rs_blocks to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %rs_blocks, align 4
  %rs_blocks_logged = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 2, i32 8
  %129 = ptrtoint ptr %rs_blocks_logged to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %rs_blocks_logged, align 4
  %130 = load i32, ptr %t_nr_buffers, align 8
  %call.i.i1449 = call zeroext i1 @__kasan_check_read(ptr noundef %t_outstanding_credits, i32 noundef 4) #8
  %131 = ptrtoint ptr %t_outstanding_credits to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %t_outstanding_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp169.not = icmp sgt i32 %130, %132
  br i1 %cmp169.not, label %do.body179, label %while.cond188.preheader, !prof !98

while.cond188.preheader:                          ; preds = %if.end151
  %t_buffers = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 6
  %j_superblock.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %j_csum_seed.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 71
  %133 = getelementptr inbounds %struct.anon.84, ptr %desc.i.i, i32 0, i32 1
  %134 = getelementptr inbounds %struct.anon.84, ptr %desc.i27.i, i32 0, i32 1
  %j_uuid = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 45
  %j_wbufsize = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 56
  %add = add i32 %call, 16
  %add280 = add i32 %add, %spec.select
  br label %while.cond188.outer.outer

do.body179:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #8, !srcloc !106
  unreachable

while.cond188:                                    ; preds = %while.cond188.outer1649, %if.then194.while.cond188_crit_edge
  %135 = phi ptr [ %.pr1733, %while.cond188.outer1649 ], [ %144, %if.then194.while.cond188_crit_edge ]
  %tobool189.not = icmp eq ptr %135, null
  br i1 %tobool189.not, label %while.end303, label %while.body190

while.body190:                                    ; preds = %while.cond188
  %136 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %journal, align 8
  %and.i1486 = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1486)
  %tobool193.not = icmp eq i32 %and.i1486, 0
  br i1 %tobool193.not, label %if.end204, label %if.then194

if.then194:                                       ; preds = %while.body190
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %135, align 4
  call void @_clear_bit(i32 noundef 21, ptr noundef %139) #8
  %b_frozen_data = getelementptr inbounds %struct.journal_head, ptr %135, i32 0, i32 5
  %140 = ptrtoint ptr %b_frozen_data to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %b_frozen_data, align 4
  %tobool199.not = icmp eq ptr %141, null
  %b_frozen_triggers = getelementptr inbounds %struct.journal_head, ptr %135, i32 0, i32 15
  %b_triggers = getelementptr inbounds %struct.journal_head, ptr %135, i32 0, i32 14
  %cond.in = select i1 %tobool199.not, ptr %b_triggers, ptr %b_frozen_triggers
  %142 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %142)
  %cond = load ptr, ptr %cond.in, align 4
  call void @jbd2_buffer_abort_trigger(ptr noundef nonnull %135, ptr noundef %cond) #8
  call void @jbd2_journal_refile_buffer(ptr noundef %journal, ptr noundef nonnull %135) #8
  %143 = ptrtoint ptr %t_buffers to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %t_buffers, align 8
  %tobool201.not = icmp eq ptr %144, null
  br i1 %tobool201.not, label %start_journal_io, label %if.then194.while.cond188_crit_edge

if.then194.while.cond188_crit_edge:               ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond188

if.end204:                                        ; preds = %while.body190
  %tobool205.not = icmp eq ptr %descriptor.0.ph1651, null
  br i1 %tobool205.not, label %do.body207, label %if.end204.if.end237_crit_edge

if.end204.if.end237_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end237

do.body207:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufs.0.ph1650)
  %cmp208.not = icmp eq i32 %bufs.0.ph1650, 0
  br i1 %cmp208.not, label %do.end226, label %do.body218, !prof !93

do.body218:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 639, 0\0A.popsection", ""() #8, !srcloc !107
  unreachable

do.end226:                                        ; preds = %do.body207
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 641, ptr noundef nonnull @.str.7) #8
  %call227 = call ptr @jbd2_journal_get_descriptor_buffer(ptr noundef %55, i32 noundef 1) #8
  %tobool228.not = icmp eq ptr %call227, null
  br i1 %tobool228.not, label %if.then229, label %if.end230

if.then229:                                       ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #10
  call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef -5) #8
  br label %while.cond188.outer1649

while.cond188.outer1649:                          ; preds = %while.cond188.outer1643, %if.then229
  %bufs.0.ph1650 = phi i32 [ %bufs.0.ph1647, %while.cond188.outer1643 ], [ 0, %if.then229 ]
  %descriptor.0.ph1651 = phi ptr [ %descriptor.0.ph1648, %while.cond188.outer1643 ], [ null, %if.then229 ]
  %145 = ptrtoint ptr %t_buffers to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pr1733 = load ptr, ptr %t_buffers, align 8
  br label %while.cond188

if.end230:                                        ; preds = %do.end226
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call227, i32 0, i32 3
  %146 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %b_blocknr, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call227, i32 0, i32 5
  %148 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %b_data, align 4
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 653, ptr noundef nonnull @.str.8, i64 noundef %147, ptr noundef %149) #8
  %150 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %b_data, align 4
  %arrayidx = getelementptr i8, ptr %151, i32 12
  %b_size232 = getelementptr inbounds %struct.buffer_head, ptr %call227, i32 0, i32 4
  %152 = ptrtoint ptr %b_size232 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %b_size232, align 8
  %sub = add i32 %153, -12
  %154 = ptrtoint ptr %call227 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %call227, align 4
  %156 = and i32 %155, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i = icmp eq i32 %156, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end230.set_buffer_jwrite.exit_crit_edge

if.end230.set_buffer_jwrite.exit_crit_edge:       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_jwrite.exit

if.then.i:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 17, ptr noundef nonnull %call227) #8
  br label %set_buffer_jwrite.exit

set_buffer_jwrite.exit:                           ; preds = %if.then.i, %if.end230.set_buffer_jwrite.exit_crit_edge
  %157 = ptrtoint ptr %call227 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %call227, align 4
  %159 = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not.i1450 = icmp eq i32 %159, 0
  br i1 %tobool.not.i1450, label %if.then.i1451, label %set_buffer_jwrite.exit.set_buffer_dirty.exit_crit_edge

set_buffer_jwrite.exit.set_buffer_dirty.exit_crit_edge: ; preds = %set_buffer_jwrite.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_dirty.exit

if.then.i1451:                                    ; preds = %set_buffer_jwrite.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 1, ptr noundef nonnull %call227) #8
  br label %set_buffer_dirty.exit

set_buffer_dirty.exit:                            ; preds = %if.then.i1451, %set_buffer_jwrite.exit.set_buffer_dirty.exit_crit_edge
  %160 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call227, ptr %2, align 4
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %call227, i32 0, i32 9
  %161 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %11, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i, ptr noundef %162, ptr noundef nonnull %log_bufs) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %set_buffer_dirty.exit.if.end237_crit_edge

set_buffer_dirty.exit.if.end237_crit_edge:        ; preds = %set_buffer_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end237

if.end.i.i.i:                                     ; preds = %set_buffer_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %b_assoc_buffers.i, ptr %11, align 4
  %164 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %log_bufs, ptr %b_assoc_buffers.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call227, i32 0, i32 9, i32 1
  %165 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %162, ptr %prev3.i.i.i, align 4
  %166 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %b_assoc_buffers.i, ptr %162, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.end.i.i.i, %set_buffer_dirty.exit.if.end237_crit_edge, %if.end204.if.end237_crit_edge
  %first_tag.1 = phi i32 [ 1, %set_buffer_dirty.exit.if.end237_crit_edge ], [ 1, %if.end.i.i.i ], [ %first_tag.0.ph1644, %if.end204.if.end237_crit_edge ]
  %space_left.1 = phi i32 [ %sub, %set_buffer_dirty.exit.if.end237_crit_edge ], [ %sub, %if.end.i.i.i ], [ %space_left.0.ph1645, %if.end204.if.end237_crit_edge ]
  %tagp.1 = phi ptr [ %arrayidx, %set_buffer_dirty.exit.if.end237_crit_edge ], [ %arrayidx, %if.end.i.i.i ], [ %tagp.0.ph1646, %if.end204.if.end237_crit_edge ]
  %bufs.1 = phi i32 [ 1, %set_buffer_dirty.exit.if.end237_crit_edge ], [ 1, %if.end.i.i.i ], [ %bufs.0.ph1650, %if.end204.if.end237_crit_edge ]
  %descriptor.1 = phi ptr [ %call227, %set_buffer_dirty.exit.if.end237_crit_edge ], [ %call227, %if.end.i.i.i ], [ %descriptor.0.ph1651, %if.end204.if.end237_crit_edge ]
  %call238 = call i32 @jbd2_journal_next_log_block(ptr noundef %journal, ptr noundef nonnull %blocknr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end241, label %if.end237.while.cond188.outer1643.backedge_crit_edge

if.end237.while.cond188.outer1643.backedge_crit_edge: ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond188.outer1643.backedge

while.cond188.outer1643.backedge:                 ; preds = %if.end241.while.cond188.outer1643.backedge_crit_edge, %if.end237.while.cond188.outer1643.backedge_crit_edge
  %call238.sink = phi i32 [ %call249, %if.end241.while.cond188.outer1643.backedge_crit_edge ], [ %call238, %if.end237.while.cond188.outer1643.backedge_crit_edge ]
  call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef %call238.sink) #8
  br label %while.cond188.outer1643

while.cond188.outer1643:                          ; preds = %while.cond188.outer, %while.cond188.outer1643.backedge
  %first_tag.0.ph1644 = phi i32 [ %first_tag.0.ph, %while.cond188.outer ], [ %first_tag.1, %while.cond188.outer1643.backedge ]
  %space_left.0.ph1645 = phi i32 [ %space_left.0.ph, %while.cond188.outer ], [ %space_left.1, %while.cond188.outer1643.backedge ]
  %tagp.0.ph1646 = phi ptr [ %tagp.0.ph, %while.cond188.outer ], [ %tagp.1, %while.cond188.outer1643.backedge ]
  %bufs.0.ph1647 = phi i32 [ %bufs.0.ph, %while.cond188.outer ], [ %bufs.1, %while.cond188.outer1643.backedge ]
  %descriptor.0.ph1648 = phi ptr [ %descriptor.0.ph, %while.cond188.outer ], [ %descriptor.1, %while.cond188.outer1643.backedge ]
  br label %while.cond188.outer1649

if.end241:                                        ; preds = %if.end237
  %call.i.i1452 = call zeroext i1 @__kasan_check_write(ptr noundef %t_outstanding_credits, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %t_outstanding_credits, i32 1, i32 3, i32 1) #8
  %167 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %t_outstanding_credits, ptr %t_outstanding_credits, i32 1, ptr elementtype(i32) %t_outstanding_credits) #8, !srcloc !103
  %168 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %135, align 4
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %169, i32 0, i32 11
  %call.i.i1453 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count, i32 1, i32 3, i32 1) #8
  %170 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count, ptr %b_count, i32 1, ptr elementtype(i32) %b_count) #8, !srcloc !108
  %171 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %135, align 4
  call void @_set_bit(i32 noundef 17, ptr noundef %172) #8
  %arrayidx248 = getelementptr ptr, ptr %2, i32 %bufs.1
  %173 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %blocknr, align 8
  %call249 = call i32 @jbd2_journal_write_metadata_buffer(ptr noundef %55, ptr noundef nonnull %135, ptr noundef %arrayidx248, i64 noundef %174) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %cmp250 = icmp slt i32 %call249, 0
  br i1 %cmp250, label %if.end241.while.cond188.outer1643.backedge_crit_edge, label %if.end252

if.end241.while.cond188.outer1643.backedge_crit_edge: ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond188.outer1643.backedge

if.end252:                                        ; preds = %if.end241
  %175 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx248, align 4
  %b_assoc_buffers.i1487 = getelementptr inbounds %struct.buffer_head, ptr %176, i32 0, i32 9
  %177 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %8, align 4
  %call.i.i.i1489 = call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i1487, ptr noundef %178, ptr noundef nonnull %io_bufs) #8
  br i1 %call.i.i.i1489, label %if.end.i.i.i1491, label %if.end252.jbd2_file_log_bh.exit1492_crit_edge

if.end252.jbd2_file_log_bh.exit1492_crit_edge:    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_file_log_bh.exit1492

if.end.i.i.i1491:                                 ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %b_assoc_buffers.i1487, ptr %8, align 4
  %180 = ptrtoint ptr %b_assoc_buffers.i1487 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %io_bufs, ptr %b_assoc_buffers.i1487, align 4
  %prev3.i.i.i1490 = getelementptr inbounds %struct.buffer_head, ptr %176, i32 0, i32 9, i32 1
  %181 = ptrtoint ptr %prev3.i.i.i1490 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %178, ptr %prev3.i.i.i1490, align 4
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %b_assoc_buffers.i1487, ptr %178, align 4
  br label %jbd2_file_log_bh.exit1492

jbd2_file_log_bh.exit1492:                        ; preds = %if.end.i.i.i1491, %if.end252.jbd2_file_log_bh.exit1492_crit_edge
  %and254 = and i32 %call249, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_tag.1)
  %tobool259.not = icmp eq i32 %first_tag.1, 0
  %or261 = or i32 %and254, 2
  %tag_flag.1 = select i1 %tobool259.not, i32 %or261, i32 %and254
  %183 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %135, align 4
  %b_blocknr264 = getelementptr inbounds %struct.buffer_head, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %b_blocknr264 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %b_blocknr264, align 8
  %conv.i1493 = trunc i64 %186 to i32
  %187 = ptrtoint ptr %tagp.1 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %conv.i1493, ptr %tagp.1, align 4
  %188 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %189)
  %cmp.i.i = icmp sgt i32 %189, 1
  br i1 %cmp.i.i, label %jbd2_has_feature_64bit.exit.i, label %jbd2_file_log_bh.exit1492.write_tag_block.exit_crit_edge

jbd2_file_log_bh.exit1492.write_tag_block.exit_crit_edge: ; preds = %jbd2_file_log_bh.exit1492
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_tag_block.exit

jbd2_has_feature_64bit.exit.i:                    ; preds = %jbd2_file_log_bh.exit1492
  %190 = ptrtoint ptr %j_superblock.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %j_superblock.i.i, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %191, i32 0, i32 8
  %192 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %s_feature_incompat.i.i, align 4
  %and.i.i = and i32 %193, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.not.i, label %jbd2_has_feature_64bit.exit.i.write_tag_block.exit_crit_edge, label %if.then.i1494

jbd2_has_feature_64bit.exit.i.write_tag_block.exit_crit_edge: ; preds = %jbd2_has_feature_64bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_tag_block.exit

if.then.i1494:                                    ; preds = %jbd2_has_feature_64bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i64 %186, 32
  %conv2.i = trunc i64 %shr.i to i32
  %t_blocknr_high.i = getelementptr inbounds %struct.journal_block_tag_s, ptr %tagp.1, i32 0, i32 3
  %194 = ptrtoint ptr %t_blocknr_high.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv2.i, ptr %t_blocknr_high.i, align 4
  br label %write_tag_block.exit

write_tag_block.exit:                             ; preds = %if.then.i1494, %jbd2_has_feature_64bit.exit.i.write_tag_block.exit_crit_edge, %jbd2_file_log_bh.exit1492.write_tag_block.exit_crit_edge
  %conv = trunc i32 %tag_flag.1 to i16
  %t_flags = getelementptr inbounds %struct.journal_block_tag_s, ptr %tagp.1, i32 0, i32 2
  %195 = ptrtoint ptr %t_flags to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv, ptr %t_flags, align 2
  %196 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx248, align 4
  %198 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %t_tid, align 4
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %197, i32 0, i32 2
  %200 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %b_page.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq.i) #8
  %202 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp.i.i.i.i = icmp sgt i32 %203, 1
  br i1 %cmp.i.i.i.i, label %jbd2_has_feature_csum2.exit.i.i.i, label %write_tag_block.exit.jbd2_journal_has_csum_v2or3.exit.i_crit_edge

write_tag_block.exit.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %write_tag_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_has_feature_csum2.exit.i.i.i:                ; preds = %write_tag_block.exit
  %204 = ptrtoint ptr %j_superblock.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %j_superblock.i.i, align 4
  %s_feature_incompat.i.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %205, i32 0, i32 8
  %206 = ptrtoint ptr %s_feature_incompat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %s_feature_incompat.i.i.i.i, align 4
  %208 = and i32 %207, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %.not.i.i = icmp eq i32 %208, 0
  br i1 %.not.i.i, label %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, label %land.rhs.i.i

jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

land.rhs.i.i:                                     ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  %209 = ptrtoint ptr %j_chksum_driver37.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %j_chksum_driver37.i, align 8
  %cmp.i.i1496 = icmp eq ptr %210, null
  br i1 %cmp.i.i1496, label %land.rhs2.i.i, label %land.rhs.i.i.if.end.i1498_crit_edge

land.rhs.i.i.if.end.i1498_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1498

land.rhs2.i.i:                                    ; preds = %land.rhs.i.i
  %.b43.i.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs2.i.i.jbd2_block_tag_csum_set.exit_crit_edge, label %if.then.i.i, !prof !93

land.rhs2.i.i.jbd2_block_tag_csum_set.exit_crit_edge: ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_block_tag_csum_set.exit

if.then.i.i:                                      ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_journal_has_csum_v2or3.exit.i:               ; preds = %if.then.i.i, %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %write_tag_block.exit.jbd2_journal_has_csum_v2or3.exit.i_crit_edge
  %211 = ptrtoint ptr %j_chksum_driver37.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %.pr = load ptr, ptr %j_chksum_driver37.i, align 8
  %cmp38.i.not.i = icmp eq ptr %.pr, null
  br i1 %cmp38.i.not.i, label %jbd2_journal_has_csum_v2or3.exit.i.jbd2_block_tag_csum_set.exit_crit_edge, label %jbd2_journal_has_csum_v2or3.exit.i.if.end.i1498_crit_edge

jbd2_journal_has_csum_v2or3.exit.i.if.end.i1498_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1498

jbd2_journal_has_csum_v2or3.exit.i.jbd2_block_tag_csum_set.exit_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_block_tag_csum_set.exit

if.end.i1498:                                     ; preds = %jbd2_journal_has_csum_v2or3.exit.i.if.end.i1498_crit_edge, %land.rhs.i.i.if.end.i1498_crit_edge
  %212 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %199, ptr %seq.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %213 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %213, 512
  %214 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i.i.i = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %217, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !109
  %218 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i1.i.i.i = and i32 %218, -16384
  %219 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %221, i32 0, i32 213
  %222 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %223, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  %call.i.i.i1497 = call ptr @__kmap_local_page_prot(ptr noundef %201, i32 noundef %or.i.i) #8
  %224 = ptrtoint ptr %j_csum_seed.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %j_csum_seed.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #8
  %226 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %227 = ptrtoint ptr %j_chksum_driver37.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %j_chksum_driver37.i, align 8
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %230)
  %cmp.i26.i = icmp ugt i32 %230, 4
  br i1 %cmp.i26.i, label %do.body2.i.i, label %do.end7.i.i, !prof !98

do.body2.i.i:                                     ; preds = %if.end.i1498
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

do.end7.i.i:                                      ; preds = %if.end.i1498
  %231 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %228, ptr %desc.i.i, align 8
  %232 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %225, ptr %133, align 8
  %call10.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef nonnull %seq.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool12.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool12.not.i.i, label %jbd2_chksum.exit.i, label %do.body20.i.i, !prof !93

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !112
  unreachable

jbd2_chksum.exit.i:                               ; preds = %do.end7.i.i
  %233 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %133, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %197, i32 0, i32 5
  %235 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %b_data.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %197, i32 0, i32 4
  %237 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %b_size.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i27.i) #8
  %239 = call ptr @memset(ptr %desc.i27.i, i32 255, i32 16)
  %240 = ptrtoint ptr %j_chksum_driver37.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %j_chksum_driver37.i, align 8
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %243)
  %cmp.i29.i = icmp ugt i32 %243, 4
  br i1 %cmp.i29.i, label %do.body2.i30.i, label %do.end7.i33.i, !prof !98

do.body2.i30.i:                                   ; preds = %jbd2_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

do.end7.i33.i:                                    ; preds = %jbd2_chksum.exit.i
  %244 = ptrtoint ptr %236 to i32
  %and.i1499 = and i32 %244, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i1497, i32 %and.i1499
  %245 = ptrtoint ptr %desc.i27.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %241, ptr %desc.i27.i, align 8
  %246 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %234, ptr %134, align 8
  %call10.i31.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i27.i, ptr noundef %add.ptr.i, i32 noundef %238) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i31.i)
  %tobool12.not.i32.i = icmp eq i32 %call10.i31.i, 0
  br i1 %tobool12.not.i32.i, label %jbd2_chksum.exit35.i, label %do.body20.i34.i, !prof !93

do.body20.i34.i:                                  ; preds = %do.end7.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !112
  unreachable

jbd2_chksum.exit35.i:                             ; preds = %do.end7.i33.i
  %247 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %134, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i27.i) #8
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i1497) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %249 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i1.i.i = and i32 %249, -16384
  %250 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 2
  %251 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %252, i32 0, i32 213
  %253 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %254, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  %255 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i.i = and i32 %255, -16384
  %256 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %258, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %259 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %260)
  %cmp.i36.i = icmp sgt i32 %260, 1
  br i1 %cmp.i36.i, label %jbd2_has_feature_csum3.exit.i, label %jbd2_chksum.exit35.i.if.else.i_crit_edge

jbd2_chksum.exit35.i.if.else.i_crit_edge:         ; preds = %jbd2_chksum.exit35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

jbd2_has_feature_csum3.exit.i:                    ; preds = %jbd2_chksum.exit35.i
  %261 = ptrtoint ptr %j_superblock.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %j_superblock.i.i, align 4
  %s_feature_incompat.i.i1501 = getelementptr inbounds %struct.journal_superblock_s, ptr %262, i32 0, i32 8
  %263 = ptrtoint ptr %s_feature_incompat.i.i1501 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %s_feature_incompat.i.i1501, align 4
  %and.i.i1502 = and i32 %264, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1502)
  %cmp1.i.not.i1503 = icmp eq i32 %and.i.i1502, 0
  br i1 %cmp1.i.not.i1503, label %jbd2_has_feature_csum3.exit.i.if.else.i_crit_edge, label %if.then8.i

jbd2_has_feature_csum3.exit.i.if.else.i_crit_edge: ; preds = %jbd2_has_feature_csum3.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %jbd2_has_feature_csum3.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %t_checksum.i = getelementptr inbounds %struct.journal_block_tag3_s, ptr %tagp.1, i32 0, i32 3
  %265 = ptrtoint ptr %t_checksum.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %248, ptr %t_checksum.i, align 4
  br label %jbd2_block_tag_csum_set.exit

if.else.i:                                        ; preds = %jbd2_has_feature_csum3.exit.i.if.else.i_crit_edge, %jbd2_chksum.exit35.i.if.else.i_crit_edge
  %conv.i1504 = trunc i32 %248 to i16
  %t_checksum9.i = getelementptr inbounds %struct.journal_block_tag_s, ptr %tagp.1, i32 0, i32 1
  %266 = ptrtoint ptr %t_checksum9.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %conv.i1504, ptr %t_checksum9.i, align 4
  br label %jbd2_block_tag_csum_set.exit

jbd2_block_tag_csum_set.exit:                     ; preds = %if.else.i, %if.then8.i, %jbd2_journal_has_csum_v2or3.exit.i.jbd2_block_tag_csum_set.exit_crit_edge, %land.rhs2.i.i.jbd2_block_tag_csum_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq.i) #8
  %add.ptr = getelementptr i8, ptr %tagp.1, i32 %call
  %sub267 = sub i32 %space_left.1, %call
  %inc268 = add i32 %bufs.1, 1
  br i1 %tobool259.not, label %jbd2_block_tag_csum_set.exit.if.end273_crit_edge, label %if.then270

jbd2_block_tag_csum_set.exit.if.end273_crit_edge: ; preds = %jbd2_block_tag_csum_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then270:                                       ; preds = %jbd2_block_tag_csum_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %267 = call ptr @memcpy(ptr %add.ptr, ptr %j_uuid, i32 16)
  %add.ptr271 = getelementptr i8, ptr %add.ptr, i32 16
  %sub272 = add i32 %sub267, -16
  br label %if.end273

if.end273:                                        ; preds = %if.then270, %jbd2_block_tag_csum_set.exit.if.end273_crit_edge
  %space_left.2 = phi i32 [ %sub272, %if.then270 ], [ %sub267, %jbd2_block_tag_csum_set.exit.if.end273_crit_edge ]
  %tagp.2 = phi ptr [ %add.ptr271, %if.then270 ], [ %add.ptr, %jbd2_block_tag_csum_set.exit.if.end273_crit_edge ]
  %268 = ptrtoint ptr %j_wbufsize to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %j_wbufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc268, i32 %269)
  %cmp274 = icmp eq i32 %inc268, %269
  br i1 %cmp274, label %if.end273.start_journal_io.thread_crit_edge, label %lor.lhs.false

if.end273.start_journal_io.thread_crit_edge:      ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %start_journal_io.thread

lor.lhs.false:                                    ; preds = %if.end273
  %270 = ptrtoint ptr %t_buffers to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %t_buffers, align 8
  %cmp277 = icmp eq ptr %271, null
  call void @__sanitizer_cov_trace_cmp4(i32 %space_left.2, i32 %add280)
  %cmp281 = icmp slt i32 %space_left.2, %add280
  %or.cond = select i1 %cmp277, i1 true, i1 %cmp281
  br i1 %or.cond, label %lor.lhs.false.start_journal_io.thread_crit_edge, label %lor.lhs.false.while.cond188.outer_crit_edge

lor.lhs.false.while.cond188.outer_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond188.outer

lor.lhs.false.start_journal_io.thread_crit_edge:  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %start_journal_io.thread

start_journal_io.thread:                          ; preds = %lor.lhs.false.start_journal_io.thread_crit_edge, %if.end273.start_journal_io.thread_crit_edge
  %t_flags.le = getelementptr inbounds %struct.journal_block_tag_s, ptr %tagp.1, i32 0, i32 2
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 736, ptr noundef nonnull @.str.9, i32 noundef %inc268) #8
  %272 = ptrtoint ptr %t_flags.le to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %t_flags.le, align 2
  %274 = or i16 %273, 8
  store i16 %274, ptr %t_flags.le, align 2
  br label %if.then289

start_journal_io:                                 ; preds = %if.then194
  %tobool288.not = icmp eq ptr %descriptor.0.ph1651, null
  br i1 %tobool288.not, label %start_journal_io.if.end290_crit_edge, label %start_journal_io.if.then289_crit_edge

start_journal_io.if.then289_crit_edge:            ; preds = %start_journal_io
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then289

start_journal_io.if.end290_crit_edge:             ; preds = %start_journal_io
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end290

if.then289:                                       ; preds = %start_journal_io.if.then289_crit_edge, %start_journal_io.thread
  %descriptor.21637 = phi ptr [ %descriptor.1, %start_journal_io.thread ], [ %descriptor.0.ph1651, %start_journal_io.if.then289_crit_edge ]
  %bufs.21635 = phi i32 [ %inc268, %start_journal_io.thread ], [ %bufs.0.ph1650, %start_journal_io.if.then289_crit_edge ]
  %tagp.31633 = phi ptr [ %tagp.2, %start_journal_io.thread ], [ %tagp.0.ph1646, %start_journal_io.if.then289_crit_edge ]
  %space_left.31631 = phi i32 [ %space_left.2, %start_journal_io.thread ], [ %space_left.0.ph1645, %start_journal_io.if.then289_crit_edge ]
  %first_tag.31629 = phi i32 [ 0, %start_journal_io.thread ], [ %first_tag.0.ph1644, %start_journal_io.if.then289_crit_edge ]
  call void @jbd2_descriptor_block_csum_set(ptr noundef %journal, ptr noundef nonnull %descriptor.21637) #8
  br label %if.end290

if.end290:                                        ; preds = %if.then289, %start_journal_io.if.end290_crit_edge
  %bufs.21636 = phi i32 [ %bufs.21635, %if.then289 ], [ %bufs.0.ph1650, %start_journal_io.if.end290_crit_edge ]
  %tagp.31634 = phi ptr [ %tagp.31633, %if.then289 ], [ %tagp.0.ph1646, %start_journal_io.if.end290_crit_edge ]
  %space_left.31632 = phi i32 [ %space_left.31631, %if.then289 ], [ %space_left.0.ph1645, %start_journal_io.if.end290_crit_edge ]
  %first_tag.31630 = phi i32 [ %first_tag.31629, %if.then289 ], [ %first_tag.0.ph1644, %start_journal_io.if.end290_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufs.21636)
  %cmp2911693 = icmp sgt i32 %bufs.21636, 0
  br i1 %cmp2911693, label %if.end290.for.body_crit_edge, label %if.end290.for.end_crit_edge

if.end290.for.end_crit_edge:                      ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end290.for.body_crit_edge:                     ; preds = %if.end290
  br label %for.body

for.body:                                         ; preds = %set_buffer_uptodate.exit.for.body_crit_edge, %if.end290.for.body_crit_edge
  %crc32_sum.11695 = phi i32 [ %crc32_sum.2, %set_buffer_uptodate.exit.for.body_crit_edge ], [ %crc32_sum.0.ph.ph, %if.end290.for.body_crit_edge ]
  %i.01694 = phi i32 [ %inc300, %set_buffer_uptodate.exit.for.body_crit_edge ], [ 0, %if.end290.for.body_crit_edge ]
  %arrayidx294 = getelementptr ptr, ptr %2, i32 %i.01694
  %275 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx294, align 4
  %277 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %278)
  %cmp.i1505 = icmp sgt i32 %278, 1
  br i1 %cmp.i1505, label %jbd2_has_feature_checksum.exit, label %for.body.if.end298_crit_edge

for.body.if.end298_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end298

jbd2_has_feature_checksum.exit:                   ; preds = %for.body
  %279 = ptrtoint ptr %j_superblock.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %j_superblock.i.i, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.journal_superblock_s, ptr %280, i32 0, i32 7
  %281 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %s_feature_compat.i, align 4
  %and.i1506 = and i32 %282, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1506)
  %cmp1.i.not = icmp eq i32 %and.i1506, 0
  br i1 %cmp1.i.not, label %jbd2_has_feature_checksum.exit.if.end298_crit_edge, label %if.then296

jbd2_has_feature_checksum.exit.if.end298_crit_edge: ; preds = %jbd2_has_feature_checksum.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end298

if.then296:                                       ; preds = %jbd2_has_feature_checksum.exit
  call void @__sanitizer_cov_trace_pc() #10
  %b_page.i1508 = getelementptr inbounds %struct.buffer_head, ptr %276, i32 0, i32 2
  %283 = ptrtoint ptr %b_page.i1508 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %b_page.i1508, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %285 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i1509 = or i32 %285, 512
  %286 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i.i.i1510 = and i32 %286, -16384
  %287 = inttoptr i32 %and.i.i.i.i.i.i1510 to ptr
  %preempt_count.i.i.i.i.i1511 = getelementptr inbounds %struct.thread_info, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %preempt_count.i.i.i.i.i1511 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load volatile i32, ptr %preempt_count.i.i.i.i.i1511, align 4
  %add.i.i.i.i1512 = add i32 %289, 1
  store volatile i32 %add.i.i.i.i1512, ptr %preempt_count.i.i.i.i.i1511, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !109
  %290 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i1.i.i.i1513 = and i32 %290, -16384
  %291 = inttoptr i32 %and.i.i.i1.i.i.i1513 to ptr
  %task.i.i.i.i.i1514 = getelementptr inbounds %struct.thread_info, ptr %291, i32 0, i32 2
  %292 = ptrtoint ptr %task.i.i.i.i.i1514 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %task.i.i.i.i.i1514, align 8
  %pagefault_disabled.i.i.i.i.i1515 = getelementptr inbounds %struct.task_struct, ptr %293, i32 0, i32 213
  %294 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i1515 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %pagefault_disabled.i.i.i.i.i1515, align 8
  %inc.i.i.i.i.i1516 = add i32 %295, 1
  store i32 %inc.i.i.i.i.i1516, ptr %pagefault_disabled.i.i.i.i.i1515, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  %call.i.i.i1517 = call ptr @__kmap_local_page_prot(ptr noundef %284, i32 noundef %or.i.i1509) #8
  %b_data.i1518 = getelementptr inbounds %struct.buffer_head, ptr %276, i32 0, i32 5
  %296 = ptrtoint ptr %b_data.i1518 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %b_data.i1518, align 4
  %298 = ptrtoint ptr %297 to i32
  %and.i1519 = and i32 %298, 4095
  %add.ptr.i1520 = getelementptr i8, ptr %call.i.i.i1517, i32 %and.i1519
  %b_size.i1521 = getelementptr inbounds %struct.buffer_head, ptr %276, i32 0, i32 4
  %299 = ptrtoint ptr %b_size.i1521 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %b_size.i1521, align 8
  %call1.i = call i32 @crc32_be(i32 noundef %crc32_sum.11695, ptr noundef %add.ptr.i1520, i32 noundef %300) #11
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i1517) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %301 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i1.i.i1522 = and i32 %301, -16384
  %302 = inttoptr i32 %and.i.i.i1.i.i1522 to ptr
  %task.i.i.i.i1523 = getelementptr inbounds %struct.thread_info, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %task.i.i.i.i1523 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %task.i.i.i.i1523, align 8
  %pagefault_disabled.i.i.i.i1524 = getelementptr inbounds %struct.task_struct, ptr %304, i32 0, i32 213
  %305 = ptrtoint ptr %pagefault_disabled.i.i.i.i1524 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %pagefault_disabled.i.i.i.i1524, align 8
  %dec.i.i.i.i1525 = add i32 %306, -1
  store i32 %dec.i.i.i.i1525, ptr %pagefault_disabled.i.i.i.i1524, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  %307 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i.i1526 = and i32 %307, -16384
  %308 = inttoptr i32 %and.i.i.i.i.i1526 to ptr
  %preempt_count.i.i.i.i1527 = getelementptr inbounds %struct.thread_info, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %preempt_count.i.i.i.i1527 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load volatile i32, ptr %preempt_count.i.i.i.i1527, align 4
  %sub.i.i.i1528 = add i32 %310, -1
  store volatile i32 %sub.i.i.i1528, ptr %preempt_count.i.i.i.i1527, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.then296, %jbd2_has_feature_checksum.exit.if.end298_crit_edge, %for.body.if.end298_crit_edge
  %crc32_sum.2 = phi i32 [ %call1.i, %if.then296 ], [ %crc32_sum.11695, %jbd2_has_feature_checksum.exit.if.end298_crit_edge ], [ %crc32_sum.11695, %for.body.if.end298_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 366) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %276, i32 noundef 4) #8
  %311 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load volatile i32, ptr %276, align 4
  %and.i.i.i.i = and i32 %312, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end298.if.then.i1529_crit_edge

if.end298.if.then.i1529_crit_edge:                ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i1529

trylock_buffer.exit.i:                            ; preds = %if.end298
  call void @llvm.prefetch.p0(ptr %276, i32 1, i32 3, i32 1) #8
  %313 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %276, ptr %276, i32 4, ptr elementtype(i32) %276) #8, !srcloc !115
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %313, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  %314 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.not.i = icmp eq i32 %314, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i1529_crit_edge

trylock_buffer.exit.i.if.then.i1529_crit_edge:    ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i1529

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i1529:                                    ; preds = %trylock_buffer.exit.i.if.then.i1529_crit_edge, %if.end298.if.then.i1529_crit_edge
  call void @__lock_buffer(ptr noundef %276) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i1529, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %276) #8
  %315 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %276, align 4
  %and1.i.i = and i32 %316, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i1454 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i1454, label %if.then.i1455, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i1455:                                    ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %276) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i1455, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %276, i32 0, i32 7
  %317 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr @journal_end_buffer_io_sync, ptr %b_end_io, align 4
  %call299 = call i32 @submit_bh(i32 noundef 1, i32 noundef 2048, ptr noundef %276) #8
  %inc300 = add nuw nsw i32 %i.01694, 1
  %exitcond.not = icmp eq i32 %inc300, %bufs.21636
  br i1 %exitcond.not, label %set_buffer_uptodate.exit.for.end_crit_edge, label %set_buffer_uptodate.exit.for.body_crit_edge

set_buffer_uptodate.exit.for.body_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

set_buffer_uptodate.exit.for.end_crit_edge:       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %set_buffer_uptodate.exit.for.end_crit_edge, %if.end290.for.end_crit_edge
  %crc32_sum.1.lcssa = phi i32 [ %crc32_sum.0.ph.ph, %if.end290.for.end_crit_edge ], [ %crc32_sum.2, %set_buffer_uptodate.exit.for.end_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 764, i32 noundef 0) #8
  %call.i1531 = call i32 @__cond_resched() #8
  br label %while.cond188.outer.outer

while.cond188.outer.outer:                        ; preds = %for.end, %while.cond188.preheader
  %crc32_sum.0.ph.ph = phi i32 [ %crc32_sum.1.lcssa, %for.end ], [ -1, %while.cond188.preheader ]
  %first_tag.0.ph.ph = phi i32 [ %first_tag.31630, %for.end ], [ 0, %while.cond188.preheader ]
  %space_left.0.ph.ph = phi i32 [ %space_left.31632, %for.end ], [ 0, %while.cond188.preheader ]
  %tagp.0.ph.ph = phi ptr [ %tagp.31634, %for.end ], [ null, %while.cond188.preheader ]
  br label %while.cond188.outer

while.cond188.outer:                              ; preds = %while.cond188.outer.outer, %lor.lhs.false.while.cond188.outer_crit_edge
  %first_tag.0.ph = phi i32 [ 0, %lor.lhs.false.while.cond188.outer_crit_edge ], [ %first_tag.0.ph.ph, %while.cond188.outer.outer ]
  %space_left.0.ph = phi i32 [ %space_left.2, %lor.lhs.false.while.cond188.outer_crit_edge ], [ %space_left.0.ph.ph, %while.cond188.outer.outer ]
  %tagp.0.ph = phi ptr [ %tagp.2, %lor.lhs.false.while.cond188.outer_crit_edge ], [ %tagp.0.ph.ph, %while.cond188.outer.outer ]
  %bufs.0.ph = phi i32 [ %inc268, %lor.lhs.false.while.cond188.outer_crit_edge ], [ 0, %while.cond188.outer.outer ]
  %descriptor.0.ph = phi ptr [ %descriptor.1, %lor.lhs.false.while.cond188.outer_crit_edge ], [ null, %while.cond188.outer.outer ]
  br label %while.cond188.outer1643

while.end303:                                     ; preds = %while.cond188
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %318 = ptrtoint ptr %t_inode_list.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %.pn90.i = load ptr, ptr %t_inode_list.i, align 4
  %cmp.not92.i = icmp eq ptr %.pn90.i, %t_inode_list.i
  br i1 %cmp.not92.i, label %while.end303.for.end.i_crit_edge, label %for.body.lr.ph.i1534

while.end303.for.end.i_crit_edge:                 ; preds = %while.end303
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i1534:                             ; preds = %while.end303
  %j_finish_inode_data_buffers.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 64
  br label %for.body.i1538

for.body.i1538:                                   ; preds = %for.inc.i1551.for.body.i1538_crit_edge, %for.body.lr.ph.i1534
  %.pn94.i = phi ptr [ %.pn90.i, %for.body.lr.ph.i1534 ], [ %.pn.i1549, %for.inc.i1551.for.body.i1538_crit_edge ]
  %ret.093.i = phi i32 [ 0, %for.body.lr.ph.i1534 ], [ %ret.2.i1548, %for.inc.i1551.for.body.i1538_crit_edge ]
  %jinode.095.i = getelementptr i8, ptr %.pn94.i, i32 -8
  %i_flags.i1535 = getelementptr i8, ptr %.pn94.i, i32 12
  %319 = ptrtoint ptr %i_flags.i1535 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %i_flags.i1535, align 4
  %and.i1536 = and i32 %320, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1536)
  %tobool.not.i1537 = icmp eq i32 %and.i1536, 0
  br i1 %tobool.not.i1537, label %for.body.i1538.for.inc.i1551_crit_edge, label %if.end.i1541

for.body.i1538.for.inc.i1551_crit_edge:           ; preds = %for.body.i1538
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i1551

if.end.i1541:                                     ; preds = %for.body.i1538
  %or.i1539 = or i32 %320, 1
  %321 = ptrtoint ptr %i_flags.i1535 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %or.i1539, ptr %i_flags.i1535, align 4
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  %322 = ptrtoint ptr %j_finish_inode_data_buffers.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %j_finish_inode_data_buffers.i, align 8
  %tobool4.not.i1540 = icmp eq ptr %323, null
  br i1 %tobool4.not.i1540, label %if.end.i1541.if.end10.i1547_crit_edge, label %if.then5.i1545

if.end.i1541.if.end10.i1547_crit_edge:            ; preds = %if.end.i1541
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i1547

if.then5.i1545:                                   ; preds = %if.end.i1541
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1542 = call i32 %323(ptr noundef %jinode.095.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.093.i)
  %tobool7.not.i1543 = icmp eq i32 %ret.093.i, 0
  %spec.select.i1544 = select i1 %tobool7.not.i1543, i32 %call.i1542, i32 %ret.093.i
  br label %if.end10.i1547

if.end10.i1547:                                   ; preds = %if.then5.i1545, %if.end.i1541.if.end10.i1547_crit_edge
  %ret.1.i1546 = phi i32 [ %ret.093.i, %if.end.i1541.if.end10.i1547_crit_edge ], [ %spec.select.i1544, %if.then5.i1545 ]
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %324 = ptrtoint ptr %i_flags.i1535 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %i_flags.i1535, align 4
  %and13.i = and i32 %325, -2
  store i32 %and13.i, ptr %i_flags.i1535, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !117
  call void @wake_up_bit(ptr noundef %i_flags.i1535, i32 noundef 0) #8
  br label %for.inc.i1551

for.inc.i1551:                                    ; preds = %if.end10.i1547, %for.body.i1538.for.inc.i1551_crit_edge
  %ret.2.i1548 = phi i32 [ %ret.1.i1546, %if.end10.i1547 ], [ %ret.093.i, %for.body.i1538.for.inc.i1551_crit_edge ]
  %326 = ptrtoint ptr %.pn94.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %.pn.i1549 = load ptr, ptr %.pn94.i, align 4
  %cmp.not.i1550 = icmp eq ptr %.pn.i1549, %t_inode_list.i
  br i1 %cmp.not.i1550, label %for.inc.i1551.for.end.i_crit_edge, label %for.inc.i1551.for.body.i1538_crit_edge

for.inc.i1551.for.body.i1538_crit_edge:           ; preds = %for.inc.i1551
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i1538

for.inc.i1551.for.end.i_crit_edge:                ; preds = %for.inc.i1551
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i1551.for.end.i_crit_edge, %while.end303.for.end.i_crit_edge
  %ret.0.lcssa.i1552 = phi i32 [ 0, %while.end303.for.end.i_crit_edge ], [ %ret.2.i1548, %for.inc.i1551.for.end.i_crit_edge ]
  %327 = ptrtoint ptr %t_inode_list.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %t_inode_list.i, align 4
  %cmp36.not98.i = icmp eq ptr %328, %t_inode_list.i
  br i1 %cmp36.not98.i, label %for.end.i.journal_finish_inode_data_buffers.exit_crit_edge, label %for.end.i.for.body38.i_crit_edge

for.end.i.for.body38.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body38.i

for.end.i.journal_finish_inode_data_buffers.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_finish_inode_data_buffers.exit

for.body38.i:                                     ; preds = %for.inc49.i.for.body38.i_crit_edge, %for.end.i.for.body38.i_crit_edge
  %.pn86.in99.i = phi ptr [ %.pn86101.i, %for.inc49.i.for.body38.i_crit_edge ], [ %328, %for.end.i.for.body38.i_crit_edge ]
  %jinode.1100.i = getelementptr i8, ptr %.pn86.in99.i, i32 -8
  %329 = ptrtoint ptr %.pn86.in99.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %.pn86101.i = load ptr, ptr %.pn86.in99.i, align 8
  %call.i.i.i1553 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn86.in99.i) #8
  br i1 %call.i.i.i1553, label %if.end.i.i.i1554, label %for.body38.i.list_del.exit.i_crit_edge

for.body38.i.list_del.exit.i_crit_edge:           ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i1554:                                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn86.in99.i, i32 0, i32 1
  %330 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %prev.i.i.i, align 4
  %332 = ptrtoint ptr %.pn86.in99.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %.pn86.in99.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %333, i32 0, i32 1
  %334 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %331, ptr %prev1.i.i.i.i, align 4
  %335 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %335)
  store volatile ptr %333, ptr %331, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i1554, %for.body38.i.list_del.exit.i_crit_edge
  %336 = ptrtoint ptr %.pn86.in99.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn86.in99.i, align 4
  %prev.i.i1555 = getelementptr inbounds %struct.list_head, ptr %.pn86.in99.i, i32 0, i32 1
  %337 = ptrtoint ptr %prev.i.i1555 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i1555, align 4
  %i_next_transaction.i = getelementptr i8, ptr %.pn86.in99.i, i32 -4
  %338 = ptrtoint ptr %i_next_transaction.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %i_next_transaction.i, align 4
  %tobool40.not.i = icmp eq ptr %339, null
  br i1 %tobool40.not.i, label %if.else.i1556, label %if.then41.i

if.then41.i:                                      ; preds = %list_del.exit.i
  %340 = ptrtoint ptr %jinode.1100.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %339, ptr %jinode.1100.i, align 8
  %341 = ptrtoint ptr %i_next_transaction.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr null, ptr %i_next_transaction.i, align 4
  %t_inode_list46.i = getelementptr inbounds %struct.transaction_s, ptr %339, i32 0, i32 11
  %342 = ptrtoint ptr %t_inode_list46.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %t_inode_list46.i, align 4
  %call.i.i88.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn86.in99.i, ptr noundef %t_inode_list46.i, ptr noundef %343) #8
  br i1 %call.i.i88.i, label %if.end.i.i89.i, label %if.then41.i.for.inc49.i_crit_edge

if.then41.i.for.inc49.i_crit_edge:                ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc49.i

if.end.i.i89.i:                                   ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %343, i32 0, i32 1
  %344 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %.pn86.in99.i, ptr %prev1.i.i.i, align 4
  %345 = ptrtoint ptr %.pn86.in99.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %343, ptr %.pn86.in99.i, align 4
  %346 = ptrtoint ptr %prev.i.i1555 to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %t_inode_list46.i, ptr %prev.i.i1555, align 4
  %347 = ptrtoint ptr %t_inode_list46.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store volatile ptr %.pn86.in99.i, ptr %t_inode_list46.i, align 4
  br label %for.inc49.i

if.else.i1556:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %348 = ptrtoint ptr %jinode.1100.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr null, ptr %jinode.1100.i, align 8
  %i_dirty_start.i = getelementptr i8, ptr %.pn86.in99.i, i32 16
  %349 = call ptr @memset(ptr %i_dirty_start.i, i32 0, i32 16)
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %if.else.i1556, %if.end.i.i89.i, %if.then41.i.for.inc49.i_crit_edge
  %cmp36.not.i = icmp eq ptr %.pn86101.i, %t_inode_list.i
  br i1 %cmp36.not.i, label %for.inc49.i.journal_finish_inode_data_buffers.exit_crit_edge, label %for.inc49.i.for.body38.i_crit_edge

for.inc49.i.for.body38.i_crit_edge:               ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38.i

for.inc49.i.journal_finish_inode_data_buffers.exit_crit_edge: ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_finish_inode_data_buffers.exit

journal_finish_inode_data_buffers.exit:           ; preds = %for.inc49.i.journal_finish_inode_data_buffers.exit_crit_edge, %for.end.i.journal_finish_inode_data_buffers.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i1552)
  %tobool305.not = icmp eq i32 %ret.0.lcssa.i1552, 0
  br i1 %tobool305.not, label %journal_finish_inode_data_buffers.exit.if.end318_crit_edge, label %do.end309

journal_finish_inode_data_buffers.exit.if.end318_crit_edge: ; preds = %journal_finish_inode_data_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end318

do.end309:                                        ; preds = %journal_finish_inode_data_buffers.exit
  %j_devname = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 35
  %call312 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %j_devname) #12
  %350 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %journal, align 8
  %and314 = and i32 %351, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  br i1 %tobool315.not, label %do.end309.if.end318_crit_edge, label %if.then316

do.end309.if.end318_crit_edge:                    ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end318

if.then316:                                       ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #10
  call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef %ret.0.lcssa.i1552) #8
  br label %if.end318

if.end318:                                        ; preds = %if.then316, %do.end309.if.end318_crit_edge, %journal_finish_inode_data_buffers.exit.if.end318_crit_edge
  %call319 = call i32 @jbd2_journal_get_log_tail(ptr noundef %journal, ptr noundef nonnull %first_tid, ptr noundef nonnull %first_block) #8
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool321.not = icmp eq i32 %call319, 0
  br i1 %tobool321.not, label %if.end318.do.body338_crit_edge, label %if.then322

if.end318.do.body338_crit_edge:                   ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body338

if.then322:                                       ; preds = %if.end318
  %352 = ptrtoint ptr %first_block to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %first_block, align 4
  %j_tail323 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 25
  %354 = ptrtoint ptr %j_tail323 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %j_tail323, align 8
  %sub324 = sub i32 %353, %355
  call void @__sanitizer_cov_trace_cmp4(i32 %353, i32 %355)
  %cmp326 = icmp ult i32 %353, %355
  br i1 %cmp326, label %if.then328, label %if.then322.if.end331_crit_edge

if.then322.if.end331_crit_edge:                   ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end331

if.then328:                                       ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #10
  %j_last = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 28
  %356 = ptrtoint ptr %j_last to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %j_last, align 4
  %j_first = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 27
  %358 = ptrtoint ptr %j_first to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %j_first, align 8
  %sub329 = add i32 %357, %sub324
  %add330 = sub i32 %sub329, %359
  br label %if.end331

if.end331:                                        ; preds = %if.then328, %if.then322.if.end331_crit_edge
  %freed.0 = phi i32 [ %add330, %if.then328 ], [ %sub324, %if.then322.if.end331_crit_edge ]
  %j_total_len.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 37
  %360 = ptrtoint ptr %j_total_len.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %j_total_len.i, align 4
  %j_fc_wbufsize.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 57
  %362 = ptrtoint ptr %j_fc_wbufsize.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %j_fc_wbufsize.i, align 8
  %sub.i = sub i32 %361, %363
  %div2.i = lshr i32 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %freed.0, i32 %div2.i)
  %cmp333 = icmp slt i32 %freed.0, %div2.i
  %spec.select1445 = select i1 %cmp333, i32 0, i32 %call319
  br label %do.body338

do.body338:                                       ; preds = %if.end331, %if.end318.do.body338_crit_edge
  %update_tail.1 = phi i32 [ %spec.select1445, %if.end331 ], [ 0, %if.end318.do.body338_crit_edge ]
  %364 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %365)
  %cmp340.not = icmp eq i32 %365, 4
  br i1 %cmp340.not, label %do.end359, label %do.body351, !prof !93

do.body351:                                       ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 803, 0\0A.popsection", ""() #8, !srcloc !118
  unreachable

do.end359:                                        ; preds = %do.body338
  %366 = ptrtoint ptr %t_state to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 5, ptr %t_state, align 8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  %t_need_data_flush = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 26
  %367 = ptrtoint ptr %t_need_data_flush to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %t_need_data_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool362.not = icmp eq i32 %368, 0
  br i1 %tobool362.not, label %do.end359.if.end372_crit_edge, label %land.lhs.true

do.end359.if.end372_crit_edge:                    ; preds = %do.end359
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end372

land.lhs.true:                                    ; preds = %do.end359
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %369 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %j_fs_dev, align 8
  %j_dev = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 32
  %371 = ptrtoint ptr %j_dev to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %j_dev, align 4
  %cmp363.not = icmp eq ptr %370, %372
  br i1 %cmp363.not, label %land.lhs.true.if.end372_crit_edge, label %land.lhs.true365

land.lhs.true.if.end372_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end372

land.lhs.true365:                                 ; preds = %land.lhs.true
  %373 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %journal, align 8
  %and367 = and i32 %374, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and367)
  %tobool368.not = icmp eq i32 %and367, 0
  br i1 %tobool368.not, label %land.lhs.true365.if.end372_crit_edge, label %if.then369

land.lhs.true365.if.end372_crit_edge:             ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end372

if.then369:                                       ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #10
  %call371 = call i32 @blkdev_issue_flush(ptr noundef %370) #8
  br label %if.end372

if.end372:                                        ; preds = %if.then369, %land.lhs.true365.if.end372_crit_edge, %land.lhs.true.if.end372_crit_edge, %do.end359.if.end372_crit_edge
  %375 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %376)
  %cmp.i1558 = icmp sgt i32 %376, 1
  br i1 %cmp.i1558, label %jbd2_has_feature_async_commit.exit, label %if.end372.if.end379_crit_edge

if.end372.if.end379_crit_edge:                    ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379

jbd2_has_feature_async_commit.exit:               ; preds = %if.end372
  %377 = ptrtoint ptr %j_superblock.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %j_superblock.i.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.journal_superblock_s, ptr %378, i32 0, i32 8
  %379 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %s_feature_incompat.i, align 4
  %and.i1560 = and i32 %380, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1560)
  %cmp1.i1561.not = icmp eq i32 %and.i1560, 0
  br i1 %cmp1.i1561.not, label %jbd2_has_feature_async_commit.exit.if.end379_crit_edge, label %if.then374

jbd2_has_feature_async_commit.exit.if.end379_crit_edge: ; preds = %jbd2_has_feature_async_commit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379

if.then374:                                       ; preds = %jbd2_has_feature_async_commit.exit
  %call375 = call fastcc i32 @journal_submit_commit_record(ptr noundef %journal, ptr noundef %55, ptr noundef nonnull %cbh, i32 noundef %crc32_sum.0.ph.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call375)
  %tobool376.not = icmp eq i32 %call375, 0
  br i1 %tobool376.not, label %if.then374.if.end379_crit_edge, label %if.then377

if.then374.if.end379_crit_edge:                   ; preds = %if.then374
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379

if.then377:                                       ; preds = %if.then374
  call void @__sanitizer_cov_trace_pc() #10
  call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef %call375) #8
  br label %if.end379

if.end379:                                        ; preds = %if.then377, %if.then374.if.end379_crit_edge, %jbd2_has_feature_async_commit.exit.if.end379_crit_edge, %if.end372.if.end379_crit_edge
  %err.1 = phi i32 [ %call375, %if.then377 ], [ 0, %if.then374.if.end379_crit_edge ], [ 0, %jbd2_has_feature_async_commit.exit.if.end379_crit_edge ], [ 0, %if.end372.if.end379_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 838, ptr noundef nonnull @.str.11) #8
  %381 = ptrtoint ptr %io_bufs to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load volatile ptr, ptr %io_bufs, align 4
  %cmp.i1563.not1696 = icmp eq ptr %382, %io_bufs
  br i1 %cmp.i1563.not1696, label %if.end379.do.body485_crit_edge, label %while.body385.lr.ph

if.end379.do.body485_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body485

while.body385.lr.ph:                              ; preds = %if.end379
  %t_shadow_list = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 10
  br label %while.body385

while.body385:                                    ; preds = %do.end480.while.body385_crit_edge, %while.body385.lr.ph
  %err.21697 = phi i32 [ %err.1, %while.body385.lr.ph ], [ %err.3, %do.end480.while.body385_crit_edge ]
  %383 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %8, align 4
  %add.ptr389 = getelementptr i8, ptr %384, i32 -44
  call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 354) #8
  %385 = ptrtoint ptr %add.ptr389 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load volatile i32, ptr %add.ptr389, align 4
  %387 = and i32 %386, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %tobool.not.i1565 = icmp eq i32 %387, 0
  br i1 %tobool.not.i1565, label %while.body385.wait_on_buffer.exit_crit_edge, label %if.then.i1566

while.body385.wait_on_buffer.exit_crit_edge:      ; preds = %while.body385
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit

if.then.i1566:                                    ; preds = %while.body385
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef %add.ptr389) #8
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i1566, %while.body385.wait_on_buffer.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 846, i32 noundef 0) #8
  %call.i1568 = call i32 @__cond_resched() #8
  %388 = ptrtoint ptr %add.ptr389 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load volatile i32, ptr %add.ptr389, align 4
  %and1.i.i1456 = and i32 %389, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1456)
  %tobool393.not = icmp eq i32 %and1.i.i1456, 0
  br i1 %tobool393.not, label %if.then402, label %wait_on_buffer.exit.if.end403_crit_edge, !prof !98

wait_on_buffer.exit.if.end403_crit_edge:          ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end403

if.then402:                                       ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end403

if.end403:                                        ; preds = %if.then402, %wait_on_buffer.exit.if.end403_crit_edge
  %err.3 = phi i32 [ -5, %if.then402 ], [ %err.21697, %wait_on_buffer.exit.if.end403_crit_edge ]
  %call.i.i.i1570 = call zeroext i1 @__list_del_entry_valid(ptr noundef %384) #8
  br i1 %call.i.i.i1570, label %if.end.i.i.i1573, label %if.end403.jbd2_unfile_log_bh.exit_crit_edge

if.end403.jbd2_unfile_log_bh.exit_crit_edge:      ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_unfile_log_bh.exit

if.end.i.i.i1573:                                 ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i1571 = getelementptr i8, ptr %384, i32 4
  %390 = ptrtoint ptr %prev.i.i.i1571 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %prev.i.i.i1571, align 4
  %392 = ptrtoint ptr %384 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %384, align 4
  %prev1.i.i.i.i1572 = getelementptr inbounds %struct.list_head, ptr %393, i32 0, i32 1
  %394 = ptrtoint ptr %prev1.i.i.i.i1572 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %391, ptr %prev1.i.i.i.i1572, align 4
  %395 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %395)
  store volatile ptr %393, ptr %391, align 4
  br label %jbd2_unfile_log_bh.exit

jbd2_unfile_log_bh.exit:                          ; preds = %if.end.i.i.i1573, %if.end403.jbd2_unfile_log_bh.exit_crit_edge
  %396 = ptrtoint ptr %384 to i32
  call void @__asan_store4_noabort(i32 %396)
  store volatile ptr %384, ptr %384, align 4
  %prev.i3.i.i = getelementptr i8, ptr %384, i32 4
  %397 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %384, ptr %prev.i3.i.i, align 4
  %398 = ptrtoint ptr %rs_blocks_logged to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %rs_blocks_logged, align 4
  %inc406 = add i32 %399, 1
  store i32 %inc406, ptr %rs_blocks_logged, align 4
  call void @__brelse(ptr noundef %add.ptr389) #8
  %b_count411 = getelementptr i8, ptr %384, i32 12
  %call.i.i1457 = call zeroext i1 @__kasan_check_read(ptr noundef %b_count411, i32 noundef 4) #8
  %400 = ptrtoint ptr %b_count411 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load volatile i32, ptr %b_count411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %cmp413.not = icmp eq i32 %401, 0
  br i1 %cmp413.not, label %do.end432, label %do.body424, !prof !93

do.body424:                                       ; preds = %jbd2_unfile_log_bh.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 859, 0\0A.popsection", ""() #8, !srcloc !119
  unreachable

do.end432:                                        ; preds = %jbd2_unfile_log_bh.exit
  call void @free_buffer_head(ptr noundef %add.ptr389) #8
  %402 = ptrtoint ptr %t_shadow_list to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %t_shadow_list, align 8
  %b_tprev = getelementptr inbounds %struct.journal_head, ptr %403, i32 0, i32 10
  %404 = ptrtoint ptr %b_tprev to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %b_tprev, align 4
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %405, align 4
  call void @_clear_bit(i32 noundef 17, ptr noundef %407) #8
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load volatile i32, ptr %407, align 4
  %410 = and i32 %409, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %tobool436.not = icmp eq i32 %410, 0
  br i1 %tobool436.not, label %do.body446, label %do.body455, !prof !98

do.body446:                                       ; preds = %do.end432
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 866, 0\0A.popsection", ""() #8, !srcloc !120
  unreachable

do.body455:                                       ; preds = %do.end432
  %411 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load volatile i32, ptr %407, align 4
  %413 = and i32 %412, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool457.not = icmp eq i32 %413, 0
  br i1 %tobool457.not, label %do.end480, label %do.body469, !prof !93

do.body469:                                       ; preds = %do.body455
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 867, 0\0A.popsection", ""() #8, !srcloc !121
  unreachable

do.end480:                                        ; preds = %do.body455
  call void @jbd2_journal_file_buffer(ptr noundef %405, ptr noundef %55, i32 noundef 2) #8
  call void @__brelse(ptr noundef %407) #8
  %414 = ptrtoint ptr %io_bufs to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load volatile ptr, ptr %io_bufs, align 4
  %cmp.i1563.not = icmp eq ptr %415, %io_bufs
  br i1 %cmp.i1563.not, label %do.end480.do.body485_crit_edge, label %do.end480.while.body385_crit_edge

do.end480.while.body385_crit_edge:                ; preds = %do.end480
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body385

do.end480.do.body485_crit_edge:                   ; preds = %do.end480
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body485

do.body485:                                       ; preds = %do.end480.do.body485_crit_edge, %if.end379.do.body485_crit_edge
  %err.2.lcssa = phi i32 [ %err.1, %if.end379.do.body485_crit_edge ], [ %err.3, %do.end480.do.body485_crit_edge ]
  %t_shadow_list486 = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 10
  %416 = ptrtoint ptr %t_shadow_list486 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %t_shadow_list486, align 8
  %cmp487.not = icmp eq ptr %417, null
  br i1 %cmp487.not, label %do.end506, label %do.body498, !prof !93

do.body498:                                       ; preds = %do.body485
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 879, 0\0A.popsection", ""() #8, !srcloc !122
  unreachable

do.end506:                                        ; preds = %do.body485
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 881, ptr noundef nonnull @.str.12) #8
  %418 = ptrtoint ptr %log_bufs to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load volatile ptr, ptr %log_bufs, align 4
  %cmp.i1574.not1699 = icmp eq ptr %419, %log_bufs
  br i1 %cmp.i1574.not1699, label %do.end506.while.end538_crit_edge, label %do.end506.while.body512_crit_edge

do.end506.while.body512_crit_edge:                ; preds = %do.end506
  br label %while.body512

do.end506.while.end538_crit_edge:                 ; preds = %do.end506
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end538

while.body512:                                    ; preds = %jbd2_unfile_log_bh.exit1587.while.body512_crit_edge, %do.end506.while.body512_crit_edge
  %err.41700 = phi i32 [ %err.5, %jbd2_unfile_log_bh.exit1587.while.body512_crit_edge ], [ %err.2.lcssa, %do.end506.while.body512_crit_edge ]
  %420 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %11, align 4
  %add.ptr517 = getelementptr i8, ptr %421, i32 -44
  call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 354) #8
  %422 = ptrtoint ptr %add.ptr517 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load volatile i32, ptr %add.ptr517, align 4
  %424 = and i32 %423, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %tobool.not.i1576 = icmp eq i32 %424, 0
  br i1 %tobool.not.i1576, label %while.body512.wait_on_buffer.exit1579_crit_edge, label %if.then.i1577

while.body512.wait_on_buffer.exit1579_crit_edge:  ; preds = %while.body512
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit1579

if.then.i1577:                                    ; preds = %while.body512
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef %add.ptr517) #8
  br label %wait_on_buffer.exit1579

wait_on_buffer.exit1579:                          ; preds = %if.then.i1577, %while.body512.wait_on_buffer.exit1579_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 0) #8
  %call.i1580 = call i32 @__cond_resched() #8
  %425 = ptrtoint ptr %add.ptr517 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load volatile i32, ptr %add.ptr517, align 4
  %and1.i.i1461 = and i32 %426, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1461)
  %tobool521.not = icmp eq i32 %and1.i.i1461, 0
  br i1 %tobool521.not, label %if.then530, label %wait_on_buffer.exit1579.do.end534_crit_edge, !prof !98

wait_on_buffer.exit1579.do.end534_crit_edge:      ; preds = %wait_on_buffer.exit1579
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end534

if.then530:                                       ; preds = %wait_on_buffer.exit1579
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end534

do.end534:                                        ; preds = %if.then530, %wait_on_buffer.exit1579.do.end534_crit_edge
  %err.5 = phi i32 [ -5, %if.then530 ], [ %err.41700, %wait_on_buffer.exit1579.do.end534_crit_edge ]
  call void @_clear_bit(i32 noundef 17, ptr noundef %add.ptr517) #8
  %call.i.i.i1582 = call zeroext i1 @__list_del_entry_valid(ptr noundef %421) #8
  br i1 %call.i.i.i1582, label %if.end.i.i.i1585, label %do.end534.jbd2_unfile_log_bh.exit1587_crit_edge

do.end534.jbd2_unfile_log_bh.exit1587_crit_edge:  ; preds = %do.end534
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_unfile_log_bh.exit1587

if.end.i.i.i1585:                                 ; preds = %do.end534
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i1583 = getelementptr i8, ptr %421, i32 4
  %427 = ptrtoint ptr %prev.i.i.i1583 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %prev.i.i.i1583, align 4
  %429 = ptrtoint ptr %421 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %421, align 4
  %prev1.i.i.i.i1584 = getelementptr inbounds %struct.list_head, ptr %430, i32 0, i32 1
  %431 = ptrtoint ptr %prev1.i.i.i.i1584 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %428, ptr %prev1.i.i.i.i1584, align 4
  %432 = ptrtoint ptr %428 to i32
  call void @__asan_store4_noabort(i32 %432)
  store volatile ptr %430, ptr %428, align 4
  br label %jbd2_unfile_log_bh.exit1587

jbd2_unfile_log_bh.exit1587:                      ; preds = %if.end.i.i.i1585, %do.end534.jbd2_unfile_log_bh.exit1587_crit_edge
  %433 = ptrtoint ptr %421 to i32
  call void @__asan_store4_noabort(i32 %433)
  store volatile ptr %421, ptr %421, align 4
  %prev.i3.i.i1586 = getelementptr i8, ptr %421, i32 4
  %434 = ptrtoint ptr %prev.i3.i.i1586 to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr %421, ptr %prev.i3.i.i1586, align 4
  %435 = ptrtoint ptr %rs_blocks_logged to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %rs_blocks_logged, align 4
  %inc537 = add i32 %436, 1
  store i32 %inc537, ptr %rs_blocks_logged, align 4
  call void @__brelse(ptr noundef %add.ptr517) #8
  %437 = ptrtoint ptr %log_bufs to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load volatile ptr, ptr %log_bufs, align 4
  %cmp.i1574.not = icmp eq ptr %438, %log_bufs
  br i1 %cmp.i1574.not, label %jbd2_unfile_log_bh.exit1587.while.end538_crit_edge, label %jbd2_unfile_log_bh.exit1587.while.body512_crit_edge

jbd2_unfile_log_bh.exit1587.while.body512_crit_edge: ; preds = %jbd2_unfile_log_bh.exit1587
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body512

jbd2_unfile_log_bh.exit1587.while.end538_crit_edge: ; preds = %jbd2_unfile_log_bh.exit1587
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end538

while.end538:                                     ; preds = %jbd2_unfile_log_bh.exit1587.while.end538_crit_edge, %do.end506.while.end538_crit_edge
  %err.4.lcssa = phi i32 [ %err.2.lcssa, %do.end506.while.end538_crit_edge ], [ %err.5, %jbd2_unfile_log_bh.exit1587.while.end538_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4.lcssa)
  %tobool539.not = icmp eq i32 %err.4.lcssa, 0
  br i1 %tobool539.not, label %while.end538.if.end541_crit_edge, label %if.then540

while.end538.if.end541_crit_edge:                 ; preds = %while.end538
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end541

if.then540:                                       ; preds = %while.end538
  call void @__sanitizer_cov_trace_pc() #10
  call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef %err.4.lcssa) #8
  br label %if.end541

if.end541:                                        ; preds = %if.then540, %while.end538.if.end541_crit_edge
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 905, ptr noundef nonnull @.str.13) #8
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  %439 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %440)
  %cmp545.not = icmp eq i32 %440, 5
  br i1 %cmp545.not, label %do.end564, label %do.body556, !prof !93

do.body556:                                       ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 907, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

do.end564:                                        ; preds = %if.end541
  %441 = ptrtoint ptr %t_state to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 6, ptr %t_state, align 8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  %442 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %443)
  %cmp.i1589 = icmp sgt i32 %443, 1
  br i1 %cmp.i1589, label %jbd2_has_feature_async_commit.exit1595, label %do.end564.if.then568_crit_edge

do.end564.if.then568_crit_edge:                   ; preds = %do.end564
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then568

jbd2_has_feature_async_commit.exit1595:           ; preds = %do.end564
  %444 = ptrtoint ptr %j_superblock.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %j_superblock.i.i, align 4
  %s_feature_incompat.i1591 = getelementptr inbounds %struct.journal_superblock_s, ptr %445, i32 0, i32 8
  %446 = ptrtoint ptr %s_feature_incompat.i1591 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %s_feature_incompat.i1591, align 4
  %and.i1592 = and i32 %447, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1592)
  %cmp1.i1593.not = icmp eq i32 %and.i1592, 0
  br i1 %cmp1.i1593.not, label %jbd2_has_feature_async_commit.exit1595.if.then568_crit_edge, label %jbd2_has_feature_async_commit.exit1595.if.end573_crit_edge

jbd2_has_feature_async_commit.exit1595.if.end573_crit_edge: ; preds = %jbd2_has_feature_async_commit.exit1595
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end573

jbd2_has_feature_async_commit.exit1595.if.then568_crit_edge: ; preds = %jbd2_has_feature_async_commit.exit1595
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then568

if.then568:                                       ; preds = %jbd2_has_feature_async_commit.exit1595.if.then568_crit_edge, %do.end564.if.then568_crit_edge
  %call569 = call fastcc i32 @journal_submit_commit_record(ptr noundef %journal, ptr noundef %55, ptr noundef nonnull %cbh, i32 noundef %crc32_sum.0.ph.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call569)
  %tobool570.not = icmp eq i32 %call569, 0
  br i1 %tobool570.not, label %if.then568.if.end573_crit_edge, label %if.then571

if.then568.if.end573_crit_edge:                   ; preds = %if.then568
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end573

if.then571:                                       ; preds = %if.then568
  call void @__sanitizer_cov_trace_pc() #10
  call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef %call569) #8
  br label %if.end573

if.end573:                                        ; preds = %if.then571, %if.then568.if.end573_crit_edge, %jbd2_has_feature_async_commit.exit1595.if.end573_crit_edge
  %err.6 = phi i32 [ %err.4.lcssa, %jbd2_has_feature_async_commit.exit1595.if.end573_crit_edge ], [ %call569, %if.then571 ], [ 0, %if.then568.if.end573_crit_edge ]
  %448 = ptrtoint ptr %cbh to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %cbh, align 4
  %tobool574.not = icmp eq ptr %449, null
  br i1 %tobool574.not, label %if.end573.if.end577_crit_edge, label %if.then575

if.end573.if.end577_crit_edge:                    ; preds = %if.end573
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end577

if.then575:                                       ; preds = %if.end573
  call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %449) #8
  call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 354) #8
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load volatile i32, ptr %449, align 4
  %452 = and i32 %451, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %tobool.not.i.i = icmp eq i32 %452, 0
  br i1 %tobool.not.i.i, label %if.then575.wait_on_buffer.exit.i_crit_edge, label %if.then.i.i1596

if.then575.wait_on_buffer.exit.i_crit_edge:       ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit.i

if.then.i.i1596:                                  ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef nonnull %449) #8
  br label %wait_on_buffer.exit.i

wait_on_buffer.exit.i:                            ; preds = %if.then.i.i1596, %if.then575.wait_on_buffer.exit.i_crit_edge
  %453 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load volatile i32, ptr %449, align 4
  %and1.i.i.i = and i32 %454, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i1597 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i1597, label %if.then.i1598, label %wait_on_buffer.exit.i.journal_wait_on_commit_record.exit_crit_edge, !prof !98

wait_on_buffer.exit.i.journal_wait_on_commit_record.exit_crit_edge: ; preds = %wait_on_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_wait_on_commit_record.exit

if.then.i1598:                                    ; preds = %wait_on_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_wait_on_commit_record.exit

journal_wait_on_commit_record.exit:               ; preds = %if.then.i1598, %wait_on_buffer.exit.i.journal_wait_on_commit_record.exit_crit_edge
  %ret.0.i = phi i32 [ -5, %if.then.i1598 ], [ 0, %wait_on_buffer.exit.i.journal_wait_on_commit_record.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !124
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %449, i32 0, i32 11
  %call.i.i.i.i1599 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #8
  %455 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #8, !srcloc !103
  br label %if.end577

if.end577:                                        ; preds = %journal_wait_on_commit_record.exit, %if.end573.if.end577_crit_edge
  %err.7 = phi i32 [ %ret.0.i, %journal_wait_on_commit_record.exit ], [ %err.6, %if.end573.if.end577_crit_edge ]
  %456 = ptrtoint ptr %rs_blocks_logged to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %rs_blocks_logged, align 4
  %inc580 = add i32 %457, 1
  store i32 %inc580, ptr %rs_blocks_logged, align 4
  %458 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %459)
  %cmp.i1602 = icmp sgt i32 %459, 1
  br i1 %cmp.i1602, label %jbd2_has_feature_async_commit.exit1608, label %if.end577.if.end590_crit_edge

if.end577.if.end590_crit_edge:                    ; preds = %if.end577
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end590

jbd2_has_feature_async_commit.exit1608:           ; preds = %if.end577
  %460 = ptrtoint ptr %j_superblock.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %j_superblock.i.i, align 4
  %s_feature_incompat.i1604 = getelementptr inbounds %struct.journal_superblock_s, ptr %461, i32 0, i32 8
  %462 = ptrtoint ptr %s_feature_incompat.i1604 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %s_feature_incompat.i1604, align 4
  %and.i1605 = and i32 %463, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1605)
  %cmp1.i1606.not = icmp eq i32 %and.i1605, 0
  br i1 %cmp1.i1606.not, label %jbd2_has_feature_async_commit.exit1608.if.end590_crit_edge, label %land.lhs.true583

jbd2_has_feature_async_commit.exit1608.if.end590_crit_edge: ; preds = %jbd2_has_feature_async_commit.exit1608
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end590

land.lhs.true583:                                 ; preds = %jbd2_has_feature_async_commit.exit1608
  %464 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %journal, align 8
  %and585 = and i32 %465, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and585)
  %tobool586.not = icmp eq i32 %and585, 0
  br i1 %tobool586.not, label %land.lhs.true583.if.end590_crit_edge, label %if.then587

land.lhs.true583.if.end590_crit_edge:             ; preds = %land.lhs.true583
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end590

if.then587:                                       ; preds = %land.lhs.true583
  call void @__sanitizer_cov_trace_pc() #10
  %j_dev588 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 32
  %466 = ptrtoint ptr %j_dev588 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %j_dev588, align 4
  %call589 = call i32 @blkdev_issue_flush(ptr noundef %467) #8
  br label %if.end590

if.end590:                                        ; preds = %if.then587, %land.lhs.true583.if.end590_crit_edge, %jbd2_has_feature_async_commit.exit1608.if.end590_crit_edge, %if.end577.if.end590_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.7)
  %tobool591.not = icmp eq i32 %err.7, 0
  br i1 %tobool591.not, label %if.end590.if.end593_crit_edge, label %if.then592

if.end590.if.end593_crit_edge:                    ; preds = %if.end590
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end593

if.then592:                                       ; preds = %if.end590
  call void @__sanitizer_cov_trace_pc() #10
  call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef %err.7) #8
  br label %if.end593

if.end593:                                        ; preds = %if.then592, %if.end590.if.end593_crit_edge
  %call.i.i1462 = call zeroext i1 @__kasan_check_read(ptr noundef %t_outstanding_credits, i32 noundef 4) #8
  %468 = ptrtoint ptr %t_outstanding_credits to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load volatile i32, ptr %t_outstanding_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %469)
  %cmp596 = icmp slt i32 %469, 0
  br i1 %cmp596, label %land.rhs, label %if.end593.if.end639_crit_edge

if.end593.if.end639_crit_edge:                    ; preds = %if.end593
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end639

land.rhs:                                         ; preds = %if.end593
  %.b1443 = load i1, ptr @jbd2_journal_commit_transaction.__already_done, align 1
  br i1 %.b1443, label %land.rhs.if.end639_crit_edge, label %if.then613, !prof !93

land.rhs.if.end639_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end639

if.then613:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_commit_transaction.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 929, i32 noundef 9, ptr noundef null) #8
  br label %if.end639

if.end639:                                        ; preds = %if.then613, %land.rhs.if.end639_crit_edge, %if.end593.if.end639_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_tail.1)
  %tobool647.not = icmp eq i32 %update_tail.1, 0
  br i1 %tobool647.not, label %if.end639.if.end649_crit_edge, label %if.then648

if.end639.if.end649_crit_edge:                    ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end649

if.then648:                                       ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #10
  %470 = ptrtoint ptr %first_tid to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %first_tid, align 4
  %472 = ptrtoint ptr %first_block to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %first_block, align 4
  call void @jbd2_update_log_tail(ptr noundef %journal, i32 noundef %471, i32 noundef %473) #8
  br label %if.end649

if.end649:                                        ; preds = %if.then648, %if.end639.if.end649_crit_edge
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 944, ptr noundef nonnull @.str.14) #8
  %474 = ptrtoint ptr %t_inode_list.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load volatile ptr, ptr %t_inode_list.i, align 4
  %cmp.i1609.not = icmp eq ptr %475, %t_inode_list.i
  br i1 %cmp.i1609.not, label %do.body671, label %do.body662, !prof !93

do.body662:                                       ; preds = %if.end649
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 946, 0\0A.popsection", ""() #8, !srcloc !125
  unreachable

do.body671:                                       ; preds = %if.end649
  %476 = ptrtoint ptr %t_buffers to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %t_buffers, align 8
  %cmp673.not = icmp eq ptr %477, null
  br i1 %cmp673.not, label %do.body693, label %do.body684, !prof !93

do.body684:                                       ; preds = %do.body671
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 947, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

do.body693:                                       ; preds = %do.body671
  %t_checkpoint_list = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 8
  %478 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %t_checkpoint_list, align 8
  %cmp694.not = icmp eq ptr %479, null
  br i1 %cmp694.not, label %do.body714, label %do.body705, !prof !93

do.body705:                                       ; preds = %do.body693
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 948, 0\0A.popsection", ""() #8, !srcloc !127
  unreachable

do.body714:                                       ; preds = %do.body693
  %480 = ptrtoint ptr %t_shadow_list486 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %t_shadow_list486, align 8
  %cmp716.not = icmp eq ptr %481, null
  br i1 %cmp716.not, label %restart_loop.preheader, label %do.body727, !prof !93

restart_loop.preheader:                           ; preds = %do.body714
  %t_forget = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 7
  br label %restart_loop

do.body727:                                       ; preds = %do.body714
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 949, 0\0A.popsection", ""() #8, !srcloc !128
  unreachable

restart_loop:                                     ; preds = %if.then876, %restart_loop.preheader
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %482 = ptrtoint ptr %t_forget to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %t_forget, align 4
  %tobool738.not1702 = icmp eq ptr %483, null
  br i1 %tobool738.not1702, label %restart_loop.while.end870_crit_edge, label %restart_loop.while.body739_crit_edge

restart_loop.while.body739_crit_edge:             ; preds = %restart_loop
  br label %while.body739

restart_loop.while.end870_crit_edge:              ; preds = %restart_loop
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end870

while.body739:                                    ; preds = %if.end866.while.body739_crit_edge, %restart_loop.while.body739_crit_edge
  %484 = phi ptr [ %534, %if.end866.while.body739_crit_edge ], [ %483, %restart_loop.while.body739_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %484, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %486, i32 0, i32 11
  %call.i.i.i1611 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %487 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !108
  %b_state_lock744 = getelementptr inbounds %struct.journal_head, ptr %484, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %b_state_lock744) #8
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %484, i32 0, i32 7
  %488 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %b_transaction, align 4
  %cmp746.not = icmp eq ptr %489, %55
  br i1 %cmp746.not, label %do.end765, label %do.body757, !prof !93

do.body757:                                       ; preds = %while.body739
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 972, 0\0A.popsection", ""() #8, !srcloc !129
  unreachable

do.end765:                                        ; preds = %while.body739
  %b_committed_data766 = getelementptr inbounds %struct.journal_head, ptr %484, i32 0, i32 6
  %490 = ptrtoint ptr %b_committed_data766 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %b_committed_data766, align 4
  %tobool767.not = icmp eq ptr %491, null
  br i1 %tobool767.not, label %if.else780, label %if.then768

if.then768:                                       ; preds = %do.end765
  %b_size770 = getelementptr inbounds %struct.buffer_head, ptr %486, i32 0, i32 4
  %492 = ptrtoint ptr %b_size770 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %b_size770, align 8
  call void @jbd2_free(ptr noundef nonnull %491, i32 noundef %493) #8
  %494 = ptrtoint ptr %b_committed_data766 to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr null, ptr %b_committed_data766, align 4
  %b_frozen_data772 = getelementptr inbounds %struct.journal_head, ptr %484, i32 0, i32 5
  %495 = ptrtoint ptr %b_frozen_data772 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %b_frozen_data772, align 4
  %tobool773.not = icmp eq ptr %496, null
  br i1 %tobool773.not, label %if.then768.if.end789_crit_edge, label %if.then774

if.then768.if.end789_crit_edge:                   ; preds = %if.then768
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end789

if.then774:                                       ; preds = %if.then768
  call void @__sanitizer_cov_trace_pc() #10
  %497 = ptrtoint ptr %b_committed_data766 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %496, ptr %b_committed_data766, align 4
  br label %if.end789.sink.split

if.else780:                                       ; preds = %do.end765
  %b_frozen_data781 = getelementptr inbounds %struct.journal_head, ptr %484, i32 0, i32 5
  %498 = ptrtoint ptr %b_frozen_data781 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %b_frozen_data781, align 4
  %tobool782.not = icmp eq ptr %499, null
  br i1 %tobool782.not, label %if.else780.if.end789_crit_edge, label %if.then783

if.else780.if.end789_crit_edge:                   ; preds = %if.else780
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end789

if.then783:                                       ; preds = %if.else780
  call void @__sanitizer_cov_trace_pc() #10
  %b_size785 = getelementptr inbounds %struct.buffer_head, ptr %486, i32 0, i32 4
  %500 = ptrtoint ptr %b_size785 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %b_size785, align 8
  call void @jbd2_free(ptr noundef nonnull %499, i32 noundef %501) #8
  br label %if.end789.sink.split

if.end789.sink.split:                             ; preds = %if.then783, %if.then774
  %b_frozen_data781.sink = phi ptr [ %b_frozen_data781, %if.then783 ], [ %b_frozen_data772, %if.then774 ]
  %502 = ptrtoint ptr %b_frozen_data781.sink to i32
  call void @__asan_store4_noabort(i32 %502)
  store ptr null, ptr %b_frozen_data781.sink, align 4
  %b_frozen_triggers787 = getelementptr inbounds %struct.journal_head, ptr %484, i32 0, i32 15
  %503 = ptrtoint ptr %b_frozen_triggers787 to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr null, ptr %b_frozen_triggers787, align 4
  br label %if.end789

if.end789:                                        ; preds = %if.end789.sink.split, %if.else780.if.end789_crit_edge, %if.then768.if.end789_crit_edge
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %b_cp_transaction = getelementptr inbounds %struct.journal_head, ptr %484, i32 0, i32 11
  %504 = ptrtoint ptr %b_cp_transaction to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %b_cp_transaction, align 4
  %tobool791.not = icmp eq ptr %505, null
  br i1 %tobool791.not, label %if.end789.if.end798_crit_edge, label %do.end795

if.end789.if.end798_crit_edge:                    ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end798

do.end795:                                        ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #10
  %cs_dropped = getelementptr inbounds %struct.transaction_s, ptr %505, i32 0, i32 16, i32 3
  %506 = ptrtoint ptr %cs_dropped to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %cs_dropped, align 4
  %inc796 = add i32 %507, 1
  store i32 %inc796, ptr %cs_dropped, align 4
  %call797 = call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %484) #8
  br label %if.end798

if.end798:                                        ; preds = %do.end795, %if.end789.if.end798_crit_edge
  %508 = ptrtoint ptr %486 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load volatile i32, ptr %486, align 4
  %510 = and i32 %509, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %510)
  %tobool800.not = icmp eq i32 %510, 0
  br i1 %tobool800.not, label %if.end798.if.end814_crit_edge, label %land.lhs.true801

if.end798.if.end814_crit_edge:                    ; preds = %if.end798
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end814

land.lhs.true801:                                 ; preds = %if.end798
  %b_next_transaction = getelementptr inbounds %struct.journal_head, ptr %484, i32 0, i32 8
  %511 = ptrtoint ptr %b_next_transaction to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %b_next_transaction, align 4
  %tobool802.not = icmp eq ptr %512, null
  br i1 %tobool802.not, label %if.then803, label %land.lhs.true801.if.end814_crit_edge

land.lhs.true801.if.end814_crit_edge:             ; preds = %land.lhs.true801
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end814

if.then803:                                       ; preds = %land.lhs.true801
  call void @_clear_bit(i32 noundef 18, ptr noundef %486) #8
  call void @_clear_bit(i32 noundef 21, ptr noundef %486) #8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %486, i32 0, i32 2
  %513 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %b_page, align 8
  %mapping808 = getelementptr inbounds %struct.page, ptr %514, i32 0, i32 1, i32 0, i32 1
  %515 = ptrtoint ptr %mapping808 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load volatile ptr, ptr %mapping808, align 4
  %tobool809.not = icmp eq ptr %516, null
  br i1 %tobool809.not, label %if.then803.if.end814_crit_edge, label %land.lhs.true810

if.then803.if.end814_crit_edge:                   ; preds = %if.then803
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end814

land.lhs.true810:                                 ; preds = %if.then803
  %517 = ptrtoint ptr %516 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %516, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %518, i32 0, i32 8
  %519 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %i_sb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @blockdev_superblock to i32))
  %521 = load ptr, ptr @blockdev_superblock, align 4
  %cmp.i1612 = icmp eq ptr %521, %520
  br i1 %cmp.i1612, label %land.lhs.true810.if.end814_crit_edge, label %if.then812

land.lhs.true810.if.end814_crit_edge:             ; preds = %land.lhs.true810
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end814

if.then812:                                       ; preds = %land.lhs.true810
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 4, ptr noundef %486) #8
  call void @_clear_bit(i32 noundef 5, ptr noundef %486) #8
  call void @_clear_bit(i32 noundef 3, ptr noundef %486) #8
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %486, i32 0, i32 6
  %522 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %522)
  store ptr null, ptr %b_bdev, align 8
  br label %if.end814

if.end814:                                        ; preds = %if.then812, %land.lhs.true810.if.end814_crit_edge, %if.then803.if.end814_crit_edge, %land.lhs.true801.if.end814_crit_edge, %if.end798.if.end814_crit_edge
  %523 = ptrtoint ptr %486 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load volatile i32, ptr %486, align 4
  %525 = and i32 %524, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %525)
  %tobool816.not = icmp eq i32 %525, 0
  br i1 %tobool816.not, label %do.body826, label %do.end820

do.end820:                                        ; preds = %if.end814
  call void @__jbd2_journal_insert_checkpoint(ptr noundef nonnull %484, ptr noundef %55) #8
  %526 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %journal, align 8
  %and.i1613 = and i32 %527, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1613)
  %tobool822.not = icmp eq i32 %and.i1613, 0
  br i1 %tobool822.not, label %do.end820.do.end856_crit_edge, label %if.then823

do.end820.do.end856_crit_edge:                    ; preds = %do.end820
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end856

if.then823:                                       ; preds = %do.end820
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 21, ptr noundef %486) #8
  br label %do.end856

do.body826:                                       ; preds = %if.end814
  %528 = ptrtoint ptr %486 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load volatile i32, ptr %486, align 4
  %530 = and i32 %529, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %530)
  %tobool828.not = icmp eq i32 %530, 0
  br i1 %tobool828.not, label %do.end848, label %do.body840, !prof !93

do.body840:                                       ; preds = %do.body826
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1057, 0\0A.popsection", ""() #8, !srcloc !130
  unreachable

do.end848:                                        ; preds = %do.body826
  call void @__sanitizer_cov_trace_pc() #10
  %b_next_transaction849 = getelementptr inbounds %struct.journal_head, ptr %484, i32 0, i32 8
  %531 = ptrtoint ptr %b_next_transaction849 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %b_next_transaction849, align 4
  %tobool850.not = icmp ne ptr %532, null
  br label %do.end856

do.end856:                                        ; preds = %do.end848, %if.then823, %do.end820.do.end856_crit_edge
  %tobool863.not = phi i1 [ true, %if.then823 ], [ true, %do.end820.do.end856_crit_edge ], [ %tobool850.not, %do.end848 ]
  %call857 = call zeroext i1 @__jbd2_journal_refile_buffer(ptr noundef nonnull %484) #8
  call void @_raw_spin_unlock(ptr noundef %b_state_lock744) #8
  br i1 %call857, label %if.then861, label %do.end856.if.end862_crit_edge

do.end856.if.end862_crit_edge:                    ; preds = %do.end856
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end862

if.then861:                                       ; preds = %do.end856
  call void @__sanitizer_cov_trace_pc() #10
  call void @jbd2_journal_put_journal_head(ptr noundef nonnull %484) #8
  br label %if.end862

if.end862:                                        ; preds = %if.then861, %do.end856.if.end862_crit_edge
  br i1 %tobool863.not, label %if.else865, label %if.then864

if.then864:                                       ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @release_buffer_page(ptr noundef %486)
  br label %if.end866

if.else865:                                       ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef %486) #8
  br label %if.end866

if.end866:                                        ; preds = %if.else865, %if.then864
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1079, i32 noundef 1) #8
  %call869 = call i32 @__cond_resched_lock(ptr noundef %j_list_lock) #8
  %533 = ptrtoint ptr %t_forget to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %t_forget, align 4
  %tobool738.not = icmp eq ptr %534, null
  br i1 %tobool738.not, label %if.end866.while.end870_crit_edge, label %if.end866.while.body739_crit_edge

if.end866.while.body739_crit_edge:                ; preds = %if.end866
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body739

if.end866.while.end870_crit_edge:                 ; preds = %if.end866
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end870

while.end870:                                     ; preds = %if.end866.while.end870_crit_edge, %restart_loop.while.end870_crit_edge
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %535 = ptrtoint ptr %t_forget to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %t_forget, align 4
  %tobool875.not = icmp eq ptr %536, null
  br i1 %tobool875.not, label %if.end879, label %if.then876

if.then876:                                       ; preds = %while.end870
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  br label %restart_loop

if.end879:                                        ; preds = %while.end870
  %j_checkpoint_transactions = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 12
  %537 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %j_checkpoint_transactions, align 8
  %cmp880 = icmp eq ptr %538, null
  br i1 %cmp880, label %if.then882, label %if.else884

if.then882:                                       ; preds = %if.end879
  call void @__sanitizer_cov_trace_pc() #10
  %539 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_store4_noabort(i32 %539)
  store ptr %55, ptr %j_checkpoint_transactions, align 8
  %t_cpnext = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 21
  %540 = ptrtoint ptr %t_cpnext to i32
  call void @__asan_store4_noabort(i32 %540)
  store ptr %55, ptr %t_cpnext, align 4
  %t_cpprev = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 22
  %541 = ptrtoint ptr %t_cpprev to i32
  call void @__asan_store4_noabort(i32 %541)
  store ptr %55, ptr %t_cpprev, align 8
  br label %if.end894

if.else884:                                       ; preds = %if.end879
  call void @__sanitizer_cov_trace_pc() #10
  %t_cpnext886 = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 21
  %542 = ptrtoint ptr %t_cpnext886 to i32
  call void @__asan_store4_noabort(i32 %542)
  store ptr %538, ptr %t_cpnext886, align 4
  %t_cpprev888 = getelementptr inbounds %struct.transaction_s, ptr %538, i32 0, i32 22
  %543 = ptrtoint ptr %t_cpprev888 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %t_cpprev888, align 8
  %t_cpprev889 = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 22
  %545 = ptrtoint ptr %t_cpprev889 to i32
  call void @__asan_store4_noabort(i32 %545)
  store ptr %544, ptr %t_cpprev889, align 8
  store ptr %55, ptr %t_cpprev888, align 8
  %546 = load ptr, ptr %t_cpprev889, align 8
  %t_cpnext893 = getelementptr inbounds %struct.transaction_s, ptr %546, i32 0, i32 21
  %547 = ptrtoint ptr %t_cpnext893 to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %55, ptr %t_cpnext893, align 4
  br label %if.end894

if.end894:                                        ; preds = %if.else884, %if.then882
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 1121, ptr noundef nonnull @.str.15) #8
  %548 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %549)
  %cmp898.not = icmp eq i32 %549, 6
  br i1 %cmp898.not, label %do.end917, label %do.body909, !prof !93

do.body909:                                       ; preds = %if.end894
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1123, 0\0A.popsection", ""() #8, !srcloc !131
  unreachable

do.end917:                                        ; preds = %if.end894
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %550 = load volatile i32, ptr @jiffies, align 128
  %551 = ptrtoint ptr %t_start to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 %550, ptr %t_start, align 4
  %552 = ptrtoint ptr %rs_logging to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %rs_logging, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %550, i32 %553)
  %cmp.not.i1614 = icmp ult i32 %550, %553
  %retval.0.p.v.i1615 = select i1 %cmp.not.i1614, i32 1073741822, i32 0
  %retval.0.p.i1616 = sub i32 %550, %553
  %retval.0.i1617 = add i32 %retval.0.p.i1616, %retval.0.p.v.i1615
  %554 = ptrtoint ptr %rs_logging to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 %retval.0.i1617, ptr %rs_logging, align 4
  %555 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %t_tid, align 4
  %557 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 %556, ptr %stats, align 4
  %t_handle_count = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 20
  %call.i.i1469 = call zeroext i1 @__kasan_check_read(ptr noundef %t_handle_count, i32 noundef 4) #8
  %558 = ptrtoint ptr %t_handle_count to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load volatile i32, ptr %t_handle_count, align 4
  %rs_handle_count = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 2, i32 6
  %560 = ptrtoint ptr %rs_handle_count to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 %559, ptr %rs_handle_count, align 4
  %j_fs_dev928 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %561 = ptrtoint ptr %j_fs_dev928 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %j_fs_dev928, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %562, i32 0, i32 5
  %563 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %bd_dev, align 4
  %565 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %t_tid, align 4
  call fastcc void @trace_jbd2_run_stats(i32 noundef %564, i32 noundef %566, ptr noundef %run)
  %567 = ptrtoint ptr %t_requested to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %t_requested, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %568)
  %tobool932.not = icmp ne i32 %568, 0
  %cond933 = zext i1 %tobool932.not to i32
  %ts_requested = getelementptr inbounds %struct.transaction_stats_s, ptr %stats, i32 0, i32 1
  %569 = ptrtoint ptr %ts_requested to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 %cond933, ptr %ts_requested, align 4
  %570 = ptrtoint ptr %t_state to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 7, ptr %t_state, align 8
  %571 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %j_committing_transaction, align 4
  %cmp937.not = icmp eq ptr %55, %572
  br i1 %cmp937.not, label %do.end956, label %do.body948, !prof !93

do.body948:                                       ; preds = %do.end917
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1140, 0\0A.popsection", ""() #8, !srcloc !132
  unreachable

do.end956:                                        ; preds = %do.end917
  %573 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %t_tid, align 4
  %j_commit_sequence = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 43
  %575 = ptrtoint ptr %j_commit_sequence to i32
  call void @__asan_store4_noabort(i32 %575)
  store i32 %574, ptr %j_commit_sequence, align 4
  %576 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_store4_noabort(i32 %576)
  store ptr null, ptr %j_committing_transaction, align 4
  %call959 = call i64 @ktime_get() #8
  %sub960 = sub i64 %call959, %call146
  %j_average_commit_time = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 59
  %577 = ptrtoint ptr %j_average_commit_time to i32
  call void @__asan_load8_noabort(i32 %577)
  %578 = load i64, ptr %j_average_commit_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %578)
  %tobool962.not = icmp eq i64 %578, 0
  br i1 %tobool962.not, label %do.end956.if.end975_crit_edge, label %if.then969, !prof !98

do.end956.if.end975_crit_edge:                    ; preds = %do.end956
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end975

if.then969:                                       ; preds = %do.end956
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i64 %578, 3
  %add971 = add i64 %mul, %sub960
  %div1442 = lshr i64 %add971, 2
  br label %if.end975

if.end975:                                        ; preds = %if.then969, %do.end956.if.end975_crit_edge
  %storemerge = phi i64 [ %div1442, %if.then969 ], [ %sub960, %do.end956.if.end975_crit_edge ]
  %579 = ptrtoint ptr %j_average_commit_time to i32
  call void @__asan_store8_noabort(i32 %579)
  store i64 %storemerge, ptr %j_average_commit_time, align 8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  %j_commit_callback = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 62
  %580 = ptrtoint ptr %j_commit_callback to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %j_commit_callback, align 8
  %tobool977.not = icmp eq ptr %581, null
  br i1 %tobool977.not, label %if.end975.if.end980_crit_edge, label %if.then978

if.end975.if.end980_crit_edge:                    ; preds = %if.end975
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end980

if.then978:                                       ; preds = %if.end975
  call void @__sanitizer_cov_trace_pc() #10
  call void %581(ptr noundef %journal, ptr noundef %55) #8
  br label %if.end980

if.end980:                                        ; preds = %if.then978, %if.end975.if.end980_crit_edge
  %j_fc_cleanup_callback = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 73
  %582 = ptrtoint ptr %j_fc_cleanup_callback to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %j_fc_cleanup_callback, align 4
  %tobool981.not = icmp eq ptr %583, null
  br i1 %tobool981.not, label %if.end980.if.end985_crit_edge, label %if.then982

if.end980.if.end985_crit_edge:                    ; preds = %if.end980
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end985

if.then982:                                       ; preds = %if.end980
  call void @__sanitizer_cov_trace_pc() #10
  %584 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %t_tid, align 4
  call void %583(ptr noundef %journal, i32 noundef 1, i32 noundef %585) #8
  br label %if.end985

if.end985:                                        ; preds = %if.then982, %if.end980.if.end985_crit_edge
  call fastcc void @trace_jbd2_end_commit(ptr noundef %journal, ptr noundef %55)
  %586 = ptrtoint ptr %j_commit_sequence to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %j_commit_sequence, align 4
  %j_tail_sequence987 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 41
  %588 = ptrtoint ptr %j_tail_sequence987 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %j_tail_sequence987, align 4
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_commit_transaction, i32 noundef 1164, ptr noundef nonnull @.str.16, i32 noundef %587, i32 noundef %589) #8
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  %590 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %journal, align 8
  %and992 = and i32 %591, -769
  store i32 %and992, ptr %journal, align 8
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %592 = ptrtoint ptr %t_state to i32
  call void @__asan_store4_noabort(i32 %592)
  store i32 8, ptr %t_state, align 8
  %593 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %t_checkpoint_list, align 8
  %cmp996 = icmp eq ptr %594, null
  br i1 %cmp996, label %land.lhs.true998, label %if.end985.if.end1002_crit_edge

if.end985.if.end1002_crit_edge:                   ; preds = %if.end985
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1002

land.lhs.true998:                                 ; preds = %if.end985
  %t_checkpoint_io_list = getelementptr inbounds %struct.transaction_s, ptr %55, i32 0, i32 9
  %595 = ptrtoint ptr %t_checkpoint_io_list to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %t_checkpoint_io_list, align 4
  %cmp999 = icmp eq ptr %596, null
  br i1 %cmp999, label %if.then1001, label %land.lhs.true998.if.end1002_crit_edge

land.lhs.true998.if.end1002_crit_edge:            ; preds = %land.lhs.true998
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1002

if.then1001:                                      ; preds = %land.lhs.true998
  call void @__sanitizer_cov_trace_pc() #10
  call void @__jbd2_journal_drop_transaction(ptr noundef %journal, ptr noundef %55) #8
  call void @jbd2_journal_free_transaction(ptr noundef %55) #8
  br label %if.end1002

if.end1002:                                       ; preds = %if.then1001, %land.lhs.true998.if.end1002_crit_edge, %if.end985.if.end1002_crit_edge
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  %j_wait_done_commit = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 14
  call void @__wake_up(ptr noundef %j_wait_done_commit, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %j_fc_wait1005 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 18
  call void @__wake_up(ptr noundef %j_fc_wait1005, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %j_history_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 65
  call void @_raw_spin_lock(ptr noundef %j_history_lock) #8
  %j_stats = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67
  %597 = ptrtoint ptr %j_stats to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %j_stats, align 4
  %inc1007 = add i32 %598, 1
  store i32 %inc1007, ptr %j_stats, align 4
  %599 = ptrtoint ptr %ts_requested to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %ts_requested, align 4
  %ts_requested1010 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 1
  %601 = ptrtoint ptr %ts_requested1010 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %ts_requested1010, align 4
  %add1011 = add i32 %602, %600
  store i32 %add1011, ptr %ts_requested1010, align 4
  %603 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %run, align 4
  %run1015 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 2
  %605 = ptrtoint ptr %run1015 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %run1015, align 4
  %add1017 = add i32 %606, %604
  store i32 %add1017, ptr %run1015, align 4
  %607 = ptrtoint ptr %rs_request_delay to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %rs_request_delay, align 4
  %rs_request_delay1022 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 2, i32 1
  %609 = ptrtoint ptr %rs_request_delay1022 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %rs_request_delay1022, align 4
  %add1023 = add i32 %610, %608
  store i32 %add1023, ptr %rs_request_delay1022, align 4
  %611 = ptrtoint ptr %rs_running to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %rs_running, align 4
  %rs_running1028 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 2, i32 2
  %613 = ptrtoint ptr %rs_running1028 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %rs_running1028, align 4
  %add1029 = add i32 %614, %612
  store i32 %add1029, ptr %rs_running1028, align 4
  %615 = ptrtoint ptr %rs_locked to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %rs_locked, align 4
  %rs_locked1034 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 2, i32 3
  %617 = ptrtoint ptr %rs_locked1034 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %rs_locked1034, align 4
  %add1035 = add i32 %618, %616
  store i32 %add1035, ptr %rs_locked1034, align 4
  %619 = ptrtoint ptr %rs_flushing to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %rs_flushing, align 4
  %rs_flushing1040 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 2, i32 4
  %621 = ptrtoint ptr %rs_flushing1040 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %rs_flushing1040, align 4
  %add1041 = add i32 %622, %620
  store i32 %add1041, ptr %rs_flushing1040, align 4
  %623 = ptrtoint ptr %rs_logging to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %rs_logging, align 4
  %rs_logging1046 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 2, i32 5
  %625 = ptrtoint ptr %rs_logging1046 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %rs_logging1046, align 4
  %add1047 = add i32 %626, %624
  store i32 %add1047, ptr %rs_logging1046, align 4
  %627 = ptrtoint ptr %rs_handle_count to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %rs_handle_count, align 4
  %rs_handle_count1052 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 2, i32 6
  %629 = ptrtoint ptr %rs_handle_count1052 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %rs_handle_count1052, align 4
  %add1053 = add i32 %630, %628
  store i32 %add1053, ptr %rs_handle_count1052, align 4
  %631 = ptrtoint ptr %rs_blocks to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %rs_blocks, align 4
  %rs_blocks1058 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 2, i32 7
  %633 = ptrtoint ptr %rs_blocks1058 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %rs_blocks1058, align 4
  %add1059 = add i32 %634, %632
  store i32 %add1059, ptr %rs_blocks1058, align 4
  %635 = ptrtoint ptr %rs_blocks_logged to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %rs_blocks_logged, align 4
  %rs_blocks_logged1064 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 67, i32 2, i32 8
  %637 = ptrtoint ptr %rs_blocks_logged1064 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %rs_blocks_logged1064, align 4
  %add1065 = add i32 %638, %636
  store i32 %add1065, ptr %rs_blocks_logged1064, align 4
  call void @_raw_spin_unlock(ptr noundef %j_history_lock) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %log_bufs) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %io_bufs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_tid) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_block) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cbh) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %stats) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_tag_bytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_io_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_update_sb_log_tail(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_start_commit(ptr noundef %journal, ptr noundef %commit_transaction) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_start_commit, i32 0, i32 1), ptr blockaddress(@trace_jbd2_start_commit, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !133
  %call42 = tail call i32 @__traceiter_jbd2_start_commit(ptr noundef null, ptr noundef %journal, ptr noundef %commit_transaction) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !134
  %13 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_start_commit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_start_commit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_start_commit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_start_commit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 62, ptr noundef nonnull @.str.18) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_commit_locking(ptr noundef %journal, ptr noundef %commit_transaction) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_locking, i32 0, i32 1), ptr blockaddress(@trace_jbd2_commit_locking, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !135
  %call42 = tail call i32 @__traceiter_jbd2_commit_locking(ptr noundef null, ptr noundef %journal, ptr noundef %commit_transaction) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_locking, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_locking, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_commit_locking.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_commit_locking.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 69, ptr noundef nonnull @.str.18) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
declare dso_local void @jbd2_journal_wait_updates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_refile_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_journal_clean_checkpoint_list(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_clear_buffer_revoked_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_switch_revoke_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_commit_flushing(ptr noundef %journal, ptr noundef %commit_transaction) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_flushing, i32 0, i32 1), ptr blockaddress(@trace_jbd2_commit_flushing, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  %call42 = tail call i32 @__traceiter_jbd2_commit_flushing(ptr noundef null, ptr noundef %journal, ptr noundef %commit_transaction) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_flushing, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_flushing, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_commit_flushing.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_commit_flushing.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 76, ptr noundef nonnull @.str.18) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_write_revoke_records(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_commit_logging(ptr noundef %journal, ptr noundef %commit_transaction) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_logging, i32 0, i32 1), ptr blockaddress(@trace_jbd2_commit_logging, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  %call42 = tail call i32 @__traceiter_jbd2_commit_logging(ptr noundef null, ptr noundef %journal, ptr noundef %commit_transaction) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %13 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_logging, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_logging, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_commit_logging.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_commit_logging.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 83, ptr noundef nonnull @.str.18) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
declare dso_local void @jbd2_buffer_abort_trigger(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_get_descriptor_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_next_log_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_write_metadata_buffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_descriptor_block_csum_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_end_buffer_io_sync(ptr noundef %bh, i32 noundef %uptodate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %0 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_private, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uptodate)
  %tobool.not = icmp eq i32 %uptodate, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bh) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 8388608, ptr nonnull elementtype(i32) %1) #8, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @wake_up_bit(ptr noundef nonnull %1, i32 noundef 23) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.end.if.end10_crit_edge
  tail call void @unlock_buffer(ptr noundef %bh) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_log_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @journal_submit_commit_record(ptr nocapture noundef readonly %journal, ptr noundef %commit_transaction, ptr nocapture noundef writeonly %cbh, i32 noundef %crc32_sum) unnamed_addr #0 align 64 {
entry:
  %desc.i.i = alloca %struct.anon.84, align 8
  %now = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #8
  %0 = call ptr @memset(ptr %now, i32 255, i32 16)
  %1 = ptrtoint ptr %cbh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %cbh, align 4
  %2 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %journal, align 8
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @jbd2_journal_get_descriptor_buffer(ptr noundef %commit_transaction, i32 noundef 2) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %now) #8
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %now, align 8
  %h_commit_sec = getelementptr inbounds %struct.commit_header, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %h_commit_sec to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %h_commit_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %9 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec, align 8
  %h_commit_nsec = getelementptr inbounds %struct.commit_header, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %h_commit_nsec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h_commit_nsec, align 8
  %j_format_version.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 6
  %12 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp sgt i32 %13, 1
  br i1 %cmp.i, label %jbd2_has_feature_checksum.exit, label %if.end4.jbd2_journal_has_csum_v2or3.exit.i_crit_edge

if.end4.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_has_feature_checksum.exit:                   ; preds = %if.end4
  %j_superblock.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %14 = ptrtoint ptr %j_superblock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %j_superblock.i, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.journal_superblock_s, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_feature_compat.i, align 4
  %and.i35 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %cmp1.i.not = icmp eq i32 %and.i35, 0
  br i1 %cmp1.i.not, label %jbd2_has_feature_checksum.exit.if.end7_crit_edge, label %if.then6

jbd2_has_feature_checksum.exit.if.end7_crit_edge: ; preds = %jbd2_has_feature_checksum.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %jbd2_has_feature_checksum.exit
  call void @__sanitizer_cov_trace_pc() #10
  %h_chksum_type = getelementptr inbounds %struct.commit_header, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %h_chksum_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %h_chksum_type, align 4
  %h_chksum_size = getelementptr inbounds %struct.commit_header, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %h_chksum_size to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %h_chksum_size, align 1
  %h_chksum = getelementptr inbounds %struct.commit_header, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %h_chksum to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %crc32_sum, ptr %h_chksum, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %jbd2_has_feature_checksum.exit.if.end7_crit_edge
  %21 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i.i.i.i = icmp sgt i32 %.pr, 1
  br i1 %cmp.i.i.i.i, label %jbd2_has_feature_csum2.exit.i.i.i, label %if.end7.jbd2_journal_has_csum_v2or3.exit.i_crit_edge

if.end7.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_has_feature_csum2.exit.i.i.i:                ; preds = %if.end7
  %22 = ptrtoint ptr %j_superblock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %j_superblock.i, align 4
  %s_feature_incompat.i.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %s_feature_incompat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_feature_incompat.i.i.i.i, align 4
  %26 = and i32 %25, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %.not.i.i = icmp eq i32 %26, 0
  br i1 %.not.i.i, label %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, label %land.rhs.i.i

jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

land.rhs.i.i:                                     ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  %j_chksum_driver.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 70
  %27 = ptrtoint ptr %j_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %j_chksum_driver.i.i, align 8
  %cmp.i.i = icmp eq ptr %28, null
  br i1 %cmp.i.i, label %land.rhs2.i.i, label %land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge

land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

land.rhs2.i.i:                                    ; preds = %land.rhs.i.i
  %.b43.i.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, label %if.then.i.i, !prof !93

land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

if.then.i.i:                                      ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_journal_has_csum_v2or3.exit.i:               ; preds = %if.then.i.i, %land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %if.end7.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %if.end4.jbd2_journal_has_csum_v2or3.exit.i_crit_edge
  %j_chksum_driver37.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 70
  %29 = ptrtoint ptr %j_chksum_driver37.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %j_chksum_driver37.i.i, align 8
  %cmp38.i.not.i = icmp eq ptr %30, null
  br i1 %cmp38.i.not.i, label %jbd2_journal_has_csum_v2or3.exit.i.jbd2_commit_block_csum_set.exit_crit_edge, label %if.end.i

jbd2_journal_has_csum_v2or3.exit.i.jbd2_commit_block_csum_set.exit_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_commit_block_csum_set.exit

if.end.i:                                         ; preds = %jbd2_journal_has_csum_v2or3.exit.i
  %31 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data, align 4
  %h_chksum_type.i = getelementptr inbounds %struct.commit_header, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %h_chksum_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %h_chksum_type.i, align 4
  %h_chksum_size.i = getelementptr inbounds %struct.commit_header, ptr %32, i32 0, i32 4
  %34 = ptrtoint ptr %h_chksum_size.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %h_chksum_size.i, align 1
  %h_chksum.i = getelementptr inbounds %struct.commit_header, ptr %32, i32 0, i32 6
  %35 = ptrtoint ptr %h_chksum.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %h_chksum.i, align 8
  %j_csum_seed.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 71
  %36 = ptrtoint ptr %j_csum_seed.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %j_csum_seed.i, align 4
  %38 = load ptr, ptr %b_data, align 4
  %j_blocksize.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 33
  %39 = ptrtoint ptr %j_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %j_blocksize.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #8
  %41 = getelementptr inbounds %struct.anon.84, ptr %desc.i.i, i32 0, i32 1
  %42 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %43 = ptrtoint ptr %j_chksum_driver37.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %j_chksum_driver37.i.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp.i14.i = icmp ugt i32 %46, 4
  br i1 %cmp.i14.i, label %do.body2.i.i, label %do.end7.i.i, !prof !98

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

do.end7.i.i:                                      ; preds = %if.end.i
  %47 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %desc.i.i, align 8
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %37, ptr %41, align 8
  %call10.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef %38, i32 noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool12.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool12.not.i.i, label %jbd2_chksum.exit.i, label %do.body20.i.i, !prof !93

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !112
  unreachable

jbd2_chksum.exit.i:                               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %41, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #8
  %51 = ptrtoint ptr %h_chksum.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %h_chksum.i, align 8
  br label %jbd2_commit_block_csum_set.exit

jbd2_commit_block_csum_set.exit:                  ; preds = %jbd2_chksum.exit.i, %jbd2_journal_has_csum_v2or3.exit.i.jbd2_commit_block_csum_set.exit_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 366) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #8
  %52 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %call1, align 4
  %and.i.i.i.i = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %jbd2_commit_block_csum_set.exit.if.then.i36_crit_edge

jbd2_commit_block_csum_set.exit.if.then.i36_crit_edge: ; preds = %jbd2_commit_block_csum_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i36

trylock_buffer.exit.i:                            ; preds = %jbd2_commit_block_csum_set.exit
  call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #8
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 4, ptr nonnull elementtype(i32) %call1) #8, !srcloc !115
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  %55 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i36_crit_edge

trylock_buffer.exit.i.if.then.i36_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i36

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i36:                                      ; preds = %trylock_buffer.exit.i.if.then.i36_crit_edge, %jbd2_commit_block_csum_set.exit.if.then.i36_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call1) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i36, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %call1) #8
  %56 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %call1, align 4
  %and1.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call1) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 7
  %58 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @journal_end_buffer_io_sync, ptr %b_end_io, align 4
  %59 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %journal, align 8
  %and = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %set_buffer_uptodate.exit.if.else_crit_edge, label %land.lhs.true

set_buffer_uptodate.exit.if.else_crit_edge:       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %set_buffer_uptodate.exit
  %61 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i39 = icmp sgt i32 %62, 1
  br i1 %cmp.i39, label %jbd2_has_feature_async_commit.exit, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

jbd2_has_feature_async_commit.exit:               ; preds = %land.lhs.true
  %j_superblock.i40 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %63 = ptrtoint ptr %j_superblock.i40 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %j_superblock.i40, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.journal_superblock_s, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_feature_incompat.i, align 4
  %and.i41 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %cmp1.i42.not = icmp eq i32 %and.i41, 0
  br i1 %cmp1.i42.not, label %jbd2_has_feature_async_commit.exit.if.end13_crit_edge, label %jbd2_has_feature_async_commit.exit.if.else_crit_edge

jbd2_has_feature_async_commit.exit.if.else_crit_edge: ; preds = %jbd2_has_feature_async_commit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

jbd2_has_feature_async_commit.exit.if.end13_crit_edge: ; preds = %jbd2_has_feature_async_commit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.else:                                          ; preds = %jbd2_has_feature_async_commit.exit.if.else_crit_edge, %set_buffer_uptodate.exit.if.else_crit_edge
  br label %if.end13

if.end13:                                         ; preds = %if.else, %jbd2_has_feature_async_commit.exit.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge
  %.sink = phi i32 [ 2048, %if.else ], [ 395264, %land.lhs.true.if.end13_crit_edge ], [ 395264, %jbd2_has_feature_async_commit.exit.if.end13_crit_edge ]
  %call12 = call i32 @submit_bh(i32 noundef 1, i32 noundef %.sink, ptr noundef nonnull %call1) #8
  %67 = ptrtoint ptr %cbh to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call1, ptr %cbh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_buffer_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_file_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_update_log_tail(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jbd2_journal_remove_checkpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_journal_insert_checkpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__jbd2_journal_refile_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_put_journal_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_buffer_page(ptr noundef %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.nope_crit_edge

entry.nope_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nope

if.end:                                           ; preds = %entry
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count, i32 noundef 4) #8
  %3 = ptrtoint ptr %b_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %b_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end3, label %if.end.nope_crit_edge

if.end.nope_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nope

if.end3:                                          ; preds = %if.end
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %5 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_page, align 8
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end3.nope_crit_edge, label %if.end6

if.end3.nope_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %nope

if.end6:                                          ; preds = %if.end3
  %mapping = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapping, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end9, label %if.end6.nope_crit_edge

if.end6.nope_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %nope

if.end9:                                          ; preds = %if.end6
  %9 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !93

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !93

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !144
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  %and.i.i4.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.nope_crit_edge

folio_flags.exit.i.i.nope_crit_edge:              ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nope

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #8, !srcloc !115
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  %20 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not.not = icmp eq i32 %20, 0
  br i1 %tobool11.not.not, label %if.end13, label %trylock_page.exit.nope_crit_edge

trylock_page.exit.nope_crit_edge:                 ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nope

if.end13:                                         ; preds = %trylock_page.exit
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %9, align 4
  %and.i.i25 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i29, label %if.then.i.i28, !prof !93

if.then.i.i28:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i27 = add i32 %22, -1
  br label %_compound_head.exit.i31

if.end.i.i29:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i31

_compound_head.exit.i31:                          ; preds = %if.end.i.i29, %if.then.i.i28
  %retval.0.i.i30 = phi i32 [ %sub.i.i27, %if.then.i.i28 ], [ %23, %if.end.i.i29 ]
  %24 = inttoptr i32 %retval.0.i.i30 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %25 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %26, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !98

if.then.i1.i:                                     ; preds = %_compound_head.exit.i31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.24) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !145
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i31
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@release_buffer_page, %if.then.i.i.i.i)) #8
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !92

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %24, i32 noundef 1) #8
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  tail call void @__brelse(ptr noundef %bh) #8
  %call14 = tail call i32 @try_to_free_buffers(ptr noundef nonnull %6) #8
  tail call void @unlock_page(ptr noundef nonnull %6) #8
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %9, align 4
  %and.i.i32 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.not.i.i33, label %if.end.i.i36, label %if.then.i.i35, !prof !93

if.then.i.i35:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i34 = add i32 %29, -1
  br label %_compound_head.exit.i38

if.end.i.i36:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i38

_compound_head.exit.i38:                          ; preds = %if.end.i.i36, %if.then.i.i35
  %retval.0.i.i37 = phi i32 [ %sub.i.i34, %if.then.i.i35 ], [ %30, %if.end.i.i36 ]
  %31 = inttoptr i32 %retval.0.i.i37 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i39, label %do.end5.i.i.i.i, !prof !98

if.then.i.i.i.i39:                                ; preds = %_compound_head.exit.i38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.25) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !146
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i38
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !148
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@release_buffer_page, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !92

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %31, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %31) #8
  br label %cleanup

nope:                                             ; preds = %trylock_page.exit.nope_crit_edge, %folio_flags.exit.i.i.nope_crit_edge, %if.end6.nope_crit_edge, %if.end3.nope_crit_edge, %if.end.nope_crit_edge, %entry.nope_crit_edge
  tail call void @__brelse(ptr noundef %bh) #8
  br label %cleanup

cleanup:                                          ; preds = %nope, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_run_stats(i32 noundef %dev, i32 noundef %tid, ptr noundef %stats) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_run_stats, i32 0, i32 1), ptr blockaddress(@trace_jbd2_run_stats, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !150
  %call42 = tail call i32 @__traceiter_jbd2_run_stats(ptr noundef null, i32 noundef %dev, i32 noundef %tid, ptr noundef %stats) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !151
  %13 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_run_stats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_run_stats, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_run_stats.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_run_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 294, ptr noundef nonnull @.str.18) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_end_commit(ptr noundef %journal, ptr noundef %commit_transaction) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_end_commit, i32 0, i32 1), ptr blockaddress(@trace_jbd2_end_commit, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !152
  %call42 = tail call i32 @__traceiter_jbd2_end_commit(ptr noundef null, ptr noundef %journal, ptr noundef %commit_transaction) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !153
  %13 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_end_commit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_end_commit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_end_commit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_end_commit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 114, ptr noundef nonnull @.str.18) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !81) #8
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
declare dso_local void @__jbd2_journal_drop_transaction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_free_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_submit_inode_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_start_commit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_commit_locking(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_commit_flushing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_commit_logging(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_run_stats(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_end_commit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77, !78, !80}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__ksymtab_jbd2_submit_inode_data, !1, !"__ksymtab_jbd2_submit_inode_data", i1 false, i1 false}
!1 = !{!"../fs/jbd2/commit.c", i32 220, i32 1}
!2 = !{ptr @__ksymtab_jbd2_wait_inode_data, !3, !"__ksymtab_jbd2_wait_inode_data", i1 false, i1 false}
!3 = !{!"../fs/jbd2/commit.c", i32 231, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/jbd2/commit.c", i32 422, i32 3}
!6 = !{ptr @__func__.jbd2_journal_commit_transaction, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jbd2/commit.c", i32 436, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jbd2/commit.c", i32 468, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jbd2/commit.c", i32 539, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jbd2/commit.c", i32 572, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/jbd2/commit.c", i32 585, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/jbd2/commit.c", i32 641, i32 4}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jbd2/commit.c", i32 651, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/jbd2/commit.c", i32 736, i32 4}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jbd2/commit.c", i32 775, i32 3}
!26 = !{ptr @jbd2_journal_commit_transaction._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @jbd2_journal_commit_transaction._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/jbd2/commit.c", i32 838, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/jbd2/commit.c", i32 881, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/jbd2/commit.c", i32 905, i32 2}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/jbd2/commit.c", i32 928, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/jbd2/commit.c", i32 944, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/jbd2/commit.c", i32 1121, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/jbd2/commit.c", i32 1163, i32 2}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/trace/events/jbd2.h", i32 116, i32 1}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!46 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/jbd2.h", i32 1734, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/trace/events/jbd2.h", i32 57, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/trace/events/jbd2.h", i32 64, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/trace/events/jbd2.h", i32 71, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/trace/events/jbd2.h", i32 78, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/mm.h", i32 717, i32 2}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/trace/events/jbd2.h", i32 248, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/trace/events/jbd2.h", i32 92, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i64 2149085157, i64 2149085162, i64 2149085175, i64 2149085219, i64 2149085253, i64 2149085274}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2155222653}
!95 = !{i64 2155222870}
!96 = !{i64 2149531722}
!97 = !{i64 2149532758}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2155511016, i64 2155511497, i64 2155511053, i64 2155511109, i64 2155511143, i64 2155511167, i64 2155511208, i64 2155511229, i64 2155511257, i64 2155511291}
!100 = !{i64 2155512748, i64 2155513229, i64 2155512785, i64 2155512841, i64 2155512875, i64 2155512899, i64 2155512940, i64 2155512961, i64 2155512989, i64 2155513023}
!101 = !{i64 2155515174, i64 2155515655, i64 2155515211, i64 2155515267, i64 2155515301, i64 2155515325, i64 2155515366, i64 2155515387, i64 2155515415, i64 2155515449}
!102 = !{i64 2155517085, i64 2155517566, i64 2155517122, i64 2155517178, i64 2155517212, i64 2155517236, i64 2155517277, i64 2155517298, i64 2155517326, i64 2155517360}
!103 = !{i64 2148237281, i64 2148237307, i64 2148237336, i64 2148237370, i64 2148237401, i64 2148237424}
!104 = !{i64 2155495379, i64 2155495860, i64 2155495416, i64 2155495472, i64 2155495506, i64 2155495530, i64 2155495571, i64 2155495592, i64 2155495620, i64 2155495654}
!105 = !{i64 2155496801}
!106 = !{i64 2155519640, i64 2155520121, i64 2155519677, i64 2155519733, i64 2155519767, i64 2155519791, i64 2155519832, i64 2155519853, i64 2155519881, i64 2155519915}
!107 = !{i64 2155525332, i64 2155525813, i64 2155525369, i64 2155525425, i64 2155525459, i64 2155525483, i64 2155525524, i64 2155525545, i64 2155525573, i64 2155525607}
!108 = !{i64 2148234816, i64 2148234842, i64 2148234871, i64 2148234905, i64 2148234936, i64 2148234959}
!109 = !{i64 2153775136}
!110 = !{i64 2152202362}
!111 = !{i64 2154577962, i64 2154578448, i64 2154577999, i64 2154578055, i64 2154578089, i64 2154578113, i64 2154578154, i64 2154578175, i64 2154578203, i64 2154578237}
!112 = !{i64 2154579530, i64 2154580016, i64 2154579567, i64 2154579623, i64 2154579657, i64 2154579681, i64 2154579722, i64 2154579743, i64 2154579771, i64 2154579805}
!113 = !{i64 2152202569}
!114 = !{i64 2153777907}
!115 = !{i64 2148243674, i64 2148243706, i64 2148243735, i64 2148243769, i64 2148243800, i64 2148243823}
!116 = !{i64 2148332755}
!117 = !{i64 2155500759}
!118 = !{i64 2155529537, i64 2155530018, i64 2155529574, i64 2155529630, i64 2155529664, i64 2155529688, i64 2155529729, i64 2155529750, i64 2155529778, i64 2155529812}
!119 = !{i64 2155532998, i64 2155533479, i64 2155533035, i64 2155533091, i64 2155533125, i64 2155533149, i64 2155533190, i64 2155533211, i64 2155533239, i64 2155533273}
!120 = !{i64 2155534666, i64 2155535147, i64 2155534703, i64 2155534759, i64 2155534793, i64 2155534817, i64 2155534858, i64 2155534879, i64 2155534907, i64 2155534941}
!121 = !{i64 2155536330, i64 2155536811, i64 2155536367, i64 2155536423, i64 2155536457, i64 2155536481, i64 2155536522, i64 2155536543, i64 2155536571, i64 2155536605}
!122 = !{i64 2155538096, i64 2155538577, i64 2155538133, i64 2155538189, i64 2155538223, i64 2155538247, i64 2155538288, i64 2155538309, i64 2155538337, i64 2155538371}
!123 = !{i64 2155541673, i64 2155542154, i64 2155541710, i64 2155541766, i64 2155541800, i64 2155541824, i64 2155541865, i64 2155541886, i64 2155541914, i64 2155541948}
!124 = !{i64 2153882764}
!125 = !{i64 2155544630, i64 2155545111, i64 2155544667, i64 2155544723, i64 2155544757, i64 2155544781, i64 2155544822, i64 2155544843, i64 2155544871, i64 2155544905}
!126 = !{i64 2155546350, i64 2155546831, i64 2155546387, i64 2155546443, i64 2155546477, i64 2155546501, i64 2155546542, i64 2155546563, i64 2155546591, i64 2155546625}
!127 = !{i64 2155548094, i64 2155548575, i64 2155548131, i64 2155548187, i64 2155548221, i64 2155548245, i64 2155548286, i64 2155548307, i64 2155548335, i64 2155548369}
!128 = !{i64 2155549826, i64 2155550307, i64 2155549863, i64 2155549919, i64 2155549953, i64 2155549977, i64 2155550018, i64 2155550039, i64 2155550067, i64 2155550101}
!129 = !{i64 2155551574, i64 2155552055, i64 2155551611, i64 2155551667, i64 2155551701, i64 2155551725, i64 2155551766, i64 2155551787, i64 2155551815, i64 2155551849}
!130 = !{i64 2155556351, i64 2155556833, i64 2155556388, i64 2155556444, i64 2155556478, i64 2155556502, i64 2155556543, i64 2155556564, i64 2155556592, i64 2155556626}
!131 = !{i64 2155558546, i64 2155559028, i64 2155558583, i64 2155558639, i64 2155558673, i64 2155558697, i64 2155558738, i64 2155558759, i64 2155558787, i64 2155558821}
!132 = !{i64 2155560290, i64 2155560772, i64 2155560327, i64 2155560383, i64 2155560417, i64 2155560441, i64 2155560482, i64 2155560503, i64 2155560531, i64 2155560565}
!133 = !{i64 2155111481}
!134 = !{i64 2155111732}
!135 = !{i64 2155132735}
!136 = !{i64 2155132990}
!137 = !{i64 2155150074}
!138 = !{i64 2155150331}
!139 = !{i64 2155167429}
!140 = !{i64 2155167684}
!141 = !{i64 2148331642}
!142 = !{i64 2148242061, i64 2148242093, i64 2148242122, i64 2148242156, i64 2148242187, i64 2148242210}
!143 = !{i64 2155487569}
!144 = !{i64 2150595811, i64 2150596302, i64 2150595848, i64 2150595904, i64 2150595938, i64 2150595962, i64 2150596003, i64 2150596024, i64 2150596052, i64 2150596086}
!145 = !{i64 2153275173, i64 2153275657, i64 2153275210, i64 2153275266, i64 2153275300, i64 2153275324, i64 2153275365, i64 2153275386, i64 2153275414, i64 2153275448}
!146 = !{i64 2153251200, i64 2153251683, i64 2153251237, i64 2153251293, i64 2153251327, i64 2153251351, i64 2153251392, i64 2153251413, i64 2153251441, i64 2153251475}
!147 = !{i64 2148323268}
!148 = !{i64 2148238001, i64 2148238033, i64 2148238062, i64 2148238096, i64 2148238127, i64 2148238150}
!149 = !{i64 2148323497}
!150 = !{i64 2155318178}
!151 = !{i64 2155318399}
!152 = !{i64 2155206125}
!153 = !{i64 2155206372}
